package com.msec;

/* JADX INFO: compiled from: com/msec/vaa.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class vaa {
    public static java.lang.Object a() {
        return cz.msebera.android.httpclient.message.BasicLineFormatter.class.getDeclaredField("INSTANCE");
    }

    public static boolean aa(java.lang.Object obj) {
        return ((cz.msebera.android.httpclient.HttpEntity) obj).isChunked();
    }

    public static void ab(java.lang.Object obj, boolean z4) {
        ((cz.msebera.android.httpclient.entity.InputStreamEntity) obj).setChunked(z4);
    }

    public static void ac(java.lang.Object obj, java.lang.Object obj2) {
        ((cz.msebera.android.httpclient.entity.InputStreamEntity) obj).setContentType((cz.msebera.android.httpclient.Header) obj2);
    }

    public static void ad(java.lang.Object obj, java.lang.Object obj2) {
        ((cz.msebera.android.httpclient.HttpResponse) obj).setEntity((cz.msebera.android.httpclient.HttpEntity) obj2);
    }

    public static java.lang.Object ae(java.lang.Object obj) {
        return ((cz.msebera.android.httpclient.client.methods.HttpUriRequest) obj).getURI();
    }

    public static java.lang.Object af(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return super/*cz.msebera.android.httpclient.impl.client.DefaultHttpClient*/.execute((cz.msebera.android.httpclient.client.methods.HttpUriRequest) obj2, (cz.msebera.android.httpclient.protocol.HttpContext) obj3);
    }

    public static java.lang.Object ag(java.lang.Object obj) {
        return (cz.msebera.android.httpclient.client.methods.CloseableHttpResponse) obj;
    }

    public static java.lang.Object ah(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return super/*cz.msebera.android.httpclient.message.BasicLineFormatter*/.formatHeader((cz.msebera.android.httpclient.util.CharArrayBuffer) obj2, (cz.msebera.android.httpclient.Header) obj3);
    }

    public static java.lang.Object ai(java.lang.Object obj) {
        return ((cz.msebera.android.httpclient.Header) obj).getName();
    }

    public static java.lang.Object aj(java.lang.Object obj) {
        return (cz.msebera.android.httpclient.util.CharArrayBuffer) obj;
    }

    public static int ak(java.lang.Object obj) {
        return ((cz.msebera.android.httpclient.util.CharArrayBuffer) obj).length();
    }

    public static java.lang.Object al(int i5) {
        return new cz.msebera.android.httpclient.util.CharArrayBuffer(i5);
    }

    public static void am(java.lang.Object obj, java.lang.Object obj2) {
        ((cz.msebera.android.httpclient.util.CharArrayBuffer) obj).append((cz.msebera.android.httpclient.util.CharArrayBuffer) obj2);
    }

    public static void an(java.lang.Object obj, char c5) {
        ((cz.msebera.android.httpclient.util.CharArrayBuffer) obj).append(c5);
    }

    public static void ao(java.lang.Object obj, java.lang.Object obj2) {
        ((cz.msebera.android.httpclient.util.CharArrayBuffer) obj).append((java.lang.String) obj2);
    }

    public static java.lang.Object ap(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        return super/*cz.msebera.android.httpclient.message.BasicLineFormatter*/.formatRequestLine((cz.msebera.android.httpclient.util.CharArrayBuffer) obj2, (cz.msebera.android.httpclient.RequestLine) obj3);
    }

    public static java.lang.Object aq(java.lang.Object obj) {
        return ((cz.msebera.android.httpclient.RequestLine) obj).getUri();
    }

    public static void b(java.lang.Object obj, java.lang.Object obj2) {
        ((cz.msebera.android.httpclient.HttpEntity) obj).writeTo((java.io.OutputStream) obj2);
    }

    public static java.lang.Object c(java.lang.Object obj, java.lang.Object obj2) {
        return ((cz.msebera.android.httpclient.HttpMessage) obj).getFirstHeader((java.lang.String) obj2);
    }

    public static java.lang.Object d(java.lang.Object obj) {
        return ((cz.msebera.android.httpclient.Header) obj).getValue();
    }

    public static void e(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        ((cz.msebera.android.httpclient.HttpMessage) obj).setHeader((java.lang.String) obj2, (java.lang.String) obj3);
    }

    public static boolean f(java.lang.Object obj) {
        return obj instanceof cz.msebera.android.httpclient.HttpEntityEnclosingRequest;
    }

    public static java.lang.Object g(java.lang.Object obj) {
        return (cz.msebera.android.httpclient.HttpEntityEnclosingRequest) obj;
    }

    public static java.lang.Object h(java.lang.Object obj) {
        return ((cz.msebera.android.httpclient.HttpEntityEnclosingRequest) obj).getEntity();
    }

    public static java.lang.Object i(java.lang.Object obj) {
        return ((cz.msebera.android.httpclient.HttpEntity) obj).getContentType();
    }

    public static void j(java.lang.Object obj, java.lang.Object obj2) {
        ((cz.msebera.android.httpclient.HttpMessage) obj).setHeader((cz.msebera.android.httpclient.Header) obj2);
    }

    public static boolean k(java.lang.Object obj) {
        return obj instanceof cz.msebera.android.httpclient.client.methods.HttpEntityEnclosingRequestBase;
    }

    public static java.lang.Object l(java.lang.Object obj) {
        return (cz.msebera.android.httpclient.client.methods.HttpEntityEnclosingRequestBase) obj;
    }

    public static java.lang.Object m(java.lang.Object obj) {
        return ((cz.msebera.android.httpclient.client.methods.HttpEntityEnclosingRequestBase) obj).clone();
    }

    public static java.lang.Object n(java.lang.Object obj) {
        return (cz.msebera.android.httpclient.client.methods.HttpUriRequest) obj;
    }

    public static boolean o(java.lang.Object obj) {
        return obj instanceof cz.msebera.android.httpclient.entity.HttpEntityWrapper;
    }

    public static java.lang.Object p() {
        return cz.msebera.android.httpclient.entity.HttpEntityWrapper.class.getDeclaredField("wrappedEntity");
    }

    public static java.lang.Object q(java.lang.Object obj) {
        return (cz.msebera.android.httpclient.HttpEntity) obj;
    }

    public static void r(java.lang.Object obj, java.lang.Object obj2) {
        ((cz.msebera.android.httpclient.HttpEntityEnclosingRequest) obj).setEntity((cz.msebera.android.httpclient.HttpEntity) obj2);
    }

    public static boolean s(java.lang.Object obj) {
        return obj instanceof cz.msebera.android.httpclient.impl.client.RequestWrapper;
    }

    public static long t(java.lang.Object obj) {
        return ((cz.msebera.android.httpclient.HttpEntity) obj).getContentLength();
    }

    public static java.lang.Object u(java.lang.Object obj) {
        return ((cz.msebera.android.httpclient.HttpResponse) obj).getEntity();
    }

    public static java.lang.Object v(java.lang.Object obj) {
        return ((cz.msebera.android.httpclient.HttpEntity) obj).getContent();
    }

    public static void w(java.lang.Object obj, java.lang.Object obj2) {
        ((cz.msebera.android.httpclient.HttpMessage) obj).removeHeaders((java.lang.String) obj2);
    }

    public static java.lang.Object x(java.lang.Object obj, long j5) {
        return new cz.msebera.android.httpclient.entity.InputStreamEntity((java.io.InputStream) obj, j5);
    }

    public static java.lang.Object y(java.lang.Object obj) {
        return ((cz.msebera.android.httpclient.HttpEntity) obj).getContentEncoding();
    }

    public static void z(java.lang.Object obj, java.lang.Object obj2) {
        ((cz.msebera.android.httpclient.entity.InputStreamEntity) obj).setContentEncoding((cz.msebera.android.httpclient.Header) obj2);
    }
}
