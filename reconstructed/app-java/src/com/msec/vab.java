package com.msec;

/* JADX INFO: compiled from: com/msec/vab.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class vab {
    public static java.lang.Object a(java.lang.Object obj) {
        return ((com.koushikdutta.async.http.AsyncHttpRequest) obj).getUri();
    }

    public static java.lang.Object b(java.lang.Object obj) {
        return ((com.koushikdutta.async.http.AsyncHttpClientMiddleware.ResponseHead) obj).headers();
    }

    public static java.lang.Object c(java.lang.Object obj, java.lang.Object obj2) {
        return ((com.koushikdutta.async.http.Headers) obj).get((java.lang.String) obj2);
    }

    public static java.lang.Object d(java.lang.Object obj) {
        return ((com.koushikdutta.async.http.AsyncHttpClientMiddleware.OnRequestData) obj).request;
    }

    public static java.lang.Object e(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return ((com.koushikdutta.async.http.AsyncHttpRequest) obj).addHeader((java.lang.String) obj2, (java.lang.String) obj3);
    }

    public static java.lang.Object f() {
        return com.koushikdutta.async.AsyncServer.class.getDeclaredField("threadServer");
    }

    public static java.lang.Object g() {
        return com.koushikdutta.async.AsyncServer.class.getDeclaredField("mQueue");
    }

    public static java.lang.Object h() {
        return com.koushikdutta.async.http.AsyncHttpClient.class.getDeclaredMethod("getMiddleware", new java.lang.Class[0]);
    }

    public static java.lang.Object i() {
        return com.koushikdutta.async.AsyncServer.class.getDeclaredField("mServers");
    }

    public static java.lang.Object j(java.lang.Object obj) {
        return (com.koushikdutta.async.http.AsyncHttpClientMiddleware) obj;
    }

    public static void k(java.lang.Object obj, java.lang.Object obj2) {
        ((com.koushikdutta.async.http.AsyncHttpClient) obj).insertMiddleware((com.koushikdutta.async.http.AsyncHttpClientMiddleware) obj2);
    }

    public static java.lang.Object l() {
        return com.koushikdutta.async.http.AsyncHttpClient.class;
    }

    public static java.lang.Object m(java.lang.Object obj) {
        return (com.koushikdutta.async.http.AsyncHttpClient) obj;
    }
}
