package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class bo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f3731a;

    /* JADX INFO: renamed from: com.msec.bo$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
    }

    public static final class a extends cz.msebera.android.httpclient.message.BasicLineFormatter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final java.util.List<com.msec.bo.a.C0041a> f3732a = new java.util.ArrayList();

        /* JADX INFO: renamed from: com.msec.bo$a$a, reason: collision with other inner class name */
        public static final class C0041a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final java.lang.ref.WeakReference<cz.msebera.android.httpclient.util.CharArrayBuffer> f3733a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final java.lang.String f3734b;

            public C0041a(cz.msebera.android.httpclient.util.CharArrayBuffer charArrayBuffer, java.lang.String str) {
                this.f3733a = new java.lang.ref.WeakReference<>(charArrayBuffer);
                this.f3734b = str;
            }
        }

        public static java.lang.Object $ac(java.lang.Object obj, java.lang.Object obj2) {
            return new com.msec.bo.a.C0041a((cz.msebera.android.httpclient.util.CharArrayBuffer) obj, (java.lang.String) obj2);
        }

        private a() {
        }

        public /* synthetic */ a(com.msec.bo.AnonymousClass1 anonymousClass1) {
            this();
        }

        public cz.msebera.android.httpclient.util.CharArrayBuffer formatHeader(cz.msebera.android.httpclient.util.CharArrayBuffer charArrayBuffer, cz.msebera.android.httpclient.Header header) {
            return (cz.msebera.android.httpclient.util.CharArrayBuffer) com.msec.vvv.a(1658, new java.lang.Object[]{this, charArrayBuffer, header});
        }

        public cz.msebera.android.httpclient.util.CharArrayBuffer formatRequestLine(cz.msebera.android.httpclient.util.CharArrayBuffer charArrayBuffer, cz.msebera.android.httpclient.RequestLine requestLine) {
            return (cz.msebera.android.httpclient.util.CharArrayBuffer) com.msec.vvv.a(1657, new java.lang.Object[]{this, charArrayBuffer, requestLine});
        }
    }

    public static void a() {
        com.msec.vvv.a(1751, null);
    }
}
