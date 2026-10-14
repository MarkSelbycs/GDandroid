package k4;

/* JADX INFO: compiled from: PDU.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class k implements l4.d, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.Vector<r4.v> f4894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public r4.g f4895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public r4.g f4896c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public r4.g f4897d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4898e;

    public k() {
        this.f4894a = new java.util.Vector<>();
        this.f4895b = new r4.g();
        this.f4896c = new r4.g();
        this.f4897d = new r4.g();
        this.f4898e = -96;
    }

    public static java.lang.String P(int i5) {
        switch (i5) {
            case -96:
                return "GET";
            case -95:
                return "GETNEXT";
            case -94:
                return "RESPONSE";
            case -93:
                return "SET";
            case -92:
                return "V1TRAP";
            case -91:
                return "GETBULK";
            case -90:
                return "INFORM";
            case -89:
                return "TRAP";
            case -88:
                return "REPORT";
            default:
                return "unknown";
        }
    }

    public static java.lang.String i0(int i5) {
        try {
            return i5 < 0 ? o4.m.H0[java.lang.Math.abs(i5) - 1] : o4.m.I0[i5];
        } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
            return "Unknown error: " + i5;
        }
    }

    public static int y(java.util.List<? extends r4.v> list) {
        java.util.Iterator<? extends r4.v> it = list.iterator();
        int iF = 0;
        while (it.hasNext()) {
            iF += it.next().f();
        }
        return iF;
    }

    public int D() {
        return F();
    }

    public int F() {
        int iY = y(this.f4894a);
        return iY + l4.a.u(iY) + 1 + new r4.g(this.f4897d.H()).f() + this.f4895b.f() + this.f4896c.f();
    }

    public java.lang.String H() {
        return i0(this.f4895b.H());
    }

    public r4.g I() {
        return this.f4897d;
    }

    public int M() {
        return this.f4898e;
    }

    public r4.u T(r4.j jVar) {
        for (r4.v vVar : this.f4894a) {
            if (vVar.u().V(jVar)) {
                return vVar.x();
            }
        }
        return null;
    }

    public java.util.Vector<? extends r4.v> U() {
        return this.f4894a;
    }

    public boolean V() {
        int i5 = this.f4898e;
        return (i5 == -88 || i5 == -94 || i5 == -89 || i5 == -92) ? false : true;
    }

    public boolean W() {
        int i5 = this.f4898e;
        return i5 == -94 || i5 == -88;
    }

    public void X(int i5) {
        this.f4896c.I(i5);
    }

    public void a0(int i5) {
        this.f4895b.I(i5);
    }

    public java.lang.Object clone() {
        return new k4.k(this);
    }

    public void d0(int i5) {
        this.f4896c.I(i5);
    }

    @Override // l4.d
    public void e(java.io.OutputStream outputStream) throws java.io.IOException {
        l4.a.m(outputStream, this.f4898e, F());
        this.f4897d.e(outputStream);
        this.f4895b.e(outputStream);
        this.f4896c.e(outputStream);
        java.util.Iterator<r4.v> it = this.f4894a.iterator();
        int iF = 0;
        while (it.hasNext()) {
            iF += it.next().f();
        }
        l4.a.m(outputStream, 48, iF);
        java.util.Iterator<r4.v> it2 = this.f4894a.iterator();
        while (it2.hasNext()) {
            it2.next().e(outputStream);
        }
    }

    public void e0(int i5) {
        this.f4895b.I(i5);
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof k4.k)) {
            return false;
        }
        k4.k kVar = (k4.k) obj;
        return this.f4898e == kVar.f4898e && r4.a.D(this.f4897d, kVar.f4897d) && r4.a.D(this.f4895b, kVar.f4895b) && r4.a.D(this.f4896c, kVar.f4896c) && this.f4894a.equals(kVar.f4894a);
    }

    @Override // l4.d
    public int f() {
        int iF = F();
        return iF + l4.a.u(iF) + 1;
    }

    public void f0(r4.g gVar) {
        this.f4897d = gVar;
    }

    public void g0(int i5) {
        this.f4898e = i5;
    }

    public void h(r4.v vVar) {
        this.f4894a.add(vVar);
    }

    public int h0() {
        return this.f4894a.size();
    }

    public int hashCode() {
        return super.hashCode();
    }

    @Override // l4.d
    public void j(l4.b bVar) throws java.io.IOException {
        l4.a.C0066a c0066a = new l4.a.C0066a();
        int iC = l4.a.c(bVar, c0066a);
        int iE = (int) bVar.e();
        switch (c0066a.a()) {
            case -96:
            case -95:
            case -94:
            case -93:
            case -91:
            case -90:
            case -89:
            case -88:
                this.f4898e = c0066a.a();
                this.f4897d.j(bVar);
                this.f4895b.j(bVar);
                this.f4896c.j(bVar);
                l4.a.C0066a c0066a2 = new l4.a.C0066a();
                int iC2 = l4.a.c(bVar, c0066a2);
                if (c0066a2.a() != 48) {
                    throw new java.io.IOException("Encountered invalid tag, SEQUENCE expected: " + ((int) c0066a2.a()));
                }
                int iE2 = (int) bVar.e();
                this.f4894a = new java.util.Vector<>();
                while (true) {
                    long j5 = iE2;
                    long j6 = iC2;
                    if (bVar.e() - j5 >= j6) {
                        if (bVar.e() - j5 == j6) {
                            if (l4.a.y()) {
                                l4.a.b(iC, ((int) bVar.e()) - iE, this);
                                return;
                            }
                            return;
                        } else {
                            throw new java.io.IOException("Length of VB sequence (" + iC2 + ") does not match real length: " + (((int) bVar.e()) - iE2));
                        }
                    }
                    r4.v vVar = new r4.v();
                    vVar.j(bVar);
                    this.f4894a.add(vVar);
                }
                break;
            case -92:
            default:
                throw new java.io.IOException("Unsupported PDU type: " + ((int) c0066a.a()));
        }
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(P(this.f4898e));
        sb.append("[requestID=");
        sb.append(this.f4897d);
        sb.append(", errorStatus=");
        sb.append(H());
        sb.append("(");
        sb.append(this.f4895b);
        sb.append(")");
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

    public void u() {
        this.f4894a.clear();
        f0(new r4.g(0));
    }

    public r4.v x(int i5) {
        return this.f4894a.get(i5);
    }

    public k(k4.k kVar) {
        this.f4894a = new java.util.Vector<>();
        this.f4895b = new r4.g();
        this.f4896c = new r4.g();
        this.f4897d = new r4.g();
        this.f4898e = -96;
        this.f4894a = new java.util.Vector<>(kVar.h0());
        java.util.Iterator<r4.v> it = kVar.f4894a.iterator();
        while (it.hasNext()) {
            this.f4894a.add((r4.v) it.next().clone());
        }
        this.f4896c = (r4.g) kVar.f4896c.clone();
        this.f4895b = (r4.g) kVar.f4895b.clone();
        this.f4898e = kVar.f4898e;
        r4.g gVar = kVar.f4897d;
        if (gVar != null) {
            this.f4897d = (r4.g) gVar.clone();
        }
    }
}
