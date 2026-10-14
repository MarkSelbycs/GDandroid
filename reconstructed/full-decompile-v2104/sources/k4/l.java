package k4;

/* JADX INFO: compiled from: PDUv1.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l extends k4.k {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public r4.j f4899f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public r4.h f4900g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public r4.g f4901h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public r4.g f4902i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public r4.p f4903o;

    public l() {
        this.f4899f = new r4.j();
        this.f4900g = new r4.h("0.0.0.0");
        this.f4901h = new r4.g(0);
        this.f4902i = new r4.g(0);
        this.f4903o = new r4.p(0L);
        g0(-92);
    }

    @Override // k4.k
    public int F() {
        if (M() != -92) {
            return super.F();
        }
        int iF = 0;
        java.util.Iterator<r4.v> it = this.f4894a.iterator();
        while (it.hasNext()) {
            iF += it.next().f();
        }
        return iF + l4.a.u(iF) + 1 + this.f4900g.f() + this.f4899f.f() + this.f4901h.f() + this.f4902i.f() + this.f4903o.f();
    }

    @Override // k4.k
    public java.lang.Object clone() {
        return new k4.l(this);
    }

    @Override // k4.k
    public void d0(int i5) {
        throw new java.lang.UnsupportedOperationException("Operation not supported for SNMPv1 PDUs");
    }

    @Override // k4.k, l4.d
    public void e(java.io.OutputStream outputStream) throws java.io.IOException {
        l4.a.m(outputStream, this.f4898e, D());
        if (this.f4898e == -92) {
            this.f4899f.e(outputStream);
            this.f4900g.e(outputStream);
            this.f4901h.e(outputStream);
            this.f4902i.e(outputStream);
            this.f4903o.e(outputStream);
        } else {
            this.f4897d.e(outputStream);
            this.f4895b.e(outputStream);
            this.f4896c.e(outputStream);
        }
        int iF = 0;
        java.util.Iterator<r4.v> it = this.f4894a.iterator();
        while (it.hasNext()) {
            iF += it.next().f();
        }
        l4.a.m(outputStream, 48, iF);
        for (r4.v vVar : this.f4894a) {
            if (!j0(vVar.x())) {
                throw new java.io.IOException("Cannot encode Counter64 into a SNMPv1 PDU");
            }
            vVar.e(outputStream);
        }
    }

    @Override // k4.k
    public void e0(int i5) {
        throw new java.lang.UnsupportedOperationException("Operation not supported for SNMPv1 PDUs");
    }

    @Override // k4.k
    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof k4.l)) {
            return super.equals(obj);
        }
        k4.l lVar = (k4.l) obj;
        return super.equals(obj) && r4.a.D(this.f4899f, lVar.f4899f) && r4.a.D(this.f4900g, lVar.f4900g) && r4.a.D(this.f4901h, lVar.f4901h) && r4.a.D(this.f4902i, lVar.f4902i) && r4.a.D(this.f4903o, lVar.f4903o);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
    
        if (k4.m.j() != false) goto L7;
     */
    @Override // k4.k, l4.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void j(l4.b bVar) throws java.io.IOException {
        l4.a.C0066a c0066a = new l4.a.C0066a();
        int iC = l4.a.c(bVar, c0066a);
        int iE = (int) bVar.e();
        switch (c0066a.a()) {
            case -96:
            case -95:
            case -94:
            case -93:
            case -92:
                g0(c0066a.a());
                if (M() == -92) {
                    this.f4899f.j(bVar);
                    this.f4900g.j(bVar);
                    this.f4901h.j(bVar);
                    this.f4902i.j(bVar);
                    this.f4903o.j(bVar);
                } else {
                    this.f4897d.j(bVar);
                    this.f4895b.j(bVar);
                    this.f4896c.j(bVar);
                }
                l4.a.C0066a c0066a2 = new l4.a.C0066a();
                int iC2 = l4.a.c(bVar, c0066a2);
                if (c0066a2.a() != 48) {
                    throw new java.io.IOException("Encountered invalid tag, SEQUENCE expected: " + ((int) c0066a2.a()));
                }
                int iE2 = (int) bVar.e();
                this.f4894a = new java.util.Vector<>();
                while (bVar.e() - ((long) iE2) < iC2) {
                    r4.v vVar = new r4.v();
                    vVar.j(bVar);
                    if (!j0(vVar.x())) {
                        throw new k4.i("Counter64 encountered in SNMPv1 PDU (RFC 2576 §4.1.2.1)");
                    }
                    this.f4894a.add(vVar);
                }
                if (l4.a.y()) {
                    l4.a.b(iC2, ((int) bVar.e()) - iE2, this);
                    l4.a.b(iC, ((int) bVar.e()) - iE, this);
                    return;
                }
                return;
            case -91:
            default:
                throw new java.io.IOException("Unsupported PDU type: " + ((int) c0066a.a()));
            case -90:
            case -89:
                break;
        }
    }

    public boolean j0(r4.u uVar) {
        return !(uVar instanceof r4.d) || k4.m.j();
    }

    @Override // k4.k
    public java.lang.String toString() {
        if (this.f4898e != -92) {
            return super.toString();
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(k4.k.P(this.f4898e));
        sb.append("[reqestID=");
        sb.append(this.f4897d);
        sb.append(",timestamp=");
        sb.append(this.f4903o);
        sb.append(",enterprise=");
        sb.append(this.f4899f);
        sb.append(",genericTrap=");
        sb.append(this.f4901h);
        sb.append(",specificTrap=");
        sb.append(this.f4902i);
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

    public l(k4.l lVar) {
        super(lVar);
        this.f4899f = new r4.j();
        this.f4900g = new r4.h("0.0.0.0");
        this.f4901h = new r4.g(0);
        this.f4902i = new r4.g(0);
        this.f4903o = new r4.p(0L);
        this.f4899f = (r4.j) lVar.f4899f.clone();
        this.f4900g = (r4.h) lVar.f4900g.clone();
        this.f4901h = (r4.g) lVar.f4901h.clone();
        this.f4902i = (r4.g) lVar.f4902i.clone();
        this.f4903o = (r4.p) lVar.f4903o.clone();
    }
}
