package r4;

/* JADX INFO: compiled from: OID.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class j extends r4.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static t4.d f5990e = new t4.f();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f5991f = new int[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f5992d;

    public j() {
        this.f5992d = f5991f;
    }

    public static int[] M(java.lang.String str) {
        try {
            return k4.m.c().a(str);
        } catch (java.text.ParseException e5) {
            throw new java.lang.RuntimeException("OID '" + str + "' cannot be parsed", e5);
        }
    }

    public final int[] H() {
        return this.f5992d;
    }

    public int I(int i5, r4.j jVar) {
        for (int i6 = 0; i6 < i5 && i6 < this.f5992d.length && i6 < jVar.U(); i6++) {
            int[] iArr = this.f5992d;
            int i7 = iArr[i6];
            int[] iArr2 = jVar.f5992d;
            if (i7 != iArr2[i6]) {
                return (((long) iArr[i6]) & 4294967295L) < (((long) iArr2[i6]) & 4294967295L) ? -1 : 1;
            }
        }
        if (i5 > this.f5992d.length) {
            return -1;
        }
        return i5 > jVar.U() ? 1 : 0;
    }

    public final void P(int[] iArr) {
        if (iArr == null) {
            throw new java.lang.IllegalArgumentException("OID value must not be set to null");
        }
        this.f5992d = iArr;
    }

    public final void T(int[] iArr, int i5, int i6) {
        int[] iArr2 = new int[i6];
        this.f5992d = iArr2;
        java.lang.System.arraycopy(iArr, i5, iArr2, 0, i6);
    }

    public final int U() {
        return this.f5992d.length;
    }

    public boolean V(r4.j jVar) {
        int[] iArr = jVar.f5992d;
        int length = iArr.length;
        int[] iArr2 = this.f5992d;
        return length <= iArr2.length && I(java.lang.Math.min(iArr2.length, iArr.length), jVar) == 0;
    }

    @Override // r4.a, r4.u
    public final int c() {
        return 6;
    }

    @Override // r4.a, r4.u
    public java.lang.Object clone() {
        return new r4.j(this.f5992d);
    }

    @Override // r4.a, l4.d
    public void e(java.io.OutputStream outputStream) throws java.io.IOException {
        l4.a.p(outputStream, (byte) 6, this.f5992d);
    }

    @Override // r4.a, r4.u
    public final boolean equals(java.lang.Object obj) {
        if (!(obj instanceof r4.j)) {
            return false;
        }
        r4.j jVar = (r4.j) obj;
        if (jVar.f5992d.length != this.f5992d.length) {
            return false;
        }
        int i5 = 0;
        while (true) {
            int[] iArr = this.f5992d;
            if (i5 >= iArr.length) {
                return true;
            }
            if (iArr[i5] != jVar.f5992d[i5]) {
                return false;
            }
            i5++;
        }
    }

    @Override // r4.a, l4.d
    public int f() {
        int iV = l4.a.v(this.f5992d);
        return iV + l4.a.u(iV) + 1;
    }

    @Override // r4.a
    public int hashCode() {
        return java.util.Arrays.hashCode(H());
    }

    @Override // l4.d
    public void j(l4.b bVar) throws java.io.IOException {
        l4.a.C0066a c0066a = new l4.a.C0066a();
        int[] iArrI = l4.a.i(bVar, c0066a);
        if (c0066a.a() == 6) {
            P(iArrI);
            return;
        }
        throw new java.io.IOException("Wrong type encountered when decoding OID: " + ((int) c0066a.a()));
    }

    @Override // r4.a, r4.u
    public java.lang.String toString() {
        return k4.m.c().c(this.f5992d);
    }

    @Override // r4.a, java.lang.Comparable
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public final int compareTo(r4.u uVar) {
        if (!(uVar instanceof r4.j)) {
            throw new java.lang.ClassCastException(uVar.getClass().getName());
        }
        r4.j jVar = (r4.j) uVar;
        int I = I(java.lang.Math.min(this.f5992d.length, jVar.f5992d.length), jVar);
        return I == 0 ? this.f5992d.length - jVar.f5992d.length : I;
    }

    public j(java.lang.String str) {
        this.f5992d = f5991f;
        this.f5992d = M(str);
    }

    public j(int[] iArr) {
        this(iArr, 0, iArr.length);
    }

    public j(int[] iArr, int i5, int i6) {
        this.f5992d = f5991f;
        T(iArr, i5, i6);
    }

    public j(r4.j jVar) {
        this(jVar.H());
    }
}
