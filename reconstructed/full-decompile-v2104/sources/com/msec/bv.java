package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class bv implements org.apache.http.client.HttpClient {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f3752b = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final org.apache.http.impl.client.AbstractHttpClient f3753a;

    public static org.apache.http.HttpRequest a(com.msec.i iVar, org.apache.http.HttpRequest httpRequest) {
        return a(iVar, httpRequest, 0);
    }

    public static org.apache.http.HttpRequest a(com.msec.i iVar, org.apache.http.HttpRequest httpRequest, int i5) {
        return (org.apache.http.HttpRequest) com.msec.vvv.a(1627, new java.lang.Object[]{iVar, httpRequest, java.lang.Integer.valueOf(i5)});
    }

    public static org.apache.http.HttpResponse a(org.apache.http.HttpResponse httpResponse, com.msec.i iVar) {
        return (org.apache.http.HttpResponse) com.msec.vvv.a(1626, new java.lang.Object[]{httpResponse, iVar});
    }

    public static void a(org.apache.http.HttpRequest httpRequest, java.lang.String str, java.lang.String str2) {
        com.msec.vvv.a(1625, new java.lang.Object[]{httpRequest, str, str2});
    }

    private boolean a(org.apache.http.client.methods.HttpUriRequest httpUriRequest, java.lang.String str) {
        return ((java.lang.Boolean) com.msec.vvv.a(1624, new java.lang.Object[]{this, httpUriRequest, str})).booleanValue();
    }

    private static void b(org.apache.http.HttpResponse httpResponse, com.msec.i iVar) {
        com.msec.vvv.a(1607, new java.lang.Object[]{httpResponse, iVar});
    }

    private boolean b(org.apache.http.client.methods.HttpUriRequest httpUriRequest, java.lang.String str) {
        return ((java.lang.Boolean) com.msec.vvv.a(1606, new java.lang.Object[]{this, httpUriRequest, str})).booleanValue();
    }

    private boolean c(org.apache.http.client.methods.HttpUriRequest httpUriRequest, java.lang.String str) {
        return ((java.lang.Boolean) com.msec.vvv.a(1605, new java.lang.Object[]{this, httpUriRequest, str})).booleanValue();
    }

    private void d(org.apache.http.client.methods.HttpUriRequest httpUriRequest, java.lang.String str) {
        if (a(httpUriRequest, str)) {
            return;
        }
        b(httpUriRequest, str);
    }

    @Override // org.apache.http.client.HttpClient
    public <T> T execute(org.apache.http.HttpHost httpHost, org.apache.http.HttpRequest httpRequest, org.apache.http.client.ResponseHandler<? extends T> responseHandler) throws java.io.IOException {
        return (T) com.msec.vvv.a(1604, new java.lang.Object[]{this, httpHost, httpRequest, responseHandler});
    }

    @Override // org.apache.http.client.HttpClient
    public <T> T execute(org.apache.http.HttpHost httpHost, org.apache.http.HttpRequest httpRequest, org.apache.http.client.ResponseHandler<? extends T> responseHandler, org.apache.http.protocol.HttpContext httpContext) throws java.io.IOException {
        return (T) com.msec.vvv.a(1603, new java.lang.Object[]{this, httpHost, httpRequest, responseHandler, httpContext});
    }

    @Override // org.apache.http.client.HttpClient
    public <T> T execute(org.apache.http.client.methods.HttpUriRequest httpUriRequest, org.apache.http.client.ResponseHandler<? extends T> responseHandler) throws java.io.IOException {
        return (T) com.msec.vvv.a(1602, new java.lang.Object[]{this, httpUriRequest, responseHandler});
    }

    @Override // org.apache.http.client.HttpClient
    public <T> T execute(org.apache.http.client.methods.HttpUriRequest httpUriRequest, org.apache.http.client.ResponseHandler<? extends T> responseHandler, org.apache.http.protocol.HttpContext httpContext) throws java.io.IOException {
        return (T) com.msec.vvv.a(1601, new java.lang.Object[]{this, httpUriRequest, responseHandler, httpContext});
    }

    @Override // org.apache.http.client.HttpClient
    public org.apache.http.HttpResponse execute(org.apache.http.HttpHost httpHost, org.apache.http.HttpRequest httpRequest) throws java.io.IOException {
        return (org.apache.http.HttpResponse) com.msec.vvv.a(1600, new java.lang.Object[]{this, httpHost, httpRequest});
    }

    @Override // org.apache.http.client.HttpClient
    public org.apache.http.HttpResponse execute(org.apache.http.HttpHost httpHost, org.apache.http.HttpRequest httpRequest, org.apache.http.protocol.HttpContext httpContext) throws java.io.IOException {
        return (org.apache.http.HttpResponse) com.msec.vvv.a(1615, new java.lang.Object[]{this, httpHost, httpRequest, httpContext});
    }

    @Override // org.apache.http.client.HttpClient
    public org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest httpUriRequest) throws java.io.IOException {
        return (org.apache.http.HttpResponse) com.msec.vvv.a(1614, new java.lang.Object[]{this, httpUriRequest});
    }

    @Override // org.apache.http.client.HttpClient
    public org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest httpUriRequest, org.apache.http.protocol.HttpContext httpContext) throws java.io.IOException {
        return (org.apache.http.HttpResponse) com.msec.vvv.a(1613, new java.lang.Object[]{this, httpUriRequest, httpContext});
    }

    @Override // org.apache.http.client.HttpClient
    public org.apache.http.conn.ClientConnectionManager getConnectionManager() {
        return this.f3753a.getConnectionManager();
    }

    @Override // org.apache.http.client.HttpClient
    public final synchronized org.apache.http.params.HttpParams getParams() {
        return this.f3753a.getParams();
    }
}
