package com.gdportal;

import com.gdportal.core.*;

import java.io.File;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.Scanner;

/**
 * Command-line dialer for the 广东校园 (CDC campus broadband) portal.
 *
 *   dialer add <name> <account> <password>     add/replace an account
 *   dialer list                                list accounts + session state
 *   dialer login [name]                         detect -> ticket -> auth (asks OTP if needed)
 *   dialer status [name]                        state-url + isOnline
 *   dialer keep  [name]                         one keep
 *   dialer keepalive [name]                     loop keep until Ctrl-C / line drops
 *   dialer logout [name]                        term reason=1
 *   dialer clients [name]                       list online clients (query-url)
 *   dialer kick <ticket> [name]                 term another client (reason=8)
 *   dialer del <name>                           remove account
 *
 * Requires being on the campus WiFi (DHCP'd, unauthenticated) — the detect step
 * fails with 201/202 otherwise. Password is sent per protocol (DaMod-encoded body);
 * on plain JVM the codec can't run native, so login on PC is detect/diagnose only —
 * full auth runs inside the Android APK build (DaModCodec). See README.
 */
public final class Main {

    static final File HOME = new File(System.getProperty("user.home"), ".gdportal");
    static final File STORE = new File(HOME, "accounts.json");
    static final File PLUGIN = new File(HOME, "plugin");

    public static void main(String[] args) throws Exception {
        if (args.length == 0) { usage(); return; }
        String cmd = args[0];
        AccountStore store = new AccountStore(STORE);
        switch (cmd) {
            case "add": {
                if (args.length < 4) { die("usage: add <name> <account> <password>"); }
                AccountStore.Account a = store.ensure(args[1], args[2], args[3]);
                System.out.println("saved " + a.describe());
                break;
            }
            case "del": {
                store.remove(arg(args, 1)); break;
            }
            case "list": {
                if (store.accounts.isEmpty()) { System.out.println("(no accounts) — use: dialer add <name> <account> <password>"); break; }
                for (AccountStore.Account a : store.accounts) System.out.println(a.describe());
                break;
            }
            case "login": {
                CdcClient c = client(store, arg(args, 1));
                int det = c.detect();
                System.out.println("detect -> " + det + (det == 200 ? "  (campus portal found)" : "  (NOT on campus portal)"));
                if (det != 200) { die("not on a campus network (detect=" + det + ")"); }
                AccountStore.Account a = store.byName(store.current);
                CdcClient.Result tk = c.fetchTicket();
                System.out.println("ticket -> " + tk);
                if (!tk.isSuccessful()) {
                    System.out.println("  ticket failed: " + tk);
                }
                String verify = "";
                String schoolId = c.priv("schoolId");
                if (schoolId.isEmpty()) schoolId = c.priv("schoolID");
                if (c.checkVerifyNeeded(a.account, schoolId)) {
                    System.out.print("SMS verify code required, request? [y/N] ");
                    if (new Scanner(System.in).nextLine().trim().equalsIgnoreCase("y")) {
                        c.getVerifyCode(a.account, schoolId);
                        System.out.print("enter code: ");
                        verify = new Scanner(System.in).nextLine().trim();
                    }
                }
                System.out.println("auth -> " + c.auth(a.account, a.password, verify));
                store.absorbSession(a, c);
                store.publicConfigJson = toJson(c.publicConfig);
                store.save();
                break;
            }
            case "status": {
                CdcClient c = client(store, arg(args, 1));
                System.out.println("isOnline=" + c.isOnline() + "  expire=" + c.priv("expire"));
                System.out.println("state -> " + c.state());
                break;
            }
            case "keep": {
                CdcClient c = client(store, arg(args, 1));
                System.out.println("keep -> " + c.keep());
                store.absorbSession(store.byName(store.current), c);
                break;
            }
            case "keepalive": {
                CdcClient c = client(store, arg(args, 1));
                AccountStore.Account a = store.byName(store.current);
                System.out.println("keepalive loop (Ctrl-C to stop), interval=" + c.keepIntervalMs() + "ms");
                while (true) {
                    CdcClient.Result r = c.keep();
                    long now = System.currentTimeMillis();
                    if (r.isSuccessful()) {
                        a.lastKeepOk = now;
                        System.out.println(new java.util.Date() + " keep ok");
                    } else {
                        System.out.println(new java.util.Date() + " keep " + r + " extra=" + r.extraCode);
                        if ("200117".equals(r.extraCode) || !c.isOnline()) {
                            System.out.println("line dropped; re-authenticating...");
                            c.fetchTicket(); c.auth(a.account, a.password, "");
                        }
                    }
                    store.absorbSession(a, c);
                    Thread.sleep(Math.max(30_000, c.keepIntervalMs()));
                }
            }
            case "logout": {
                CdcClient c = client(store, arg(args, 1));
                System.out.println("term -> " + c.term("1"));
                AccountStore.Account a = store.byName(store.current);
                a.ticket = ""; store.absorbSession(a, c);
                break;
            }
            case "clients": {
                CdcClient c = client(store, arg(args, 1));
                System.out.println(c.queryClients());
                break;
            }
            case "kick": {
                CdcClient c = client(store, arg(args, 2));
                System.out.println("kick -> " + c.termOther(arg(args, 1)));
                break;
            }
            default: usage();
        }
    }

