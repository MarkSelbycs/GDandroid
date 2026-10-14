package com.gdportal.core;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;

/**
 * CDC portal protocol client — faithful re-implementation of
 * com.cndatacom.sdk.portal.http.{CdcHttpClient,CdcProtocol} (v2104).
 *
 * Platform-agnostic: network facts (ip/mac/gw) are injected via NetInfo;
 * body codec via the Codec interface (DaMod on Android, file-backed or
 * software impl on PC).
 */
public final class CdcClient {

    public static final String ZERO_AID = "00000000-0000-0000-0000-000000000000";
    public static final byte[] ZERO_DATA = ZERO_AID.getBytes(StandardCharsets.UTF_8);

    /** Runtime facts the protocol needs. */
    public static final class Env {
        public String userAgent = "CCTP/android11_64/2104";
        public String clientId = "";          // persisted UUID
        public NetInfo net = new NetInfo();
        public Proxy proxy = Proxy.NO_PROXY;  // for PC debugging via mitm
        public int connTimeoutMs = 5000, readTimeoutMs = 5000;
        /** Optional connection factory (Android binds sockets to the unvalidated WiFi network). */
        public Connector connector;
        public String nowString() {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
        }
    }

    public interface Connector {
        java.net.URLConnection open(String url) throws java.io.IOException;
    }

    public static final class NetInfo {
        public String ipv4 = "", ipv6 = "", mac = "", gateway = "", model = "phone";
    }

    /** Server-pushed config buckets (public = detect <config>; private = auth/keep responses). */
    public final Map<String, String> publicConfig = new LinkedHashMap<>();
    public final Map<String, String> privateConfig = new LinkedHashMap<>();

    public final Env env;
    public final Codec codec;

    /** Pluggable logger so Android can route to logcat with a clean tag. */
    public interface Logger { void log(String msg); }
    public static Logger LOG = new Logger() {
        @Override public void log(String m) { System.out.println(m); }
    };

    public CdcClient(Env env, Codec codec) {
        this.env = env;
        this.codec = codec;
        if (env.clientId.isEmpty()) env.clientId = UUID.randomUUID().toString();
    }

    public String pub(String k) { return publicConfig.getOrDefault(k, ""); }
    public String priv(String k) { return privateConfig.getOrDefault(k, ""); }
    public String ticket() { return priv("ticket"); }

    /** FUN_ urls: value is JSON {enable,url,ipv6Url}. */
    public String funcfgUrl(String name) {
        String raw = pub("FUN_" + name);
        if (raw.isEmpty()) return "";
        try {
            Map<String, Object> o = Json.obj(raw);
            if (!"1".equals(Json.str(o.get("enable"), "0"))) return "";
            String v4 = Json.str(o.get("url"), "");
            return !v4.isEmpty() ? v4 : Json.str(o.get("ipv6Url"), "");
        } catch (Exception e) { return ""; }
    }

    // ---------------------------------------------------------------- transport

    public static final class Result {
        public int httpCode;
        public String cdcCode = "", subCode = "", extraCode = "";
        public byte[] data;
        public String finalUrl = "", redirectUrl = "";
        public boolean hasIndexPage;
        public boolean isHttpOk() { return httpCode >= 200 && httpCode < 300; }
        public boolean isSuccessful() { return isHttpOk() && "0".equals(cdcCode); }
        public String getDataString() { return data == null ? "" : new String(data, StandardCharsets.UTF_8); }
        @Override public String toString() {
            return "http=" + httpCode + " cdc=" + cdcCode + " sub=" + subCode + " extra=" + extraCode;
        }
    }

