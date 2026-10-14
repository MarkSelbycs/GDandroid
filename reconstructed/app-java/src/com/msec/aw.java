package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class aw extends javax.net.ssl.HttpsURLConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private javax.net.ssl.HttpsURLConnection f3671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.msec.ax f3672b;

    public aw(javax.net.ssl.HttpsURLConnection httpsURLConnection) {
        super(httpsURLConnection.getURL());
        com.msec.h.c(6003);
        this.f3671a = httpsURLConnection;
        com.msec.ax axVar = new com.msec.ax(this.f3671a);
        this.f3672b = axVar;
        axVar.a();
    }

    @Override // java.net.URLConnection
    public void addRequestProperty(java.lang.String str, java.lang.String str2) {
        this.f3671a.addRequestProperty(str, str2);
    }

    @Override // java.net.URLConnection
    public void connect() throws java.io.IOException {
        this.f3671a.connect();
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        this.f3671a.disconnect();
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.f3671a.getAllowUserInteraction();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public java.lang.String getCipherSuite() {
        return this.f3671a.getCipherSuite();
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.f3671a.getConnectTimeout();
    }

    @Override // java.net.URLConnection
    public java.lang.Object getContent() throws java.io.IOException {
        return this.f3671a.getContent();
    }

    @Override // java.net.URLConnection
    public java.lang.Object getContent(java.lang.Class[] clsArr) throws java.io.IOException {
        return this.f3671a.getContent(clsArr);
    }

    @Override // java.net.URLConnection
    public java.lang.String getContentEncoding() {
        return this.f3671a.getContentEncoding();
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        return this.f3671a.getContentLength();
    }

    @Override // java.net.URLConnection
    public java.lang.String getContentType() {
        return this.f3671a.getContentType();
    }

    @Override // java.net.URLConnection
    public long getDate() {
        return this.f3671a.getDate();
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.f3671a.getDefaultUseCaches();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.f3671a.getDoInput();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.f3671a.getDoOutput();
    }

    @Override // java.net.HttpURLConnection
    public java.io.InputStream getErrorStream() {
        java.io.InputStream errorStream = this.f3671a.getErrorStream();
        try {
            return this.f3672b.a(errorStream);
        } catch (java.lang.Throwable unused) {
            return errorStream;
        }
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        return this.f3671a.getExpiration();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public java.lang.String getHeaderField(int i5) {
        return this.f3671a.getHeaderField(i5);
    }

    @Override // java.net.URLConnection
    public java.lang.String getHeaderField(java.lang.String str) {
        return this.f3671a.getHeaderField(str);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public long getHeaderFieldDate(java.lang.String str, long j5) {
        return this.f3671a.getHeaderFieldDate(str, j5);
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(java.lang.String str, int i5) {
        return this.f3671a.getHeaderFieldInt(str, i5);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public java.lang.String getHeaderFieldKey(int i5) {
        return this.f3671a.getHeaderFieldKey(i5);
    }

    @Override // java.net.URLConnection
    public java.util.Map<java.lang.String, java.util.List<java.lang.String>> getHeaderFields() {
        return this.f3671a.getHeaderFields();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public javax.net.ssl.HostnameVerifier getHostnameVerifier() {
        return this.f3671a.getHostnameVerifier();
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        return this.f3671a.getIfModifiedSince();
    }

    @Override // java.net.URLConnection
    public java.io.InputStream getInputStream() throws java.io.IOException {
        getResponseCode();
        return this.f3672b.a(this.f3671a.getInputStream());
    }

    @Override // java.net.HttpURLConnection
    public boolean getInstanceFollowRedirects() {
        return this.f3671a.getInstanceFollowRedirects();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        return this.f3671a.getLastModified();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public java.security.cert.Certificate[] getLocalCertificates() {
        return this.f3671a.getLocalCertificates();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public java.security.Principal getLocalPrincipal() {
        return this.f3671a.getLocalPrincipal();
    }

    @Override // java.net.URLConnection
    public java.io.OutputStream getOutputStream() throws java.io.IOException {
        return this.f3672b.b();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public java.security.Principal getPeerPrincipal() throws javax.net.ssl.SSLPeerUnverifiedException {
        return this.f3671a.getPeerPrincipal();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public java.security.Permission getPermission() throws java.io.IOException {
        return this.f3671a.getPermission();
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.f3671a.getReadTimeout();
    }

    @Override // java.net.HttpURLConnection
    public java.lang.String getRequestMethod() {
        return this.f3671a.getRequestMethod();
    }

    @Override // java.net.URLConnection
    public java.util.Map<java.lang.String, java.util.List<java.lang.String>> getRequestProperties() {
        return this.f3671a.getRequestProperties();
    }

    @Override // java.net.URLConnection
    public java.lang.String getRequestProperty(java.lang.String str) {
        return this.f3671a.getRequestProperty(str);
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() throws java.io.IOException {
        return ((java.lang.Integer) com.msec.vvv.a(1706, new java.lang.Object[]{this})).intValue();
    }

    @Override // java.net.HttpURLConnection
    public java.lang.String getResponseMessage() throws java.io.IOException {
        return this.f3671a.getResponseMessage();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public javax.net.ssl.SSLSocketFactory getSSLSocketFactory() {
        return this.f3671a.getSSLSocketFactory();
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public java.security.cert.Certificate[] getServerCertificates() throws javax.net.ssl.SSLPeerUnverifiedException {
        return this.f3671a.getServerCertificates();
    }

    @Override // java.net.URLConnection
    public java.net.URL getURL() {
        return this.f3671a.getURL();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.f3671a.getUseCaches();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z4) {
        this.f3671a.setAllowUserInteraction(z4);
    }

    @Override // java.net.HttpURLConnection
    public void setChunkedStreamingMode(int i5) {
        this.f3671a.setChunkedStreamingMode(i5);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i5) {
        this.f3671a.setConnectTimeout(i5);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z4) {
        this.f3671a.setDefaultUseCaches(z4);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z4) {
        this.f3671a.setDoInput(z4);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z4) {
        this.f3671a.setDoOutput(z4);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(int i5) {
        if (this.f3672b.e()) {
            return;
        }
        this.f3671a.setFixedLengthStreamingMode(i5);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(long j5) {
        if (this.f3672b.e()) {
            return;
        }
        this.f3671a.setFixedLengthStreamingMode(j5);
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public void setHostnameVerifier(javax.net.ssl.HostnameVerifier hostnameVerifier) {
        this.f3671a.setHostnameVerifier(hostnameVerifier);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j5) {
        this.f3671a.setIfModifiedSince(j5);
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean z4) {
        this.f3671a.setInstanceFollowRedirects(z4);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i5) {
        this.f3671a.setReadTimeout(i5);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(java.lang.String str) throws java.net.ProtocolException {
        this.f3671a.setRequestMethod(str);
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(java.lang.String str, java.lang.String str2) {
        this.f3671a.setRequestProperty(str, this.f3672b.a(str, str2));
    }

    @Override // javax.net.ssl.HttpsURLConnection
    public void setSSLSocketFactory(javax.net.ssl.SSLSocketFactory sSLSocketFactory) {
        this.f3671a.setSSLSocketFactory(sSLSocketFactory);
        com.msec.an.a(getURL(), this);
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z4) {
        this.f3671a.setUseCaches(z4);
    }

    @Override // java.net.URLConnection
    public java.lang.String toString() {
        return this.f3671a.toString();
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return this.f3671a.usingProxy();
    }
}
