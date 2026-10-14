package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ca implements com.squareup.okhttp.Interceptor {

    /* JADX INFO: renamed from: com.msec.ca$1, reason: invalid class name */
    public class AnonymousClass1 extends com.squareup.okhttp.RequestBody {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ com.squareup.okhttp.RequestBody f3787a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ com.msec.i f3788b;

        public AnonymousClass1(com.squareup.okhttp.RequestBody requestBody, com.msec.i iVar) {
            this.f3787a = requestBody;
            this.f3788b = iVar;
        }

        public void writeTo(okio.BufferedSink bufferedSink) throws java.io.IOException {
            com.msec.vvv.a(1752, new java.lang.Object[]{this, bufferedSink});
        }
    }

    public static java.lang.Object $aa(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return ((com.msec.ca) obj).new AnonymousClass1((com.squareup.okhttp.RequestBody) obj2, (com.msec.i) obj3);
    }

    public static java.lang.Object $ab(java.lang.Object obj, java.lang.Object obj2, final long j5, java.lang.Object obj3) {
        final com.squareup.okhttp.MediaType mediaType = (com.squareup.okhttp.MediaType) obj2;
        final java.io.InputStream inputStream = (java.io.InputStream) obj3;
        return new com.squareup.okhttp.ResponseBody() { // from class: com.msec.ca.2
        };
    }
}