    /** POST with the two body modes of the original (encoded vs 36-byte placeholder). */
    public Result post(String url, byte[] xmlBody, boolean bootstrap) {
        Result r = new Result();
        int algoErrCount = 0;
        byte[] body;
        String algoId;
        if (!bootstrap && codec != null && codec.ok()) {
            body = codec.encode(xmlBody);
            algoId = codec.id();
            if (body == null || body.length == 0) {
                r.extraCode = "200113";   // ENCODE_ERROR, nothing sent (original behaviour)
                LOG.log("POST " + url + " -> ENCODE_ERROR (plugin present but encode empty)");
                return r;
            }
        } else {
            body = ZERO_DATA;
            algoId = ZERO_AID;
            LOG.log("POST " + url + " bootstrap(placeholder body, no plugin)");
        }
        while (true) {
            Result one = send(url, body, algoId, false);
            if (one.isHttpOk() && "200".equals(one.cdcCode) && one.data != null) {
                // ALGO_EXPIRED: response body is a fresh ZSM plugin; install and retry.
                if (codec == null || ++algoErrCount > 3) { r = one; break; }
                if (!codec.load(one.data)) { r = one; break; }
                body = codec.encode(xmlBody);
                algoId = codec.id();
                if (body == null || body.length == 0) { one.extraCode = "200113"; r = one; break; }
                continue;
            }
            if (one.isHttpOk() && "0".equals(one.cdcCode) && one.data != null && one.data.length > 0) {
                if (bootstrap || (codec != null && codec.ok())) {
                    byte[] dec = codec == null ? one.data : codec.decode(one.data);
                    one.data = (dec == null || dec.length == 0) ? null : dec;
                    if (one.data == null) one.extraCode = "200114"; // DECODE_ERROR
                } else {
                    one.extraCode = "200114";
                }
            }
            r = one;
            break;
        }
        return r;
    }

    /** GET used by detect(): manual redirect following (max 5), no auto-follow. */
    public Result get(String url, boolean forDetect) {
        Result r = new Result();
        String cur = url;
        for (int hop = 0; hop <= 5; hop++) {
            r = send(cur, null, null, true);
            r.finalUrl = cur;
            if (r.httpCode == 301 || r.httpCode == 302 || r.httpCode == 307) {
                String loc = header("Location");
                if (loc == null || loc.isEmpty()) break;
                r.redirectUrl = abs(cur, loc);
                cur = r.redirectUrl;
                continue;
            }
            if (forDetect && r.isHttpOk()) {
                String body = r.getDataString();
                String meta = reFirst(body, "<meta\\s+http-equiv=['\"]?refresh[^>]*url=([^\"'>]+)", 1);
                String js = reFirst(body, "location.href=['\"]([^'\"]+)['\"]", 1);
                String jump = meta != null ? meta : js;
                if (jump != null && !jump.isEmpty()) { cur = abs(cur, jump); continue; }
            }
            break;
        }
        return r;
    }

    private String lastHeaderLoc;
    private String header(String k) { return "Location".equals(k) ? lastHeaderLoc : null; }

    private java.net.URLConnection openConn(String url) throws java.io.IOException {
        if (env.connector != null) return env.connector.open(url);
        return new URL(url).openConnection(env.proxy);
    }

    private Result send(String url, byte[] body, String algoId, boolean isGet) {
        Result r = new Result();
        lastHeaderLoc = null;
        try {
            HttpURLConnection c = (HttpURLConnection) openConn(url);
            c.setInstanceFollowRedirects(false);
            c.setConnectTimeout(env.connTimeoutMs);
            c.setReadTimeout(env.readTimeoutMs);
            c.setRequestProperty("accept", "text/html,text/xml,application/xhtml+xml,application/x-javascript,*/*");
            c.setRequestProperty("Connection", "close");
            addIfNotEmpty(c, "CDC-SchoolId", priv("schoolID"));
            addIfNotEmpty(c, "CDC-Domain", priv("domain"));
            addIfNotEmpty(c, "CDC-Area", priv("area"));
            c.setRequestProperty("Client-ID", env.clientId);
            c.setRequestProperty("User-Agent", env.userAgent);
            if (!isGet) {
                c.setRequestMethod("POST");
                c.setDoOutput(true);
                c.setRequestProperty("Algo-ID", algoId);
                c.setRequestProperty("CDC-Checksum", hex(md5(body)));
                c.setRequestProperty("Content-Length", String.valueOf(body.length));
                c.setRequestProperty("Content-Type", "text/plain; charset=utf-8");
                try (OutputStream os = c.getOutputStream()) { os.write(body); }
            } else {
                c.setRequestMethod("GET");
            }
            r.httpCode = c.getResponseCode();
            r.cdcCode = nz(c.getHeaderField("Error-Code"));
            r.subCode = nz(c.getHeaderField("Sub-Error"));
            lastHeaderLoc = c.getHeaderField("Location");
            // detect GET: server may reflect school identity headers
            if (isGet) {
                putIfNotEmpty(privateConfig, "schoolID", c.getHeaderField("schoolID"));
                putIfNotEmpty(privateConfig, "domain", c.getHeaderField("domain"));
                putIfNotEmpty(privateConfig, "area", c.getHeaderField("area"));
            }
            InputStream is = r.httpCode >= 400 ? c.getErrorStream() : c.getInputStream();
            if (is != null) {
                ByteArrayOutputStream bo = new ByteArrayOutputStream();
                byte[] buf = new byte[8192];
                int n;
                while ((n = is.read(buf)) > 0) bo.write(buf, 0, n);
                r.data = bo.toByteArray();
            }
            r.hasIndexPage = r.isHttpOk();
            c.disconnect();
        } catch (Exception e) {
            r.httpCode = -1;
            r.extraCode = "300108"; // NETWORK_ERROR
            System.err.println("[cdc] " + url + " -> " + e);
        }
        return r;
    }

