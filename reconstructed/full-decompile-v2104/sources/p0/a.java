package p0;

/* JADX INFO: compiled from: ApiHelperForP.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {
    public static android.webkit.TracingController a() {
        return android.webkit.TracingController.getInstance();
    }

    public static java.lang.ClassLoader b() {
        return android.webkit.WebView.getWebViewClassLoader();
    }

    public static android.os.Looper c(android.webkit.WebView webView) {
        return webView.getWebViewLooper();
    }

    public static boolean d(android.webkit.TracingController tracingController) {
        return tracingController.isTracing();
    }

    public static void e(java.lang.String str) {
        android.webkit.WebView.setDataDirectorySuffix(str);
    }

    public static void f(android.webkit.TracingController tracingController, o0.a aVar) {
        new android.webkit.TracingConfig.Builder();
        throw null;
    }

    public static boolean g(android.webkit.TracingController tracingController, java.io.OutputStream outputStream, java.util.concurrent.Executor executor) {
        return tracingController.stop(outputStream, executor);
    }
}
