package l;

/* JADX INFO: compiled from: ResolutionAnchor.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class m extends l.o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l.e f5093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f5094d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public l.m f5095e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f5096f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public l.m f5097g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f5098h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public l.m f5100j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f5101k;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5099i = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public l.n f5102l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f5103m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public l.n f5104n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5105o = 1;

    public m(l.e eVar) {
        this.f5093c = eVar;
    }

    @Override // l.o
    public void e() {
        super.e();
        this.f5095e = null;
        this.f5096f = 0.0f;
        this.f5102l = null;
        this.f5103m = 1;
        this.f5104n = null;
        this.f5105o = 1;
        this.f5097g = null;
        this.f5098h = 0.0f;
        this.f5094d = 0.0f;
        this.f5100j = null;
        this.f5101k = 0.0f;
        this.f5099i = 0;
    }

    @Override // l.o
    public void f() {
        int i5;
        l.m mVar;
        l.m mVar2;
        l.m mVar3;
        l.m mVar4;
        l.m mVar5;
        l.m mVar6;
        float fD;
        float f5;
        l.m mVar7;
        boolean z4 = true;
        if (this.f5108b == 1 || (i5 = this.f5099i) == 4) {
            return;
        }
        l.n nVar = this.f5102l;
        if (nVar != null) {
            if (nVar.f5108b != 1) {
                return;
            } else {
                this.f5096f = this.f5103m * nVar.f5106c;
            }
        }
        l.n nVar2 = this.f5104n;
        if (nVar2 != null) {
            if (nVar2.f5108b != 1) {
                return;
            } else {
                this.f5101k = this.f5105o * nVar2.f5106c;
            }
        }
        if (i5 == 1 && ((mVar7 = this.f5095e) == null || mVar7.f5108b == 1)) {
            if (mVar7 == null) {
                this.f5097g = this;
                this.f5098h = this.f5096f;
            } else {
                this.f5097g = mVar7.f5097g;
                this.f5098h = mVar7.f5098h + this.f5096f;
            }
            b();
            return;
        }
        if (i5 != 2 || (mVar4 = this.f5095e) == null || mVar4.f5108b != 1 || (mVar5 = this.f5100j) == null || (mVar6 = mVar5.f5095e) == null || mVar6.f5108b != 1) {
            if (i5 != 3 || (mVar = this.f5095e) == null || mVar.f5108b != 1 || (mVar2 = this.f5100j) == null || (mVar3 = mVar2.f5095e) == null || mVar3.f5108b != 1) {
                if (i5 == 5) {
                    this.f5093c.f4988b.U();
                    return;
                }
                return;
            }
            k.e.x();
            l.m mVar8 = this.f5095e;
            this.f5097g = mVar8.f5097g;
            l.m mVar9 = this.f5100j;
            l.m mVar10 = mVar9.f5095e;
            mVar9.f5097g = mVar10.f5097g;
            this.f5098h = mVar8.f5098h + this.f5096f;
            mVar9.f5098h = mVar10.f5098h + mVar9.f5096f;
            b();
            this.f5100j.b();
            return;
        }
        k.e.x();
        l.m mVar11 = this.f5095e;
        this.f5097g = mVar11.f5097g;
        l.m mVar12 = this.f5100j;
        l.m mVar13 = mVar12.f5095e;
        mVar12.f5097g = mVar13.f5097g;
        l.e eVar = this.f5093c;
        l.e.d dVar = eVar.f4989c;
        l.e.d dVar2 = l.e.d.RIGHT;
        int i6 = 0;
        if (dVar != dVar2 && dVar != l.e.d.BOTTOM) {
            z4 = false;
        }
        float f6 = z4 ? mVar11.f5098h - mVar13.f5098h : mVar13.f5098h - mVar11.f5098h;
        if (dVar == l.e.d.LEFT || dVar == dVar2) {
            fD = f6 - eVar.f4988b.D();
            f5 = this.f5093c.f4988b.Z;
        } else {
            fD = f6 - eVar.f4988b.r();
            f5 = this.f5093c.f4988b.f5017a0;
        }
        int iD = this.f5093c.d();
        int iD2 = this.f5100j.f5093c.d();
        if (this.f5093c.i() == this.f5100j.f5093c.i()) {
            f5 = 0.5f;
            iD2 = 0;
        } else {
            i6 = iD;
        }
        float f7 = i6;
        float f8 = iD2;
        float f9 = (fD - f7) - f8;
        if (z4) {
            l.m mVar14 = this.f5100j;
            mVar14.f5098h = mVar14.f5095e.f5098h + f8 + (f9 * f5);
            this.f5098h = (this.f5095e.f5098h - f7) - (f9 * (1.0f - f5));
        } else {
            this.f5098h = this.f5095e.f5098h + f7 + (f9 * f5);
            l.m mVar15 = this.f5100j;
            mVar15.f5098h = (mVar15.f5095e.f5098h - f8) - (f9 * (1.0f - f5));
        }
        b();
        this.f5100j.b();
    }

    public void g(k.e eVar) {
        k.i iVarG = this.f5093c.g();
        l.m mVar = this.f5097g;
        if (mVar == null) {
            eVar.f(iVarG, (int) (this.f5098h + 0.5f));
        } else {
            eVar.e(iVarG, eVar.r(mVar.f5093c), (int) (this.f5098h + 0.5f), 6);
        }
    }

    public void h(int i5, l.m mVar, int i6) {
        this.f5099i = i5;
        this.f5095e = mVar;
        this.f5096f = i6;
        mVar.a(this);
    }

    public void i(l.m mVar, int i5) {
        this.f5095e = mVar;
        this.f5096f = i5;
        mVar.a(this);
    }

    public void j(l.m mVar, int i5, l.n nVar) {
        this.f5095e = mVar;
        mVar.a(this);
        this.f5102l = nVar;
        this.f5103m = i5;
        nVar.a(this);
    }

    public float k() {
        return this.f5098h;
    }

    public void l(l.m mVar, float f5) {
        int i5 = this.f5108b;
        if (i5 == 0 || !(this.f5097g == mVar || this.f5098h == f5)) {
            this.f5097g = mVar;
            this.f5098h = f5;
            if (i5 == 1) {
                c();
            }
            b();
        }
    }

    public java.lang.String m(int i5) {
        if (i5 == 1) {
            return "DIRECT";
        }
        if (i5 == 2) {
            return "CENTER";
        }
        if (i5 == 3) {
            return "MATCH";
        }
        if (i5 == 4) {
            return "CHAIN";
        }
        return i5 == 5 ? "BARRIER" : "UNCONNECTED";
    }

    public void n(l.m mVar, float f5) {
        this.f5100j = mVar;
        this.f5101k = f5;
    }

    public void o(l.m mVar, int i5, l.n nVar) {
        this.f5100j = mVar;
        this.f5104n = nVar;
        this.f5105o = i5;
    }

    public void p(int i5) {
        this.f5099i = i5;
    }

    public void q() {
        l.e eVarI = this.f5093c.i();
        if (eVarI == null) {
            return;
        }
        if (eVarI.i() == this.f5093c) {
            this.f5099i = 4;
            eVarI.f().f5099i = 4;
        }
        int iD = this.f5093c.d();
        l.e.d dVar = this.f5093c.f4989c;
        if (dVar == l.e.d.RIGHT || dVar == l.e.d.BOTTOM) {
            iD = -iD;
        }
        i(eVarI.f(), iD);
    }

    public java.lang.String toString() {
        if (this.f5108b != 1) {
            return "{ " + this.f5093c + " UNRESOLVED} type: " + m(this.f5099i);
        }
        if (this.f5097g == this) {
            return "[" + this.f5093c + ", RESOLVED: " + this.f5098h + "]  type: " + m(this.f5099i);
        }
        return "[" + this.f5093c + ", RESOLVED: " + this.f5097g + ":" + this.f5098h + "] type: " + m(this.f5099i);
    }
}
