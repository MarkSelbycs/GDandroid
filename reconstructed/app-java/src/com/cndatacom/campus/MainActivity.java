package com.cndatacom.campus;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class MainActivity extends com.cndatacom.campus.BaseActivity {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public android.webkit.WebView f3323v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public android.widget.ImageView f3324w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.cndatacom.campus.receiver.AppReceiver f3325x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public com.cndatacom.campus.PortalMananger f3326y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public java.lang.String f3327z = "file:///android_asset/index.html";

    /* JADX INFO: renamed from: com.cndatacom.campus.MainActivity$1, reason: invalid class name */
    public class AnonymousClass1 implements com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.AppReceiverListener {
        public AnonymousClass1() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            com.cndatacom.campus.MainActivity.this.f3323v.loadUrl(com.cndatacom.campus.MainActivity.this.f3327z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d() {
            com.cndatacom.campus.MainActivity.this.f3326y.onExitApplication(false);
            com.cndatacom.campus.MainActivity mainActivity = com.cndatacom.campus.MainActivity.this;
            mainActivity.f3326y = new com.cndatacom.campus.PortalMananger(mainActivity, mainActivity.f3323v);
            com.cndatacom.campus.MainActivity.this.runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3518a.c();
                }
            });
        }

        @Override // com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.AppReceiverListener
        public void onReceive(android.content.Context context, android.content.Intent intent, int i5) {
            if (i5 == 14) {
                com.cndatacom.campus.MainActivity.this.f3324w.setVisibility(0);
                com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendReceiver(com.stub.StubApp.getOrigApplicationContext(com.cndatacom.campus.MainActivity.this.getApplicationContext()), 15);
            } else if (i5 == 16) {
                com.cndatacom.campus.MainActivity.this.f3324w.setVisibility(0);
                com.cndatacom.zexcheck.v3.util.ExecutorUtil.getFastExecutorService().execute(new java.lang.Runnable() { // from class: com.cndatacom.campus.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f3525a.d();
                    }
                });
            }
        }
    }

    public class JavaScriptInterface {
        public JavaScriptInterface() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            com.cndatacom.campus.MainActivity.this.f3324w.setVisibility(8);
        }

        @android.webkit.JavascriptInterface
        public boolean coolMethodReturnBool(java.lang.String str, java.lang.String str2) {
            byte b5 = -1;
            try {
                if (str.hashCode() == 204345677 && str.equals("hasSplashscreen")) {
                    b5 = 0;
                }
                return b5 == 0 && com.cndatacom.campus.MainActivity.this.f3324w.getVisibility() == 0;
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        }

        @android.webkit.JavascriptInterface
        public void coolNativeMethod(java.lang.String str, java.lang.String str2, java.lang.String str3) {
            byte b5 = 0;
            com.cndatacom.sdk.portal.util.ExLogUtil.i("coolNativeMethod->" + str);
            try {
                if (str.hashCode() != -1294581845 || !str.equals("closeSplashscreen")) {
                    b5 = -1;
                }
                if (b5 != 0) {
                    com.cndatacom.campus.MainActivity.this.f3326y.coolMethod(str, com.alibaba.fastjson.JSON.parseArray(str2), str3);
                } else {
                    com.cndatacom.campus.MainActivity.this.runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f3526a.b();
                        }
                    });
                }
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        }
    }

    static {
        com.stub.StubApp.interface11(1652);
    }

    @Override // com.cndatacom.campus.BaseActivity
    public java.lang.String i() {
        return "";
    }

    @Override // com.cndatacom.campus.BaseActivity
    public void n(android.os.Bundle bundle) {
        com.cndatacom.campus.receiver.AppReceiver appReceiver = new com.cndatacom.campus.receiver.AppReceiver();
        this.f3325x = appReceiver;
        appReceiver.setReceiverListener(new com.cndatacom.campus.MainActivity.AnonymousClass1());
        this.f3325x.registerReceiver(com.stub.StubApp.getOrigApplicationContext(getApplicationContext()));
        this.f3324w = (android.widget.ImageView) findViewById(com.cndatacom.campus.R.id.splash_img);
        this.f3323v = (android.webkit.WebView) findViewById(com.cndatacom.campus.R.id.webview);
        u();
        this.f3326y = new com.cndatacom.campus.PortalMananger(this, this.f3323v);
        this.f3323v.loadUrl(this.f3327z);
    }

    @Override // com.cndatacom.campus.BaseActivity
    public int o() {
        return com.cndatacom.campus.R.layout.activity_main;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i5, int i6, android.content.Intent intent) {
        super.onActivityResult(i5, i6, intent);
        this.f3326y.onActivityResult(i5, i6, intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        final java.lang.String str = "var customEvent = new CustomEvent('backbutton',{});document.dispatchEvent(customEvent);";
        runOnUiThread(new java.lang.Runnable() { // from class: com.cndatacom.campus.MainActivity.3
            @Override // java.lang.Runnable
            public void run() {
                com.cndatacom.campus.MainActivity.this.f3323v.loadUrl("javascript:" + str);
            }
        });
    }

    @Override // com.cndatacom.campus.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(android.os.Bundle bundle) {
        com.stub.StubApp.mark();
        super.onCreate(bundle);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.cndatacom.campus.receiver.AppReceiver appReceiver = this.f3325x;
        if (appReceiver != null) {
            appReceiver.unregisterReceiver(com.stub.StubApp.getOrigApplicationContext(getApplicationContext()));
        }
        android.webkit.WebView webView = this.f3323v;
        if (webView != null) {
            webView.destroy();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        android.webkit.WebView webView = this.f3323v;
        if (webView != null) {
            webView.onPause();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public native void onRequestPermissionsResult(int i5, java.lang.String[] strArr, int[] iArr);

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        android.webkit.WebView webView = this.f3323v;
        if (webView != null) {
            webView.onResume();
        }
    }

    @android.annotation.SuppressLint({"JavascriptInterface"})
    public final void u() {
        android.webkit.WebSettings settings = this.f3323v.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setAllowUniversalAccessFromFileURLs(true);
        settings.setAllowFileAccessFromFileURLs(true);
        settings.setDomStorageEnabled(true);
        settings.setCacheMode(-1);
        settings.setMediaPlaybackRequiresUserGesture(false);
        this.f3323v.addJavascriptInterface(new com.cndatacom.campus.MainActivity.JavaScriptInterface(), "PortalMananger");
        this.f3323v.removeJavascriptInterface("searchBoxJavaBridge_");
        this.f3323v.removeJavascriptInterface("accessibility");
        this.f3323v.removeJavascriptInterface("accessibilityTraversal");
        this.f3323v.setWebViewClient(new android.webkit.WebViewClient() { // from class: com.cndatacom.campus.MainActivity.2
            @Override // android.webkit.WebViewClient
            public void onPageFinished(android.webkit.WebView webView, java.lang.String str) {
                super.onPageFinished(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(android.webkit.WebView webView, java.lang.String str, android.graphics.Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
            }
        });
    }
}
