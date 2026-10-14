package p4;

/* JADX INFO: compiled from: PrivAES.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class p extends p4.r {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final n4.a f5611h = n4.b.d(p4.p.class);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public p4.u f5612g;

    public p(int i5) {
        this.f5621e = 16;
        this.f5617a = "AES/CFB/NoPadding";
        this.f5618b = "AES";
        if (i5 == 16 || i5 == 24 || i5 == 32) {
            this.f5619c = i5;
            this.f5612g = p4.u.a();
            this.f5620d = new p4.k();
        } else {
            throw new java.lang.IllegalArgumentException("Only 128, 192 and 256 bit AES is allowed. Requested (" + (i5 * 8) + ").");
        }
    }

    public static java.lang.String h(byte[] bArr) {
        return new r4.k(bArr).h0();
    }

    @Override // p4.s
    public int E() {
        return 8;
    }

    @Override // p4.s
    public byte[] L(byte[] bArr, r4.k kVar, byte[] bArr2, p4.i iVar) {
        int iS = S();
        byte[] bArr3 = new byte[iS];
        int length = bArr.length;
        java.lang.System.arraycopy(bArr, 0, bArr3, 0, length);
        while (length < iS) {
            byte[] bArrO = iVar.O(bArr3, 0, length);
            if (bArrO == null) {
                return null;
            }
            int iK = iS - length;
            if (iK > iVar.k()) {
                iK = iVar.k();
            }
            java.lang.System.arraycopy(bArrO, 0, bArr3, length, iK);
            length += iK;
        }
        return bArr3;
    }

    @Override // p4.s
    public int S() {
        return this.f5619c;
    }

    @Override // p4.s
    public byte[] d(byte[] bArr, int i5, int i6, byte[] bArr2, long j5, long j6, p4.l lVar) {
        byte[] bArr3 = new byte[16];
        if (bArr2.length != this.f5619c) {
            throw new java.lang.IllegalArgumentException("Needed key length is " + this.f5619c + ". Got " + bArr2.length + ".");
        }
        bArr3[0] = (byte) ((j5 >> 24) & 255);
        bArr3[1] = (byte) ((j5 >> 16) & 255);
        bArr3[2] = (byte) ((j5 >> 8) & 255);
        bArr3[3] = (byte) (j5 & 255);
        bArr3[4] = (byte) ((j6 >> 24) & 255);
        bArr3[5] = (byte) ((j6 >> 16) & 255);
        bArr3[6] = (byte) ((j6 >> 8) & 255);
        bArr3[7] = (byte) (j6 & 255);
        java.lang.System.arraycopy(lVar.f5603a, lVar.f5604b, bArr3, 8, 8);
        n4.a aVar = f5611h;
        if (aVar.e()) {
            aVar.f("initVect is " + h(bArr3));
        }
        return c(bArr, i5, i6, bArr2, bArr3);
    }

    @Override // p4.s
    public byte[] g(byte[] bArr, int i5, int i6, byte[] bArr2, long j5, long j6, p4.l lVar) {
        byte[] bArr3 = new byte[16];
        long jB = this.f5612g.b();
        if (bArr2.length != this.f5619c) {
            throw new java.lang.IllegalArgumentException("Needed key length is " + this.f5619c + ". Got " + bArr2.length + ".");
        }
        if (lVar.f5603a == null || lVar.f5605c < 8) {
            lVar.f5603a = new byte[8];
        }
        lVar.f5605c = 8;
        lVar.f5604b = 0;
        bArr3[0] = (byte) ((j5 >> 24) & 255);
        bArr3[1] = (byte) ((j5 >> 16) & 255);
        bArr3[2] = (byte) ((j5 >> 8) & 255);
        bArr3[3] = (byte) (j5 & 255);
        bArr3[4] = (byte) ((j6 >> 24) & 255);
        bArr3[5] = (byte) ((j6 >> 16) & 255);
        bArr3[6] = (byte) ((j6 >> 8) & 255);
        bArr3[7] = (byte) (j6 & 255);
        int i7 = 56;
        int i8 = 8;
        while (i7 >= 0) {
            bArr3[i8] = (byte) ((jB >> i7) & 255);
            i7 -= 8;
            i8++;
        }
        java.lang.System.arraycopy(bArr3, 8, lVar.f5603a, 0, 8);
        n4.a aVar = f5611h;
        if (aVar.e()) {
            aVar.f("initVect is " + h(bArr3));
        }
        byte[] bArrDoFinal = null;
        try {
            javax.crypto.Cipher cipherF = f(bArr2, bArr3);
            bArrDoFinal = cipherF.doFinal(bArr, i5, i6);
            this.f5620d.a(cipherF);
            if (aVar.e()) {
                aVar.f("aes encrypt: Data to encrypt " + h(bArr));
                aVar.f("aes encrypt: used key " + h(bArr2));
                aVar.f("aes encrypt: created privacy_params " + h(lVar.f5603a));
                aVar.f("aes encrypt: encrypted Data  " + h(bArrDoFinal));
            }
        } catch (java.lang.Exception e5) {
            f5611h.c("Encrypt Exception " + e5);
        }
        return bArrDoFinal;
    }

    @Override // p4.s
    public int w() {
        return S();
    }
}
