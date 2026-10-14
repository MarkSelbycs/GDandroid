package k;

/* JADX INFO: compiled from: LinearSystem.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static int f4818q = 1000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public k.e.a f4821c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public k.b[] f4824f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final k.c f4830l;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final k.e.a f4834p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4819a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.util.HashMap<java.lang.String, k.i> f4820b = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4822d = 32;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4823e = 32;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4825g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean[] f4826h = new boolean[32];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f4827i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4828j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4829k = 32;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public k.i[] f4831m = new k.i[f4818q];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f4832n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public k.b[] f4833o = new k.b[32];

    /* JADX INFO: compiled from: LinearSystem.java */
    public interface a {
        k.i a(k.e eVar, boolean[] zArr);

        void b(k.e.a aVar);

        void c(k.i iVar);

        void clear();

        k.i getKey();
    }

    public e() {
        this.f4824f = null;
        this.f4824f = new k.b[32];
        D();
        k.c cVar = new k.c();
        this.f4830l = cVar;
        this.f4821c = new k.d(cVar);
        this.f4834p = new k.b(cVar);
    }

    public static k.b t(k.e eVar, k.i iVar, k.i iVar2, k.i iVar3, float f5, boolean z4) {
        k.b bVarS = eVar.s();
        if (z4) {
            eVar.g(bVarS);
        }
        return bVarS.i(iVar, iVar2, iVar3, f5);
    }

    public static k.f x() {
        return null;
    }

    public void A() throws java.lang.Exception {
        if (!this.f4825g) {
            B(this.f4821c);
            return;
        }
        boolean z4 = false;
        int i5 = 0;
        while (true) {
            if (i5 >= this.f4828j) {
                z4 = true;
                break;
            } else if (!this.f4824f[i5].f4814e) {
                break;
            } else {
                i5++;
            }
        }
        if (z4) {
            o();
        } else {
            B(this.f4821c);
        }
    }

    public void B(k.e.a aVar) throws java.lang.Exception {
        F((k.b) aVar);
        v(aVar);
        C(aVar, false);
        o();
    }

    public final int C(k.e.a aVar, boolean z4) {
        for (int i5 = 0; i5 < this.f4827i; i5++) {
            this.f4826h[i5] = false;
        }
        boolean z5 = false;
        int i6 = 0;
        while (!z5) {
            i6++;
            if (i6 >= this.f4827i * 2) {
                return i6;
            }
            if (aVar.getKey() != null) {
                this.f4826h[aVar.getKey().f4839b] = true;
            }
            k.i iVarA = aVar.a(this, this.f4826h);
            if (iVarA != null) {
                boolean[] zArr = this.f4826h;
                int i7 = iVarA.f4839b;
                if (zArr[i7]) {
                    return i6;
                }
                zArr[i7] = true;
            }
            if (iVarA != null) {
                float f5 = Float.MAX_VALUE;
                int i8 = -1;
                for (int i9 = 0; i9 < this.f4828j; i9++) {
                    k.b bVar = this.f4824f[i9];
                    if (bVar.f4810a.f4844g != k.i.a.UNRESTRICTED && !bVar.f4814e && bVar.s(iVarA)) {
                        float f6 = bVar.f4813d.f(iVarA);
                        if (f6 < 0.0f) {
                            float f7 = (-bVar.f4811b) / f6;
                            if (f7 < f5) {
                                i8 = i9;
                                f5 = f7;
                            }
                        }
                    }
                }
                if (i8 > -1) {
                    k.b bVar2 = this.f4824f[i8];
                    bVar2.f4810a.f4840c = -1;
                    bVar2.v(iVarA);
                    k.i iVar = bVar2.f4810a;
                    iVar.f4840c = i8;
                    iVar.f(bVar2);
                }
            }
            z5 = true;
        }
        return i6;
    }

    public final void D() {
        int i5 = 0;
        while (true) {
            k.b[] bVarArr = this.f4824f;
            if (i5 >= bVarArr.length) {
                return;
            }
            k.b bVar = bVarArr[i5];
            if (bVar != null) {
                this.f4830l.f4815a.a(bVar);
            }
            this.f4824f[i5] = null;
            i5++;
        }
    }

    public void E() {
        k.c cVar;
        int i5 = 0;
        while (true) {
            cVar = this.f4830l;
            k.i[] iVarArr = cVar.f4817c;
            if (i5 >= iVarArr.length) {
                break;
            }
            k.i iVar = iVarArr[i5];
            if (iVar != null) {
                iVar.d();
            }
            i5++;
        }
        cVar.f4816b.c(this.f4831m, this.f4832n);
        this.f4832n = 0;
        java.util.Arrays.fill(this.f4830l.f4817c, (java.lang.Object) null);
        java.util.HashMap<java.lang.String, k.i> map = this.f4820b;
        if (map != null) {
            map.clear();
        }
        this.f4819a = 0;
        this.f4821c.clear();
        this.f4827i = 1;
        for (int i6 = 0; i6 < this.f4828j; i6++) {
            this.f4824f[i6].f4812c = false;
        }
        D();
        this.f4828j = 0;
    }

    public final void F(k.b bVar) {
        if (this.f4828j > 0) {
            bVar.f4813d.o(bVar, this.f4824f);
            if (bVar.f4813d.f4799a == 0) {
                bVar.f4814e = true;
            }
        }
    }

    public final k.i a(k.i.a aVar, java.lang.String str) {
        k.i iVarB = this.f4830l.f4816b.b();
        if (iVarB == null) {
            iVarB = new k.i(aVar, str);
            iVarB.e(aVar, str);
        } else {
            iVarB.d();
            iVarB.e(aVar, str);
        }
        int i5 = this.f4832n;
        int i6 = f4818q;
        if (i5 >= i6) {
            int i7 = i6 * 2;
            f4818q = i7;
            this.f4831m = (k.i[]) java.util.Arrays.copyOf(this.f4831m, i7);
        }
        k.i[] iVarArr = this.f4831m;
        int i8 = this.f4832n;
        this.f4832n = i8 + 1;
        iVarArr[i8] = iVarB;
        return iVarB;
    }

    public void b(l.f fVar, l.f fVar2, float f5, int i5) {
        l.e.d dVar = l.e.d.LEFT;
        k.i iVarR = r(fVar.h(dVar));
        l.e.d dVar2 = l.e.d.TOP;
        k.i iVarR2 = r(fVar.h(dVar2));
        l.e.d dVar3 = l.e.d.RIGHT;
        k.i iVarR3 = r(fVar.h(dVar3));
        l.e.d dVar4 = l.e.d.BOTTOM;
        k.i iVarR4 = r(fVar.h(dVar4));
        k.i iVarR5 = r(fVar2.h(dVar));
        k.i iVarR6 = r(fVar2.h(dVar2));
        k.i iVarR7 = r(fVar2.h(dVar3));
        k.i iVarR8 = r(fVar2.h(dVar4));
        k.b bVarS = s();
        double d5 = f5;
        double d6 = i5;
        bVarS.p(iVarR2, iVarR4, iVarR6, iVarR8, (float) (java.lang.Math.sin(d5) * d6));
        d(bVarS);
        k.b bVarS2 = s();
        bVarS2.p(iVarR, iVarR3, iVarR5, iVarR7, (float) (java.lang.Math.cos(d5) * d6));
        d(bVarS2);
    }

    public void c(k.i iVar, k.i iVar2, int i5, float f5, k.i iVar3, k.i iVar4, int i6, int i7) {
        k.b bVarS = s();
        bVarS.g(iVar, iVar2, i5, f5, iVar3, iVar4, i6);
        if (i7 != 6) {
            bVarS.d(this, i7);
        }
        d(bVarS);
    }

    public void d(k.b bVar) {
        k.i iVarU;
        if (bVar == null) {
            return;
        }
        boolean z4 = true;
        if (this.f4828j + 1 >= this.f4829k || this.f4827i + 1 >= this.f4823e) {
            z();
        }
        boolean z5 = false;
        if (!bVar.f4814e) {
            F(bVar);
            if (bVar.t()) {
                return;
            }
            bVar.q();
            if (bVar.f(this)) {
                k.i iVarQ = q();
                bVar.f4810a = iVarQ;
                m(bVar);
                this.f4834p.b(bVar);
                C(this.f4834p, true);
                if (iVarQ.f4840c == -1) {
                    if (bVar.f4810a == iVarQ && (iVarU = bVar.u(iVarQ)) != null) {
                        bVar.v(iVarU);
                    }
                    if (!bVar.f4814e) {
                        bVar.f4810a.f(bVar);
                    }
                    this.f4828j--;
                }
            } else {
                z4 = false;
            }
            if (!bVar.r()) {
                return;
            } else {
                z5 = z4;
            }
        }
        if (z5) {
            return;
        }
        m(bVar);
    }

    public k.b e(k.i iVar, k.i iVar2, int i5, int i6) {
        k.b bVarS = s();
        bVarS.m(iVar, iVar2, i5);
        if (i6 != 6) {
            bVarS.d(this, i6);
        }
        d(bVarS);
        return bVarS;
    }

    public void f(k.i iVar, int i5) {
        int i6 = iVar.f4840c;
        if (i6 == -1) {
            k.b bVarS = s();
            bVarS.h(iVar, i5);
            d(bVarS);
            return;
        }
        k.b bVar = this.f4824f[i6];
        if (bVar.f4814e) {
            bVar.f4811b = i5;
            return;
        }
        if (bVar.f4813d.f4799a == 0) {
            bVar.f4814e = true;
            bVar.f4811b = i5;
        } else {
            k.b bVarS2 = s();
            bVarS2.l(iVar, i5);
            d(bVarS2);
        }
    }

    public final void g(k.b bVar) {
        bVar.d(this, 0);
    }

    public void h(k.i iVar, k.i iVar2, boolean z4) {
        k.b bVarS = s();
        k.i iVarU = u();
        iVarU.f4841d = 0;
        bVarS.n(iVar, iVar2, iVarU, 0);
        if (z4) {
            n(bVarS, (int) (bVarS.f4813d.f(iVarU) * (-1.0f)), 1);
        }
        d(bVarS);
    }

    public void i(k.i iVar, k.i iVar2, int i5, int i6) {
        k.b bVarS = s();
        k.i iVarU = u();
        iVarU.f4841d = 0;
        bVarS.n(iVar, iVar2, iVarU, i5);
        if (i6 != 6) {
            n(bVarS, (int) (bVarS.f4813d.f(iVarU) * (-1.0f)), i6);
        }
        d(bVarS);
    }

    public void j(k.i iVar, k.i iVar2, boolean z4) {
        k.b bVarS = s();
        k.i iVarU = u();
        iVarU.f4841d = 0;
        bVarS.o(iVar, iVar2, iVarU, 0);
        if (z4) {
            n(bVarS, (int) (bVarS.f4813d.f(iVarU) * (-1.0f)), 1);
        }
        d(bVarS);
    }

    public void k(k.i iVar, k.i iVar2, int i5, int i6) {
        k.b bVarS = s();
        k.i iVarU = u();
        iVarU.f4841d = 0;
        bVarS.o(iVar, iVar2, iVarU, i5);
        if (i6 != 6) {
            n(bVarS, (int) (bVarS.f4813d.f(iVarU) * (-1.0f)), i6);
        }
        d(bVarS);
    }

    public void l(k.i iVar, k.i iVar2, k.i iVar3, k.i iVar4, float f5, int i5) {
        k.b bVarS = s();
        bVarS.j(iVar, iVar2, iVar3, iVar4, f5);
        if (i5 != 6) {
            bVarS.d(this, i5);
        }
        d(bVarS);
    }

    public final void m(k.b bVar) {
        k.b[] bVarArr = this.f4824f;
        int i5 = this.f4828j;
        if (bVarArr[i5] != null) {
            this.f4830l.f4815a.a(bVarArr[i5]);
        }
        k.b[] bVarArr2 = this.f4824f;
        int i6 = this.f4828j;
        bVarArr2[i6] = bVar;
        k.i iVar = bVar.f4810a;
        iVar.f4840c = i6;
        this.f4828j = i6 + 1;
        iVar.f(bVar);
    }

    public void n(k.b bVar, int i5, int i6) {
        bVar.e(p(i6, null), i5);
    }

    public final void o() {
        for (int i5 = 0; i5 < this.f4828j; i5++) {
            k.b bVar = this.f4824f[i5];
            bVar.f4810a.f4842e = bVar.f4811b;
        }
    }

    public k.i p(int i5, java.lang.String str) {
        if (this.f4827i + 1 >= this.f4823e) {
            z();
        }
        k.i iVarA = a(k.i.a.ERROR, str);
        int i6 = this.f4819a + 1;
        this.f4819a = i6;
        this.f4827i++;
        iVarA.f4839b = i6;
        iVarA.f4841d = i5;
        this.f4830l.f4817c[i6] = iVarA;
        this.f4821c.c(iVarA);
        return iVarA;
    }

    public k.i q() {
        if (this.f4827i + 1 >= this.f4823e) {
            z();
        }
        k.i iVarA = a(k.i.a.SLACK, null);
        int i5 = this.f4819a + 1;
        this.f4819a = i5;
        this.f4827i++;
        iVarA.f4839b = i5;
        this.f4830l.f4817c[i5] = iVarA;
        return iVarA;
    }

    public k.i r(java.lang.Object obj) {
        k.i iVarG = null;
        if (obj == null) {
            return null;
        }
        if (this.f4827i + 1 >= this.f4823e) {
            z();
        }
        if (obj instanceof l.e) {
            l.e eVar = (l.e) obj;
            iVarG = eVar.g();
            if (iVarG == null) {
                eVar.n(this.f4830l);
                iVarG = eVar.g();
            }
            int i5 = iVarG.f4839b;
            if (i5 == -1 || i5 > this.f4819a || this.f4830l.f4817c[i5] == null) {
                if (i5 != -1) {
                    iVarG.d();
                }
                int i6 = this.f4819a + 1;
                this.f4819a = i6;
                this.f4827i++;
                iVarG.f4839b = i6;
                iVarG.f4844g = k.i.a.UNRESTRICTED;
                this.f4830l.f4817c[i6] = iVarG;
            }
        }
        return iVarG;
    }

    public k.b s() {
        k.b bVarB = this.f4830l.f4815a.b();
        if (bVarB == null) {
            bVarB = new k.b(this.f4830l);
        } else {
            bVarB.w();
        }
        k.i.b();
        return bVarB;
    }

    public k.i u() {
        if (this.f4827i + 1 >= this.f4823e) {
            z();
        }
        k.i iVarA = a(k.i.a.SLACK, null);
        int i5 = this.f4819a + 1;
        this.f4819a = i5;
        this.f4827i++;
        iVarA.f4839b = i5;
        this.f4830l.f4817c[i5] = iVarA;
        return iVarA;
    }

    public final int v(k.e.a aVar) throws java.lang.Exception {
        float f5;
        boolean z4;
        int i5 = 0;
        while (true) {
            f5 = 0.0f;
            if (i5 >= this.f4828j) {
                z4 = false;
                break;
            }
            k.b[] bVarArr = this.f4824f;
            if (bVarArr[i5].f4810a.f4844g != k.i.a.UNRESTRICTED && bVarArr[i5].f4811b < 0.0f) {
                z4 = true;
                break;
            }
            i5++;
        }
        if (!z4) {
            return 0;
        }
        boolean z5 = false;
        int i6 = 0;
        while (!z5) {
            i6++;
            float f6 = Float.MAX_VALUE;
            int i7 = -1;
            int i8 = -1;
            int i9 = 0;
            int i10 = 0;
            while (i9 < this.f4828j) {
                k.b bVar = this.f4824f[i9];
                if (bVar.f4810a.f4844g != k.i.a.UNRESTRICTED && !bVar.f4814e && bVar.f4811b < f5) {
                    int i11 = 1;
                    while (i11 < this.f4827i) {
                        k.i iVar = this.f4830l.f4817c[i11];
                        float f7 = bVar.f4813d.f(iVar);
                        if (f7 > f5) {
                            for (int i12 = 0; i12 < 7; i12++) {
                                float f8 = iVar.f4843f[i12] / f7;
                                if ((f8 < f6 && i12 == i10) || i12 > i10) {
                                    i10 = i12;
                                    f6 = f8;
                                    i7 = i9;
                                    i8 = i11;
                                }
                            }
                        }
                        i11++;
                        f5 = 0.0f;
                    }
                }
                i9++;
                f5 = 0.0f;
            }
            if (i7 != -1) {
                k.b bVar2 = this.f4824f[i7];
                bVar2.f4810a.f4840c = -1;
                bVar2.v(this.f4830l.f4817c[i8]);
                k.i iVar2 = bVar2.f4810a;
                iVar2.f4840c = i7;
                iVar2.f(bVar2);
            } else {
                z5 = true;
            }
            if (i6 > this.f4827i / 2) {
                z5 = true;
            }
            f5 = 0.0f;
        }
        return i6;
    }

    public k.c w() {
        return this.f4830l;
    }

    public int y(java.lang.Object obj) {
        k.i iVarG = ((l.e) obj).g();
        if (iVarG != null) {
            return (int) (iVarG.f4842e + 0.5f);
        }
        return 0;
    }

    public final void z() {
        int i5 = this.f4822d * 2;
        this.f4822d = i5;
        this.f4824f = (k.b[]) java.util.Arrays.copyOf(this.f4824f, i5);
        k.c cVar = this.f4830l;
        cVar.f4817c = (k.i[]) java.util.Arrays.copyOf(cVar.f4817c, this.f4822d);
        int i6 = this.f4822d;
        this.f4826h = new boolean[i6];
        this.f4823e = i6;
        this.f4829k = i6;
    }
}
