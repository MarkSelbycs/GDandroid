package p4;

/* JADX INFO: compiled from: PrivacyGeneric.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class r implements p4.s {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final n4.a f5616f = n4.b.d(p4.r.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.lang.String f5617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.lang.String f5618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5619c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p4.k f5620d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5621e;

    public byte[] c(byte[] bArr, int i5, int i6, byte[] bArr2, byte[] bArr3) {
        byte[] bArrDoFinal = null;
        try {
            javax.crypto.Cipher cipherB = this.f5620d.b();
            if (cipherB == null) {
                cipherB = javax.crypto.Cipher.getInstance(this.f5617a);
            }
            cipherB.init(2, new javax.crypto.spec.SecretKeySpec(bArr2, 0, this.f5619c, this.f5618b), new javax.crypto.spec.IvParameterSpec(bArr3));
            bArrDoFinal = cipherB.doFinal(bArr, i5, i6);
            this.f5620d.a(cipherB);
            return bArrDoFinal;
        } catch (java.lang.Exception e5) {
            n4.a aVar = f5616f;
            aVar.c(e5);
            if (!aVar.e()) {
                return bArrDoFinal;
            }
            e5.printStackTrace();
            return bArrDoFinal;
        }
    }

    public byte[] e(byte[] bArr, int i5, int i6, javax.crypto.Cipher cipher) throws javax.crypto.BadPaddingException, javax.crypto.IllegalBlockSizeException, javax.crypto.ShortBufferException {
        int i7 = i6 % 8;
        if (i7 == 0) {
            return cipher.doFinal(bArr, i5, i6);
        }
        n4.a aVar = f5616f;
        if (aVar.e()) {
            aVar.f("Using padding.");
        }
        byte[] bArr2 = new byte[((i6 / 8) + 1) * 8];
        cipher.doFinal(new byte[8], 0, 8 - i7, bArr2, cipher.update(bArr, i5, i6, bArr2));
        return bArr2;
    }

    public javax.crypto.Cipher f(byte[] bArr, byte[] bArr2) throws javax.crypto.NoSuchPaddingException, java.security.NoSuchAlgorithmException, java.security.InvalidKeyException, java.security.InvalidAlgorithmParameterException {
        javax.crypto.Cipher cipherB = this.f5620d.b();
        if (cipherB == null) {
            cipherB = javax.crypto.Cipher.getInstance(this.f5617a);
        }
        cipherB.init(1, new javax.crypto.spec.SecretKeySpec(bArr, 0, this.f5619c, this.f5618b), new javax.crypto.spec.IvParameterSpec(bArr2));
        return cipherB;
    }
}
