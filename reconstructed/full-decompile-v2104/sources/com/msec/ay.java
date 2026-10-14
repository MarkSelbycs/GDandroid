package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ay {

    public static class a extends java.net.URLStreamHandler {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static java.lang.reflect.Method f3678b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static java.lang.reflect.Method f3679c;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private java.net.URLStreamHandler f3680a;

        public a(java.net.URLStreamHandler uRLStreamHandler) {
            this.f3680a = uRLStreamHandler;
            if (f3678b == null) {
                try {
                    f3678b = java.net.URLStreamHandler.class.getDeclaredMethod(com.msec.vvv.a(1519), java.net.URL.class);
                    f3679c = java.net.URLStreamHandler.class.getDeclaredMethod(com.msec.vvv.a(1519), java.net.URL.class, java.net.Proxy.class);
                } catch (java.lang.NoSuchMethodException unused) {
                }
            }
        }

        private java.net.URLConnection a(java.net.URL url, java.net.URLConnection uRLConnection) throws java.io.IOException {
            return (java.net.URLConnection) com.msec.vvv.a(1772, new java.lang.Object[]{this, url, uRLConnection});
        }

        @Override // java.net.URLStreamHandler
        public java.net.URLConnection openConnection(java.net.URL url) throws java.io.IOException {
            return (java.net.URLConnection) com.msec.vvv.a(1771, new java.lang.Object[]{this, url});
        }

        @Override // java.net.URLStreamHandler
        public java.net.URLConnection openConnection(java.net.URL url, java.net.Proxy proxy) throws java.io.IOException {
            return (java.net.URLConnection) com.msec.vvv.a(1770, new java.lang.Object[]{this, url, proxy});
        }
    }

    private static java.util.Map<java.lang.String, java.net.URLStreamHandler> a(java.lang.String str) {
        return (java.util.Map) com.msec.vvv.a(1711, new java.lang.Object[]{str});
    }

    public static void a() {
        com.msec.vvv.a(1710, null);
    }

    private static void a(java.lang.String str, java.util.Map<java.lang.String, java.net.URLStreamHandler> map) {
        com.msec.vvv.a(1709, new java.lang.Object[]{str, map});
    }
}
