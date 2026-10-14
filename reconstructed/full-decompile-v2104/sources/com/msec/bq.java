package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class bq implements cz.msebera.android.httpclient.HttpEntity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private cz.msebera.android.httpclient.HttpEntity f3736a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.msec.i f3737b;

    public bq(com.msec.i iVar, cz.msebera.android.httpclient.HttpEntity httpEntity) {
        this.f3737b = iVar;
        this.f3736a = httpEntity;
    }

    public void consumeContent() throws java.io.IOException {
        this.f3736a.consumeContent();
    }

    public java.io.InputStream getContent() throws java.lang.IllegalStateException, java.io.IOException {
        return this.f3736a.getContent();
    }

    public cz.msebera.android.httpclient.Header getContentEncoding() {
        return this.f3736a.getContentEncoding();
    }

    public long getContentLength() {
        long contentLength = this.f3736a.getContentLength();
        if (contentLength <= 0) {
            return contentLength;
        }
        long j5 = contentLength / 8192;
        if (contentLength % 8192 != 0) {
            j5++;
        }
        return contentLength + (j5 * 46);
    }

    public cz.msebera.android.httpclient.Header getContentType() {
        return this.f3736a.getContentType();
    }

    public boolean isChunked() {
        return this.f3736a.isChunked();
    }

    public boolean isRepeatable() {
        return this.f3736a.isRepeatable();
    }

    public boolean isStreaming() {
        return this.f3736a.isStreaming();
    }

    public void writeTo(java.io.OutputStream outputStream) throws java.io.IOException {
        com.msec.vvv.a(1746, new java.lang.Object[]{this, outputStream});
    }
}