    // ---------------------------------------------------------------- protocol

    public static final class Portal {
        public static final String
            DETECT1 = "http://14.146.227.141:7001/detect.html",
            DETECT2 = "http://121.8.177.212:7001/",
            DETECT_FALLBACK = "http://www.189.cn",
            TAG_START = "<!--//config.campus.js.chinatelecom.com",
            TAG_END = "//config.campus.js.chinatelecom.com-->";
    }

    /** @return 200 campus portal + config installed; 201 jumped(non-campus); 202/other = fail code */
    public int detect() {
        String override = System.getProperty("gdportal.detect", "");
        String[] cands;
        if (!override.isEmpty()) {
            cands = new String[]{ override };
        } else {
            String redir = priv("DetectRedirectUrl");
            cands = new String[]{ Portal.DETECT1,
                    !redir.isEmpty() ? redir : Portal.DETECT_FALLBACK };
        }
        int last = -1;
        for (String url : cands) {
            if (url == null || url.isEmpty()) continue;
            LOG.log("detect try: " + url);
            int code = detectOnce(url);
            LOG.log("detect -> " + code);
            if (code == 200) return 200;
            last = code;
        }
        return last;
    }

    private int detectOnce(String url) {
        int oldC = env.connTimeoutMs, oldR = env.readTimeoutMs;
        env.connTimeoutMs = 8000; env.readTimeoutMs = 8000;   // campus ACs can be slow
        Result r = get(url, true);
        env.connTimeoutMs = oldC; env.readTimeoutMs = oldR;
        String redirect = r.redirectUrl;
        if (!redirect.isEmpty()) privateConfig.put("DetectRedirectUrl", redirect);
        if (r.isHttpOk()) {
            String body = r.getDataString();
            int a = body.indexOf(Portal.TAG_START);
            int b = body.lastIndexOf(Portal.TAG_END);
            if (a < 0 || b < 0) {
                LOG.log("page has no config markers (len=" + body.length() + ")");
                return 201;
            }
            String cfg = body.substring(a + Portal.TAG_START.length(), b).trim();
            LOG.log("raw cfg(" + cfg.length() + "): " + cfg.substring(0,
                    Math.min(cfg.length(), 1500)).replaceAll("[\\r\\n]+", " "));
            installConfig(cfg);
            if (!r.finalUrl.isEmpty()) privateConfig.put("DetectIndexUrl", r.finalUrl);
            LOG.log("config installed, keys=" + publicConfig.keySet());
            return 200;
        }
        LOG.log("detect http fail: code=" + r.httpCode + " extra=" + r.extraCode);
        if (r.hasIndexPage) return 202;
        if (r.httpCode >= 400) return 201;
        return r.httpCode;
    }

    /** Parse the detect <config> blob into publicConfig (FUN_ prefixed sub-objects). */
    void installConfig(String xmlSlice) {
        try {
            String inner = xmlSlice;
            int s = inner.indexOf("<config>");
            int e = inner.lastIndexOf("</config>");
            if (s >= 0 && e > s) inner = inner.substring(s + 8, e);
            inner = inner.replace("&amp;", "&");
            XmlLite.Node root = XmlLite.parse(inner);
            XmlLite.Node cfg = root.child("config") != null ? root.child("config") : root;
            for (XmlLite.Node n : cfg.children) {
                if (n.name.equals("funcfg")) {
                    for (XmlLite.Node f : n.children) {
                        publicConfig.put("FUN_" + f.name, f.children.isEmpty()
                                ? nodeAttrsToJson(f) : nodeToJson(f));
                    }
                } else {
                    publicConfig.put(n.name, n.children.isEmpty()
                            ? (n.text.isEmpty() ? nodeAttrsToJson(n) : n.text) : nodeToJson(n));
                }
            }
        } catch (Exception ex) {
            LOG.log("config parse error: " + ex);
        }
    }

