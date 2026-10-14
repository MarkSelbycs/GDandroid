package org.chromium.support_lib_boundary;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface WebViewProviderBoundaryInterface {
    java.lang.reflect.InvocationHandler addDocumentStartJavaScript(java.lang.String str, java.lang.String[] strArr);

    void addWebMessageListener(java.lang.String str, java.lang.String[] strArr, java.lang.reflect.InvocationHandler invocationHandler);

    java.lang.reflect.InvocationHandler[] createWebMessageChannel();

    android.webkit.WebChromeClient getWebChromeClient();

    android.webkit.WebViewClient getWebViewClient();

    java.lang.reflect.InvocationHandler getWebViewRenderer();

    java.lang.reflect.InvocationHandler getWebViewRendererClient();

    void insertVisualStateCallback(long j5, java.lang.reflect.InvocationHandler invocationHandler);

    void postMessageToMainFrame(java.lang.reflect.InvocationHandler invocationHandler, android.net.Uri uri);

    void removeWebMessageListener(java.lang.String str);

    void setWebViewRendererClient(java.lang.reflect.InvocationHandler invocationHandler);
}
