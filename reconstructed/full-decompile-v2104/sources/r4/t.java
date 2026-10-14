package r4;

/* JADX INFO: compiled from: UnsignedInteger32.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class t extends r4.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f6002d = 0;

    public t() {
    }

    public static int H(long j5) {
        if (j5 < 128) {
            return 3;
        }
        if (j5 < 32768) {
            return 4;
        }
        if (j5 < 8388608) {
            return 5;
        }
        return j5 < 2147483648L ? 6 : 7;
    }

    public long I() {
        return this.f6002d;
    }

    public void M(long j5) {
        if (j5 < 0 || j5 > 4294967295L) {
            throw new java.lang.IllegalArgumentException("Argument must be an unsigned 32bit value");
        }
        this.f6002d = j5;
    }

    @Override // r4.a, r4.u
    public int c() {
        return 66;
    }

    @Override // r4.a, r4.u
    public java.lang.Object clone() {
        return new r4.t(this.f6002d);
    }

    @Override // r4.a, l4.d
    public void e(java.io.OutputStream outputStream) throws java.io.IOException {
        l4.a.t(outputStream, (byte) 66, this.f6002d);
    }

    @Override // r4.a, r4.u
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof r4.t) && ((r4.t) obj).f6002d == this.f6002d;
    }

    @Override // r4.a, l4.d
    public int f() {
        return H(this.f6002d);
    }

    @Override // r4.a
    public int hashCode() {
        return (int) this.f6002d;
    }

    public void j(l4.b bVar) throws java.io.IOException {
        l4.a.C0066a c0066a = new l4.a.C0066a();
        long jL = l4.a.l(bVar, c0066a);
        if (c0066a.a() == 66) {
            M(jL);
            return;
        }
        throw new java.io.IOException("Wrong type encountered when decoding Gauge: " + ((int) c0066a.a()));
    }

    @Override // r4.a, r4.u
    public java.lang.String toString() {
        return java.lang.Long.toString(this.f6002d);
    }

    @Override // r4.a, java.lang.Comparable
    /* JADX INFO: renamed from: u */
    public int compareTo(r4.u uVar) {
        long jI = this.f6002d - ((r4.t) uVar).I();
        if (jI < 0) {
            return -1;
        }
        return jI > 0 ? 1 : 0;
    }

    public t(long j5) {
        M(j5);
    }
}
