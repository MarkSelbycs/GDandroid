package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class s extends java.io.BufferedOutputStream implements com.msec.p {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f3910h = 8192;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static int f3911i = 46;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.msec.o f3912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f3913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3914c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3915d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3916e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.msec.i f3917f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private java.io.OutputStream f3918g;

    public s(java.io.OutputStream outputStream, com.msec.i iVar) {
        super(outputStream);
        this.f3918g = outputStream;
        this.f3917f = iVar;
        this.f3916e = false;
        int i5 = f3910h;
        this.f3912a = new com.msec.o(i5, f3911i + i5, this);
    }

    @Override // com.msec.p
    public int a(byte[] bArr, int i5, int i6) throws java.io.IOException {
        return ((java.lang.Integer) com.msec.vvv.a(1759, new java.lang.Object[]{this, bArr, java.lang.Integer.valueOf(i5), java.lang.Integer.valueOf(i6)})).intValue();
    }

    public void a() throws java.io.IOException {
        this.f3916e = true;
        this.f3912a.a(f3910h + f3911i);
        super.flush();
    }

    @Override // com.msec.p
    public byte[] a(byte[] bArr) {
        return this.f3917f.a(bArr);
    }

    @Override // com.msec.p
    public void b(byte[] bArr, int i5, int i6) throws java.io.IOException {
        super.write(bArr, i5, i6);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        a();
        super.close();
    }

    @Override // java.io.BufferedOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public synchronized void flush() throws java.io.IOException {
        this.f3912a.b();
        super.flush();
    }

    @Override // java.io.BufferedOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i5) throws java.io.IOException {
        write(new byte[]{(byte) (i5 & 255)}, 0, 1);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws java.io.IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.BufferedOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i5, int i6) throws java.io.IOException {
        com.msec.vvv.a(1758, new java.lang.Object[]{this, bArr, java.lang.Integer.valueOf(i5), java.lang.Integer.valueOf(i6)});
    }
}
