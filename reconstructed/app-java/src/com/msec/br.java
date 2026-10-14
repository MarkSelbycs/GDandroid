package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class br implements dc.squareup.okhttp3.Interceptor {

    /* JADX INFO: renamed from: com.msec.br$1, reason: invalid class name */
    public class AnonymousClass1 extends dc.squareup.okhttp3.RequestBody {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ dc.squareup.okhttp3.RequestBody f3738a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ com.msec.i f3739b;

        public AnonymousClass1(dc.squareup.okhttp3.RequestBody requestBody, com.msec.i iVar) {
            this.f3738a = requestBody;
            this.f3739b = iVar;
        }

        public void writeTo(dc.squareup.okio.BufferedSink bufferedSink) throws java.io.IOException {
            com.msec.vvv.a(1596, new java.lang.Object[]{this, bufferedSink});
        }
    }

    public static java.lang.Object $aa(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return ((com.msec.br) obj).new AnonymousClass1((dc.squareup.okhttp3.RequestBody) obj2, (com.msec.i) obj3);
    }

    public static java.lang.Object $ab(java.lang.Object obj, java.lang.Object obj2, final long j5, java.lang.Object obj3) {
        final dc.squareup.okhttp3.MediaType mediaType = (dc.squareup.okhttp3.MediaType) obj2;
        final java.io.InputStream inputStream = (java.io.InputStream) obj3;
        return new dc.squareup.okhttp3.ResponseBody() { // from class: com.msec.br.2
        };
    }
}
