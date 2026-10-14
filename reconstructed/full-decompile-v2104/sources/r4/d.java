package r4;

/* JADX INFO: compiled from: Counter64.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d extends r4.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f5976d = 0;

    public d() {
    }

    public void H(long j5) {
        this.f5976d = j5;
    }

    @Override // r4.a, r4.u
    public int c() {
        return 70;
    }

    @Override // r4.a, r4.u
    public java.lang.Object clone() {
        return new r4.d(this.f5976d);
    }

    @Override // r4.a, l4.d
    public void e(java.io.OutputStream outputStream) throws java.io.IOException {
        l4.a.s(outputStream, (byte) 70, this.f5976d);
    }

    @Override // r4.a, r4.u
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof r4.d) && ((r4.d) obj).f5976d == this.f5976d;
    }

    @Override // r4.a, l4.d
    public int f() {
        long j5 = this.f5976d;
        if (j5 < 0) {
            return 11;
        }
        if (j5 < 2147483648L) {
            if (j5 < 32768) {
                return j5 < 128 ? 3 : 4;
            }
            return j5 < 8388608 ? 5 : 6;
        }
        if (j5 < 140737488355328L) {
            return j5 < 549755813888L ? 7 : 8;
        }
        return j5 < 36028797018963968L ? 9 : 10;
    }

    @Override // r4.a
    public int hashCode() {
        return (int) this.f5976d;
    }

    @Override // l4.d
    public void j(l4.b bVar) throws java.io.IOException {
        l4.a.C0066a c0066a = new l4.a.C0066a();
        long jK = l4.a.k(bVar, c0066a);
        if (c0066a.a() == 70) {
            H(jK);
            return;
        }
        throw new java.io.IOException("Wrong type encountered when decoding Counter64: " + ((int) c0066a.a()));
    }

    @Override // r4.a, r4.u
    public java.lang.String toString() {
        long j5 = this.f5976d;
        if (j5 > 0 && j5 < Long.MAX_VALUE) {
            return java.lang.Long.toString(j5);
        }
        byte[] bArr = new byte[8];
        for (int i5 = 0; i5 < 8; i5++) {
            bArr[i5] = (byte) ((this.f5976d >> ((7 - i5) * 8)) & 255);
        }
        return new java.math.BigInteger(1, bArr).toString();
    }

    @Override // r4.a, java.lang.Comparable
    /* JADX INFO: renamed from: u */
    public int compareTo(r4.u uVar) {
        long j5 = ((r4.d) uVar).f5976d;
        for (int i5 = 63; i5 >= 0; i5--) {
            long j6 = this.f5976d;
            if (((j6 >> i5) & 1) != ((j5 >> i5) & 1)) {
                return ((j6 >> i5) & 1) != 0 ? 1 : -1;
            }
        }
        return 0;
    }

    public d(long j5) {
        H(j5);
    }
}
