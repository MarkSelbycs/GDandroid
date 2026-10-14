package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class av extends java.net.HttpURLConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private java.net.HttpURLConnection f3669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.msec.ax f3670b;

    public av(java.net.HttpURLConnection httpURLConnection) {
        super(httpURLConnection.getURL());
        com.msec.h.c(6002);
        this.f3669a = httpURLConnection;
        com.msec.ax axVar = new com.msec.ax(this.f3669a);
        this.f3670b = axVar;
        axVar.a();
    }

    @Override // java.net.URLConnection
    public void addRequestProperty(java.lang.String str, java.lang.String str2) {
        this.f3669a.addRequestProperty(str, str2);
    }

    @Override // java.net.URLConnection
    public void connect() throws java.io.IOException {
        this.f3669a.connect();
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
        this.f3669a.disconnect();
    }

    @Override // java.net.URLConnection
    public boolean getAllowUserInteraction() {
        return this.f3669a.getAllowUserInteraction();
    }

    @Override // java.net.URLConnection
    public int getConnectTimeout() {
        return this.f3669a.getConnectTimeout();
    }

    @Override // java.net.URLConnection
    public java.lang.Object getContent() throws java.io.IOException {
        return this.f3669a.getContent();
    }

    @Override // java.net.URLConnection
    public java.lang.Object getContent(java.lang.Class[] clsArr) throws java.io.IOException {
        return this.f3669a.getContent(clsArr);
    }

    @Override // java.net.URLConnection
    public java.lang.String getContentEncoding() {
        return this.f3669a.getContentEncoding();
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        return this.f3669a.getContentLength();
    }

    @Override // java.net.URLConnection
    public java.lang.String getContentType() {
        return this.f3669a.getContentType();
    }

    @Override // java.net.URLConnection
    public long getDate() {
        return this.f3669a.getDate();
    }

    @Override // java.net.URLConnection
    public boolean getDefaultUseCaches() {
        return this.f3669a.getDefaultUseCaches();
    }

    @Override // java.net.URLConnection
    public boolean getDoInput() {
        return this.f3669a.getDoInput();
    }

    @Override // java.net.URLConnection
    public boolean getDoOutput() {
        return this.f3669a.getDoOutput();
    }

    @Override // java.net.HttpURLConnection
    public java.io.InputStream getErrorStream() {
        java.io.InputStream errorStream = this.f3669a.getErrorStream();
        try {
            return this.f3670b.a(errorStream);
        } catch (java.lang.Throwable unused) {
            return errorStream;
        }
    }

    @Override // java.net.URLConnection
    public long getExpiration() {
        return this.f3669a.getExpiration();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public java.lang.String getHeaderField(int i5) {
        return this.f3669a.getHeaderField(i5);
    }

    @Override // java.net.URLConnection
    public java.lang.String getHeaderField(java.lang.String str) {
        return this.f3669a.getHeaderField(str);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public long getHeaderFieldDate(java.lang.String str, long j5) {
        return this.f3669a.getHeaderFieldDate(str, j5);
    }

    @Override // java.net.URLConnection
    public int getHeaderFieldInt(java.lang.String str, int i5) {
        return this.f3669a.getHeaderFieldInt(str, i5);
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public java.lang.String getHeaderFieldKey(int i5) {
        return this.f3669a.getHeaderFieldKey(i5);
    }

    @Override // java.net.URLConnection
    public java.util.Map<java.lang.String, java.util.List<java.lang.String>> getHeaderFields() {
        return this.f3669a.getHeaderFields();
    }

    @Override // java.net.URLConnection
    public long getIfModifiedSince() {
        return this.f3669a.getIfModifiedSince();
    }

    @Override // java.net.URLConnection
    public java.io.InputStream getInputStream() throws java.io.IOException {
        getResponseCode();
        return this.f3670b.a(this.f3669a.getInputStream());
    }

    @Override // java.net.HttpURLConnection
    public boolean getInstanceFollowRedirects() {
        return this.f3669a.getInstanceFollowRedirects();
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        return this.f3669a.getLastModified();
    }

    @Override // java.net.URLConnection
    public java.io.OutputStream getOutputStream() throws java.io.IOException {
        return this.f3670b.b();
    }

    @Override // java.net.HttpURLConnection, java.net.URLConnection
    public java.security.Permission getPermission() throws java.io.IOException {
        return this.f3669a.getPermission();
    }

    @Override // java.net.URLConnection
    public int getReadTimeout() {
        return this.f3669a.getReadTimeout();
    }

    @Override // java.net.HttpURLConnection
    public java.lang.String getRequestMethod() {
        return this.f3669a.getRequestMethod();
    }

    @Override // java.net.URLConnection
    public java.util.Map<java.lang.String, java.util.List<java.lang.String>> getRequestProperties() {
        return this.f3669a.getRequestProperties();
    }

    @Override // java.net.URLConnection
    public java.lang.String getRequestProperty(java.lang.String str) {
        return this.f3669a.getRequestProperty(str);
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() throws java.io.IOException {
        return ((java.lang.Integer) com.msec.vvv.a(1985, new java.lang.Object[]{this})).intValue();
    }

    @Override // java.net.HttpURLConnection
    public java.lang.String getResponseMessage() throws java.io.IOException {
        return this.f3669a.getResponseMessage();
    }

    @Override // java.net.URLConnection
    public java.net.URL getURL() {
        return this.f3669a.getURL();
    }

    @Override // java.net.URLConnection
    public boolean getUseCaches() {
        return this.f3669a.getUseCaches();
    }

    @Override // java.net.URLConnection
    public void setAllowUserInteraction(boolean z4) {
        this.f3669a.setAllowUserInteraction(z4);
    }

    @Override // java.net.HttpURLConnection
    public void setChunkedStreamingMode(int i5) {
        this.f3669a.setChunkedStreamingMode(i5);
    }

    @Override // java.net.URLConnection
    public void setConnectTimeout(int i5) {
        this.f3669a.setConnectTimeout(i5);
    }

    @Override // java.net.URLConnection
    public void setDefaultUseCaches(boolean z4) {
        this.f3669a.setDefaultUseCaches(z4);
    }

    @Override // java.net.URLConnection
    public void setDoInput(boolean z4) {
        this.f3669a.setDoInput(z4);
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean z4) {
        this.f3669a.setDoOutput(z4);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(int i5) {
        if (this.f3670b.e()) {
            return;
        }
        this.f3669a.setFixedLengthStreamingMode(i5);
    }

    @Override // java.net.HttpURLConnection
    public void setFixedLengthStreamingMode(long j5) {
        if (this.f3670b.e()) {
            return;
        }
        this.f3669a.setFixedLengthStreamingMode(j5);
    }

    @Override // java.net.URLConnection
    public void setIfModifiedSince(long j5) {
        this.f3669a.setIfModifiedSince(j5);
    }

    @Override // java.net.HttpURLConnection
    public void setInstanceFollowRedirects(boolean z4) {
        this.f3669a.setInstanceFollowRedirects(z4);
    }

    @Override // java.net.URLConnection
    public void setReadTimeout(int i5) {
        this.f3669a.setReadTimeout(i5);
    }

    @Override // java.net.HttpURLConnection
    public void setRequestMethod(java.lang.String str) throws java.net.ProtocolException {
        com.msec.X3.x1(this.f3669a, str);
    }

    @Override // java.net.URLConnection
    public void setRequestProperty(java.lang.String str, java.lang.String str2) {
        this.f3669a.setRequestProperty(str, this.f3670b.a(str, str2));
    }

    @Override // java.net.URLConnection
    public void setUseCaches(boolean z4) {
        this.f3669a.setUseCaches(z4);
    }

    @Override // java.net.URLConnection
    public java.lang.String toString() {
        return this.f3669a.toString();
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return this.f3669a.usingProxy();
    }
}