    /** {"attr":"val",...} for attribute-only nodes like <Province name="GD"/>. */
    private static String nodeAttrsToJson(XmlLite.Node n) {
        StringBuilder sb = new StringBuilder("{");
        boolean first = true;
        for (String k : n.attrs.keySet()) {
            if (!first) sb.append(',');
            first = false;
            sb.append('"').append(k).append("\":\"").append(esc(n.attrs.get(k))).append('"');
        }
        return sb.append('}').toString();
    }

    private static String nodeToJson(XmlLite.Node n) {
        Map<String, String> m = new LinkedHashMap<>();
        for (String k : n.attrs.keySet()) m.put(k, n.attrs.get(k));
        for (XmlLite.Node c : n.children)
            m.put(c.name, c.children.isEmpty()
                    ? (c.text.isEmpty() ? nodeAttrsToJson(c) : c.text) : nodeToJson(c));
        StringBuilder sb = new StringBuilder("{");
        boolean first = true;
        for (Map.Entry<String, String> en : m.entrySet()) {
            if (!first) sb.append(',');
            first = false;
            String v = en.getValue();
            boolean raw = v.startsWith("{") || v.startsWith("[");
            sb.append('"').append(en.getKey()).append("\":")
              .append(raw ? v : '"' + esc(v) + '"');
        }
        return sb.append('}').toString();
    }

    private static String esc(String s) {
        return s.replace("\\", "\\\\").replace("\"", "\\\"");
    }

    /** POST ticket-url; stores ticket+expire. */
    public Result fetchTicket() {
        String url = pub("ticket-url");
        if (url.isEmpty()) return urlError();
        LOG.log("ticket POST " + url);
        byte[] xml = XmlBuilder.base(env)
                .item("host-name", env.net.model)
                .item("ipv4", env.net.ipv4).item("ipv6", env.net.ipv6).item("mac", env.net.mac)
                .item("ostag", env.net.model)
                .item("gwip", env.net.gateway)
                .bytes();
        Result r = post(url, xml, false);
        LOG.log("ticket -> " + r + " dataLen=" + (r.data == null ? -1 : r.data.length));
        if (r.data != null) {
            String prev = new String(r.data, 0, Math.min(r.data.length, 400), StandardCharsets.UTF_8);
            LOG.log("ticket resp: " + prev.replaceAll("[\\r\\n]+", " "));
        }
        if (r.isSuccessful()) {
            XmlLite.Node resp = XmlLite.parse(r.getDataString()).child("response");
            if (resp != null) {
                String t = resp.text("ticket", ""), exp = resp.text("expire", "");
                if (!t.isEmpty() && !exp.isEmpty()) {
                    privateConfig.put("ticket", t);
                    privateConfig.put("expire", String.valueOf(System.currentTimeMillis()
                            + Long.parseLong(exp.trim()) * 1000));
                    privateConfig.put("keep-interval", "300");
                } else { r.extraCode = "200115"; }
            }
        }
        return r;
    }

    /** POST auth-url with account/password[/verify]. On success all response keys -> privateConfig. */
    public Result auth(String account, String password, String verify) {
        String url = pub("auth-url");
        if (url.isEmpty()) return urlError();
        XmlBuilder b = XmlBuilder.base(env)
                .item("ticket", ticket())
                .item("userid", applyDomainRule(account))
                .item("passwd", password);
        if (verify != null && !verify.isEmpty()) b.item("verify", verify);
        env.connTimeoutMs = 30000; env.readTimeoutMs = 30000;   // original auth timeout
        Result r = post(url, b.bytes(), false);
        env.connTimeoutMs = 5000; env.readTimeoutMs = 5000;
        LOG.log("auth -> " + r + " dataLen=" + (r.data == null ? -1 : r.data.length));
        if (r.data != null) LOG.log("auth resp: " + new String(r.data, 0,
                Math.min(r.data.length, 400), StandardCharsets.UTF_8).replaceAll("[\\r\\n]+", " "));
        if (r.isSuccessful()) absorbResponse(r.getDataString(), null);
        return r;
    }

