package l4;

/* JADX INFO: compiled from: BEROutputStream.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c extends java.io.OutputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.nio.ByteBuffer f5150a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5151b;

    public c() {
        this.f5151b = 0;
        this.f5150a = null;
    }

    public java.nio.ByteBuffer c() {
        return this.f5150a;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
    }

    public java.nio.ByteBuffer e() {
        return (java.nio.ByteBuffer) this.f5150a.position(this.f5151b);
    }

    public void f(java.nio.ByteBuffer byteBuffer) {
        this.f5150a = byteBuffer;
        this.f5151b = byteBuffer.position();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws java.io.IOException {
    }

    public void h(java.nio.ByteBuffer byteBuffer) {
        this.f5150a = byteBuffer;
        this.f5151b = byteBuffer.position();
        byteBuffer.position(byteBuffer.limit());
    }

    @Override // java.io.OutputStream
    public void write(int i5) throws java.io.IOException {
        this.f5150a.put((byte) i5);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws java.io.IOException {
        this.f5150a.put(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i5, int i6) throws java.io.IOException {
        this.f5150a.put(bArr, i5, i6);
    }

    public c(java.nio.ByteBuffer byteBuffer) {
        this.f5151b = 0;
        this.f5150a = byteBuffer;
        this.f5151b = byteBuffer.position();
    }
}
