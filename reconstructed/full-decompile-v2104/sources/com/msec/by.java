package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class by implements org.apache.http.HttpEntity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private org.apache.http.HttpEntity f3763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.msec.i f3764b;

    public by(com.msec.i iVar, org.apache.http.HttpEntity httpEntity) {
        this.f3764b = iVar;
        this.f3763a = httpEntity;
    }

    @Override // org.apache.http.HttpEntity
    public void consumeContent() throws java.io.IOException {
        this.f3763a.consumeContent();
    }

    @Override // org.apache.http.HttpEntity
    public java.io.InputStream getContent() throws java.lang.IllegalStateException, java.io.IOException {
        return this.f3763a.getContent();
    }

    @Override // org.apache.http.HttpEntity
    public org.apache.http.Header getContentEncoding() {
        return this.f3763a.getContentEncoding();
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        long contentLength = this.f3763a.getContentLength();
        if (contentLength <= 0) {
            return contentLength;
        }
        long j5 = contentLength / 8192;
        if (contentLength % 8192 != 0) {
            j5++;
        }
        return contentLength + (j5 * 46);
    }

    @Override // org.apache.http.HttpEntity
    public org.apache.http.Header getContentType() {
        return this.f3763a.getContentType();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isChunked() {
        return this.f3763a.isChunked();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        return this.f3763a.isRepeatable();
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        return this.f3763a.isStreaming();
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(java.io.OutputStream outputStream) throws java.io.IOException {
        com.msec.vvv.a(1785, new java.lang.Object[]{this, outputStream});
    }
}