    /** POST keep-url; handles <interval> refresh. */
    public Result keep() {
        String url = priv("keep-url");
        if (url.isEmpty()) url = pub("keep-url");
        if (url.isEmpty()) return urlError();
        byte[] xml = XmlBuilder.base(env)
                .item("ticket", ticket())
                .item("ipv4", env.net.ipv4).item("ipv6", env.net.ipv6).item("mac", env.net.mac)
                .bytes();
        Result r = post(url, xml, false);
        if (r.data != null) LOG.log("keep resp: " + new String(r.data, 0,
                Math.min(r.data.length, 300), StandardCharsets.UTF_8).replaceAll("[\\r\\n]+", " "));
        if (r.isSuccessful()) absorbResponse(r.getDataString(), "interval");
        return r;
    }

    /** POST state-url (query online state). */
    public Result state() {
        String url = pub("state-url");
        if (url.isEmpty()) return urlError();
        byte[] xml = XmlBuilder.base(env).item("ticket", ticket()).bytes();
        Result r = post(url, xml, false);
        if (r.isSuccessful()) absorbResponse(r.getDataString(), null);
        return r;
    }

    /** POST term-url with reason. reason "0" or "14" both count as success (original). */
    public Result term(String reason) {
        String url = priv("term-url");
        if (url.isEmpty()) url = pub("term-url");
        if (url.isEmpty()) return urlError();
        byte[] xml = XmlBuilder.base(env).item("ticket", ticket()).item("reason", reason).bytes();
        Result r = post(url, xml, false);
        if ("0".equals(r.cdcCode) || "14".equals(r.cdcCode)) {
            privateConfig.put("ticket", "");
            privateConfig.put("expire", String.valueOf(System.currentTimeMillis()));
            r.cdcCode = "0";
        }
        return r;
    }

    /** POST query-url: list online clients for this account. */
    public String queryClients() {
        String url = pub("query-url");
        if (url.isEmpty()) return "[]";
        Result r = post(url, XmlBuilder.base(env).item("ticket", ticket()).bytes(), false);
        LOG.log("query -> " + r + " data=" + (r.data == null ? "<null>" :
                new String(r.data, 0, Math.min(r.data.length, 300), StandardCharsets.UTF_8)));
        if (!r.isSuccessful()) return "[]";
        XmlLite.Node resp = XmlLite.parse(r.getDataString()).child("response");
        StringBuilder sb = new StringBuilder("[");
        if (resp != null) {
            boolean first = true;
            for (XmlLite.Node c : resp.children("client")) {
                if (!first) sb.append(',');
                first = false;
                sb.append(nodeToJson(c));
            }
        }
        return sb.append(']').toString();
    }

    /** Kick another client by its ticket (term-url + reason 8). */
    public Result termOther(String otherTicket) {
        String url = priv("term-url");
        if (url.isEmpty()) url = pub("term-url");
        if (url.isEmpty()) return urlError();
        byte[] xml = XmlBuilder.base(env).item("ticket", otherTicket).item("reason", "8").bytes();
        return post(url, xml, false);
    }

    /** OTP: request SMS verify code. salt Eshore!@# (uppercase hex md5). */
    public boolean getVerifyCode(String account, String schoolId) {
        return otpPost("QueryAuthCode", account, schoolId, "0");
    }

    /** OTP: does this account currently require a code? */
    public boolean checkVerifyNeeded(String account, String schoolId) {
        return otpPost("QueryVerificateCodeStatus", account, schoolId, "11062000");
    }

    private boolean otpPost(String funcfgName, String account, String schoolId, String okRescode) {
        String url = funcfgUrl(funcfgName);
        if (url.isEmpty()) return false;
        long ts = System.currentTimeMillis();
        String auth = hexUpper(md5((schoolId + ts + "Eshore!@#").getBytes(StandardCharsets.UTF_8)));
        String json = "{\"schoolid\":\"" + schoolId + "\",\"username\":\"" + account
                + "\",\"timestamp\":\"" + ts + "\",\"authenticator\":\"" + auth + "\"}";
        try {
            HttpURLConnection c = (HttpURLConnection) openConn(url);
            c.setConnectTimeout(1000); c.setReadTimeout(1000);
            c.setRequestMethod("POST"); c.setDoOutput(true);
            c.setRequestProperty("Content-Type", "application/json");
            c.setRequestProperty("User-Agent", env.userAgent);
            c.setRequestProperty("Client-ID", env.clientId);
            try (OutputStream os = c.getOutputStream()) { os.write(json.getBytes(StandardCharsets.UTF_8)); }
            if (c.getResponseCode() / 100 != 2) return false;
            byte[] all = readAll(c.getInputStream());
            String res = new String(all, StandardCharsets.UTF_8);
            return okRescode.equals(Json.str(Json.obj(res).get("rescode"), ""));
        } catch (Exception e) { return false; }
    }

