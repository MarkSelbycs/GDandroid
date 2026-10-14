package p4;

/* JADX INFO: compiled from: Salt.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static p4.u f5623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final n4.a f5624c = n4.b.d(p4.u.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f5625a;

    public u() {
        byte[] bArr = new byte[8];
        try {
            java.security.SecureRandom.getInstance("SHA1PRNG").nextBytes(bArr);
        } catch (java.security.NoSuchAlgorithmException unused) {
            f5624c.i("Could not use SecureRandom. Using Random instead.");
            new java.util.Random().nextBytes(bArr);
        }
        this.f5625a = bArr[0];
        for (int i5 = 0; i5 < 7; i5++) {
            this.f5625a = (this.f5625a * 256) + ((long) bArr[i5]) + 128;
        }
        n4.a aVar = f5624c;
        if (aVar.e()) {
            aVar.f("Initialized Salt to " + java.lang.Long.toHexString(this.f5625a) + ".");
        }
    }

    public static p4.u a() {
        if (f5623b == null) {
            f5623b = new p4.u();
        }
        return f5623b;
    }

    public synchronized long b() {
        long j5;
        j5 = this.f5625a;
        this.f5625a = 1 + j5;
        return j5;
    }
}
