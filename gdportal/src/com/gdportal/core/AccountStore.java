package com.gdportal.core;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

/** Multi-account store + per-account session buckets (original app is single-account;
 *  this is the user-requested extension). JSON file, plaintext or XOR-obfuscated pw. */
public final class AccountStore {

    public static final class Account {
        public String name = "", account = "", password = "";
        public final CdcClient.NetInfo lastNet = new CdcClient.NetInfo();
        // session (per-account, unlike the original global bucket)
        public String ticket = "", expire = "", keepUrl = "", termUrl = "", keepInterval = "300";
        public long lastKeepOk;
        public boolean autoKeep;

        public String describe() {
            return name + "  " + account + (ticket.isEmpty() ? "  [下线]" : "  [票据至 "
                    + new java.util.Date(Long.parseLong(expire)) + "]");
        }
    }

    private final File file;
    public final List<Account> accounts = new ArrayList<>();
    public String current = "";
    /** Shared protocol config from detect (school-level, not account-level). */
    public String publicConfigJson = "{}";
    /** ZSM plugin blob (school-level). */
    public byte[] damodBlob;

    public AccountStore(File f) { this.file = f; load(); }

    public Account byName(String n) {
        for (Account a : accounts) if (a.name.equals(n) || a.account.equals(n)) return a;
        try { return accounts.get(Integer.parseInt(n)); } catch (Exception e) { return null; }
    }

    public Account ensure(String n, String acct, String pw) {
        Account a = byName(n);
        if (a == null) { a = new Account(); a.name = n; accounts.add(a); }
        if (!acct.isEmpty()) a.account = acct;
        if (!pw.isEmpty()) a.password = pw;
        current = a.name;
        save();
        return a;
    }

    public void remove(String n) {
        Account a = byName(n);
        if (a != null) { accounts.remove(a); save(); }
    }

    // ---- (de)serialise: hand-rolled to keep zero deps ----

    public void load() {
        try {
            if (!file.exists()) return;
            byte[] b = new byte[(int) file.length()];
            try (FileInputStream in = new FileInputStream(file)) {
                if (in.read(b) < 0) return;
            }
            java.util.Map<String, Object> root = Json.obj(new String(b, StandardCharsets.UTF_8));
            current = Json.str(root.get("current"), "");
            Object cfg = root.get("config");
            publicConfigJson = (cfg instanceof String) ? (String) cfg
                    : (cfg == null ? "{}" : Json.write(cfg));
            String blob = Json.str(root.get("damod"), "");
            if (!blob.isEmpty()) damodBlob = java.util.Base64.getDecoder().decode(blob);
            Object as = root.get("accounts");
            if (as instanceof List) for (Object o : (List<?>) as) {
                @SuppressWarnings("unchecked") java.util.Map<String, Object> m = (java.util.Map<String, Object>) o;
                Account a = new Account();
                a.name = Json.str(m.get("name"), "");
                a.account = Json.str(m.get("account"), "");
                a.password = unob(Json.str(m.get("pw"), ""));
                a.ticket = Json.str(m.get("ticket"), "");
                a.expire = Json.str(m.get("expire"), "");
                a.keepUrl = Json.str(m.get("keepUrl"), "");
                a.termUrl = Json.str(m.get("termUrl"), "");
                a.keepInterval = Json.str(m.get("keepInterval"), "300");
                a.autoKeep = "1".equals(Json.str(m.get("autoKeep"), "0"));
                accounts.add(a);
            }
        } catch (Exception e) {
            System.err.println("[store] load failed: " + e);
        }
    }

    public void save() {
        StringBuilder sb = new StringBuilder();
        sb.append("{\"current\":\"").append(current).append("\",")          .append("\"damod\":\"").append(damodBlob == null ? ""
                : java.util.Base64.getEncoder().encodeToString(damodBlob)).append("\",")
          .append("\"accounts\":[");
        for (int i = 0; i < accounts.size(); i++) {
            Account a = accounts.get(i);
            if (i > 0) sb.append(',');
            sb.append("{\"name\":\"").append(a.name).append("\",\"account\":\"").append(a.account)
              .append("\",\"pw\":\"").append(ob(a.password)).append("\",\"ticket\":\"").append(a.ticket)
              .append("\",\"expire\":\"").append(a.expire).append("\",\"keepUrl\":\"").append(a.keepUrl)
              .append("\",\"termUrl\":\"").append(a.termUrl).append("\",\"keepInterval\":\"")
              .append(a.keepInterval).append("\",\"autoKeep\":\"").append(a.autoKeep ? "1" : "0")
              .append("\"}");
        }
        sb.append("],\"config\":").append(publicConfigJson.isEmpty() ? "{}" : publicConfigJson).append("}");
        file.getParentFile().mkdirs();
        try (FileOutputStream out = new FileOutputStream(file)) {
            out.write(sb.toString().getBytes(StandardCharsets.UTF_8));
        } catch (Exception e) {
            System.err.println("[store] save failed: " + e);
        }
    }

    /** Copy live session back into the account record. */
    public void absorbSession(Account a, CdcClient c) {
        a.ticket = c.priv("ticket");
        a.expire = c.priv("expire");
        String k = c.priv("keep-url"); if (!k.isEmpty()) a.keepUrl = k;
        String t = c.priv("term-url"); if (!t.isEmpty()) a.termUrl = t;
        String i = c.priv("keep-interval"); if (!i.isEmpty()) a.keepInterval = i;
        save();
    }

    /** Restore account session into a fresh client. */
    public void restoreSession(Account a, CdcClient c) {
        if (!a.ticket.isEmpty()) c.privateConfig.put("ticket", a.ticket);
        if (!a.expire.isEmpty()) c.privateConfig.put("expire", a.expire);
        if (!a.keepUrl.isEmpty()) c.privateConfig.put("keep-url", a.keepUrl);
        if (!a.termUrl.isEmpty()) c.privateConfig.put("term-url", a.termUrl);
        if (!a.keepInterval.isEmpty()) c.privateConfig.put("keep-interval", a.keepInterval);
    }

    // trivial obfuscation for stored passwords (NOT security, just no shoulder-surf plaintext)
    private static final byte[] K = "gdportal-obf-k1".getBytes(StandardCharsets.UTF_8);
    static String ob(String s) {
        byte[] b = s.getBytes(StandardCharsets.UTF_8);
        for (int i = 0; i < b.length; i++) b[i] ^= K[i % K.length];
        return java.util.Base64.getEncoder().encodeToString(b);
    }
    static String unob(String s) {
        try {
            byte[] b = java.util.Base64.getDecoder().decode(s);
            for (int i = 0; i < b.length; i++) b[i] ^= K[i % K.length];
            return new String(b, StandardCharsets.UTF_8);
        } catch (Exception e) { return ""; }
    }
}
