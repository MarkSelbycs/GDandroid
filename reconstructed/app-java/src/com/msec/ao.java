package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class ao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f3660a;

    public static void a(android.webkit.WebView webView) {
        com.msec.vvv.a(1652, new java.lang.Object[]{webView});
    }

    private static boolean a(android.content.Context context, java.lang.Object obj) {
        return ((java.lang.Boolean) com.msec.vvv.a(1651, new java.lang.Object[]{context, obj})).booleanValue();
    }

    public static boolean a(android.webkit.WebView webView, android.webkit.SslErrorHandler sslErrorHandler, android.net.http.SslError sslError) {
        return ((java.lang.Boolean) com.msec.vvv.a(1650, new java.lang.Object[]{webView, sslErrorHandler, sslError})).booleanValue();
    }
}
