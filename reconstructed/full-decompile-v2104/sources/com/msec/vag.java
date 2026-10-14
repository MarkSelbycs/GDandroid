package com.msec;

/* JADX INFO: compiled from: com/msec/vag.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class vag {
    public static void a(java.lang.Object obj, java.lang.Object obj2) {
        ((com.squareup.okhttp.RequestBody) obj).writeTo((okio.BufferedSink) obj2);
    }

    public static java.lang.Object aa(java.lang.Object obj) {
        return ((com.squareup.okhttp.ResponseBody) obj).byteStream();
    }

    public static java.lang.Object ab(java.lang.Object obj, java.lang.Object obj2) {
        return ((com.squareup.okhttp.Response.Builder) obj).removeHeader((java.lang.String) obj2);
    }

    public static java.lang.Object b(java.lang.Object obj) {
        return ((com.squareup.okhttp.Interceptor.Chain) obj).request();
    }

    public static java.lang.Object c(java.lang.Object obj) {
        return ((com.squareup.okhttp.Request) obj).url();
    }

    public static java.lang.Object d(java.lang.Object obj) {
        return ((com.squareup.okhttp.Request) obj).body();
    }

    public static long e(java.lang.Object obj) {
        return ((com.squareup.okhttp.RequestBody) obj).contentLength();
    }

    public static java.lang.Object f(java.lang.Object obj) {
        return ((com.squareup.okhttp.RequestBody) obj).contentType();
    }

    public static java.lang.Object g(java.lang.Object obj, java.lang.Object obj2) {
        return com.squareup.okhttp.RequestBody.create((com.squareup.okhttp.MediaType) obj, (byte[]) obj2);
    }

    public static java.lang.Object h(java.lang.Object obj) {
        return ((com.squareup.okhttp.Request) obj).newBuilder();
    }

    public static java.lang.Object i(java.lang.Object obj, java.lang.Object obj2) {
        return ((com.squareup.okhttp.Request.Builder) obj).removeHeader((java.lang.String) obj2);
    }

    public static java.lang.Object j(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return ((com.squareup.okhttp.Request.Builder) obj).addHeader((java.lang.String) obj2, (java.lang.String) obj3);
    }

    public static java.lang.Object k(java.lang.Object obj) {
        return ((com.squareup.okhttp.Request) obj).method();
    }

    public static java.lang.Object l(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return ((com.squareup.okhttp.Request.Builder) obj).method((java.lang.String) obj2, (com.squareup.okhttp.RequestBody) obj3);
    }

    public static java.lang.Object m(java.lang.Object obj, java.lang.Object obj2) {
        return ((com.squareup.okhttp.Request) obj).header((java.lang.String) obj2);
    }

    public static java.lang.Object n(java.lang.Object obj) {
        return ((com.squareup.okhttp.Request.Builder) obj).build();
    }

    public static java.lang.Object o(java.lang.Object obj, java.lang.Object obj2) {
        return ((com.squareup.okhttp.Interceptor.Chain) obj).proceed((com.squareup.okhttp.Request) obj2);
    }

    public static java.lang.Object p(java.lang.Object obj, java.lang.Object obj2) {
        return ((com.squareup.okhttp.Response) obj).header((java.lang.String) obj2);
    }

    public static java.lang.Object q(java.lang.Object obj) {
        return ((com.squareup.okhttp.Response) obj).body();
    }

    public static java.lang.Object r(java.lang.Object obj) {
        return ((com.squareup.okhttp.Response) obj).newBuilder();
    }

    public static long s(java.lang.Object obj) {
        return ((com.squareup.okhttp.ResponseBody) obj).contentLength();
    }

    public static java.lang.Object t(java.lang.Object obj) {
        return ((com.squareup.okhttp.ResponseBody) obj).bytes();
    }

    public static java.lang.Object u(java.lang.Object obj) {
        return ((com.squareup.okhttp.ResponseBody) obj).contentType();
    }

    public static java.lang.Object v(java.lang.Object obj, java.lang.Object obj2) {
        return com.squareup.okhttp.ResponseBody.create((com.squareup.okhttp.MediaType) obj, (byte[]) obj2);
    }

    public static java.lang.Object w(java.lang.Object obj, java.lang.Object obj2) {
        return ((com.squareup.okhttp.Response.Builder) obj).body((com.squareup.okhttp.ResponseBody) obj2);
    }

    public static java.lang.Object x(java.lang.Object obj) {
        return ((com.squareup.okhttp.Response.Builder) obj).build();
    }

    public static java.lang.Object y(java.lang.Object obj, java.lang.Object obj2) {
        return ((com.squareup.okhttp.Request.Builder) obj).url((java.lang.String) obj2);
    }

    public static java.lang.Object z(java.lang.Object obj, java.lang.Object obj2) {
        return ((com.squareup.okhttp.Response.Builder) obj).request((com.squareup.okhttp.Request) obj2);
    }
}
