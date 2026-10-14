package p4;

/* JADX INFO: compiled from: AuthGeneric.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a implements p4.i {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final n4.a f5527e = n4.b.d(p4.a.class);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f5528f = 64;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f5529g = 12;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5530a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5531b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5532c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.String f5533d;

    public a(java.lang.String str, int i5) {
        this.f5530a = f5528f;
        this.f5531b = f5529g;
        this.f5533d = str;
        this.f5532c = i5;
    }

    @Override // p4.i
    public int B() {
        return this.f5531b;
    }

    @Override // p4.i
    public byte[] G(r4.k kVar, byte[] bArr) {
        int i5;
        java.security.MessageDigest messageDigestB = b();
        java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(1048576);
        byte[] bArrA0 = kVar.a0();
        int i6 = 0;
        int i7 = 0;
        while (i6 < 1048576) {
            int i8 = 0;
            while (true) {
                i5 = this.f5530a;
                if (i8 < i5) {
                    byteBufferAllocate.put(bArrA0[i7 % bArrA0.length]);
                    i8++;
                    i7++;
                }
            }
            i6 += i5;
        }
        byteBufferAllocate.flip();
        messageDigestB.update(byteBufferAllocate);
        byte[] bArrDigest = messageDigestB.digest();
        n4.a aVar = f5527e;
        if (aVar.e()) {
            aVar.f(this.f5533d + "First digest: " + new r4.k(bArrDigest).h0());
        }
        messageDigestB.reset();
        messageDigestB.update(bArrDigest);
        messageDigestB.update(bArr);
        messageDigestB.update(bArrDigest);
        byte[] bArrDigest2 = messageDigestB.digest();
        if (aVar.e()) {
            aVar.f(this.f5533d + "localized key: " + new r4.k(bArrDigest2).h0());
        }
        return bArrDigest2;
    }

    @Override // p4.i
    public boolean N(byte[] bArr, byte[] bArr2, int i5, int i6, p4.j jVar) {
        java.security.MessageDigest messageDigestB = b();
        int i7 = this.f5530a;
        byte[] bArr3 = new byte[i7];
        byte[] bArr4 = new byte[i7];
        for (int i8 = 0; i8 < this.f5531b; i8++) {
            jVar.d(i8, (byte) 0);
        }
        if (bArr.length > this.f5530a) {
            bArr = messageDigestB.digest(bArr);
        }
        for (int i9 = 0; i9 < bArr.length; i9++) {
            bArr3[i9] = (byte) (bArr[i9] ^ 54);
            bArr4[i9] = (byte) (bArr[i9] ^ 92);
        }
        for (int length = bArr.length; length < this.f5530a; length++) {
            bArr3[length] = 54;
            bArr4[length] = 92;
        }
        messageDigestB.update(bArr3);
        messageDigestB.update(bArr2, i5, i6);
        byte[] bArrDigest = messageDigestB.digest();
        messageDigestB.reset();
        messageDigestB.update(bArr4);
        messageDigestB.update(bArrDigest);
        byte[] bArrDigest2 = messageDigestB.digest();
        for (int i10 = 0; i10 < this.f5531b; i10++) {
            jVar.d(i10, bArrDigest2[i10]);
        }
        return true;
    }

    @Override // p4.i
    public byte[] O(byte[] bArr, int i5, int i6) {
        java.security.MessageDigest messageDigestB = b();
        messageDigestB.update(bArr, i5, i6);
        return messageDigestB.digest();
    }

    public java.security.MessageDigest b() {
        try {
            return java.security.MessageDigest.getInstance(this.f5533d);
        } catch (java.security.NoSuchAlgorithmException unused) {
            throw new java.lang.InternalError(this.f5533d + " not supported in this VM.");
        }
    }

    @Override // p4.i
    public int k() {
        return this.f5532c;
    }

    @Override // p4.i
    public boolean m(byte[] bArr, byte[] bArr2, int i5, int i6, p4.j jVar) {
        int i7 = this.f5531b;
        p4.j jVar2 = new p4.j(new byte[i7], 0, i7);
        java.lang.System.arraycopy(jVar.c(), jVar.b(), jVar2.c(), 0, this.f5531b);
        if (N(bArr, bArr2, i5, i6, jVar)) {
            return jVar.a(jVar2, this.f5531b);
        }
        return false;
    }

    public a(java.lang.String str, int i5, int i6) {
        this(str, i5);
        this.f5531b = i6;
    }

    public a(java.lang.String str, int i5, int i6, int i7) {
        this(str, i5, i6);
        this.f5530a = i7;
    }
}
