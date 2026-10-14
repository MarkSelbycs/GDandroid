package com.gdportal.android;

import android.app.Activity;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.os.Bundle;
import android.text.InputType;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * 极简输入界面（不是图形设计，就是三个输入框+三个按钮）：
 * 账号/密码/备注名 存 SharedPreferences，按钮直接触发 DialService。
 * 也支持 adb 免界面触发:
 *   adb shell am start -n com.gdportal.dialer/com.gdportal.android.CliActivity \
 *        --es action login [--es name dorm --es account x --es password y]
 */
public final class CliActivity extends Activity {

    private EditText accountField, passwordField;
    private TextView statusView;
    private final android.os.Handler hd = new android.os.Handler(android.os.Looper.getMainLooper());
    private Runnable poller;

    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        // MIUI/Android13+ 通知权限必须运行时申请, 否则前台服务通知不可见(=用户看不到状态)
        try {
            if (checkSelfPermission("android.permission.POST_NOTIFICATIONS")
                    != android.content.pm.PackageManager.PERMISSION_GRANTED)
                requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 99);
        } catch (Throwable ignore) {}
        // 关键: 校园网未认证时系统判定"无互联网"。真正的绑定在 DialService 里用
        // Network.openConnection 完成; 这里只放开主线程网络限制(界面极简, 无后台线程需求时兜底)。
        try {
            android.os.StrictMode.ThreadPolicy p = new android.os.StrictMode.ThreadPolicy.Builder()
                    .permitAll().build();
            android.os.StrictMode.setThreadPolicy(p);
        } catch (Throwable ignore) {}
        String action = getIntent().getStringExtra("action");
        if (action != null) {
            dispatch(action, getIntent().getStringExtra("name"),
                    getIntent().getStringExtra("account"), getIntent().getStringExtra("password"));
            finish();
            return;
        }

        android.content.SharedPreferences sp = getSharedPreferences("gdportal-ui", MODE_PRIVATE);
        LinearLayout ll = new LinearLayout(this);
        ll.setOrientation(LinearLayout.VERTICAL);
        ll.setPadding(32, 48, 32, 16);

        ll.addView(new TextView(this) {{ setText("校园轻量拨号"); setTextSize(20); }});
        accountField = field("宽带账号", sp.getString("account", ""), false);
        passwordField = field("密码", sp.getString("password", ""), true);
        ll.addView(accountField);
        ll.addView(passwordField);

        // 账号本身即多账号存储键(服务按 account 查找会话)
        ll.addView(button("登录", v -> { save(); dispatch("login", val(accountField), val(accountField), val(passwordField)); }));
        ll.addView(button("保活", v -> { save(); dispatch("keepalive", val(accountField), null, null); }));
        ll.addView(button("退出", v -> { save(); dispatch("logout", val(accountField), null, null); }));
        ll.addView(button("查询在线终端", v -> { save(); dispatch("clients", val(accountField), null, null); }));

        statusView = new TextView(this);
        statusView.setText("状态见通知栏「校园轻量拨号」");
        ll.addView(statusView);
        setContentView(ll);

        // 轮询服务写的状态文件, 直接显示在界面上(不依赖通知)
        poller = new Runnable() {
            @Override public void run() {
                try {
                    java.io.File f = new java.io.File(getFilesDir(), "gdportal/status.txt");
                    if (f.exists()) {
                        byte[] buf = new byte[(int) f.length()];
                        java.io.FileInputStream in = new java.io.FileInputStream(f);
                        int n = in.read(buf); in.close();
                        String[] lines = new String(buf, 0, Math.max(n, 0), "UTF-8").split("\n", 2);
                        if (lines.length == 2) {
                            long ts = Long.parseLong(lines[0].trim());
                            String age = ts == 0 ? "" : "  (" + (System.currentTimeMillis() - ts) / 1000 + "s前)";
                            statusView.setText("状态: " + lines[1] + age);
                        }
                    }
                } catch (Throwable ignore) {}
                hd.postDelayed(this, 1500);
            }
        };
        hd.post(poller);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (poller != null) hd.removeCallbacks(poller);
    }

    private EditText field(String hint, String value, boolean pwd) {
        EditText e = new EditText(this);
        e.setHint(hint);
        e.setText(value);
        if (pwd) e.setInputType(InputType.TYPE_CLASS_TEXT
                | InputType.TYPE_TEXT_VARIATION_PASSWORD);
        return e;
    }

    private Button button(String label, android.view.View.OnClickListener l) {
        Button b = new Button(this);
        b.setText(label);
        b.setOnClickListener(l);
        return b;
    }

    private static String val(EditText e) { return e.getText().toString().trim(); }

    private void save() {
        getSharedPreferences("gdportal-ui", MODE_PRIVATE).edit()
                .putString("account", val(accountField))
                .putString("password", val(passwordField))
                .apply();
    }

    private void dispatch(String action, String name, String account, String password) {
        Intent i = new Intent(this, DialService.class);
        i.setAction("gdportal." + action.toUpperCase());
        i.putExtra(DialService.EXTRA_NAME, name == null || name.isEmpty() ? "default" : name);
        if (account != null) i.putExtra(DialService.EXTRA_ACCOUNT, account);
        if (password != null) i.putExtra(DialService.EXTRA_PASSWORD, password);
        if (android.os.Build.VERSION.SDK_INT >= 26) startForegroundService(i);
        else startService(i);
        if (statusView != null) statusView.setText("已发送: " + action + "（看通知栏）");
    }
}
