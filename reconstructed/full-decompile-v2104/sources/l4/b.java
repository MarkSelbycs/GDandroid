package l4;

/* JADX INFO: compiled from: BERInputStream.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends java.io.InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.nio.ByteBuffer f5149a;

    public b(java.nio.ByteBuffer byteBuffer) {
        this.f5149a = byteBuffer;
        byteBuffer.mark();
    }

    @Override // java.io.InputStream
    public int available() throws java.io.IOException {
        return this.f5149a.remaining();
    }

    public int c() {
        return this.f5149a.limit();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
    }

    public long e() {
        return this.f5149a.position();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i5) {
        this.f5149a.mark();
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws java.io.IOException {
        try {
            return this.f5149a.get() & 255;
        } catch (java.nio.BufferUnderflowException unused) {
            throw new java.io.IOException("Unexpected end of input stream at position " + e());
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws java.io.IOException {
        this.f5149a.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j5) throws java.io.IOException {
        long jMin = java.lang.Math.min(this.f5149a.remaining(), j5);
        java.nio.ByteBuffer byteBuffer = this.f5149a;
        byteBuffer.position((int) (((long) byteBuffer.position()) + jMin));
        return jMin;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws java.io.IOException {
        if (this.f5149a.remaining() <= 0) {
            return -1;
        }
        int iMin = java.lang.Math.min(this.f5149a.remaining(), bArr.length);
        this.f5149a.get(bArr, 0, iMin);
        return iMin;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i5, int i6) throws java.io.IOException {
        if (this.f5149a.remaining() <= 0 && i6 > 0) {
            return -1;
        }
        int iMin = java.lang.Math.min(this.f5149a.remaining(), bArr.length);
        this.f5149a.get(bArr, i5, i6);
        return iMin;
    }
}
