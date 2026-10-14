package org.chromium.support_lib_boundary;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface WebViewRendererClientBoundaryInterface extends org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface {
    void onRendererResponsive(android.webkit.WebView webView, java.lang.reflect.InvocationHandler invocationHandler);

    void onRendererUnresponsive(android.webkit.WebView webView, java.lang.reflect.InvocationHandler invocationHandler);
}
