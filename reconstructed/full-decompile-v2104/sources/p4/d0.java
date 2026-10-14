package p4;

/* JADX INFO: compiled from: UsmSecurityParameters.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d0 implements p4.y {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final n4.a f5547t = n4.b.d(p4.d0.class);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte[] f5554g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f5555h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r4.k f5548a = new r4.k();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public r4.g f5549b = new r4.g();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public r4.g f5550c = new r4.g();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public r4.k f5551d = new r4.k();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public p4.i f5552e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public p4.s f5553f = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public r4.k f5556i = new r4.k();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public r4.k f5557o = new r4.k();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5558p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f5559q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f5560r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f5561s = -1;

    public void A(int i5) {
        this.f5549b.I(i5);
    }

    public void B(byte[] bArr) {
        java.util.Objects.requireNonNull(bArr, "Authoritative engine ID must not be null");
        this.f5548a.f0(bArr);
    }

    public void C(int i5) {
        this.f5550c.I(i5);
    }

    public void D(byte[] bArr) {
        this.f5555h = bArr;
    }

    public void E(r4.k kVar) {
        this.f5556i = kVar;
    }

    public void F(p4.s sVar) {
        this.f5553f = sVar;
    }

    public void G(r4.k kVar) {
        this.f5551d = kVar;
    }

    public int a() {
        int i5 = this.f5559q;
        return i5 >= 0 ? i5 : m();
    }

    @Override // p4.y
    public void b(int i5) {
        this.f5558p = i5;
    }

    public byte[] d() {
        return this.f5554g;
    }

    @Override // l4.d
    public void e(java.io.OutputStream outputStream) throws java.io.IOException {
        l4.a.m(outputStream, 4, o());
        l4.a.m(outputStream, 48, p());
        this.f5548a.e(outputStream);
        this.f5549b.e(outputStream);
        this.f5550c.e(outputStream);
        this.f5551d.e(outputStream);
        this.f5557o.e(outputStream);
        this.f5556i.e(outputStream);
    }

    @Override // l4.d
    public int f() {
        int iO = o();
        return iO + l4.a.u(iO) + 1;
    }

    public r4.k g() {
        return this.f5557o;
    }

    public p4.i h() {
        return this.f5552e;
    }

    public int i() {
        return this.f5549b.H();
    }

    @Override // l4.d
    public void j(l4.b bVar) throws java.io.IOException {
        int iE = (int) bVar.e();
        this.f5560r = iE;
        l4.a.C0066a c0066a = new l4.a.C0066a();
        int iC = l4.a.c(bVar, c0066a);
        long jE = bVar.e();
        if (c0066a.a() != 4) {
            java.lang.String str = "BER decoding error: Expected BER OCTETSTRING but found: " + ((int) c0066a.a());
            f5547t.i(str);
            throw new java.io.IOException(str);
        }
        this.f5561s = (int) bVar.e();
        int iC2 = l4.a.c(bVar, c0066a);
        long jE2 = bVar.e();
        if (c0066a.a() != 48) {
            java.lang.String str2 = "BER decoding error: Expected BER SEQUENCE but found: " + ((int) c0066a.a());
            f5547t.i(str2);
            throw new java.io.IOException(str2);
        }
        this.f5548a.j(bVar);
        this.f5549b.j(bVar);
        this.f5550c.j(bVar);
        this.f5551d.j(bVar);
        this.f5559q = (int) (bVar.e() - ((long) iE));
        int iE2 = (int) bVar.e();
        this.f5557o.j(bVar);
        this.f5559q = (int) (((long) this.f5559q) + ((bVar.e() - ((long) iE2)) - ((long) this.f5557o.X())));
        this.f5556i.j(bVar);
        this.f5560r = (int) (bVar.e() - ((long) this.f5560r));
        if (l4.a.y()) {
            l4.a.b(iC2, (int) (bVar.e() - jE2), this);
            l4.a.b(iC, (int) (bVar.e() - jE), this);
        }
    }

    public byte[] k() {
        return this.f5548a.a0();
    }

    public int l() {
        return this.f5550c.H();
    }

    public final int m() {
        return f() - (this.f5557o.X() + this.f5556i.f());
    }

    public int n(int i5) {
        int iJ;
        p4.z zVarH = p4.z.h();
        if (i5 > 1) {
            iJ = zVarH.j() + l4.a.u(zVarH.j()) + 1;
            if (i5 == 3) {
                iJ += zVarH.q() + l4.a.u(zVarH.q()) + 1;
            }
        } else {
            iJ = 2;
        }
        int i6 = iJ + 80;
        return i6 + l4.a.u(i6) + 1;
    }

    public int o() {
        int iP = p();
        return iP + l4.a.u(iP) + 1;
    }

    public int p() {
        return this.f5548a.f() + this.f5549b.f() + this.f5550c.f() + this.f5551d.f() + this.f5557o.f() + this.f5556i.f();
    }

    public byte[] r() {
        return this.f5555h;
    }

    public r4.k s() {
        return this.f5556i;
    }

    public p4.s t() {
        return this.f5553f;
    }

    public int u() {
        int iF;
        int iV = this.f5560r;
        if (iV >= 0) {
            iF = v();
        } else {
            iV = v();
            iF = f();
        }
        return iV + iF;
    }

    public int v() {
        return this.f5558p;
    }

    public r4.k w() {
        return this.f5551d;
    }

    public void x(byte[] bArr) {
        this.f5554g = bArr;
    }

    public void y(r4.k kVar) {
        this.f5557o = kVar;
    }

    public void z(p4.i iVar) {
        this.f5552e = iVar;
    }
}
