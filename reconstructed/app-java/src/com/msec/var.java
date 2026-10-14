package com.msec;

/* JADX INFO: compiled from: com/msec/var.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class var {
    public static java.lang.Object a() {
        return dc.squareup.okhttp3.OkHttpClient.class.getDeclaredField("networkInterceptors");
    }

    public static java.lang.Object aa(java.lang.Object obj) {
        return ((dc.squareup.okhttp3.ResponseBody) obj).bytes();
    }

    public static java.lang.Object ab(java.lang.Object obj) {
        return ((dc.squareup.okhttp3.ResponseBody) obj).contentType();
    }

    public static java.lang.Object ac(java.lang.Object obj, java.lang.Object obj2) {
        return dc.squareup.okhttp3.ResponseBody.create((dc.squareup.okhttp3.MediaType) obj, (byte[]) obj2);
    }

    public static java.lang.Object ad(java.lang.Object obj, java.lang.Object obj2) {
        return ((dc.squareup.okhttp3.Response.Builder) obj).body((dc.squareup.okhttp3.ResponseBody) obj2);
    }

    public static java.lang.Object ae(java.lang.Object obj) {
        return ((dc.squareup.okhttp3.Response.Builder) obj).build();
    }

    public static java.lang.Object af(java.lang.Object obj) {
        return ((dc.squareup.okhttp3.ResponseBody) obj).byteStream();
    }

    public static java.lang.Object ag(java.lang.Object obj, java.lang.Object obj2) {
        return ((dc.squareup.okhttp3.Response.Builder) obj).removeHeader((java.lang.String) obj2);
    }

    public static java.lang.Object b(java.lang.Object obj) {
        return (dc.squareup.okhttp3.Interceptor) obj;
    }

    public static java.lang.Object c(java.lang.Object obj) {
        return (dc.squareup.okhttp3.OkHttpClient) obj;
    }

    public static java.lang.Object d(java.lang.Object obj) {
        return (dc.squareup.okhttp3.internal.http.RealInterceptorChain) obj;
    }

    public static java.lang.Object e(java.lang.Object obj) {
        return ((dc.squareup.okhttp3.internal.http.RealInterceptorChain) obj).request();
    }

    public static java.lang.Object f(java.lang.Object obj) {
        return ((dc.squareup.okhttp3.Request) obj).url();
    }

    public static java.lang.Object g(java.lang.Object obj) {
        return ((dc.squareup.okhttp3.HttpUrl) obj).url();
    }

    public static java.lang.Object h(java.lang.Object obj) {
        return ((dc.squareup.okhttp3.Request) obj).body();
    }

    public static long i(java.lang.Object obj) {
        return ((dc.squareup.okhttp3.RequestBody) obj).contentLength();
    }

    public static void j(java.lang.Object obj, java.lang.Object obj2) {
        ((dc.squareup.okhttp3.RequestBody) obj).writeTo((dc.squareup.okio.BufferedSink) obj2);
    }

    public static java.lang.Object k(java.lang.Object obj) {
        return ((dc.squareup.okhttp3.RequestBody) obj).contentType();
    }

    public static java.lang.Object l(java.lang.Object obj, java.lang.Object obj2) {
        return dc.squareup.okhttp3.RequestBody.create((dc.squareup.okhttp3.MediaType) obj, (byte[]) obj2);
    }

    public static java.lang.Object m(java.lang.Object obj) {
        return ((dc.squareup.okhttp3.Request) obj).newBuilder();
    }

    public static java.lang.Object n(java.lang.Object obj, java.lang.Object obj2) {
        return ((dc.squareup.okhttp3.Request.Builder) obj).removeHeader((java.lang.String) obj2);
    }

    public static java.lang.Object o(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return ((dc.squareup.okhttp3.Request.Builder) obj).addHeader((java.lang.String) obj2, (java.lang.String) obj3);
    }

    public static java.lang.Object p(java.lang.Object obj) {
        return ((dc.squareup.okhttp3.Request) obj).method();
    }

    public static java.lang.Object q(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return ((dc.squareup.okhttp3.Request.Builder) obj).method((java.lang.String) obj2, (dc.squareup.okhttp3.RequestBody) obj3);
    }

    public static java.lang.Object r(java.lang.Object obj, java.lang.Object obj2) {
        return ((dc.squareup.okhttp3.Request) obj).header((java.lang.String) obj2);
    }

    public static java.lang.Object s(java.lang.Object obj) {
        return ((dc.squareup.okhttp3.Request.Builder) obj).build();
    }

    public static java.lang.Object t(java.lang.Object obj) {
        return dc.squareup.okhttp3.HttpUrl.parse((java.lang.String) obj);
    }

    public static java.lang.Object u(java.lang.Object obj, java.lang.Object obj2) {
        return ((dc.squareup.okhttp3.Request.Builder) obj).url((dc.squareup.okhttp3.HttpUrl) obj2);
    }

    public static java.lang.Object v(java.lang.Object obj, java.lang.Object obj2) {
        return ((dc.squareup.okhttp3.internal.http.RealInterceptorChain) obj).proceed((dc.squareup.okhttp3.Request) obj2);
    }

    public static java.lang.Object w(java.lang.Object obj, java.lang.Object obj2) {
        return ((dc.squareup.okhttp3.Response) obj).header((java.lang.String) obj2);
    }

    public static java.lang.Object x(java.lang.Object obj) {
        return ((dc.squareup.okhttp3.Response) obj).body();
    }

    public static java.lang.Object y(java.lang.Object obj) {
        return ((dc.squareup.okhttp3.Response) obj).newBuilder();
    }

    public static long z(java.lang.Object obj) {
        return ((dc.squareup.okhttp3.ResponseBody) obj).contentLength();
    }
}
