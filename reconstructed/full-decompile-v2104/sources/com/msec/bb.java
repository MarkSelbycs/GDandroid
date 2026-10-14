package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class bb extends android.webkit.WebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.msec.ba f3690a;

    private com.msec.ba a() {
        return (com.msec.ba) com.msec.vvv.a(1775, new java.lang.Object[]{this});
    }

    @Override // android.webkit.WebView
    public android.webkit.WebViewClient getWebViewClient() {
        return (android.webkit.WebViewClient) com.msec.vvv.a(1774, new java.lang.Object[]{this});
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5) {
        com.msec.vvv.a(1773, new java.lang.Object[]{this, str, str2, str3, str4, str5});
    }

    @Override // android.webkit.WebView
    public void loadUrl(java.lang.String str) {
        a().a(str);
        super.loadUrl(str);
    }

    @Override // android.webkit.WebView
    public void loadUrl(java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map) {
        a().a(str);
        super.loadUrl(str, map);
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(android.webkit.WebViewClient webViewClient) {
        super.setWebViewClient((android.webkit.WebViewClient) a().a(webViewClient));
    }
}