    static CdcClient client(AccountStore store, String name) {
        AccountStore.Account a = name == null ? null : store.byName(name);
        if (a == null) {
            if (store.accounts.isEmpty()) die("no accounts — use: dialer add <name> <account> <password>");
            a = store.accounts.get(0);
        }
        store.current = a.name;
        CdcClient.Env env = new CdcClient.Env();
        fillLocalNet(env.net);
        Codec codec = "1".equals(System.getProperty("gdportal.mock"))
                ? new MockCodec() : new FileCodec(PLUGIN);
        CdcClient c = new CdcClient(env, codec);
        // restore shared school config + this account's session
        try {
            java.util.Map<String, Object> cfg = Json.obj(store.publicConfigJson);
            for (String k : cfg.keySet()) {
                Object v = cfg.get(k);
                c.publicConfig.put(k, (v instanceof java.util.Map || v instanceof java.util.List)
                        ? Json.write(v) : Json.str(v, ""));
            }
        } catch (Exception ignore) {}
        store.restoreSession(a, c);
        if (store.damodBlob != null) c.codec.load(store.damodBlob);
        return c;
    }

    /** Best-effort local IPv4 + MAC from the host NICs (Android build overrides via ConnectivityManager). */
    static void fillLocalNet(CdcClient.NetInfo n) {
        try {
            Enumeration<NetworkInterface> ifs = NetworkInterface.getNetworkInterfaces();
            while (ifs.hasMoreElements()) {
                NetworkInterface ni = ifs.nextElement();
                if (ni.isLoopback() || !ni.isUp()) continue;
                Enumeration<InetAddress> as = ni.getInetAddresses();
                while (as.hasMoreElements()) {
                    InetAddress ad = as.nextElement();
                    if (ad instanceof Inet4Address && ad.isSiteLocalAddress()) {
                        n.ipv4 = ad.getHostAddress();
                        byte[] mac = ni.getHardwareAddress();
                        if (mac != null) {
                            StringBuilder sb = new StringBuilder();
                            for (int i = 0; i < mac.length; i++) sb.append(String.format("%02X%s", mac[i], i < mac.length - 1 ? ":" : ""));
                            n.mac = sb.toString();
                        }
                        n.model = ni.getName();
                    }
                }
            }
        } catch (Exception e) { /* leave blank */ }
    }

    static String toJson(java.util.Map<String, String> m) {
        java.util.Map<String, Object> out = new java.util.LinkedHashMap<>();
        for (String k : m.keySet()) {
            String v = m.get(k);
            String t = v == null ? "" : v.trim();
            if (t.startsWith("{") || t.startsWith("[")) {
                try { out.put(k, Json.parse(t)); continue; } catch (Exception ignore) {}
            }
            out.put(k, v);
        }
        return Json.write(out);
    }

    static String arg(String[] a, int i) { return i < a.length ? a[i] : null; }
    static void die(String m) { System.err.println(m); System.exit(2); }
    static void usage() {
        System.out.println("dialer — 广东校园 CLI\n" +
            "  add <name> <account> <password> | list | del <name>\n" +
            "  login [name] | status [name] | keep [name] | keepalive [name] | logout [name]\n" +
            "  clients [name] | kick <ticket> [name]\n" +
            "config in ~/.gdportal/  (run on campus WiFi; full auth needs the Android build)");
    }
}
