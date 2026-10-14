package com.gdportal.android;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;

import com.gdportal.core.AccountStore;
import com.gdportal.core.CdcClient;

import java.io.File;
import java.net.NetworkInterface;

/**
 * Foreground keep-alive service, minimal replacement for HoldService/HoldKeepService.
 * No anti-sharing probes, no telemetry upload — only ticket/auth/keep/term.
 *
 * Start:  new Intent(ctx, DialService).setAction(ACTION_LOGIN|ACTION_KEEPALIVE|ACTION_LOGOUT)
 *         extras: "name" (account key), "account", "password" (login only)
 */
public final class DialService extends Service {
    public static final String ACTION_LOGIN = "gdportal.LOGIN";
    public static final String ACTION_KEEPALIVE = "gdportal.KEEPALIVE";
    public static final String ACTION_LOGOUT = "gdportal.LOGOUT";
    public static final String ACTION_KEEP = "gdportal.KEEP";
    public static final String ACTION_CLIENTS = "gdportal.CLIENTS";
    public static final String ACTION_KICK = "gdportal.KICK";
    public static final String EXTRA_TICKET = "ticket";
    public static final String EXTRA_NAME = "name";
    public static final String EXTRA_ACCOUNT = "account";
    public static final String EXTRA_PASSWORD = "password";

    private static final int NOTIF_ID = 42;
    private static final String CHANNEL = "gdportal-dial";

    private volatile boolean keepLoop;
    private Thread worker;
    private DaModCodec codec;
    private AccountStore store;

    @Override public IBinder onBind(Intent i) { return null; }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        createChannel();
        startForeground(NOTIF_ID, buildNotif("校园宽带 · 未连接"));
        // 未认证校园网流量绑定: newClient() 里用 Network.openConnection 强制走 WiFi
        String action = intent == null ? "" : intent.getAction();
        String name = intent == null ? null : intent.getStringExtra(EXTRA_NAME);
        if (action.isEmpty()) {
            // START_STICKY 重启(intent=null): 用上次账号自动恢复保活循环
            String last = getLast("last_name");
            if (last != null) { startKeepLoop(last); notifyState("服务重启，自动恢复保活"); }
            return START_STICKY;
        }
        putLast("last_name", name);

