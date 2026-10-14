package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class bx {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f3756a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static java.lang.Class f3757b;

    /* JADX INFO: renamed from: com.msec.bx$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
    }

    public static class a implements org.apache.http.HttpRequestInterceptor, org.apache.http.HttpResponseInterceptor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.msec.i f3758a;

        @Override // org.apache.http.HttpRequestInterceptor
        public void process(org.apache.http.HttpRequest httpRequest, org.apache.http.protocol.HttpContext httpContext) throws org.apache.http.HttpException, java.io.IOException {
            com.msec.vvv.a(1582, new java.lang.Object[]{this, httpRequest, httpContext});
        }

        @Override // org.apache.http.HttpResponseInterceptor
        public void process(org.apache.http.HttpResponse httpResponse, org.apache.http.protocol.HttpContext httpContext) throws org.apache.http.HttpException, java.io.IOException {
            if (com.msec.bx.a()) {
                return;
            }
            com.msec.bv.a(httpResponse, this.f3758a);
        }
    }

    public static final class b extends org.apache.http.message.BasicLineFormatter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final java.util.List<com.msec.bx.b.a> f3759a = new java.util.ArrayList();

        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f3760a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final java.lang.ref.WeakReference<org.apache.http.util.CharArrayBuffer> f3761b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final java.lang.String f3762c;

            public a(org.apache.http.util.CharArrayBuffer charArrayBuffer, java.lang.String str) {
                this.f3761b = new java.lang.ref.WeakReference<>(charArrayBuffer);
                this.f3762c = str;
            }
        }

        private b() {
        }

        public /* synthetic */ b(com.msec.bx.AnonymousClass1 anonymousClass1) {
            this();
        }

        private static com.msec.bx.b.a a(org.apache.http.util.CharArrayBuffer charArrayBuffer, boolean z4) {
            return (com.msec.bx.b.a) com.msec.vvv.a(1559, new java.lang.Object[]{charArrayBuffer, java.lang.Boolean.valueOf(z4)});
        }

        @Override // org.apache.http.message.BasicLineFormatter, org.apache.http.message.LineFormatter
        public org.apache.http.util.CharArrayBuffer formatHeader(org.apache.http.util.CharArrayBuffer charArrayBuffer, org.apache.http.Header header) {
            return (org.apache.http.util.CharArrayBuffer) com.msec.vvv.a(1558, new java.lang.Object[]{this, charArrayBuffer, header});
        }

        @Override // org.apache.http.message.BasicLineFormatter, org.apache.http.message.LineFormatter
        public org.apache.http.util.CharArrayBuffer formatRequestLine(org.apache.http.util.CharArrayBuffer charArrayBuffer, org.apache.http.RequestLine requestLine) {
            return (org.apache.http.util.CharArrayBuffer) com.msec.vvv.a(1557, new java.lang.Object[]{this, charArrayBuffer, requestLine});
        }
    }

    public static void a(android.content.Context context) {
        com.msec.vvv.a(1641, new java.lang.Object[]{context});
    }

    public static boolean a() {
        return ((java.lang.Boolean) com.msec.vvv.a(1640, null)).booleanValue();
    }
}
