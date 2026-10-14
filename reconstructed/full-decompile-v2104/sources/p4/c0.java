package p4;

/* JADX INFO: compiled from: USM.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c0 extends p4.t {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final n4.a f5539h = n4.b.d(p4.c0.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p4.j0 f5540b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public p4.g0 f5541c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5542d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public p4.z f5543e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public transient java.util.Vector<m4.j> f5544f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public o4.a f5545g;

    public c0(p4.z zVar, r4.k kVar, int i5) {
        this.f5542d = true;
        this.f5622a = kVar;
        this.f5541c = new p4.g0(kVar, i5);
        this.f5540b = new p4.j0();
        this.f5543e = zVar;
        this.f5545g = o4.a.b();
    }

    public static r4.k t() {
        byte[] bArr = new byte[8];
        new java.util.Random().nextBytes(bArr);
        return new r4.k(bArr);
    }

    @Override // p4.w
    public int a() {
        return 3;
    }

    @Override // p4.w
    public int b(int i5, byte[] bArr, int i6, int i7, byte[] bArr2, byte[] bArr3, int i8, l4.b bVar, p4.y yVar, l4.c cVar, k4.t tVar) throws java.io.IOException {
        return h(i5, bArr, i6, i7, bArr2, bArr3, i8, bVar, null, yVar, cVar);
    }

    @Override // p4.w
    public boolean c() {
        return true;
    }

    @Override // p4.w
    public int d(int i5, int i6, p4.y yVar, p4.w wVar, int i7, l4.b bVar, k4.t tVar, r4.k kVar, r4.k kVar2, l4.c cVar, r4.g gVar, p4.a0 a0Var, o4.o oVar) throws java.io.IOException {
        int i8;
        p4.s sVar;
        p4.d0 d0Var = (p4.d0) yVar;
        p4.e0 e0Var = (p4.e0) a0Var;
        kVar.f0(d0Var.k());
        byte[] bArrI = p4.t.i(bVar);
        if (kVar.e0() == 0 || this.f5541c.c(kVar, s(), d0Var.i(), d0Var.l()) != 0) {
            n4.a aVar = f5539h;
            if (aVar.e()) {
                aVar.f("RFC3414 §3.2.3 Unknown engine ID: " + kVar.h0());
            }
            kVar.f0(d0Var.k());
            kVar2.f0(d0Var.w().a0());
            if (oVar == null) {
                return 1410;
            }
            m4.c cVar2 = new m4.c(this, o4.m.f5387o);
            l(cVar2);
            oVar.j(new r4.g(i7));
            oVar.h(new r4.v(cVar2.e(), cVar2.b()));
            return 1410;
        }
        kVar2.f0(d0Var.w().a0());
        int iU = d0Var.u();
        if (d0Var.w().e0() <= 0 && i7 <= 1) {
            n4.a aVar2 = f5539h;
            if (aVar2.e()) {
                aVar2.f("Accepting zero length security name");
            }
            kVar2.f0(new byte[0]);
        } else if (p(kVar, d0Var.w()) == null) {
            n4.a aVar3 = f5539h;
            if (aVar3.e()) {
                aVar3.f("RFC3414 §3.2.4 Unknown security name: " + kVar2.h0() + " (" + kVar2 + ")");
            }
            if (oVar != null) {
                m4.c cVar3 = new m4.c(this, o4.m.f5385n);
                l(cVar3);
                oVar.j(new r4.g(1));
                oVar.h(new r4.v(cVar3.e(), cVar3.b()));
            }
            return 1404;
        }
        if (d0Var.w().e0() > 0 || i7 > 1) {
            p4.i0 i0VarQ = q(kVar, kVar2);
            if (i0VarQ == null) {
                n4.a aVar4 = f5539h;
                if (aVar4.e()) {
                    aVar4.f("RFC3414 §3.2.4 Unknown security name: " + kVar2.h0() + "( " + kVar2 + ") for engine ID " + kVar.h0());
                }
                m4.c cVar4 = new m4.c(this, o4.m.f5385n);
                l(cVar4);
                if (oVar != null) {
                    if (k4.m.d() == k4.m.a.noAuthNoPrivIfNeeded) {
                        oVar.j(new r4.g(1));
                    }
                    oVar.h(new r4.v(cVar4.e(), cVar4.b()));
                }
                return 1404;
            }
            e0Var.m(i0VarQ.h().a0());
            p4.i iVarF = this.f5543e.f(i0VarQ.j().e());
            p4.s sVarU = this.f5543e.u(i0VarQ.j().j());
            e0Var.g(i0VarQ.b());
            e0Var.i(i0VarQ.f());
            e0Var.h(iVarF);
            e0Var.j(sVarU);
            if ((i7 >= 2 && iVarF == null) || (i7 >= 3 && sVarU == null)) {
                n4.a aVar5 = f5539h;
                if (aVar5.e()) {
                    aVar5.f("RFC3414 §3.2.5 - Unsupported security level: " + i7 + " by user " + i0VarQ);
                }
                m4.c cVar5 = new m4.c(this, o4.m.f5381l);
                l(cVar5);
                if (k4.m.d() == k4.m.a.noAuthNoPrivIfNeeded) {
                    oVar.j(new r4.g(1));
                }
                oVar.h(new r4.v(cVar5.e(), cVar5.b()));
                return 1403;
            }
            if (i7 >= 2) {
                if (oVar != null) {
                    sVar = sVarU;
                    if (!iVarF.m(i0VarQ.b(), bArrI, 0, bArrI.length, new p4.j(bArrI, d0Var.a() + d0Var.v(), iVarF.B()))) {
                        n4.a aVar6 = f5539h;
                        if (aVar6.e()) {
                            aVar6.f("RFC3414 §3.2.6 Wrong digest -> authentication failure: " + d0Var.g().h0());
                        }
                        m4.c cVar6 = new m4.c(this, o4.m.f5389p);
                        l(cVar6);
                        if (k4.m.d() == k4.m.a.noAuthNoPrivIfNeeded) {
                            oVar.j(new r4.g(1));
                        }
                        oVar.h(new r4.v(cVar6.e(), cVar6.b()));
                        return 1408;
                    }
                    int iE = this.f5541c.e(new p4.f0(kVar, d0Var.i(), d0Var.l()));
                    if (iE == 1410) {
                        n4.a aVar7 = f5539h;
                        if (aVar7.e()) {
                            aVar7.f("RFC3414 §3.2.7.b - Unknown engine ID: " + kVar);
                        }
                        m4.c cVar7 = new m4.c(this, o4.m.f5387o);
                        l(cVar7);
                        if (k4.m.d() == k4.m.a.noAuthNoPrivIfNeeded) {
                            oVar.j(new r4.g(1));
                        }
                        oVar.h(new r4.v(cVar7.e(), cVar7.b()));
                        return iE;
                    }
                    if (iE == 1411) {
                        f5539h.f("RFC3414 §3.2.7.a Not in time window; engineID='" + kVar + "', engineBoots=" + d0Var.i() + ", engineTime=" + d0Var.l());
                        m4.c cVar8 = new m4.c(this, o4.m.f5383m);
                        l(cVar8);
                        oVar.j(new r4.g(2));
                        oVar.h(new r4.v(cVar8.e(), cVar8.b()));
                        return iE;
                    }
                } else {
                    sVar = sVarU;
                }
                if (i7 >= 3) {
                    r4.k kVarS = d0Var.s();
                    p4.l lVar = new p4.l(kVarS.a0(), 0, kVarS.e0());
                    try {
                        l4.b bVar2 = new l4.b(java.nio.ByteBuffer.wrap(bArrI, iU, bArrI.length - iU));
                        long jE = bVar2.e();
                        int iC = l4.a.c(bVar2, new l4.a.C0066a());
                        int iE2 = iU + ((int) (bVar2.e() - jE));
                        bVar2.close();
                        i8 = 0;
                        cVar.h(java.nio.ByteBuffer.wrap(sVar.d(bArrI, iE2, iC, i0VarQ.f(), d0Var.i(), d0Var.l(), lVar)));
                    } catch (java.lang.Exception e5) {
                        f5539h.f("RFC 3414 §3.2.8 Decryption error: " + e5.getMessage());
                        return 1406;
                    }
                } else {
                    i8 = 0;
                    cVar.h(java.nio.ByteBuffer.wrap(bArrI, iU, bArrI.length - iU));
                }
            } else {
                i8 = 0;
                cVar.h(java.nio.ByteBuffer.wrap(bArrI, iU, bArrI.length - iU));
            }
        } else {
            cVar.h(java.nio.ByteBuffer.wrap(bArrI, iU, bArrI.length - iU));
            i8 = 0;
        }
        gVar.I(i6 - d0Var.n(i7));
        e0Var.l(kVar2.a0());
        return i8;
    }

    @Override // p4.w
    public p4.y e() {
        return new p4.d0();
    }

    @Override // p4.w
    public boolean f() {
        return true;
    }

    @Override // p4.w
    public p4.a0 g() {
        return new p4.e0();
    }

    @Override // p4.w
    public int h(int i5, byte[] bArr, int i6, int i7, byte[] bArr2, byte[] bArr3, int i8, l4.b bVar, p4.a0 a0Var, p4.y yVar, l4.c cVar) throws java.io.IOException {
        byte[] bArrJ;
        p4.d0 d0Var = (p4.d0) yVar;
        if (a0Var != null) {
            p4.e0 e0Var = (p4.e0) a0Var;
            if (e0Var.e() == null) {
                d0Var.B(bArr2);
                e0Var.k(bArr2);
            }
            if (e0Var.f() == null) {
                r4.k kVar = new r4.k(bArr3);
                e0Var.l(kVar.a0());
                d0Var.G(kVar);
                r4.k kVarP = p(new r4.k(bArr2), kVar);
                if (kVarP != null && kVarP.e0() <= 32) {
                    d0Var.G(kVarP);
                }
            } else {
                d0Var.G(new r4.k(e0Var.f()));
            }
            d0Var.z(e0Var.b());
            d0Var.F(e0Var.d());
            d0Var.x(e0Var.a());
            d0Var.D(e0Var.c());
        } else {
            r4.k kVar2 = new r4.k();
            if (bArr2 != null) {
                kVar2.f0(bArr2);
            }
            r4.k kVar3 = new r4.k(bArr3);
            p4.i0 i0VarQ = null;
            if (kVar2.e0() != 0) {
                i0VarQ = q(kVar2, kVar3);
            } else {
                if (!s()) {
                    n4.a aVar = f5539h;
                    if (!aVar.e()) {
                        return 1410;
                    }
                    aVar.f("Engine ID unknown and discovery disabled");
                    return 1410;
                }
                if (r(null, kVar3)) {
                    i0VarQ = new p4.i0();
                }
            }
            if (i0VarQ == null) {
                n4.a aVar2 = f5539h;
                if (!aVar2.e()) {
                    return 1404;
                }
                aVar2.f("Security name not found for engineID=" + kVar2.h0() + ", securityName=" + kVar3.h0());
                return 1404;
            }
            p4.i iVarF = this.f5543e.f(i0VarQ.j().e());
            p4.s sVarU = this.f5543e.u(i0VarQ.j().j());
            d0Var.z(iVarF);
            d0Var.F(sVarU);
            d0Var.x(i0VarQ.b());
            d0Var.D(i0VarQ.f());
            d0Var.G(i0VarQ.j().Z());
            d0Var.B(kVar2.a0());
        }
        if (d0Var.k().length > 32) {
            f5539h.c("Engine ID too long: " + d0Var.k().length + ">32 for " + new r4.k(d0Var.k()).h0());
            return 1415;
        }
        if (bArr3.length > 32) {
            f5539h.c("Security name too long: " + d0Var.k().length + ">32 for " + new r4.k(bArr3).h0());
            return 1416;
        }
        if (i8 >= 2) {
            if (a0Var != null) {
                d0Var.A(n());
                d0Var.C(o());
            } else {
                r4.k kVar4 = new r4.k(bArr2);
                p4.f0 f0VarQ = this.f5541c.q(kVar4);
                if (f0VarQ == null) {
                    this.f5541c.b(new p4.f0(kVar4, d0Var.i(), d0Var.l()));
                } else {
                    d0Var.A(f0VarQ.b());
                    d0Var.C(f0VarQ.e());
                }
            }
        }
        if (i8 >= 2 && d0Var.h() == null) {
            return 1403;
        }
        byte[] bArrI = p4.t.i(bVar);
        if (i8 != 3) {
            f5539h.f("RFC3414 §3.1.4.b Outgoing message is not encrypted");
            d0Var.E(new r4.k());
        } else {
            if (d0Var.t() == null) {
                n4.a aVar3 = f5539h;
                if (aVar3.e()) {
                    aVar3.f("Unsupported security level (missing or unsupported privacy protocol): Security params are " + d0Var);
                }
                return 1403;
            }
            n4.a aVar4 = f5539h;
            aVar4.f("RFC3414 §3.1.4.a Outgoing message needs to be encrypted");
            p4.l lVar = new p4.l();
            byte[] bArrG = d0Var.t().g(bArrI, 0, bArrI.length, d0Var.r(), d0Var.i(), d0Var.l(), lVar);
            if (bArrG == null) {
                if (!aVar4.e()) {
                    return 1405;
                }
                aVar4.f("Encryption error");
                return 1405;
            }
            d0Var.E(new r4.k(lVar.f5603a));
            r4.k kVar5 = new r4.k(bArrG);
            l4.c cVar2 = new l4.c(java.nio.ByteBuffer.allocate(kVar5.f()));
            kVar5.e(cVar2);
            bArrI = cVar2.c().array();
        }
        if (i8 >= 2) {
            p4.i iVarH = d0Var.h();
            d0Var.y(new r4.k(new byte[iVarH.B()]));
            bArrJ = p4.t.j(new r4.g(i5), bArrI, bArr, d0Var);
            if (!d0Var.h().N(d0Var.d(), bArrJ, 0, bArrJ.length, new p4.j(bArrJ, d0Var.a() + d0Var.v(), iVarH.B()))) {
                n4.a aVar5 = f5539h;
                if (!aVar5.e()) {
                    return 1407;
                }
                aVar5.f("Outgoing message could not be authenticated");
                return 1407;
            }
        } else {
            d0Var.A(0);
            d0Var.y(new r4.k());
            d0Var.C(0);
            bArrJ = p4.t.j(new r4.g(i5), bArrI, bArr, d0Var);
        }
        cVar.f((java.nio.ByteBuffer) java.nio.ByteBuffer.wrap(bArrJ).position(bArrJ.length));
        return 0;
    }

    public p4.i0 k(byte[] bArr, r4.k kVar, r4.j jVar, byte[] bArr2, r4.j jVar2, byte[] bArr3) {
        p4.i0 i0Var = new p4.i0(bArr, kVar, jVar, bArr2, jVar2, bArr3);
        this.f5540b.b(i0Var);
        m(new m4.i(this, i0Var, 1));
        return i0Var;
    }

    public void l(m4.c cVar) {
        this.f5545g.a(cVar);
    }

    public void m(m4.i iVar) {
        java.util.Vector<m4.j> vector = this.f5544f;
        if (vector != null) {
            java.util.Iterator<m4.j> it = vector.iterator();
            while (it.hasNext()) {
                it.next().e(iVar);
            }
        }
    }

    public int n() {
        return this.f5541c.f();
    }

    public int o() {
        return this.f5541c.h();
    }

    public final r4.k p(r4.k kVar, r4.k kVar2) {
        p4.i0 i0VarC;
        if (kVar2.e0() == 0) {
            return kVar2;
        }
        p4.i0 i0VarE = this.f5540b.e(kVar, kVar2);
        if (i0VarE != null) {
            return i0VarE.j().Z();
        }
        if (!s() || (i0VarC = this.f5540b.c(kVar2)) == null) {
            return null;
        }
        return i0VarC.j().Z();
    }

    public p4.i0 q(r4.k kVar, r4.k kVar2) {
        n4.a aVar = f5539h;
        if (aVar.e()) {
            aVar.f("getUser(engineID=" + kVar.h0() + ", securityName=" + kVar2.toString() + ")");
        }
        p4.i0 i0VarE = this.f5540b.e(kVar, kVar2);
        if (i0VarE != null) {
            return i0VarE;
        }
        p4.i0 i0VarC = this.f5540b.c(kVar2);
        byte[] bArrA0 = null;
        if (i0VarC == null && kVar2.e0() > 0) {
            if (aVar.e()) {
                aVar.f("USM.getUser - User '" + kVar2 + "' unknown");
            }
            return null;
        }
        if (i0VarC == null || kVar.e0() == 0) {
            p4.i0 i0Var = new p4.i0();
            i0Var.u(kVar2);
            i0Var.x(new p4.h0(kVar2, null, null, null, null));
            return i0Var;
        }
        r4.j jVarE = i0VarC.j().e();
        r4.j jVarJ = i0VarC.j().j();
        if (jVarE == null) {
            return i0VarC;
        }
        byte[] bArrA1 = i0VarC.j().u() ? i0VarC.j().b().a0() : this.f5543e.y(jVarE, i0VarC.j().b(), kVar.a0());
        if (jVarJ != null) {
            bArrA0 = i0VarC.j().u() ? i0VarC.j().h().a0() : this.f5543e.x(jVarJ, jVarE, i0VarC.j().h(), kVar.a0());
        }
        return k(kVar.a0(), kVar2, jVarE, bArrA1, jVarJ, bArrA0);
    }

    public boolean r(r4.k kVar, r4.k kVar2) {
        return (this.f5540b.e(kVar, kVar2) == null && this.f5540b.c(kVar2) == null && kVar2.e0() > 0) ? false : true;
    }

    public boolean s() {
        return this.f5542d;
    }

    public c0() {
        this(p4.z.h().c(), new r4.k(o4.e.k(t())), 0);
    }
}
