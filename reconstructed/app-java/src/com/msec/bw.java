package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class bw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f3754a;

    public static class a implements org.apache.http.HttpRequestInterceptor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private org.apache.http.HttpRequestInterceptor f3755a;

        public a(java.lang.Object obj) {
            this.f3755a = (org.apache.http.HttpRequestInterceptor) obj;
        }

        @Override // org.apache.http.HttpRequestInterceptor
        public void process(org.apache.http.HttpRequest httpRequest, org.apache.http.protocol.HttpContext httpContext) throws org.apache.http.HttpException, java.io.IOException {
            com.msec.vvv.a(1753, new java.lang.Object[]{this, httpRequest, httpContext});
        }
    }

    public static void a(android.content.Context context) {
        com.msec.vvv.a(1755, new java.lang.Object[]{context});
    }
}
