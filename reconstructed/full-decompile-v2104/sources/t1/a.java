package t1;

/* JADX INFO: compiled from: FastByteArrayOutputStream.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends java.io.OutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t1.b f6155a;

    public a() {
        this(1024);
    }

    public byte[] c() {
        return this.f6155a.d();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public java.lang.String e(java.nio.charset.Charset charset) {
        return new java.lang.String(c(), (java.nio.charset.Charset) e2.p.c(charset, e2.g.b()));
    }

    public java.lang.String toString() {
        return e(e2.g.b());
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i5, int i6) {
        this.f6155a.b(bArr, i5, i6);
    }

    public a(int i5) {
        this.f6155a = new t1.b(i5);
    }

    @Override // java.io.OutputStream
    public void write(int i5) {
        this.f6155a.a((byte) i5);
    }
}
