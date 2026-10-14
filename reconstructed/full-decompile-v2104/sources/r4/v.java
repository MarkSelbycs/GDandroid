package r4;

/* JADX INFO: compiled from: VariableBinding.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class v implements java.io.Serializable, l4.d, java.lang.Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r4.j f6003a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public r4.u f6004b;

    public v() {
        this.f6003a = new r4.j();
        this.f6004b = r4.i.f5988h;
    }

    public void D(r4.u uVar) {
        if (uVar == null) {
            throw new java.lang.IllegalArgumentException("Variable of a VariableBinding must not be null");
        }
        this.f6004b = (r4.u) uVar.clone();
    }

    public java.lang.Object clone() {
        return new r4.v(this.f6003a, this.f6004b);
    }

    @Override // l4.d
    public final void e(java.io.OutputStream outputStream) throws java.io.IOException {
        l4.a.m(outputStream, 48, h());
        this.f6003a.e(outputStream);
        this.f6004b.e(outputStream);
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof r4.v)) {
            return false;
        }
        r4.v vVar = (r4.v) obj;
        return this.f6003a.equals(vVar.u()) && this.f6004b.equals(vVar.x());
    }

    @Override // l4.d
    public final int f() {
        int iH = h();
        return iH + l4.a.u(iH) + 1;
    }

    public final int h() {
        return this.f6003a.f() + this.f6004b.f();
    }

    public int hashCode() {
        return this.f6003a.hashCode();
    }

    @Override // l4.d
    public final void j(l4.b bVar) throws java.io.IOException {
        l4.a.C0066a c0066a = new l4.a.C0066a();
        int iC = l4.a.c(bVar, c0066a);
        long jE = bVar.e();
        if (c0066a.a() != 48) {
            throw new java.io.IOException("Invalid sequence encoding: " + ((int) c0066a.a()));
        }
        this.f6003a.j(bVar);
        this.f6004b = r4.a.x(bVar);
        if (l4.a.y()) {
            l4.a.b(iC, (int) (bVar.e() - jE), this);
        }
    }

    public java.lang.String toString() {
        return k4.m.i().a(this.f6003a, this.f6004b, true);
    }

    public r4.j u() {
        return this.f6003a;
    }

    public r4.u x() {
        return this.f6004b;
    }

    public void y(r4.j jVar) {
        if (jVar == null) {
            throw new java.lang.IllegalArgumentException("OID of a VariableBinding must not be null");
        }
        this.f6003a = (r4.j) jVar.clone();
    }

    public v(r4.j jVar) {
        y(jVar);
        this.f6004b = r4.i.f5988h;
    }

    public v(r4.j jVar, r4.u uVar) {
        y(jVar);
        D(uVar);
    }
}
