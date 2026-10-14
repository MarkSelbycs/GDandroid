package k4;

/* JADX INFO: compiled from: ScopedPDU.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class n extends k4.k {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public r4.k f4926f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public r4.k f4927g;

    public n() {
        this.f4926f = new r4.k();
        this.f4927g = new r4.k();
    }

    @Override // k4.k
    public int D() {
        int iF = super.f();
        r4.k kVar = this.f4926f;
        int iE0 = kVar == null ? 0 : kVar.e0();
        r4.k kVar2 = this.f4927g;
        int iE1 = kVar2 != null ? kVar2.e0() : 0;
        return iF + l4.a.u(iE0) + 1 + iE0 + l4.a.u(iE1) + 1 + iE1;
    }

    @Override // k4.k
    public java.lang.Object clone() {
        return new k4.n(this);
    }

    @Override // k4.k, l4.d
    public void e(java.io.OutputStream outputStream) throws java.io.IOException {
        l4.a.m(outputStream, 48, D());
        this.f4926f.e(outputStream);
        this.f4927g.e(outputStream);
        super.e(outputStream);
    }

    @Override // k4.k
    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof k4.n)) {
            return super.equals(obj);
        }
        k4.n nVar = (k4.n) obj;
        return super.equals(obj) && r4.a.D(this.f4926f, nVar.f4926f) && r4.a.D(this.f4927g, nVar.f4927g);
    }

    @Override // k4.k, l4.d
    public int f() {
        int iD = D();
        return iD + l4.a.u(iD) + 1;
    }

    @Override // k4.k, l4.d
    public void j(l4.b bVar) throws java.io.IOException {
        int iC = l4.a.c(bVar, new l4.a.C0066a());
        long jE = bVar.e();
        this.f4926f.j(bVar);
        this.f4927g.j(bVar);
        super.j(bVar);
        if (l4.a.y()) {
            l4.a.b(iC, (int) (bVar.e() - jE), this);
        }
    }

    public r4.k j0() {
        return this.f4926f;
    }

    public r4.k k0() {
        return this.f4927g;
    }

    public void l0(r4.k kVar) {
        java.util.Objects.requireNonNull(kVar, "Context engine ID must not be null");
        this.f4926f = kVar;
    }

    public void m0(r4.k kVar) {
        java.util.Objects.requireNonNull(kVar, "Context name must not be null");
        this.f4927g = kVar;
    }

    @Override // k4.k
    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(k4.k.P(this.f4898e));
        sb.append("[{contextEngineID=");
        sb.append(this.f4926f);
        sb.append(", contextName=");
        sb.append(this.f4927g);
        sb.append("}, requestID=");
        sb.append(this.f4897d);
        sb.append(", errorStatus=");
        sb.append(this.f4895b);
        sb.append(", errorIndex=");
        sb.append(this.f4896c);
        sb.append(", VBS[");
        int i5 = 0;
        while (i5 < this.f4894a.size()) {
            sb.append(this.f4894a.get(i5));
            i5++;
            if (i5 < this.f4894a.size()) {
                sb.append("; ");
            }
        }
        sb.append("]]");
        return sb.toString();
    }

    public n(k4.n nVar) {
        super(nVar);
        this.f4926f = new r4.k();
        this.f4927g = new r4.k();
        this.f4926f = (r4.k) nVar.f4926f.clone();
        this.f4927g = (r4.k) nVar.f4927g.clone();
    }
}