    /** isOnline: ticket present and expire in the future (original ConfigInfo.isOnline). */
    public boolean isOnline() {
        if (ticket().isEmpty()) return false;
        try { return Long.parseLong(priv("expire")) > System.currentTimeMillis(); }
        catch (Exception e) { return false; }
    }

    public long keepIntervalMs() {
        try { return Long.parseLong(priv("keep-interval")) * 1000; }
        catch (Exception e) { return 300_000; }
    }

    // ---------------------------------------------------------------- helpers

    private void absorbResponse(String xml, String specialKey) {
        XmlLite.Node resp = XmlLite.parse(xml).child("response");
        if (resp == null) return;
        for (XmlLite.Node n : resp.children) {
            if (n.name.equals("userid")) {
                String u = n.text.contains("@") ? n.text.split("@")[0] : n.text;
                privateConfig.put("userId", u);
            } else if (specialKey != null && n.name.equals(specialKey)) {
                if (!n.text.isEmpty()) {
                    privateConfig.put("keep-interval", n.text);
                    long retry = parseLong(priv("keep-retry"), 3);
                    privateConfig.put("expire", String.valueOf(
                            System.currentTimeMillis() + parseLong(n.text, 300) * retry * 1000));
                }
            } else {
                privateConfig.put(n.name, n.text);
            }
        }
    }

    /** account.modify rule from detect config: {"modify":[{"type":"del-domain",...}]} */
    String applyDomainRule(String account) {
        String rule = pub("account");
        if (rule.isEmpty()) return account;
        try {
            Object m = Json.obj(rule).get("modify");
            if (m == null) return account;
            java.util.List<?> list = m instanceof java.util.List ? (java.util.List<?>) m
                    : java.util.Collections.singletonList(m);
            String out = account;
            for (Object o : list) {
                @SuppressWarnings("unchecked") Map<String, Object> r = (Map<String, Object>) o;
                String type = Json.str(r.get("type"), ""), val = Json.str(r.get("value"), "");
                if ("del-domain".equals(type)) {
                    if (!val.isEmpty() && out.endsWith("@" + val)) out = out.substring(0, out.length() - val.length() - 1);
                    else if (out.contains("@")) out = out.split("@")[0];
                } else if (!val.isEmpty() && !out.contains("@")) {
                    out = out + "@" + val;
                }
            }
            return out;
        } catch (Exception e) { return account; }
    }

    private static Result urlError() {
        Result r = new Result();
        r.extraCode = "300309"; // CONFIG_URL_ERROR
        return r;
    }

    private static void addIfNotEmpty(HttpURLConnection c, String k, String v) {
        if (v != null && !v.isEmpty()) c.setRequestProperty(k, v);
    }

    private static void putIfNotEmpty(Map<String, String> m, String k, String v) {
        if (v != null && !v.isEmpty()) m.put(k, v);
    }

    private static String nz(String s) { return s == null ? "" : s; }

    private static long parseLong(String s, long def) {
        try { return Long.parseLong(s.trim()); } catch (Exception e) { return def; }
    }

    private static String abs(String base, String rel) {
        try { return new URL(new URL(base), rel).toString(); } catch (Exception e) { return rel; }
    }

    private static String reFirst(String s, String re, int group) {
        java.util.regex.Matcher m = java.util.regex.Pattern.compile(re, java.util.regex.Pattern.CASE_INSENSITIVE).matcher(s);
        return m.find() ? m.group(group) : null;
    }

    private static byte[] readAll(InputStream is) throws java.io.IOException {
        ByteArrayOutputStream bo = new ByteArrayOutputStream();
        byte[] buf = new byte[4096]; int n;
        while ((n = is.read(buf)) > 0) bo.write(buf, 0, n);
        return bo.toByteArray();
    }

    public static byte[] md5(byte[] in) {
        try { return MessageDigest.getInstance("MD5").digest(in); }
        catch (Exception e) { throw new RuntimeException(e); }
    }

    private static String hex(byte[] b) {
        StringBuilder sb = new StringBuilder();
        for (byte x : b) sb.append(String.format("%02x", x));
        return sb.toString();
    }

    private static String hexUpper(byte[] b) { return hex(b).toUpperCase(java.util.Locale.US); }
}
