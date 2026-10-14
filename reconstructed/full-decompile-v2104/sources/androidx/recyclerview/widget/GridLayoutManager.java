package androidx.recyclerview.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class GridLayoutManager extends androidx.recyclerview.widget.LinearLayoutManager {
    public boolean H;
    public int I;
    public int[] J;
    public android.view.View[] K;
    public final android.util.SparseIntArray L;
    public final android.util.SparseIntArray M;
    public androidx.recyclerview.widget.GridLayoutManager.b N;
    public final android.graphics.Rect O;
    public boolean P;

    public static final class a extends androidx.recyclerview.widget.GridLayoutManager.b {
        @Override // androidx.recyclerview.widget.GridLayoutManager.b
        public int e(int i5, int i6) {
            return i5 % i6;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.b
        public int f(int i5) {
            return 1;
        }
    }

    public static abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.util.SparseIntArray f1803a = new android.util.SparseIntArray();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final android.util.SparseIntArray f1804b = new android.util.SparseIntArray();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f1805c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f1806d = false;

        public static int a(android.util.SparseIntArray sparseIntArray, int i5) {
            int size = sparseIntArray.size() - 1;
            int i6 = 0;
            while (i6 <= size) {
                int i7 = (i6 + size) >>> 1;
                if (sparseIntArray.keyAt(i7) < i5) {
                    i6 = i7 + 1;
                } else {
                    size = i7 - 1;
                }
            }
            int i8 = i6 - 1;
            if (i8 < 0 || i8 >= sparseIntArray.size()) {
                return -1;
            }
            return sparseIntArray.keyAt(i8);
        }

        public int b(int i5, int i6) {
            if (!this.f1806d) {
                return d(i5, i6);
            }
            int i7 = this.f1804b.get(i5, -1);
            if (i7 != -1) {
                return i7;
            }
            int iD = d(i5, i6);
            this.f1804b.put(i5, iD);
            return iD;
        }

        public int c(int i5, int i6) {
            if (!this.f1805c) {
                return e(i5, i6);
            }
            int i7 = this.f1803a.get(i5, -1);
            if (i7 != -1) {
                return i7;
            }
            int iE = e(i5, i6);
            this.f1803a.put(i5, iE);
            return iE;
        }

        public int d(int i5, int i6) {
            int i7;
            int i8;
            int iC;
            int iA;
            if (!this.f1806d || (iA = a(this.f1804b, i5)) == -1) {
                i7 = 0;
                i8 = 0;
                iC = 0;
            } else {
                i7 = this.f1804b.get(iA);
                i8 = iA + 1;
                iC = c(iA, i6) + f(iA);
                if (iC == i6) {
                    i7++;
                    iC = 0;
                }
            }
            int iF = f(i5);
            while (i8 < i5) {
                int iF2 = f(i8);
                iC += iF2;
                if (iC == i6) {
                    i7++;
                    iC = 0;
                } else if (iC > i6) {
                    i7++;
                    iC = iF2;
                }
                i8++;
            }
            return iC + iF > i6 ? i7 + 1 : i7;
        }

        public abstract int e(int i5, int i6);

        public abstract int f(int i5);

        public void g() {
            this.f1804b.clear();
        }

        public void h() {
            this.f1803a.clear();
        }
    }

    public GridLayoutManager(android.content.Context context, android.util.AttributeSet attributeSet, int i5, int i6) {
        super(context, attributeSet, i5, i6);
        this.H = false;
        this.I = -1;
        this.L = new android.util.SparseIntArray();
        this.M = new android.util.SparseIntArray();
        this.N = new androidx.recyclerview.widget.GridLayoutManager.a();
        this.O = new android.graphics.Rect();
        T2(androidx.recyclerview.widget.RecyclerView.p.g0(context, attributeSet, i5, i6).f1963b);
    }

    public static int[] G2(int[] iArr, int i5, int i6) {
        int i7;
        if (iArr == null || iArr.length != i5 + 1 || iArr[iArr.length - 1] != i6) {
            iArr = new int[i5 + 1];
        }
        int i8 = 0;
        iArr[0] = 0;
        int i9 = i6 / i5;
        int i10 = i6 % i5;
        int i11 = 0;
        for (int i12 = 1; i12 <= i5; i12++) {
            i8 += i10;
            if (i8 <= 0 || i5 - i8 >= i10) {
                i7 = i9;
            } else {
                i7 = i9 + 1;
                i8 -= i5;
            }
            i11 += i7;
            iArr[i12] = i11;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public androidx.recyclerview.widget.RecyclerView.LayoutParams C() {
        return this.f1807r == 0 ? new androidx.recyclerview.widget.GridLayoutManager.LayoutParams(-2, -1) : new androidx.recyclerview.widget.GridLayoutManager.LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public androidx.recyclerview.widget.RecyclerView.LayoutParams D(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.recyclerview.widget.GridLayoutManager.LayoutParams(context, attributeSet);
    }

    public final void D2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, int i5, boolean z4) {
        int i6;
        int i7;
        int i8 = 0;
        int i9 = -1;
        if (z4) {
            i7 = 1;
            i9 = i5;
            i6 = 0;
        } else {
            i6 = i5 - 1;
            i7 = -1;
        }
        while (i6 != i9) {
            android.view.View view = this.K[i6];
            androidx.recyclerview.widget.GridLayoutManager.LayoutParams layoutParams = (androidx.recyclerview.widget.GridLayoutManager.LayoutParams) view.getLayoutParams();
            int iP2 = P2(vVar, yVar, f0(view));
            layoutParams.f1802f = iP2;
            layoutParams.f1801e = i8;
            i8 += iP2;
            i6 += i7;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public androidx.recyclerview.widget.RecyclerView.LayoutParams E(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof android.view.ViewGroup.MarginLayoutParams ? new androidx.recyclerview.widget.GridLayoutManager.LayoutParams((android.view.ViewGroup.MarginLayoutParams) layoutParams) : new androidx.recyclerview.widget.GridLayoutManager.LayoutParams(layoutParams);
    }

    public final void E2() {
        int I = I();
        for (int i5 = 0; i5 < I; i5++) {
            androidx.recyclerview.widget.GridLayoutManager.LayoutParams layoutParams = (androidx.recyclerview.widget.GridLayoutManager.LayoutParams) H(i5).getLayoutParams();
            int iA = layoutParams.a();
            this.L.put(iA, layoutParams.f());
            this.M.put(iA, layoutParams.e());
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public boolean F1() {
        return this.C == null && !this.H;
    }

    public final void F2(int i5) {
        this.J = G2(this.J, this.I, i5);
    }

    /* JADX WARN: Code duplicated, block: B:79:0x0107  */
    /* JADX WARN: Code duplicated, block: B:81:0x010d  */
    /* JADX WARN: Code duplicated, block: B:82:0x0123  */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d6, code lost:
    
        if (r13 == (r2 > r15)) goto L49;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public android.view.View H0(android.view.View view, int i5, androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        int I;
        int i6;
        int I2;
        android.view.View view2;
        android.view.View view3;
        int i7;
        int i8;
        boolean z4;
        int i9;
        int i10;
        androidx.recyclerview.widget.RecyclerView.v vVar2 = vVar;
        androidx.recyclerview.widget.RecyclerView.y yVar2 = yVar;
        android.view.View viewA = A(view);
        android.view.View view4 = null;
        if (viewA == null) {
            return null;
        }
        androidx.recyclerview.widget.GridLayoutManager.LayoutParams layoutParams = (androidx.recyclerview.widget.GridLayoutManager.LayoutParams) viewA.getLayoutParams();
        int i11 = layoutParams.f1801e;
        int i12 = layoutParams.f1802f + i11;
        if (super.H0(view, i5, vVar, yVar) == null) {
            return null;
        }
        if ((L1(i5) == 1) != this.f1812w) {
            I2 = I() - 1;
            I = -1;
            i6 = -1;
        } else {
            I = I();
            i6 = 1;
            I2 = 0;
        }
        boolean z5 = this.f1807r == 1 && g2();
        int iN2 = N2(vVar2, yVar2, I2);
        int i13 = -1;
        int i14 = -1;
        int iMin = 0;
        int iMin2 = 0;
        int i15 = I2;
        android.view.View view5 = null;
        while (i15 != I) {
            int iN3 = N2(vVar2, yVar2, i15);
            android.view.View viewH = H(i15);
            if (viewH == viewA) {
                break;
            }
            if (!viewH.hasFocusable() || iN3 == iN2) {
                androidx.recyclerview.widget.GridLayoutManager.LayoutParams layoutParams2 = (androidx.recyclerview.widget.GridLayoutManager.LayoutParams) viewH.getLayoutParams();
                int i16 = layoutParams2.f1801e;
                view2 = viewA;
                int i17 = layoutParams2.f1802f + i16;
                if (viewH.hasFocusable() && i16 == i11 && i17 == i12) {
                    return viewH;
                }
                if (!(viewH.hasFocusable() && view4 == null) && (viewH.hasFocusable() || view5 != null)) {
                    view3 = view5;
                    int iMin3 = java.lang.Math.min(i17, i12) - java.lang.Math.max(i16, i11);
                    if (!viewH.hasFocusable()) {
                        if (view4 == null) {
                            i7 = iMin;
                            i8 = I;
                            z4 = true;
                            if (w0(viewH, false, true)) {
                                i9 = iMin2;
                                if (iMin3 > i9) {
                                    i10 = i14;
                                } else if (iMin3 == i9) {
                                    i10 = i14;
                                    if (z5 == (i16 > i10)) {
                                        z4 = true;
                                    }
                                } else {
                                    i10 = i14;
                                }
                                if (z4) {
                                    if (viewH.hasFocusable()) {
                                        i13 = layoutParams2.f1801e;
                                        i14 = i10;
                                        iMin2 = i9;
                                        view5 = view3;
                                        view4 = viewH;
                                        iMin = java.lang.Math.min(i17, i12) - java.lang.Math.max(i16, i11);
                                    } else {
                                        int i18 = layoutParams2.f1801e;
                                        iMin2 = java.lang.Math.min(i17, i12) - java.lang.Math.max(i16, i11);
                                        i14 = i18;
                                        iMin = i7;
                                        view5 = viewH;
                                    }
                                }
                                i15 += i6;
                                vVar2 = vVar;
                                yVar2 = yVar;
                                viewA = view2;
                                I = i8;
                            }
                            z4 = false;
                            if (z4) {
                                if (viewH.hasFocusable()) {
                                    i13 = layoutParams2.f1801e;
                                    i14 = i10;
                                    iMin2 = i9;
                                    view5 = view3;
                                    view4 = viewH;
                                    iMin = java.lang.Math.min(i17, i12) - java.lang.Math.max(i16, i11);
                                } else {
                                    int i19 = layoutParams2.f1801e;
                                    iMin2 = java.lang.Math.min(i17, i12) - java.lang.Math.max(i16, i11);
                                    i14 = i19;
                                    iMin = i7;
                                    view5 = viewH;
                                }
                            }
                            i15 += i6;
                            vVar2 = vVar;
                            yVar2 = yVar;
                            viewA = view2;
                            I = i8;
                        }
                        i10 = i14;
                        i9 = iMin2;
                        z4 = false;
                        if (z4) {
                            if (viewH.hasFocusable()) {
                                i13 = layoutParams2.f1801e;
                                i14 = i10;
                                iMin2 = i9;
                                view5 = view3;
                                view4 = viewH;
                                iMin = java.lang.Math.min(i17, i12) - java.lang.Math.max(i16, i11);
                            } else {
                                int i110 = layoutParams2.f1801e;
                                iMin2 = java.lang.Math.min(i17, i12) - java.lang.Math.max(i16, i11);
                                i14 = i110;
                                iMin = i7;
                                view5 = viewH;
                            }
                        }
                        i15 += i6;
                        vVar2 = vVar;
                        yVar2 = yVar;
                        viewA = view2;
                        I = i8;
                    } else if (iMin3 <= iMin) {
                        if (iMin3 == iMin) {
                        }
                    }
                    i7 = iMin;
                    i8 = I;
                    i10 = i14;
                    i9 = iMin2;
                    z4 = false;
                    if (z4) {
                        if (viewH.hasFocusable()) {
                            i13 = layoutParams2.f1801e;
                            i14 = i10;
                            iMin2 = i9;
                            view5 = view3;
                            view4 = viewH;
                            iMin = java.lang.Math.min(i17, i12) - java.lang.Math.max(i16, i11);
                        } else {
                            int i111 = layoutParams2.f1801e;
                            iMin2 = java.lang.Math.min(i17, i12) - java.lang.Math.max(i16, i11);
                            i14 = i111;
                            iMin = i7;
                            view5 = viewH;
                        }
                    }
                    i15 += i6;
                    vVar2 = vVar;
                    yVar2 = yVar;
                    viewA = view2;
                    I = i8;
                } else {
                    view3 = view5;
                }
                i7 = iMin;
                i8 = I;
                i10 = i14;
                i9 = iMin2;
                z4 = true;
                if (z4) {
                    if (viewH.hasFocusable()) {
                        i13 = layoutParams2.f1801e;
                        i14 = i10;
                        iMin2 = i9;
                        view5 = view3;
                        view4 = viewH;
                        iMin = java.lang.Math.min(i17, i12) - java.lang.Math.max(i16, i11);
                    } else {
                        int i112 = layoutParams2.f1801e;
                        iMin2 = java.lang.Math.min(i17, i12) - java.lang.Math.max(i16, i11);
                        i14 = i112;
                        iMin = i7;
                        view5 = viewH;
                    }
                }
                i15 += i6;
                vVar2 = vVar;
                yVar2 = yVar;
                viewA = view2;
                I = i8;
            } else {
                if (view4 != null) {
                    break;
                }
                view2 = viewA;
                view3 = view5;
                i7 = iMin;
                i8 = I;
                i10 = i14;
                i9 = iMin2;
            }
            i14 = i10;
            iMin2 = i9;
            iMin = i7;
            view5 = view3;
            i15 += i6;
            vVar2 = vVar;
            yVar2 = yVar;
            viewA = view2;
            I = i8;
        }
        return view4 != null ? view4 : view5;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void H1(androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.LinearLayoutManager.c cVar, androidx.recyclerview.widget.RecyclerView.p.c cVar2) {
        int iF = this.I;
        for (int i5 = 0; i5 < this.I && cVar.c(yVar) && iF > 0; i5++) {
            int i6 = cVar.f1831d;
            cVar2.a(i6, java.lang.Math.max(0, cVar.f1834g));
            iF -= this.N.f(i6);
            cVar.f1831d += cVar.f1832e;
        }
    }

    public final void H2() {
        this.L.clear();
        this.M.clear();
    }

    public final int I2(androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (I() != 0 && yVar.b() != 0) {
            N1();
            boolean zH2 = h2();
            android.view.View viewR1 = R1(!zH2, true);
            android.view.View viewQ1 = Q1(!zH2, true);
            if (viewR1 != null && viewQ1 != null) {
                int iB = this.N.b(f0(viewR1), this.I);
                int iB2 = this.N.b(f0(viewQ1), this.I);
                int iMax = this.f1812w ? java.lang.Math.max(0, ((this.N.b(yVar.b() - 1, this.I) + 1) - java.lang.Math.max(iB, iB2)) - 1) : java.lang.Math.max(0, java.lang.Math.min(iB, iB2));
                if (zH2) {
                    return java.lang.Math.round((iMax * (java.lang.Math.abs(this.f1809t.d(viewQ1) - this.f1809t.g(viewR1)) / ((this.N.b(f0(viewQ1), this.I) - this.N.b(f0(viewR1), this.I)) + 1))) + (this.f1809t.m() - this.f1809t.g(viewR1)));
                }
                return iMax;
            }
        }
        return 0;
    }

    public final int J2(androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (I() != 0 && yVar.b() != 0) {
            N1();
            android.view.View viewR1 = R1(!h2(), true);
            android.view.View viewQ1 = Q1(!h2(), true);
            if (viewR1 != null && viewQ1 != null) {
                if (!h2()) {
                    return this.N.b(yVar.b() - 1, this.I) + 1;
                }
                return (int) (((this.f1809t.d(viewQ1) - this.f1809t.g(viewR1)) / ((this.N.b(f0(viewQ1), this.I) - this.N.b(f0(viewR1), this.I)) + 1)) * (this.N.b(yVar.b() - 1, this.I) + 1));
            }
        }
        return 0;
    }

    public final void K2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.LinearLayoutManager.a aVar, int i5) {
        boolean z4 = i5 == 1;
        int iO2 = O2(vVar, yVar, aVar.f1820b);
        if (z4) {
            while (iO2 > 0) {
                int i6 = aVar.f1820b;
                if (i6 <= 0) {
                    return;
                }
                int i7 = i6 - 1;
                aVar.f1820b = i7;
                iO2 = O2(vVar, yVar, i7);
            }
            return;
        }
        int iB = yVar.b() - 1;
        int i8 = aVar.f1820b;
        while (i8 < iB) {
            int i9 = i8 + 1;
            int iO3 = O2(vVar, yVar, i9);
            if (iO3 <= iO2) {
                break;
            }
            i8 = i9;
            iO2 = iO3;
        }
        aVar.f1820b = i8;
    }

    public final void L2() {
        android.view.View[] viewArr = this.K;
        if (viewArr == null || viewArr.length != this.I) {
            this.K = new android.view.View[this.I];
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int M(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (this.f1807r == 1) {
            return this.I;
        }
        if (yVar.b() < 1) {
            return 0;
        }
        return N2(vVar, yVar, yVar.b() - 1) + 1;
    }

    public int M2(int i5, int i6) {
        if (this.f1807r != 1 || !g2()) {
            int[] iArr = this.J;
            return iArr[i6 + i5] - iArr[i5];
        }
        int[] iArr2 = this.J;
        int i7 = this.I;
        return iArr2[i7 - i5] - iArr2[(i7 - i5) - i6];
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void N0(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, android.view.View view, x.c cVar) {
        android.view.ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof androidx.recyclerview.widget.GridLayoutManager.LayoutParams)) {
            super.M0(view, cVar);
            return;
        }
        androidx.recyclerview.widget.GridLayoutManager.LayoutParams layoutParams2 = (androidx.recyclerview.widget.GridLayoutManager.LayoutParams) layoutParams;
        int iN2 = N2(vVar, yVar, layoutParams2.a());
        if (this.f1807r == 0) {
            cVar.R(x.c.C0101c.a(layoutParams2.e(), layoutParams2.f(), iN2, 1, false, false));
        } else {
            cVar.R(x.c.C0101c.a(iN2, 1, layoutParams2.e(), layoutParams2.f(), false, false));
        }
    }

    public final int N2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, int i5) {
        if (!yVar.e()) {
            return this.N.b(i5, this.I);
        }
        int iF = vVar.f(i5);
        if (iF != -1) {
            return this.N.b(iF, this.I);
        }
        android.util.Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i5);
        return 0;
    }

    public final int O2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, int i5) {
        if (!yVar.e()) {
            return this.N.c(i5, this.I);
        }
        int i6 = this.M.get(i5, -1);
        if (i6 != -1) {
            return i6;
        }
        int iF = vVar.f(i5);
        if (iF != -1) {
            return this.N.c(iF, this.I);
        }
        android.util.Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i5);
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void P0(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6) {
        this.N.h();
        this.N.g();
    }

    public final int P2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, int i5) {
        if (!yVar.e()) {
            return this.N.f(i5);
        }
        int i6 = this.L.get(i5, -1);
        if (i6 != -1) {
            return i6;
        }
        int iF = vVar.f(i5);
        if (iF != -1) {
            return this.N.f(iF);
        }
        android.util.Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i5);
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void Q0(androidx.recyclerview.widget.RecyclerView recyclerView) {
        this.N.h();
        this.N.g();
    }

    public final void Q2(float f5, int i5) {
        F2(java.lang.Math.max(java.lang.Math.round(f5 * this.I), i5));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void R0(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6, int i7) {
        this.N.h();
        this.N.g();
    }

    public final void R2(android.view.View view, int i5, boolean z4) {
        int iJ;
        int iJ2;
        androidx.recyclerview.widget.GridLayoutManager.LayoutParams layoutParams = (androidx.recyclerview.widget.GridLayoutManager.LayoutParams) view.getLayoutParams();
        android.graphics.Rect rect = layoutParams.f1889b;
        int i6 = rect.top + rect.bottom + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        int i7 = rect.left + rect.right + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        int iM2 = M2(layoutParams.f1801e, layoutParams.f1802f);
        if (this.f1807r == 1) {
            iJ2 = androidx.recyclerview.widget.RecyclerView.p.J(iM2, i5, i7, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width, false);
            iJ = androidx.recyclerview.widget.RecyclerView.p.J(this.f1809t.n(), W(), i6, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height, true);
        } else {
            int iJ3 = androidx.recyclerview.widget.RecyclerView.p.J(iM2, i5, i6, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height, false);
            int iJ4 = androidx.recyclerview.widget.RecyclerView.p.J(this.f1809t.n(), n0(), i7, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width, true);
            iJ = iJ3;
            iJ2 = iJ4;
        }
        S2(view, iJ2, iJ, z4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void S0(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6) {
        this.N.h();
        this.N.g();
    }

    public final void S2(android.view.View view, int i5, int i6, boolean z4) {
        androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams = (androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams();
        if (z4 ? D1(view, i5, i6, layoutParams) : B1(view, i5, i6, layoutParams)) {
            view.measure(i5, i6);
        }
    }

    public void T2(int i5) {
        if (i5 == this.I) {
            return;
        }
        this.H = true;
        if (i5 >= 1) {
            this.I = i5;
            this.N.h();
            q1();
        } else {
            throw new java.lang.IllegalArgumentException("Span count should be at least 1. Provided " + i5);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void U0(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6, java.lang.Object obj) {
        this.N.h();
        this.N.g();
    }

    public final void U2() {
        int iV;
        int iE0;
        if (f2() == 1) {
            iV = m0() - d0();
            iE0 = c0();
        } else {
            iV = V() - b0();
            iE0 = e0();
        }
        F2(iV - iE0);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public void V0(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (yVar.e()) {
            E2();
        }
        super.V0(vVar, yVar);
        H2();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public void W0(androidx.recyclerview.widget.RecyclerView.y yVar) {
        super.W0(yVar);
        this.H = false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public android.view.View Z1(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, boolean z4, boolean z5) {
        int I;
        int I2 = I();
        int i5 = -1;
        int i6 = 1;
        if (z5) {
            I = I() - 1;
            i6 = -1;
        } else {
            i5 = I2;
            I = 0;
        }
        int iB = yVar.b();
        N1();
        int iM = this.f1809t.m();
        int i7 = this.f1809t.i();
        android.view.View view = null;
        android.view.View view2 = null;
        while (I != i5) {
            android.view.View viewH = H(I);
            int iF0 = f0(viewH);
            if (iF0 >= 0 && iF0 < iB && O2(vVar, yVar, iF0) == 0) {
                if (((androidx.recyclerview.widget.RecyclerView.LayoutParams) viewH.getLayoutParams()).c()) {
                    if (view2 == null) {
                        view2 = viewH;
                    }
                } else {
                    if (this.f1809t.g(viewH) < i7 && this.f1809t.d(viewH) >= iM) {
                        return viewH;
                    }
                    if (view == null) {
                        view = viewH;
                    }
                }
            }
            I += i6;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int i0(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (this.f1807r == 0) {
            return this.I;
        }
        if (yVar.b() < 1) {
            return 0;
        }
        return N2(vVar, yVar, yVar.b() - 1) + 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v19 */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void i2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.LinearLayoutManager.c cVar, androidx.recyclerview.widget.LinearLayoutManager.b bVar) {
        int i5;
        int i6;
        int iF;
        int i7;
        int i8;
        int iF2;
        int iF3;
        int iJ;
        int iJ2;
        android.view.View viewD;
        int iL = this.f1809t.l();
        ?? r5 = 0;
        boolean z4 = iL != 1073741824;
        int i9 = I() > 0 ? this.J[this.I] : 0;
        if (z4) {
            U2();
        }
        boolean z5 = cVar.f1832e == 1;
        int iO2 = this.I;
        if (!z5) {
            iO2 = O2(vVar, yVar, cVar.f1831d) + P2(vVar, yVar, cVar.f1831d);
        }
        int i10 = 0;
        while (i10 < this.I && cVar.c(yVar) && iO2 > 0) {
            int i11 = cVar.f1831d;
            int iP2 = P2(vVar, yVar, i11);
            if (iP2 > this.I) {
                throw new java.lang.IllegalArgumentException("Item at position " + i11 + " requires " + iP2 + " spans but GridLayoutManager has only " + this.I + " spans.");
            }
            iO2 -= iP2;
            if (iO2 < 0 || (viewD = cVar.d(vVar)) == null) {
                break;
            }
            this.K[i10] = viewD;
            i10++;
        }
        if (i10 == 0) {
            bVar.f1825b = true;
            return;
        }
        float f5 = 0.0f;
        D2(vVar, yVar, i10, z5);
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            android.view.View view = this.K[i12];
            if (cVar.f1839l == null) {
                if (z5) {
                    c(view);
                } else {
                    d(view, r5);
                }
            } else if (z5) {
                a(view);
            } else {
                b(view, r5);
            }
            i(view, this.O);
            R2(view, iL, r5);
            int iE = this.f1809t.e(view);
            if (iE > i13) {
                i13 = iE;
            }
            float f6 = (this.f1809t.f(view) * 1.0f) / ((androidx.recyclerview.widget.GridLayoutManager.LayoutParams) view.getLayoutParams()).f1802f;
            if (f6 > f5) {
                f5 = f6;
            }
            i12++;
            r5 = 0;
        }
        if (z4) {
            Q2(f5, i9);
            i13 = 0;
            for (int i14 = 0; i14 < i10; i14++) {
                android.view.View view2 = this.K[i14];
                R2(view2, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY, true);
                int iE2 = this.f1809t.e(view2);
                if (iE2 > i13) {
                    i13 = iE2;
                }
            }
        }
        for (int i15 = 0; i15 < i10; i15++) {
            android.view.View view3 = this.K[i15];
            if (this.f1809t.e(view3) != i13) {
                androidx.recyclerview.widget.GridLayoutManager.LayoutParams layoutParams = (androidx.recyclerview.widget.GridLayoutManager.LayoutParams) view3.getLayoutParams();
                android.graphics.Rect rect = layoutParams.f1889b;
                int i16 = rect.top + rect.bottom + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                int i17 = rect.left + rect.right + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int iM2 = M2(layoutParams.f1801e, layoutParams.f1802f);
                if (this.f1807r == 1) {
                    iJ2 = androidx.recyclerview.widget.RecyclerView.p.J(iM2, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY, i17, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width, false);
                    iJ = android.view.View.MeasureSpec.makeMeasureSpec(i13 - i16, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                } else {
                    int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(i13 - i17, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                    iJ = androidx.recyclerview.widget.RecyclerView.p.J(iM2, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY, i16, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height, false);
                    iJ2 = iMakeMeasureSpec;
                }
                S2(view3, iJ2, iJ, true);
            }
        }
        int i18 = 0;
        bVar.f1824a = i13;
        if (this.f1807r == 1) {
            if (cVar.f1833f == -1) {
                iF = cVar.f1829b;
                i7 = iF - i13;
            } else {
                int i19 = cVar.f1829b;
                i7 = i19;
                iF = i13 + i19;
            }
            i5 = 0;
            i6 = 0;
        } else if (cVar.f1833f == -1) {
            int i20 = cVar.f1829b;
            i6 = i20 - i13;
            i7 = 0;
            i5 = i20;
            iF = 0;
        } else {
            int i21 = cVar.f1829b;
            i5 = i13 + i21;
            i6 = i21;
            iF = 0;
            i7 = 0;
        }
        while (i18 < i10) {
            android.view.View view4 = this.K[i18];
            androidx.recyclerview.widget.GridLayoutManager.LayoutParams layoutParams2 = (androidx.recyclerview.widget.GridLayoutManager.LayoutParams) view4.getLayoutParams();
            if (this.f1807r == 1) {
                if (g2()) {
                    int iC0 = c0() + this.J[this.I - layoutParams2.f1801e];
                    iF2 = iC0;
                    iF3 = iC0 - this.f1809t.f(view4);
                } else {
                    int iC1 = c0() + this.J[layoutParams2.f1801e];
                    iF3 = iC1;
                    iF2 = this.f1809t.f(view4) + iC1;
                }
                i8 = i7;
            } else {
                int iE0 = e0() + this.J[layoutParams2.f1801e];
                i8 = iE0;
                iF2 = i5;
                iF3 = i6;
                iF = this.f1809t.f(view4) + iE0;
            }
            x0(view4, iF3, i8, iF2, iF);
            if (layoutParams2.c() || layoutParams2.b()) {
                bVar.f1826c = true;
            }
            bVar.f1827d |= view4.hasFocusable();
            i18++;
            iF = iF;
            i5 = iF2;
            i6 = iF3;
            i7 = i8;
        }
        java.util.Arrays.fill(this.K, (java.lang.Object) null);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void k2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.LinearLayoutManager.a aVar, int i5) {
        super.k2(vVar, yVar, aVar, i5);
        U2();
        if (yVar.b() > 0 && !yVar.e()) {
            K2(vVar, yVar, aVar, i5);
        }
        L2();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean l(androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof androidx.recyclerview.widget.GridLayoutManager.LayoutParams;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int q(androidx.recyclerview.widget.RecyclerView.y yVar) {
        return this.P ? I2(yVar) : super.q(yVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int r(androidx.recyclerview.widget.RecyclerView.y yVar) {
        return this.P ? J2(yVar) : super.r(yVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int t(androidx.recyclerview.widget.RecyclerView.y yVar) {
        return this.P ? I2(yVar) : super.t(yVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int t1(int i5, androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        U2();
        L2();
        return super.t1(i5, vVar, yVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int u(androidx.recyclerview.widget.RecyclerView.y yVar) {
        return this.P ? J2(yVar) : super.u(yVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.p
    public int u1(int i5, androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        U2();
        L2();
        return super.u1(i5, vVar, yVar);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void u2(boolean z4) {
        if (z4) {
            throw new java.lang.UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.u2(false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void y1(android.graphics.Rect rect, int i5, int i6) {
        int iM;
        int iM2;
        if (this.J == null) {
            super.y1(rect, i5, i6);
        }
        int iC0 = c0() + d0();
        int iE0 = e0() + b0();
        if (this.f1807r == 1) {
            iM2 = androidx.recyclerview.widget.RecyclerView.p.m(i6, rect.height() + iE0, Z());
            int[] iArr = this.J;
            iM = androidx.recyclerview.widget.RecyclerView.p.m(i5, iArr[iArr.length - 1] + iC0, a0());
        } else {
            iM = androidx.recyclerview.widget.RecyclerView.p.m(i5, rect.width() + iC0, a0());
            int[] iArr2 = this.J;
            iM2 = androidx.recyclerview.widget.RecyclerView.p.m(i6, iArr2[iArr2.length - 1] + iE0, Z());
        }
        x1(iM, iM2);
    }

    public static class LayoutParams extends androidx.recyclerview.widget.RecyclerView.LayoutParams {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1801e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1802f;

        public LayoutParams(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1801e = -1;
            this.f1802f = 0;
        }

        public int e() {
            return this.f1801e;
        }

        public int f() {
            return this.f1802f;
        }

        public LayoutParams(int i5, int i6) {
            super(i5, i6);
            this.f1801e = -1;
            this.f1802f = 0;
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1801e = -1;
            this.f1802f = 0;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1801e = -1;
            this.f1802f = 0;
        }
    }
}
