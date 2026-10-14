package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class bp extends cz.msebera.android.httpclient.impl.client.DefaultHttpClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f3735a = 2;

    public static java.lang.Object $ab(java.lang.Object obj, java.lang.Object obj2) {
        return new com.msec.bq((com.msec.i) obj, (cz.msebera.android.httpclient.HttpEntity) obj2);
    }

    public static cz.msebera.android.httpclient.HttpResponse a(cz.msebera.android.httpclient.HttpResponse httpResponse, com.msec.i iVar) {
        return (cz.msebera.android.httpclient.HttpResponse) com.msec.vvv.a(1783, new java.lang.Object[]{httpResponse, iVar});
    }

    public static cz.msebera.android.httpclient.client.methods.HttpUriRequest a(cz.msebera.android.httpclient.client.methods.HttpUriRequest httpUriRequest, com.msec.i iVar) {
        return (cz.msebera.android.httpclient.client.methods.HttpUriRequest) com.msec.vvv.a(1782, new java.lang.Object[]{httpUriRequest, iVar});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(cz.msebera.android.httpclient.client.methods.HttpUriRequest httpUriRequest, java.lang.String str) {
        return ((java.lang.Boolean) com.msec.vvv.a(1781, new java.lang.Object[]{this, httpUriRequest, str})).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(cz.msebera.android.httpclient.HttpResponse httpResponse, com.msec.i iVar) {
        com.msec.vvv.a(1780, new java.lang.Object[]{httpResponse, iVar});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(cz.msebera.android.httpclient.client.methods.HttpUriRequest httpUriRequest, java.lang.String str) {
        return ((java.lang.Boolean) com.msec.vvv.a(1779, new java.lang.Object[]{this, httpUriRequest, str})).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(cz.msebera.android.httpclient.client.methods.HttpUriRequest httpUriRequest, java.lang.String str) {
        a(httpUriRequest, str);
    }

    public cz.msebera.android.httpclient.client.methods.CloseableHttpResponse execute(cz.msebera.android.httpclient.client.methods.HttpUriRequest httpUriRequest, cz.msebera.android.httpclient.protocol.HttpContext httpContext) throws java.io.IOException {
        return (cz.msebera.android.httpclient.client.methods.CloseableHttpResponse) com.msec.vvv.a(1778, new java.lang.Object[]{this, httpUriRequest, httpContext});
    }
}
