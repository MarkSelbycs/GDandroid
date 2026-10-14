package r4;

/* JADX INFO: compiled from: Integer32.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g extends r4.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5980d = 0;

    public g() {
    }

    public final int H() {
        return this.f5980d;
    }

    public final void I(int i5) {
        this.f5980d = i5;
    }

    @Override // r4.a, r4.u
    public int c() {
        return 2;
    }

    @Override // r4.a, r4.u
    public java.lang.Object clone() {
        return new r4.g(this.f5980d);
    }

    @Override // r4.a, l4.d
    public void e(java.io.OutputStream outputStream) throws java.io.IOException {
        l4.a.n(outputStream, (byte) 2, this.f5980d);
    }

    @Override // r4.a, r4.u
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof r4.g) && ((r4.g) obj).f5980d == this.f5980d;
    }

    @Override // r4.a, l4.d
    public int f() {
        int i5 = this.f5980d;
        if (i5 < 128 && i5 >= -128) {
            return 3;
        }
        if (i5 >= 32768 || i5 < -32768) {
            return (i5 >= 8388608 || i5 < -8388608) ? 6 : 5;
        }
        return 4;
    }

    @Override // r4.a
    public int hashCode() {
        return this.f5980d;
    }

    @Override // l4.d
    public void j(l4.b bVar) throws java.io.IOException {
        l4.a.C0066a c0066a = new l4.a.C0066a();
        int iE = l4.a.e(bVar, c0066a);
        if (c0066a.a() == 2) {
            I(iE);
            return;
        }
        throw new java.io.IOException("Wrong type encountered when decoding Counter: " + ((int) c0066a.a()));
    }

    @Override // r4.a, r4.u
    public java.lang.String toString() {
        return java.lang.Integer.toString(this.f5980d);
    }

    @Override // r4.a, java.lang.Comparable
    /* JADX INFO: renamed from: u */
    public int compareTo(r4.u uVar) {
        return this.f5980d - ((r4.g) uVar).f5980d;
    }

    public g(int i5) {
        I(i5);
    }
}
