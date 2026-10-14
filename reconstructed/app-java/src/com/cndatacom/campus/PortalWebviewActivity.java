package com.cndatacom.campus;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class PortalWebviewActivity extends com.cndatacom.campus.BaseActivity {
    public android.os.Handler A;
    public android.os.HandlerThread B;
    public android.os.Handler C;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public android.widget.RelativeLayout f3512w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public android.widget.RelativeLayout f3513x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public android.webkit.WebView f3514y;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public java.lang.String f3511v = "";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public java.lang.String f3515z = "";
    public final int D = 0;
    public final int E = 1;
    public final int F = 2;
    public final int G = 3;
    public final int H = 4;
    public boolean I = false;
    public final int J = 0;
    public final int K = -1;
    public int L = 0;
    public final int M = 10000;

    public class JavaScriptInterface {
        public JavaScriptInterface() {
        }

        @android.webkit.JavascriptInterface
        public void postMessage(java.lang.String str, java.lang.String str2) {
            if (android.text.TextUtils.isEmpty(str)) {
                return;
            }
            try {
                org.json.JSONObject jSONObject = new org.json.JSONObject(str);
                android.os.Bundle bundle = new android.os.Bundle();
                bundle.putString(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_DATA_KEY, jSONObject.toString());
                com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendReceiver(com.stub.StubApp.getOrigApplicationContext(com.cndatacom.campus.PortalWebviewActivity.this.getApplicationContext()), 13, com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_BUNDLEKEY, bundle);
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        }
    }

    public static void startActivity(android.app.Activity activity, java.lang.String str, java.lang.String str2) {
        android.content.Intent intent = new android.content.Intent(activity, (java.lang.Class<?>) com.cndatacom.campus.PortalWebviewActivity.class);
        intent.putExtra("url", str);
        intent.putExtra("titleName", str2);
        intent.addFlags(com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT);
        activity.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean x(android.os.Message message) {
        u(message);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean y(android.os.Message message) {
        v(message);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z(android.view.View view) {
        B();
    }

    public final void A(int i5, boolean z4) {
        this.L = 0;
        android.os.Message messageObtain = android.os.Message.obtain();
        messageObtain.what = 3;
        messageObtain.obj = java.lang.Boolean.valueOf(z4);
        this.A.sendMessageDelayed(messageObtain, i5);
    }

    public final void B() {
        if (this.A.hasMessages(3)) {
            return;
        }
        D();
        A(1500, true);
    }

    public final void C() {
        this.L = -1;
        this.A.sendEmptyMessage(2);
    }

    public final void D() {
        this.A.sendEmptyMessage(0);
    }

    public final void E() {
        if (this.L != -1) {
            this.A.sendEmptyMessage(1);
        }
    }

    public final boolean F() {
        this.I = true;
        this.C.removeMessages(4);
        this.C.sendEmptyMessageDelayed(4, 10000L);
        return true;
    }

    public final void G() {
        this.I = false;
        this.C.removeMessages(4);
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        android.os.Handler handler = this.A;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        android.os.Handler handler2 = this.C;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
        }
        android.os.HandlerThread handlerThread = this.B;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }

    @Override // com.cndatacom.campus.BaseActivity
    public java.lang.String j() {
        java.lang.String string = getIntent().getExtras().getString("titleName", "");
        this.f3511v = string;
        return string;
    }

    @Override // com.cndatacom.campus.BaseActivity
    public void n(android.os.Bundle bundle) {
        this.A = new android.os.Handler(android.os.Looper.getMainLooper(), new android.os.Handler.Callback() { // from class: com.cndatacom.campus.u
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(android.os.Message message) {
                return this.f3598a.x(message);
            }
        });
        android.os.HandlerThread handlerThread = new android.os.HandlerThread("loadWebviewActivityData", 0);
        this.B = handlerThread;
        handlerThread.start();
        this.C = new android.os.Handler(this.B.getLooper(), new android.os.Handler.Callback() { // from class: com.cndatacom.campus.t
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(android.os.Message message) {
                return this.f3597a.y(message);
            }
        });
        this.f3512w = (android.widget.RelativeLayout) findViewById(com.cndatacom.campus.R.id.loading_rl);
        this.f3513x = (android.widget.RelativeLayout) findViewById(com.cndatacom.campus.R.id.error_rl);
        ((android.widget.RelativeLayout) findViewById(com.cndatacom.campus.R.id.retry_btn)).setOnClickListener(new android.view.View.OnClickListener() { // from class: com.cndatacom.campus.v
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                this.f3605a.z(view);
            }
        });
        this.f3514y = (android.webkit.WebView) findViewById(com.cndatacom.campus.R.id.webview);
        w();
        this.f3515z = getIntent().getExtras().getString("url", "");
        D();
        A(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO, false);
    }

    @Override // com.cndatacom.campus.BaseActivity
    public int o() {
        return com.cndatacom.campus.R.layout.activity_webview;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        android.webkit.WebView webView = this.f3514y;
        if (webView != null) {
            webView.destroy();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        android.webkit.WebView webView = this.f3514y;
        if (webView != null) {
            webView.onPause();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        android.webkit.WebView webView = this.f3514y;
        if (webView != null) {
            webView.onResume();
        }
    }

    public void u(android.os.Message message) {
        java.lang.Object obj;
        int i5 = message.what;
        if (i5 == 0) {
            this.f3512w.setVisibility(0);
            this.f3514y.setVisibility(4);
            this.f3513x.setVisibility(4);
            return;
        }
        if (i5 == 1) {
            this.f3512w.setVisibility(4);
            this.f3514y.setVisibility(0);
            this.f3513x.setVisibility(4);
        } else if (i5 == 2) {
            this.f3512w.setVisibility(4);
            this.f3514y.setVisibility(4);
            this.f3513x.setVisibility(0);
        } else if (i5 == 3 && F() && (obj = message.obj) != null && (obj instanceof java.lang.Boolean)) {
            if (((java.lang.Boolean) obj).booleanValue()) {
                this.f3514y.reload();
            } else {
                this.f3514y.loadUrl(this.f3515z);
            }
        }
    }

    public void v(android.os.Message message) {
        if (message.what == 4 && this.I) {
            this.I = false;
            C();
        }
    }

    @android.annotation.SuppressLint({"JavascriptInterface"})
    public final void w() {
        android.webkit.WebSettings settings = this.f3514y.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setAllowUniversalAccessFromFileURLs(true);
        settings.setAllowFileAccessFromFileURLs(true);
        settings.setDomStorageEnabled(true);
        settings.setCacheMode(-1);
        settings.setMediaPlaybackRequiresUserGesture(false);
        this.f3514y.addJavascriptInterface(new com.cndatacom.campus.PortalWebviewActivity.JavaScriptInterface(), "parent");
        this.f3514y.removeJavascriptInterface("searchBoxJavaBridge_");
        this.f3514y.removeJavascriptInterface("accessibility");
        this.f3514y.removeJavascriptInterface("accessibilityTraversal");
        this.f3514y.setWebViewClient(new android.webkit.WebViewClient() { // from class: com.cndatacom.campus.PortalWebviewActivity.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(android.webkit.WebView webView, java.lang.String str) {
                super.onPageFinished(webView, str);
                com.cndatacom.campus.PortalWebviewActivity.this.G();
                com.cndatacom.campus.PortalWebviewActivity.this.E();
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(android.webkit.WebView webView, java.lang.String str, android.graphics.Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
            }
        });
    }
}
