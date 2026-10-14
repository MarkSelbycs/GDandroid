package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class q extends java.io.BufferedInputStream implements com.msec.p {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f3904e = 8192;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f3905f = 46;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.msec.i f3906a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public com.msec.o f3907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f3908c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3909d;

    public q(java.io.InputStream inputStream, com.msec.i iVar) {
        super(inputStream);
        int i5 = f3904e;
        this.f3907b = new com.msec.o(f3905f + i5, i5, this);
        this.f3906a = iVar;
    }

    @Override // com.msec.p
    public int a(byte[] bArr, int i5, int i6) throws java.io.IOException {
        return super.read(bArr, i5, i6);
    }

    @Override // com.msec.p
    public byte[] a(byte[] bArr) {
        return this.f3906a.c(bArr);
    }

    @Override // com.msec.p
    public void b(byte[] bArr, int i5, int i6) throws java.io.IOException {
        java.lang.System.arraycopy(bArr, i5, this.f3908c, this.f3909d, i6);
        this.f3909d += i6;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws java.io.IOException {
        return ((java.lang.Integer) com.msec.vvv.a(1777, new java.lang.Object[]{this})).intValue();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws java.io.IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i5, int i6) throws java.io.IOException {
        this.f3908c = bArr;
        this.f3909d = i5;
        return this.f3907b.a(i6);
    }
}
