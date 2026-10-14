package com.msec.net.X5WebView;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class WebView extends com.tencent.smtt.sdk.WebView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.msec.bl f3895a;

    public WebView(android.content.Context context) {
        super(context);
        this.f3895a = null;
    }

    public WebView(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3895a = null;
    }

    public WebView(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.f3895a = null;
    }

    public WebView(android.content.Context context, android.util.AttributeSet attributeSet, int i5, java.util.Map<java.lang.String, java.lang.Object> map, boolean z4) {
        super(context, attributeSet, i5, map, z4);
        this.f3895a = null;
    }

    public WebView(android.content.Context context, android.util.AttributeSet attributeSet, int i5, boolean z4) {
        super(context, attributeSet, i5, z4);
        this.f3895a = null;
    }

    public WebView(android.content.Context context, boolean z4) {
        super(context, z4);
        this.f3895a = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.msec.bl a() {
        return (com.msec.bl) com.msec.vvv.a(1674, new java.lang.Object[]{this});
    }

    public com.tencent.smtt.sdk.WebViewClient getWebViewClient() {
        return (com.tencent.smtt.sdk.WebViewClient) com.msec.vvv.a(1673, new java.lang.Object[]{this});
    }

    public void loadDataWithBaseURL(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5) {
        com.msec.vvv.a(1672, new java.lang.Object[]{this, str, str2, str3, str4, str5});
    }

    public void loadUrl(java.lang.String str) {
        a().a(str);
        super.loadUrl(str);
    }

    public void loadUrl(java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map) {
        a().a(str);
        super.loadUrl(str, map);
    }

    public void setWebViewClient(com.tencent.smtt.sdk.WebViewClient webViewClient) {
        super.setWebViewClient((com.tencent.smtt.sdk.WebViewClient) a().a(webViewClient));
    }
}
