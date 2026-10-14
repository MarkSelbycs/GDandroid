package p4;

/* JADX INFO: compiled from: PrivDES.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class q extends p4.r {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final r4.j f5613h = new r4.j("1.3.6.1.6.3.10.1.2.2");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final n4.a f5614i = n4.b.d(p4.q.class);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public p4.u f5615g;

    public q() {
        this.f5621e = 8;
        this.f5617a = "DES/CBC/NoPadding";
        this.f5618b = "DES";
        this.f5619c = 8;
        this.f5615g = p4.u.a();
        this.f5620d = new p4.k();
    }

    @Override // p4.s
    public int E() {
        return 8;
    }

    @Override // p4.s
    public byte[] L(byte[] bArr, r4.k kVar, byte[] bArr2, p4.i iVar) {
        return bArr;
    }

    @Override // p4.s
    public int S() {
        return 16;
    }

    @Override // p4.s
    public r4.j a() {
        return (r4.j) f5613h.clone();
    }

    @Override // p4.s
    public byte[] d(byte[] bArr, int i5, int i6, byte[] bArr2, long j5, long j6, p4.l lVar) {
        if (i6 % 8 != 0 || i6 < 8 || lVar.f5605c != 8) {
            throw new java.lang.IllegalArgumentException("Length (" + i6 + ") is not multiple of 8 or decrypt params has not length 8 (" + lVar.f5605c + ").");
        }
        if (bArr2.length >= 16) {
            byte[] bArr3 = new byte[8];
            for (int i7 = 0; i7 < 8; i7++) {
                bArr3[i7] = (byte) (bArr2[i7 + 8] ^ lVar.f5603a[i7]);
            }
            return c(bArr, i5, i6, bArr2, bArr3);
        }
        f5614i.c("Wrong Key length: need at least 16 bytes, is " + bArr2.length + " bytes.");
        throw new java.lang.IllegalArgumentException("decryptionKey has illegal length " + bArr2.length + " (should be at least 16).");
    }

    @Override // p4.s
    public byte[] g(byte[] bArr, int i5, int i6, byte[] bArr2, long j5, long j6, p4.l lVar) {
        int iB = (int) this.f5615g.b();
        if (bArr2.length < 16) {
            f5614i.c("Wrong Key length: need at least 16 bytes, is " + bArr2.length + " bytes.");
            throw new java.lang.IllegalArgumentException("encryptionKey has illegal length " + bArr2.length + " (should be at least 16).");
        }
        if (lVar.f5603a == null || lVar.f5605c < 8) {
            lVar.f5603a = new byte[8];
        }
        lVar.f5605c = 8;
        lVar.f5604b = 0;
        n4.a aVar = f5614i;
        if (aVar.e()) {
            aVar.f("Preparing decrypt_params.");
        }
        for (int i7 = 0; i7 < 4; i7++) {
            byte[] bArr3 = lVar.f5603a;
            int i8 = i7 * 8;
            bArr3[3 - i7] = (byte) (255 & (j5 >> i8));
            bArr3[7 - i7] = (byte) ((iB >> i8) & 255);
        }
        byte[] bArr4 = new byte[8];
        n4.a aVar2 = f5614i;
        if (aVar2.e()) {
            aVar2.f("Preparing iv for encryption.");
        }
        for (int i9 = 0; i9 < 8; i9++) {
            bArr4[i9] = (byte) (bArr2[i9 + 8] ^ lVar.f5603a[i9]);
        }
        byte[] bArrE = null;
        try {
            javax.crypto.Cipher cipherF = f(bArr2, bArr4);
            bArrE = e(bArr, i5, i6, cipherF);
            this.f5620d.a(cipherF);
        } catch (java.lang.Exception e5) {
            n4.a aVar3 = f5614i;
            aVar3.c(e5);
            if (aVar3.e()) {
                e5.printStackTrace();
            }
        }
        n4.a aVar4 = f5614i;
        if (aVar4.e()) {
            aVar4.f("Encryption finished.");
        }
        return bArrE;
    }

    @Override // p4.s
    public int w() {
        return S();
    }
}
