package com.msec;

/* JADX INFO: compiled from: com/msec/van.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class van {
    public static java.lang.Object a(java.lang.Object obj) {
        return (com.tencent.smtt.sdk.WebViewClient) obj;
    }

    public static java.lang.Object b(java.lang.Object obj) {
        return super/*com.tencent.smtt.sdk.WebView*/.getWebViewClient();
    }

    public static void c(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3, java.lang.Object obj4, java.lang.Object obj5, java.lang.Object obj6) {
        super/*com.tencent.smtt.sdk.WebView*/.loadDataWithBaseURL((java.lang.String) obj2, (java.lang.String) obj3, (java.lang.String) obj4, (java.lang.String) obj5, (java.lang.String) obj6);
    }

    public static java.lang.Object d(java.lang.Object obj) {
        return (com.tencent.smtt.sdk.WebView) obj;
    }

    public static java.lang.Object e(java.lang.Object obj) {
        return ((com.tencent.smtt.sdk.WebView) obj).getSettings();
    }

    public static void f(java.lang.Object obj, java.lang.Object obj2) {
        ((com.tencent.smtt.sdk.WebView) obj).removeJavascriptInterface((java.lang.String) obj2);
    }

    public static void g(java.lang.Object obj, java.lang.Object obj2) {
        ((com.tencent.smtt.sdk.WebView) obj).setWebViewClient((com.tencent.smtt.sdk.WebViewClient) obj2);
    }

    public static java.lang.Object h(java.lang.Object obj) {
        return ((com.tencent.smtt.sdk.WebView) obj).getX5WebViewExtension();
    }

    public static boolean i(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return super/*com.tencent.smtt.sdk.WebViewClient*/.onRenderProcessGone((com.tencent.smtt.sdk.WebView) obj2, (com.tencent.smtt.sdk.WebViewClient.RenderProcessGoneDetail) obj3);
    }

    public static boolean j(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return ((com.tencent.smtt.sdk.WebViewClient) obj).onRenderProcessGone((com.tencent.smtt.sdk.WebView) obj2, (com.tencent.smtt.sdk.WebViewClient.RenderProcessGoneDetail) obj3);
    }

    public static java.lang.Object k(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return super/*com.tencent.smtt.sdk.WebViewClient*/.shouldInterceptRequest((com.tencent.smtt.sdk.WebView) obj2, (com.tencent.smtt.export.external.interfaces.WebResourceRequest) obj3);
    }

    public static java.lang.Object l(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return ((com.tencent.smtt.sdk.WebViewClient) obj).shouldInterceptRequest((com.tencent.smtt.sdk.WebView) obj2, (com.tencent.smtt.export.external.interfaces.WebResourceRequest) obj3);
    }

    public static java.lang.Object m(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3, java.lang.Object obj4) {
        return super/*com.tencent.smtt.sdk.WebViewClient*/.shouldInterceptRequest((com.tencent.smtt.sdk.WebView) obj2, (com.tencent.smtt.export.external.interfaces.WebResourceRequest) obj3, (android.os.Bundle) obj4);
    }

    public static java.lang.Object n(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3, java.lang.Object obj4) {
        return ((com.tencent.smtt.sdk.WebViewClient) obj).shouldInterceptRequest((com.tencent.smtt.sdk.WebView) obj2, (com.tencent.smtt.export.external.interfaces.WebResourceRequest) obj3, (android.os.Bundle) obj4);
    }

    public static java.lang.Object o(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return super/*com.tencent.smtt.sdk.WebViewClient*/.shouldInterceptRequest((com.tencent.smtt.sdk.WebView) obj2, (java.lang.String) obj3);
    }

    public static java.lang.Object p(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return ((com.tencent.smtt.sdk.WebViewClient) obj).shouldInterceptRequest((com.tencent.smtt.sdk.WebView) obj2, (java.lang.String) obj3);
    }

    public static boolean q(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return super/*com.tencent.smtt.sdk.WebViewClient*/.shouldOverrideKeyEvent((com.tencent.smtt.sdk.WebView) obj2, (android.view.KeyEvent) obj3);
    }

    public static boolean r(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return ((com.tencent.smtt.sdk.WebViewClient) obj).shouldOverrideKeyEvent((com.tencent.smtt.sdk.WebView) obj2, (android.view.KeyEvent) obj3);
    }

    public static boolean s(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return super/*com.tencent.smtt.sdk.WebViewClient*/.shouldOverrideUrlLoading((com.tencent.smtt.sdk.WebView) obj2, (com.tencent.smtt.export.external.interfaces.WebResourceRequest) obj3);
    }

    public static boolean t(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return ((com.tencent.smtt.sdk.WebViewClient) obj).shouldOverrideUrlLoading((com.tencent.smtt.sdk.WebView) obj2, (com.tencent.smtt.export.external.interfaces.WebResourceRequest) obj3);
    }

    public static boolean u(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return super/*com.tencent.smtt.sdk.WebViewClient*/.shouldOverrideUrlLoading((com.tencent.smtt.sdk.WebView) obj2, (java.lang.String) obj3);
    }

    public static boolean v(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return ((com.tencent.smtt.sdk.WebViewClient) obj).shouldOverrideUrlLoading((com.tencent.smtt.sdk.WebView) obj2, (java.lang.String) obj3);
    }
}