        new Thread(() -> handle(action, name, intent), "gdportal-handle").start();
        return START_STICKY;
    }

    private String getLast(String key) {
        try {
            File f = new File(getFilesDir(), "gdportal/" + key);
            if (!f.exists()) return null;
            java.io.FileInputStream in = new java.io.FileInputStream(f);
            byte[] b = new byte[128];
            int n = in.read(b); in.close();
            return n > 0 ? new String(b, 0, n, "UTF-8").trim() : null;
        } catch (Exception e) { return null; }
    }

    private void putLast(String key, String val) {
        try {
            File f = new File(getFilesDir(), "gdportal/" + key);
            f.getParentFile().mkdirs();
            java.io.FileOutputStream o = new java.io.FileOutputStream(f);
            o.write(val.getBytes("UTF-8")); o.close();
        } catch (Exception ignore) {}
    }

    private void handle(String action, String name, Intent intent) {
        com.gdportal.core.CdcClient.LOG = new com.gdportal.core.CdcClient.Logger() {
            @Override public void log(String m) { Log.i("gdportal", m); }
        };
        try {
            if (store == null) store = new AccountStore(new File(getFilesDir(), "gdportal/accounts.json"));
            if (codec == null) codec = new DaModCodec();
            CdcClient c = newClient(name, intent);

            if (ACTION_LOGOUT.equals(action)) {
                notifyState("正在下线…");
                c.term("1");
                stopKeepLoop();
                notifyState("已下线");
                return;
            }
            // 单发 keep / 终端管理: 不走 detect 门(已认证线路 detect=201 属正常)
            if (ACTION_KEEP.equals(action)) {
                CdcClient.Result r = c.keep();
                store.absorbSession(store.byName(name), c);
                notifyState(r.isSuccessful() ? "keep ok ✓" : "keep 失败 " + r.cdcCode + "/" + r.subCode);
                return;
            }
            if (ACTION_CLIENTS.equals(action)) {
                Log.i("gdportal", "publicConfig keys=" + c.publicConfig.keySet());
                String list = c.queryClients();
                Log.i("gdportal", "clients: " + list);
                notifyState("在线终端: " + list);
                return;
            }
            if (ACTION_KICK.equals(action)) {
                String tk = intent.getStringExtra(EXTRA_TICKET);
                CdcClient.Result r = c.termOther(tk);
                notifyState(r.isSuccessful() ? "已踢 " + tk : "踢失败 " + r.cdcCode);
                return;
            }
            if (ACTION_KEEPALIVE.equals(action) && c.isOnline()) {
                // 线路已认证(重启App后恢复会话): 跳过 detect 门直接续活
                notifyState("会话在线，恢复保活循环");
                startKeepLoop(name);
                return;
            }
            notifyState("检测网络…");
            int det = c.detect();
            if (det != 200 && (c.isOnline() || !c.ticket().isEmpty())) {
                // 线路已被本会话(旧票据)认证: 原版"重登"语义 = term reason 5 后重走
                notifyState("线路已在线，先下线重拨…");
                c.term("5");
                det = c.detect();
            }
            if (det != 200) {
                notifyState("不在校园网 (detect=" + det + ") " + netDiag());
                return;
            }

            if (ACTION_LOGIN.equals(action)) {
                notifyState("获取票据…");
                CdcClient.Result tk = c.fetchTicket();
                if (!tk.isSuccessful()) {
                    notifyState("ticket 失败 http=" + tk.httpCode + " cdc=" + tk.cdcCode
                            + " sub=" + tk.subCode + " extra=" + tk.extraCode);
                    return;
                }
                String acct = intent.getStringExtra(EXTRA_ACCOUNT);
                String pw = intent.getStringExtra(EXTRA_PASSWORD);
                AccountStore.Account a = store.ensure(name, acct, pw);
                notifyState("认证中…");
                CdcClient.Result r = c.auth(acct, pw, "");
                if (!r.isSuccessful()) { notifyState("认证失败 " + r.cdcCode + "/" + r.subCode); return; }
                store.absorbSession(a, c);
                store.publicConfigJson = json(c.publicConfig);
                store.save();
                notifyState("已连接 ✓");
            }
            startKeepLoop(name);
        } catch (Exception e) {
            notifyState("异常: " + e);
        }
    }

    // ---------------------------------------------------------------- keep loop

    private void startKeepLoop(String name) {
        stopKeepLoop();
        keepLoop = true;
        worker = new Thread(() -> {
            while (keepLoop) {
                try {
                    CdcClient c = newClient(name, null);
                    long iv = c.keepIntervalMs();
                    notifyState("保活中 (下次 " + iv / 1000 + "s)");
                    Thread.sleep(iv);
                    if (!keepLoop) break;
                    CdcClient.Result r = c.keep();
                    if (r.isSuccessful()) {
                        Log.i("gdportal", "keep ok, expire=" + c.priv("expire"));
                        store.absorbSession(store.byName(name), c);
                    } else {
                        Log.w("gdportal", "keep fail " + r);
                        if ("200117".equals(r.extraCode) || !c.isOnline()) {
                            notifyState("掉线，重连…");
                            AccountStore.Account a = store.byName(name);
                            if (c.detect() == 200 && c.fetchTicket().isSuccessful())
                                c.auth(a.account, a.password, "");
                            store.absorbSession(a, c);
                        }
                    }
                } catch (InterruptedException ie) {
                    return;
                } catch (Exception e) {
                    notifyState("保活异常: " + e);
                    try { Thread.sleep(30_000); } catch (InterruptedException ie) { return; }
                }
            }
        }, "gdportal-keep");
        worker.start();
    }

    private void stopKeepLoop() {
        keepLoop = false;
        if (worker != null) { worker.interrupt(); worker = null; }
    }

    // ---------------------------------------------------------------- platform glue

    /** 一行网络现场诊断: WiFi状态/SSID/IP/默认网络, 用于通知栏直读. */
    private String netDiag() {
        try {
            StringBuilder sb = new StringBuilder();
            WifiManager wm = (WifiManager) getApplicationContext().getSystemService(Context.WIFI_SERVICE);
            sb.append("WiFi=").append(wm.isWifiEnabled() ? "on" : "off");
            ConnectivityManager cm = (ConnectivityManager) getSystemService(CONNECTIVITY_SERVICE);
            Network nw = cm.getActiveNetwork();
            if (nw == null) { sb.append(" 无活动网络"); return sb.toString(); }
            NetworkCapabilities cap = cm.getNetworkCapabilities(nw);
            boolean wifi = cap != null && cap.hasTransport(NetworkCapabilities.TRANSPORT_WIFI);
            boolean validated = cap != null && cap.hasCapability(NetworkCapabilities.NET_CAPABILITY_VALIDATED);
            sb.append(wifi ? " WLAN" : " 其他网络");
            sb.append(validated ? " 已验证" : " 未验证(未拨号属正常)");
            LinkProperties lp = cm.getLinkProperties(nw);
            if (lp != null) for (android.net.LinkAddress la : lp.getLinkAddresses())
                if (la.getAddress() instanceof java.net.Inet4Address)
                    sb.append(" ip=").append(la.getAddress().getHostAddress());
            return sb.toString();
        } catch (Throwable t) { return "diag:" + t; }
    }

    private CdcClient newClient(String name, Intent intent) {
        CdcClient.Env env = new CdcClient.Env();
        env.userAgent = "CCTP/android11_" + (Build.SUPPORTED_ABIS[0].contains("64") ? "64" : "32")
                + "/" + appVersion();
        // client-id 必须持久化(原版存 SharedPreferences): ticket 与 client-id 绑定,
        // 进程重启后换 id 会导致 keep/query 被服务器拒绝
        java.io.File idf = new java.io.File(getFilesDir(), "gdportal/clientid");
        String cid = getLast("clientid");
        if (cid == null || cid.isEmpty()) {
            cid = java.util.UUID.randomUUID().toString();
            putLast("clientid", cid);
        }
        env.clientId = cid;
        fillNet(env.net);
        // 关键: 把 HTTP 连接强制绑到 WiFi 网络 —— 校园网未认证时系统标记"无互联网"
        // 且移动数据可能成为默认网络; 用 getActiveNetwork 会绑错, 必须显式找 WIFI 传输的网络
        try {
            ConnectivityManager cm = (ConnectivityManager) getSystemService(CONNECTIVITY_SERVICE);
            Network nw = null;
            Network[] all = cm.getAllNetworks();
            if (all != null) {
                for (Network cand : all) {
                    NetworkCapabilities cap = cm.getNetworkCapabilities(cand);
                    if (cap != null && cap.hasTransport(NetworkCapabilities.TRANSPORT_WIFI)) {
                        nw = cand; break;
                    }
                }
            }
            if (nw == null) nw = cm.getActiveNetwork();
            if (nw != null) {
                final Network fw = nw;
                env.connector = new CdcClient.Connector() {
                    @Override public java.net.URLConnection open(String url) throws java.io.IOException {
                        return fw.openConnection(new java.net.URL(url));
                    }
                };
                Log.i("gdportal", "bound to network " + fw);
            }
        } catch (Throwable t) { Log.w("gdportal", "connector: " + t); }
        CdcClient c = new CdcClient(env, codec);
        if (store.damodBlob != null && !codec.ok()) codec.load(store.damodBlob);
        AccountStore.Account a = store.byName(name);
        if (a != null) {
            store.restoreSession(a, c);
            try {
                java.util.Map<String, Object> cfg = com.gdportal.core.Json.obj(store.publicConfigJson);
                for (String k : cfg.keySet()) {
                    Object v = cfg.get(k);
                    c.publicConfig.put(k, (v instanceof java.util.Map || v instanceof java.util.List)
                            ? com.gdportal.core.Json.write(v) : com.gdportal.core.Json.str(v, ""));
                }
            } catch (Exception ignore) {}
        }
        return c;
    }

    private void fillNet(CdcClient.NetInfo n) {
        try {
            ConnectivityManager cm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
            Network net = null;
            Network[] all = cm.getAllNetworks();
            if (all != null) for (Network cand : all) {
                NetworkCapabilities cap = cm.getNetworkCapabilities(cand);
                if (cap != null && cap.hasTransport(NetworkCapabilities.TRANSPORT_WIFI)) { net = cand; break; }
            }
            if (net == null) net = cm.getActiveNetwork();
            if (net != null) {
                LinkProperties lp = cm.getLinkProperties(net);
                if (lp != null) {
                    for (android.net.LinkAddress la : lp.getLinkAddresses()) {
                        java.net.InetAddress a = la.getAddress();
                        if (a instanceof java.net.Inet4Address) n.ipv4 = a.getHostAddress();
                    }
                    if (lp.getDhcpServerAddress() != null)
                        n.gateway = lp.getDhcpServerAddress().getHostAddress();
                    n.model = lp.getInterfaceName();
                }
            }
            WifiManager wm = (WifiManager) getApplicationContext().getSystemService(Context.WIFI_SERVICE);
            if (wm != null && wm.getConnectionInfo() != null) {
                int ip = wm.getConnectionInfo().getIpAddress();
                if (ip != 0) n.ipv4 = String.format("%d.%d.%d.%d", ip & 255, (ip >> 8) & 255,
                        (ip >> 16) & 255, (ip >> 24) & 255);
            }
            NetworkInterface ni = n.model == null || n.model.isEmpty()
                    ? NetworkInterface.getByIndex(0) : NetworkInterface.getByName(n.model);
            if (ni != null && ni.getHardwareAddress() != null) {
                StringBuilder sb = new StringBuilder();
                for (byte b : ni.getHardwareAddress())
                    sb.append(String.format("%02X:", b));
                if (sb.length() > 0) sb.setLength(sb.length() - 1);
                n.mac = sb.toString();
            }
        } catch (Exception ignore) {}
    }

    private int appVersion() {
        try {
            return getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
        } catch (Exception e) { return 2104; }
    }

    private static String json(java.util.Map<String, String> m) {
        java.util.Map<String, Object> out = new java.util.LinkedHashMap<>();
        for (String k : m.keySet()) {
            String v = m.get(k);
            String t = v == null ? "" : v.trim();
            if (t.startsWith("{") || t.startsWith("[")) {
                try { out.put(k, com.gdportal.core.Json.parse(t)); continue; } catch (Exception ignore) {}
            }
            out.put(k, v);
        }
        return com.gdportal.core.Json.write(out);
    }

    // ---------------------------------------------------------------- notification

    private void createChannel() {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationManager nm = getSystemService(NotificationManager.class);
            if (nm.getNotificationChannel(CHANNEL) == null)
                nm.createNotificationChannel(new NotificationChannel(
                        CHANNEL, "校园宽带", NotificationManager.IMPORTANCE_LOW));
        }
    }

    private Notification buildNotif(String text) {
        Notification.Builder b = Build.VERSION.SDK_INT >= 26
                ? new Notification.Builder(this, CHANNEL) : new Notification.Builder(this);
        return b.setContentTitle("广东校园·轻量拨号")
                .setContentText(text)
                .setSmallIcon(android.R.drawable.stat_sys_data_bluetooth)
                .setOngoing(true)
                .build();
    }

    private void notifyState(String text) {
        // 三通道: logcat(adb 可见) + 状态文件(App界面轮询) + 通知栏(可能被MIUI拦)
        Log.i("gdportal", "STATE: " + text);
        try {
            File f = new File(getFilesDir(), "gdportal/status.txt");
            f.getParentFile().mkdirs();
            java.io.FileOutputStream o = new java.io.FileOutputStream(f);
            o.write((System.currentTimeMillis() + "\n" + text).getBytes("UTF-8"));
            o.close();
        } catch (Exception ignore) {}
        try {
            getSystemService(NotificationManager.class).notify(NOTIF_ID, buildNotif(text));
        } catch (Exception ignore) {}
    }

    @Override
    public void onDestroy() {
        stopKeepLoop();
        if (codec != null) codec.release();
        super.onDestroy();
    }
}
