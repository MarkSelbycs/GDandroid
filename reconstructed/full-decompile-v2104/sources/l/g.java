package l;

/* JADX INFO: compiled from: ConstraintWidgetContainer.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g extends l.q {
    public int A0;
    public int B0;
    public int C0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public l.p f5071y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int f5072z0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public boolean f5069w0 = false;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public k.e f5070x0 = new k.e();
    public int D0 = 0;
    public int E0 = 0;
    public l.d[] F0 = new l.d[4];
    public l.d[] G0 = new l.d[4];
    public java.util.List<l.h> H0 = new java.util.ArrayList();
    public boolean I0 = false;
    public boolean J0 = false;
    public boolean K0 = false;
    public int L0 = 0;
    public int M0 = 0;
    public int N0 = 7;
    public boolean O0 = false;
    public boolean P0 = false;
    public boolean Q0 = false;
    public int R0 = 0;

    /* JADX WARN: Code duplicated, block: B:105:0x0247  */
    /* JADX WARN: Code duplicated, block: B:108:0x0258  */
    /* JADX WARN: Code duplicated, block: B:111:0x0275  */
    /* JADX WARN: Code duplicated, block: B:112:0x0282  */
    /* JADX WARN: Code duplicated, block: B:114:0x0287  */
    /* JADX WARN: Code duplicated, block: B:116:0x0290 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:119:0x0298  */
    /* JADX WARN: Code duplicated, block: B:122:0x02ac A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:126:0x02c2 A[PHI: r0 r9
  0x02c2: PHI (r0v31 ??) = (r0v30 ??), (r0v33 ??), (r0v33 ??), (r0v33 ??) binds: [B:113:0x0285, B:121:0x02aa, B:122:0x02ac, B:124:0x02b2] A[DONT_GENERATE, DONT_INLINE]
  0x02c2: PHI (r9v7 boolean) = (r9v6 boolean), (r9v9 boolean), (r9v9 boolean), (r9v9 boolean) binds: [B:113:0x0285, B:121:0x02aa, B:122:0x02ac, B:124:0x02b2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:160:0x018b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:161:0x01b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x0184  */
    /* JADX WARN: Code duplicated, block: B:73:0x018f  */
    /* JADX WARN: Code duplicated, block: B:75:0x0197  */
    /* JADX WARN: Code duplicated, block: B:77:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:80:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:88:0x01dd  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v83 */
    /* JADX WARN: Type inference failed for: r0v84 */
    /* JADX WARN: Type inference failed for: r0v85 */
    /* JADX WARN: Type inference failed for: r0v86 */
    /* JADX WARN: Type inference failed for: r0v87 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v36 */
    /* JADX WARN: Type inference failed for: r8v38 */
    /* JADX WARN: Type inference failed for: r8v39 */
    /* JADX WARN: Type inference failed for: r8v40, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v41 */
    /* JADX WARN: Type inference failed for: r8v43 */
    /* JADX WARN: Type inference failed for: r8v50 */
    /* JADX WARN: Type inference failed for: r8v51 */
    /* JADX WARN: Type inference failed for: r8v9 */
    @Override // l.q
    public void K0() {
        int i5;
        int i6;
        ?? r8;
        int i7;
        l.f fVar;
        l.f.b bVar;
        l.f.b bVar2;
        int i8;
        char c5;
        boolean z4;
        int iMax;
        boolean z5;
        boolean z6;
        int iMax2;
        ?? r9;
        boolean z7;
        ?? r5;
        ?? r10;
        l.f.b bVar3;
        l.f.b bVar4;
        int i9 = this.K;
        int i10 = this.L;
        int i11 = 0;
        int iMax3 = java.lang.Math.max(0, D());
        int iMax4 = java.lang.Math.max(0, r());
        this.P0 = false;
        this.Q0 = false;
        if (this.F != null) {
            if (this.f5071y0 == null) {
                this.f5071y0 = new l.p(this);
            }
            this.f5071y0.b(this);
            C0(this.f5072z0);
            D0(this.A0);
            R();
            T(this.f5070x0.w());
        } else {
            this.K = 0;
            this.L = 0;
        }
        int i12 = 32;
        if (this.N0 != 0) {
            if (!X0(8)) {
                Z0();
            }
            if (!X0(32)) {
                W0();
            }
            this.f5070x0.f4825g = true;
        } else {
            this.f5070x0.f4825g = false;
        }
        l.f.b[] bVarArr = this.E;
        l.f.b bVar5 = bVarArr[1];
        l.f.b bVar6 = bVarArr[0];
        b1();
        if (this.H0.size() == 0) {
            this.H0.clear();
            this.H0.add(0, new l.h(this.f5119v0));
        }
        int size = this.H0.size();
        java.util.ArrayList<l.f> arrayList = this.f5119v0;
        l.f.b bVarS = s();
        l.f.b bVar7 = l.f.b.WRAP_CONTENT;
        boolean z8 = bVarS == bVar7 || B() == bVar7;
        boolean z9 = false;
        int i13 = 0;
        while (i13 < size && !this.O0) {
            if (this.H0.get(i13).f5076d) {
                i5 = i10;
                i6 = size;
            } else {
                if (X0(i12)) {
                    l.f.b bVarS2 = s();
                    l.f.b bVar8 = l.f.b.FIXED;
                    if (bVarS2 == bVar8 && B() == bVar8) {
                        this.f5119v0 = (java.util.ArrayList) this.H0.get(i13).d();
                    } else {
                        this.f5119v0 = (java.util.ArrayList) this.H0.get(i13).f5073a;
                    }
                }
                b1();
                int size2 = this.f5119v0.size();
                for (int i14 = i11; i14 < size2; i14++) {
                    l.f fVar2 = this.f5119v0.get(i14);
                    if (fVar2 instanceof l.q) {
                        ((l.q) fVar2).K0();
                    }
                }
                boolean z10 = z9 ? 1 : 0;
                int i15 = 0;
                ?? O0 = 1;
                while (O0 != 0) {
                    boolean z11 = z10;
                    int i16 = i15 + 1;
                    try {
                        this.f5070x0.E();
                        b1();
                        g(this.f5070x0);
                        int i17 = 0;
                        while (i17 < size2) {
                            l.f fVar3 = this.f5119v0.get(i17);
                            boolean z12 = O0 == true ? 1 : 0;
                            try {
                                fVar3.g(this.f5070x0);
                                i17++;
                                O0 = z12 ? 1 : 0;
                            } catch (java.lang.Exception e5) {
                                e = e5;
                                O0 = z12 ? 1 : 0;
                                e.printStackTrace();
                                java.lang.System.out.println("EXCEPTION : " + e);
                                r8 = O0 == true ? 1 : 0;
                                if (r8 != 0) {
                                    f1(this.f5070x0, l.k.f5092a);
                                } else {
                                    G0(this.f5070x0);
                                    i7 = 0;
                                    while (true) {
                                        if (i7 < size2) {
                                            fVar = this.f5119v0.get(i7);
                                            bVar = fVar.E[0];
                                            bVar2 = l.f.b.MATCH_CONSTRAINT;
                                            if (bVar == bVar2) {
                                                i8 = i10;
                                                if (fVar.D() < fVar.F()) {
                                                    c5 = 2;
                                                    l.k.f5092a[2] = true;
                                                    break;
                                                }
                                            } else {
                                                i8 = i10;
                                            }
                                            if (fVar.E[1] != bVar2) {
                                            }
                                            i7++;
                                            i10 = i8;
                                        }
                                    }
                                    if (z8) {
                                        z4 = false;
                                    } else {
                                        z4 = false;
                                    }
                                    iMax = java.lang.Math.max(this.V, D());
                                    z6 = z4;
                                    z5 = z11;
                                    if (iMax > D()) {
                                        y0(iMax);
                                        this.E[0] = l.f.b.FIXED;
                                        z6 = true;
                                        z5 = true;
                                    }
                                    iMax2 = java.lang.Math.max(this.W, r());
                                    if (iMax2 > r()) {
                                        b0(iMax2);
                                        r9 = 1;
                                        this.E[1] = l.f.b.FIXED;
                                        r5 = 1;
                                        z7 = true;
                                    } else {
                                        r9 = 1;
                                        z7 = z5;
                                    }
                                    if (z7) {
                                        r5 = z6;
                                        r10 = r5;
                                    } else {
                                        r5 = z6;
                                        bVar3 = this.E[0];
                                        bVar4 = l.f.b.WRAP_CONTENT;
                                        if (bVar3 == bVar4) {
                                            r5 = r5;
                                            z7 = z7;
                                            if (D() > iMax3) {
                                                this.P0 = r9;
                                                this.E[0] = l.f.b.FIXED;
                                                y0(iMax3);
                                                ?? r6 = r9;
                                                z7 = r6 == true ? 1 : 0;
                                                r5 = r6;
                                            }
                                        }
                                        r5 = r5;
                                        r5 = r5;
                                        z7 = z7;
                                        z7 = z7;
                                        if (this.E[r9] == bVar4) {
                                            r5 = z6;
                                            r10 = r5;
                                        } else {
                                            r5 = z6;
                                            r10 = r5;
                                        }
                                    }
                                    i15 = i16;
                                    z10 = z7;
                                    size = size;
                                    i10 = i8;
                                    O0 = r10;
                                }
                                i8 = i10;
                                c5 = 2;
                                if (z8) {
                                    z4 = false;
                                } else {
                                    z4 = false;
                                }
                                iMax = java.lang.Math.max(this.V, D());
                                z6 = z4;
                                z5 = z11;
                                if (iMax > D()) {
                                    y0(iMax);
                                    this.E[0] = l.f.b.FIXED;
                                    z6 = true;
                                    z5 = true;
                                }
                                iMax2 = java.lang.Math.max(this.W, r());
                                if (iMax2 > r()) {
                                    b0(iMax2);
                                    r9 = 1;
                                    this.E[1] = l.f.b.FIXED;
                                    r5 = 1;
                                    z7 = true;
                                } else {
                                    r9 = 1;
                                    z7 = z5;
                                }
                                if (z7) {
                                    r5 = z6;
                                    bVar3 = this.E[0];
                                    bVar4 = l.f.b.WRAP_CONTENT;
                                    if (bVar3 == bVar4) {
                                        r5 = r5;
                                        z7 = z7;
                                        if (D() > iMax3) {
                                            this.P0 = r9;
                                            this.E[0] = l.f.b.FIXED;
                                            y0(iMax3);
                                            ?? r7 = r9;
                                            z7 = r7 == true ? 1 : 0;
                                            r5 = r7;
                                        }
                                    }
                                    r5 = r5;
                                    r5 = r5;
                                    z7 = z7;
                                    z7 = z7;
                                    if (this.E[r9] == bVar4) {
                                        r5 = z6;
                                        r10 = r5;
                                    } else {
                                        r5 = z6;
                                        r10 = r5;
                                    }
                                } else {
                                    r5 = z6;
                                    r10 = r5;
                                }
                                i15 = i16;
                                z10 = z7;
                                size = size;
                                i10 = i8;
                                O0 = r10;
                            }
                        }
                        boolean z13 = O0 == true ? 1 : 0;
                        O0 = O0(this.f5070x0);
                        if (O0 != 0) {
                            try {
                                this.f5070x0.A();
                            } catch (java.lang.Exception e6) {
                                e = e6;
                                e.printStackTrace();
                                java.lang.System.out.println("EXCEPTION : " + e);
                                r8 = O0 == true ? 1 : 0;
                            }
                        }
                        r8 = O0;
                    } catch (java.lang.Exception e7) {
                        e = e7;
                        boolean z14 = O0 == true ? 1 : 0;
                    }
                    if (r8 != 0) {
                        f1(this.f5070x0, l.k.f5092a);
                    } else {
                        G0(this.f5070x0);
                        i7 = 0;
                        while (true) {
                            if (i7 < size2) {
                                fVar = this.f5119v0.get(i7);
                                bVar = fVar.E[0];
                                bVar2 = l.f.b.MATCH_CONSTRAINT;
                                if (bVar == bVar2) {
                                    i8 = i10;
                                    if (fVar.D() < fVar.F()) {
                                        c5 = 2;
                                        l.k.f5092a[2] = true;
                                        break;
                                    }
                                } else {
                                    i8 = i10;
                                }
                                if (fVar.E[1] != bVar2 && fVar.r() < fVar.E()) {
                                    c5 = 2;
                                    l.k.f5092a[2] = true;
                                    break;
                                } else {
                                    i7++;
                                    i10 = i8;
                                }
                            }
                        }
                        if (z8 || i16 >= 8 || !l.k.f5092a[c5]) {
                            z4 = false;
                        } else {
                            int iMax5 = 0;
                            int iMax6 = 0;
                            for (int i18 = 0; i18 < size2; i18++) {
                                l.f fVar4 = this.f5119v0.get(i18);
                                iMax5 = java.lang.Math.max(iMax5, fVar4.K + fVar4.D());
                                iMax6 = java.lang.Math.max(iMax6, fVar4.L + fVar4.r());
                            }
                            int iMax7 = java.lang.Math.max(this.V, iMax5);
                            int iMax8 = java.lang.Math.max(this.W, iMax6);
                            l.f.b bVar9 = l.f.b.WRAP_CONTENT;
                            if (bVar6 != bVar9 || D() >= iMax7) {
                                z4 = false;
                                z11 = z11;
                            } else {
                                y0(iMax7);
                                this.E[0] = bVar9;
                                z4 = true;
                                z11 = true;
                            }
                            if (bVar5 == bVar9 && r() < iMax8) {
                                b0(iMax8);
                                this.E[1] = bVar9;
                                z4 = true;
                                z11 = true;
                            }
                        }
                        iMax = java.lang.Math.max(this.V, D());
                        z6 = z4;
                        z5 = z11;
                        if (iMax > D()) {
                            y0(iMax);
                            this.E[0] = l.f.b.FIXED;
                            z6 = true;
                            z5 = true;
                        }
                        iMax2 = java.lang.Math.max(this.W, r());
                        if (iMax2 > r()) {
                            b0(iMax2);
                            r9 = 1;
                            this.E[1] = l.f.b.FIXED;
                            r5 = 1;
                            z7 = true;
                        } else {
                            r9 = 1;
                            z7 = z5;
                        }
                        if (z7) {
                            r5 = z6;
                            bVar3 = this.E[0];
                            bVar4 = l.f.b.WRAP_CONTENT;
                            if (bVar3 == bVar4 && iMax3 > 0) {
                                r5 = r5;
                                z7 = z7;
                                if (D() > iMax3) {
                                    this.P0 = r9;
                                    this.E[0] = l.f.b.FIXED;
                                    y0(iMax3);
                                    ?? r11 = r9;
                                    z7 = r11 == true ? 1 : 0;
                                    r5 = r11;
                                }
                            }
                            r5 = r5;
                            r5 = r5;
                            z7 = z7;
                            z7 = z7;
                            if (this.E[r9] == bVar4 || iMax4 <= 0 || r() <= iMax4) {
                                r5 = z6;
                                r10 = r5;
                            } else {
                                this.Q0 = r9;
                                this.E[r9] = l.f.b.FIXED;
                                b0(iMax4);
                                r10 = 1;
                                z7 = true;
                            }
                        } else {
                            r5 = z6;
                            r10 = r5;
                        }
                        i15 = i16;
                        z10 = z7;
                        size = size;
                        i10 = i8;
                        O0 = r10;
                    }
                    i8 = i10;
                    c5 = 2;
                    if (z8) {
                        z4 = false;
                    } else {
                        z4 = false;
                    }
                    iMax = java.lang.Math.max(this.V, D());
                    z6 = z4;
                    z5 = z11;
                    if (iMax > D()) {
                        y0(iMax);
                        this.E[0] = l.f.b.FIXED;
                        z6 = true;
                        z5 = true;
                    }
                    iMax2 = java.lang.Math.max(this.W, r());
                    if (iMax2 > r()) {
                        b0(iMax2);
                        r9 = 1;
                        this.E[1] = l.f.b.FIXED;
                        r5 = 1;
                        z7 = true;
                    } else {
                        r9 = 1;
                        z7 = z5;
                    }
                    if (z7) {
                        r5 = z6;
                        bVar3 = this.E[0];
                        bVar4 = l.f.b.WRAP_CONTENT;
                        if (bVar3 == bVar4) {
                            r5 = r5;
                            z7 = z7;
                            if (D() > iMax3) {
                                this.P0 = r9;
                                this.E[0] = l.f.b.FIXED;
                                y0(iMax3);
                                ?? r12 = r9;
                                z7 = r12 == true ? 1 : 0;
                                r5 = r12;
                            }
                        }
                        r5 = r5;
                        r5 = r5;
                        z7 = z7;
                        z7 = z7;
                        if (this.E[r9] == bVar4) {
                            r5 = z6;
                            r10 = r5;
                        } else {
                            r5 = z6;
                            r10 = r5;
                        }
                    } else {
                        r5 = z6;
                        r10 = r5;
                    }
                    i15 = i16;
                    z10 = z7;
                    size = size;
                    i10 = i8;
                    O0 = r10;
                }
                i5 = i10;
                i6 = size;
                this.H0.get(i13).g();
                z9 = z10 ? 1 : 0;
            }
            i13++;
            size = i6;
            i10 = i5;
            i11 = 0;
            i12 = 32;
            z9 = z9;
        }
        int i19 = i10;
        this.f5119v0 = arrayList;
        if (this.F != null) {
            int iMax9 = java.lang.Math.max(this.V, D());
            int iMax10 = java.lang.Math.max(this.W, r());
            this.f5071y0.a(this);
            y0(iMax9 + this.f5072z0 + this.B0);
            b0(iMax10 + this.A0 + this.C0);
        } else {
            this.K = i9;
            this.L = i19;
        }
        if (z9) {
            l.f.b[] bVarArr2 = this.E;
            bVarArr2[0] = bVar6;
            bVarArr2[1] = bVar5;
        }
        T(this.f5070x0.w());
        if (this == J0()) {
            F0();
        }
    }

    public void N0(l.f fVar, int i5) {
        if (i5 == 0) {
            P0(fVar);
        } else if (i5 == 1) {
            Q0(fVar);
        }
    }

    public boolean O0(k.e eVar) {
        b(eVar);
        int size = this.f5119v0.size();
        for (int i5 = 0; i5 < size; i5++) {
            l.f fVar = this.f5119v0.get(i5);
            if (fVar instanceof l.g) {
                l.f.b[] bVarArr = fVar.E;
                l.f.b bVar = bVarArr[0];
                l.f.b bVar2 = bVarArr[1];
                l.f.b bVar3 = l.f.b.WRAP_CONTENT;
                if (bVar == bVar3) {
                    fVar.g0(l.f.b.FIXED);
                }
                if (bVar2 == bVar3) {
                    fVar.u0(l.f.b.FIXED);
                }
                fVar.b(eVar);
                if (bVar == bVar3) {
                    fVar.g0(bVar);
                }
                if (bVar2 == bVar3) {
                    fVar.u0(bVar2);
                }
            } else {
                l.k.c(this, eVar, fVar);
                fVar.b(eVar);
            }
        }
        if (this.D0 > 0) {
            l.c.a(this, eVar, 0);
        }
        if (this.E0 > 0) {
            l.c.a(this, eVar, 1);
        }
        return true;
    }

    public final void P0(l.f fVar) {
        int i5 = this.D0 + 1;
        l.d[] dVarArr = this.G0;
        if (i5 >= dVarArr.length) {
            this.G0 = (l.d[]) java.util.Arrays.copyOf(dVarArr, dVarArr.length * 2);
        }
        this.G0[this.D0] = new l.d(fVar, 0, U0());
        this.D0++;
    }

    @Override // l.q, l.f
    public void Q() {
        this.f5070x0.E();
        this.f5072z0 = 0;
        this.B0 = 0;
        this.A0 = 0;
        this.C0 = 0;
        this.H0.clear();
        this.O0 = false;
        super.Q();
    }

    public final void Q0(l.f fVar) {
        int i5 = this.E0 + 1;
        l.d[] dVarArr = this.F0;
        if (i5 >= dVarArr.length) {
            this.F0 = (l.d[]) java.util.Arrays.copyOf(dVarArr, dVarArr.length * 2);
        }
        this.F0[this.E0] = new l.d(fVar, 1, U0());
        this.E0++;
    }

    public int R0() {
        return this.N0;
    }

    public boolean S0() {
        return false;
    }

    public boolean T0() {
        return this.Q0;
    }

    public boolean U0() {
        return this.f5069w0;
    }

    public boolean V0() {
        return this.P0;
    }

    public void W0() {
        if (!X0(8)) {
            d(this.N0);
        }
        e1();
    }

    public boolean X0(int i5) {
        return (this.N0 & i5) == i5;
    }

    public void Y0(int i5, int i6) {
        l.n nVar;
        l.n nVar2;
        l.f.b bVar = this.E[0];
        l.f.b bVar2 = l.f.b.WRAP_CONTENT;
        if (bVar != bVar2 && (nVar2 = this.f5020c) != null) {
            nVar2.h(i5);
        }
        if (this.E[1] == bVar2 || (nVar = this.f5022d) == null) {
            return;
        }
        nVar.h(i6);
    }

    public void Z0() {
        int size = this.f5119v0.size();
        S();
        for (int i5 = 0; i5 < size; i5++) {
            this.f5119v0.get(i5).S();
        }
    }

    public void a1() {
        Z0();
        d(this.N0);
    }

    public final void b1() {
        this.D0 = 0;
        this.E0 = 0;
    }

    public void c1(int i5) {
        this.N0 = i5;
    }

    @Override // l.f
    public void d(int i5) {
        super.d(i5);
        int size = this.f5119v0.size();
        for (int i6 = 0; i6 < size; i6++) {
            this.f5119v0.get(i6).d(i5);
        }
    }

    public void d1(boolean z4) {
        this.f5069w0 = z4;
    }

    public void e1() {
        l.m mVarF = h(l.e.d.LEFT).f();
        l.m mVarF2 = h(l.e.d.TOP).f();
        mVarF.l(null, 0.0f);
        mVarF2.l(null, 0.0f);
    }

    public void f1(k.e eVar, boolean[] zArr) {
        zArr[2] = false;
        G0(eVar);
        int size = this.f5119v0.size();
        for (int i5 = 0; i5 < size; i5++) {
            l.f fVar = this.f5119v0.get(i5);
            fVar.G0(eVar);
            l.f.b bVar = fVar.E[0];
            l.f.b bVar2 = l.f.b.MATCH_CONSTRAINT;
            if (bVar == bVar2 && fVar.D() < fVar.F()) {
                zArr[2] = true;
            }
            if (fVar.E[1] == bVar2 && fVar.r() < fVar.E()) {
                zArr[2] = true;
            }
        }
    }
}
