package androidx.recyclerview.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class LinearLayoutManager extends androidx.recyclerview.widget.RecyclerView.p {
    public int A;
    public boolean B;
    public androidx.recyclerview.widget.LinearLayoutManager.SavedState C;
    public final androidx.recyclerview.widget.LinearLayoutManager.a D;
    public final androidx.recyclerview.widget.LinearLayoutManager.b E;
    public int F;
    public int[] G;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1807r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public androidx.recyclerview.widget.LinearLayoutManager.c f1808s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public androidx.recyclerview.widget.h f1809t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1810u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f1811v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f1812w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f1813x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f1814y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f1815z;

    @android.annotation.SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<androidx.recyclerview.widget.LinearLayoutManager.SavedState> CREATOR = new androidx.recyclerview.widget.LinearLayoutManager.SavedState.a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1816a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1817b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f1818c;

        public class a implements android.os.Parcelable.Creator<androidx.recyclerview.widget.LinearLayoutManager.SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public androidx.recyclerview.widget.LinearLayoutManager.SavedState createFromParcel(android.os.Parcel parcel) {
                return new androidx.recyclerview.widget.LinearLayoutManager.SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public androidx.recyclerview.widget.LinearLayoutManager.SavedState[] newArray(int i5) {
                return new androidx.recyclerview.widget.LinearLayoutManager.SavedState[i5];
            }
        }

        public SavedState() {
        }

        public boolean a() {
            return this.f1816a >= 0;
        }

        public void b() {
            this.f1816a = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i5) {
            parcel.writeInt(this.f1816a);
            parcel.writeInt(this.f1817b);
            parcel.writeInt(this.f1818c ? 1 : 0);
        }

        public SavedState(android.os.Parcel parcel) {
            this.f1816a = parcel.readInt();
            this.f1817b = parcel.readInt();
            this.f1818c = parcel.readInt() == 1;
        }

        public SavedState(androidx.recyclerview.widget.LinearLayoutManager.SavedState savedState) {
            this.f1816a = savedState.f1816a;
            this.f1817b = savedState.f1817b;
            this.f1818c = savedState.f1818c;
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public androidx.recyclerview.widget.h f1819a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1820b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1821c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f1822d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f1823e;

        public a() {
            e();
        }

        public void a() {
            this.f1821c = this.f1822d ? this.f1819a.i() : this.f1819a.m();
        }

        public void b(android.view.View view, int i5) {
            if (this.f1822d) {
                this.f1821c = this.f1819a.d(view) + this.f1819a.o();
            } else {
                this.f1821c = this.f1819a.g(view);
            }
            this.f1820b = i5;
        }

        public void c(android.view.View view, int i5) {
            int iO = this.f1819a.o();
            if (iO >= 0) {
                b(view, i5);
                return;
            }
            this.f1820b = i5;
            if (this.f1822d) {
                int i6 = (this.f1819a.i() - iO) - this.f1819a.d(view);
                this.f1821c = this.f1819a.i() - i6;
                if (i6 > 0) {
                    int iE = this.f1821c - this.f1819a.e(view);
                    int iM = this.f1819a.m();
                    int iMin = iE - (iM + java.lang.Math.min(this.f1819a.g(view) - iM, 0));
                    if (iMin < 0) {
                        this.f1821c += java.lang.Math.min(i6, -iMin);
                        return;
                    }
                    return;
                }
                return;
            }
            int iG = this.f1819a.g(view);
            int iM2 = iG - this.f1819a.m();
            this.f1821c = iG;
            if (iM2 > 0) {
                int i7 = (this.f1819a.i() - java.lang.Math.min(0, (this.f1819a.i() - iO) - this.f1819a.d(view))) - (iG + this.f1819a.e(view));
                if (i7 < 0) {
                    this.f1821c -= java.lang.Math.min(iM2, -i7);
                }
            }
        }

        public boolean d(android.view.View view, androidx.recyclerview.widget.RecyclerView.y yVar) {
            androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams = (androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams();
            return !layoutParams.c() && layoutParams.a() >= 0 && layoutParams.a() < yVar.b();
        }

        public void e() {
            this.f1820b = -1;
            this.f1821c = Integer.MIN_VALUE;
            this.f1822d = false;
            this.f1823e = false;
        }

        public java.lang.String toString() {
            return "AnchorInfo{mPosition=" + this.f1820b + ", mCoordinate=" + this.f1821c + ", mLayoutFromEnd=" + this.f1822d + ", mValid=" + this.f1823e + '}';
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1824a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1825b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f1826c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f1827d;

        public void a() {
            this.f1824a = 0;
            this.f1825b = false;
            this.f1826c = false;
            this.f1827d = false;
        }
    }

    public static class c {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1829b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1830c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1831d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1832e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1833f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f1834g;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f1838k;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f1840m;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1828a = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f1835h = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f1836i = 0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f1837j = false;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public java.util.List<androidx.recyclerview.widget.RecyclerView.b0> f1839l = null;

        public void a() {
            b(null);
        }

        public void b(android.view.View view) {
            android.view.View viewF = f(view);
            if (viewF == null) {
                this.f1831d = -1;
            } else {
                this.f1831d = ((androidx.recyclerview.widget.RecyclerView.LayoutParams) viewF.getLayoutParams()).a();
            }
        }

        public boolean c(androidx.recyclerview.widget.RecyclerView.y yVar) {
            int i5 = this.f1831d;
            return i5 >= 0 && i5 < yVar.b();
        }

        public android.view.View d(androidx.recyclerview.widget.RecyclerView.v vVar) {
            if (this.f1839l != null) {
                return e();
            }
            android.view.View viewO = vVar.o(this.f1831d);
            this.f1831d += this.f1832e;
            return viewO;
        }

        public final android.view.View e() {
            int size = this.f1839l.size();
            for (int i5 = 0; i5 < size; i5++) {
                android.view.View view = this.f1839l.get(i5).itemView;
                androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams = (androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.c() && this.f1831d == layoutParams.a()) {
                    b(view);
                    return view;
                }
            }
            return null;
        }

        public android.view.View f(android.view.View view) {
            int iA;
            int size = this.f1839l.size();
            android.view.View view2 = null;
            int i5 = Integer.MAX_VALUE;
            for (int i6 = 0; i6 < size; i6++) {
                android.view.View view3 = this.f1839l.get(i6).itemView;
                androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams = (androidx.recyclerview.widget.RecyclerView.LayoutParams) view3.getLayoutParams();
                if (view3 != view && !layoutParams.c() && (iA = (layoutParams.a() - this.f1831d) * this.f1832e) >= 0 && iA < i5) {
                    view2 = view3;
                    if (iA == 0) {
                        break;
                    }
                    i5 = iA;
                }
            }
            return view2;
        }
    }

    public LinearLayoutManager(android.content.Context context) {
        this(context, 1, false);
    }

    public final void A2(androidx.recyclerview.widget.LinearLayoutManager.a aVar) {
        z2(aVar.f1820b, aVar.f1821c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public android.view.View B(int i5) {
        int I = I();
        if (I == 0) {
            return null;
        }
        int iF0 = i5 - f0(H(0));
        if (iF0 >= 0 && iF0 < I) {
            android.view.View viewH = H(iF0);
            if (f0(viewH) == i5) {
                return viewH;
            }
        }
        return super.B(i5);
    }

    public final void B2(int i5, int i6) {
        this.f1808s.f1830c = i6 - this.f1809t.m();
        androidx.recyclerview.widget.LinearLayoutManager.c cVar = this.f1808s;
        cVar.f1831d = i5;
        cVar.f1832e = this.f1812w ? 1 : -1;
        cVar.f1833f = -1;
        cVar.f1829b = i6;
        cVar.f1834g = Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public androidx.recyclerview.widget.RecyclerView.LayoutParams C() {
        return new androidx.recyclerview.widget.RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean C1() {
        return (W() == 1073741824 || n0() == 1073741824 || !o0()) ? false : true;
    }

    public final void C2(androidx.recyclerview.widget.LinearLayoutManager.a aVar) {
        B2(aVar.f1820b, aVar.f1821c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean F1() {
        return this.C == null && this.f1810u == this.f1813x;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void G0(androidx.recyclerview.widget.RecyclerView recyclerView, androidx.recyclerview.widget.RecyclerView.v vVar) {
        super.G0(recyclerView, vVar);
        if (this.B) {
            h1(vVar);
            vVar.c();
        }
    }

    public void G1(androidx.recyclerview.widget.RecyclerView.y yVar, int[] iArr) {
        int i5;
        int iE2 = e2(yVar);
        if (this.f1808s.f1833f == -1) {
            i5 = 0;
        } else {
            i5 = iE2;
            iE2 = 0;
        }
        iArr[0] = iE2;
        iArr[1] = i5;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public android.view.View H0(android.view.View view, int i5, androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        int iL1;
        q2();
        if (I() == 0 || (iL1 = L1(i5)) == Integer.MIN_VALUE) {
            return null;
        }
        N1();
        y2(iL1, (int) (this.f1809t.n() * 0.33333334f), false, yVar);
        androidx.recyclerview.widget.LinearLayoutManager.c cVar = this.f1808s;
        cVar.f1834g = Integer.MIN_VALUE;
        cVar.f1828a = false;
        O1(vVar, cVar, yVar, true);
        android.view.View viewY1 = iL1 == -1 ? Y1() : X1();
        android.view.View viewD2 = iL1 == -1 ? d2() : c2();
        if (!viewD2.hasFocusable()) {
            return viewY1;
        }
        if (viewY1 == null) {
            return null;
        }
        return viewD2;
    }

    public void H1(androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.LinearLayoutManager.c cVar, androidx.recyclerview.widget.RecyclerView.p.c cVar2) {
        int i5 = cVar.f1831d;
        if (i5 < 0 || i5 >= yVar.b()) {
            return;
        }
        cVar2.a(i5, java.lang.Math.max(0, cVar.f1834g));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void I0(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        super.I0(accessibilityEvent);
        if (I() > 0) {
            accessibilityEvent.setFromIndex(S1());
            accessibilityEvent.setToIndex(U1());
        }
    }

    public final int I1(androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (I() == 0) {
            return 0;
        }
        N1();
        return androidx.recyclerview.widget.j.a(yVar, this.f1809t, R1(!this.f1814y, true), Q1(!this.f1814y, true), this, this.f1814y);
    }

    public final int J1(androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (I() == 0) {
            return 0;
        }
        N1();
        return androidx.recyclerview.widget.j.b(yVar, this.f1809t, R1(!this.f1814y, true), Q1(!this.f1814y, true), this, this.f1814y, this.f1812w);
    }

    public final int K1(androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (I() == 0) {
            return 0;
        }
        N1();
        return androidx.recyclerview.widget.j.c(yVar, this.f1809t, R1(!this.f1814y, true), Q1(!this.f1814y, true), this, this.f1814y);
    }

    public int L1(int i5) {
        if (i5 == 1) {
            return (this.f1807r != 1 && g2()) ? 1 : -1;
        }
        if (i5 == 2) {
            return (this.f1807r != 1 && g2()) ? -1 : 1;
        }
        if (i5 == 17) {
            return this.f1807r == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i5 == 33) {
            return this.f1807r == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i5 != 66) {
            return (i5 == 130 && this.f1807r == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.f1807r == 0 ? 1 : Integer.MIN_VALUE;
    }

    public androidx.recyclerview.widget.LinearLayoutManager.c M1() {
        return new androidx.recyclerview.widget.LinearLayoutManager.c();
    }

    public void N1() {
        if (this.f1808s == null) {
            this.f1808s = M1();
        }
    }

    public int O1(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.LinearLayoutManager.c cVar, androidx.recyclerview.widget.RecyclerView.y yVar, boolean z4) {
        int i5 = cVar.f1830c;
        int i6 = cVar.f1834g;
        if (i6 != Integer.MIN_VALUE) {
            if (i5 < 0) {
                cVar.f1834g = i6 + i5;
            }
            l2(vVar, cVar);
        }
        int i7 = cVar.f1830c + cVar.f1835h;
        androidx.recyclerview.widget.LinearLayoutManager.b bVar = this.E;
        while (true) {
            if ((!cVar.f1840m && i7 <= 0) || !cVar.c(yVar)) {
                break;
            }
            bVar.a();
            i2(vVar, yVar, cVar, bVar);
            if (!bVar.f1825b) {
                cVar.f1829b += bVar.f1824a * cVar.f1833f;
                if (!bVar.f1826c || cVar.f1839l != null || !yVar.e()) {
                    int i8 = cVar.f1830c;
                    int i9 = bVar.f1824a;
                    cVar.f1830c = i8 - i9;
                    i7 -= i9;
                }
                int i10 = cVar.f1834g;
                if (i10 != Integer.MIN_VALUE) {
                    int i11 = i10 + bVar.f1824a;
                    cVar.f1834g = i11;
                    int i12 = cVar.f1830c;
                    if (i12 < 0) {
                        cVar.f1834g = i11 + i12;
                    }
                    l2(vVar, cVar);
                }
                if (z4 && bVar.f1827d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i5 - cVar.f1830c;
    }

    public final android.view.View P1() {
        return V1(0, I());
    }

    public android.view.View Q1(boolean z4, boolean z5) {
        return this.f1812w ? W1(0, I(), z4, z5) : W1(I() - 1, -1, z4, z5);
    }

    public android.view.View R1(boolean z4, boolean z5) {
        return this.f1812w ? W1(I() - 1, -1, z4, z5) : W1(0, I(), z4, z5);
    }

    public int S1() {
        android.view.View viewW1 = W1(0, I(), false, true);
        if (viewW1 == null) {
            return -1;
        }
        return f0(viewW1);
    }

    public final android.view.View T1() {
        return V1(I() - 1, -1);
    }

    public int U1() {
        android.view.View viewW1 = W1(I() - 1, -1, false, true);
        if (viewW1 == null) {
            return -1;
        }
        return f0(viewW1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void V0(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        int i5;
        int i6;
        int i7;
        int i8;
        int iA2;
        int i9;
        android.view.View viewB;
        int iG;
        int i10;
        int i11 = -1;
        if (!(this.C == null && this.f1815z == -1) && yVar.b() == 0) {
            h1(vVar);
            return;
        }
        androidx.recyclerview.widget.LinearLayoutManager.SavedState savedState = this.C;
        if (savedState != null && savedState.a()) {
            this.f1815z = this.C.f1816a;
        }
        N1();
        this.f1808s.f1828a = false;
        q2();
        android.view.View viewU = U();
        androidx.recyclerview.widget.LinearLayoutManager.a aVar = this.D;
        if (!aVar.f1823e || this.f1815z != -1 || this.C != null) {
            aVar.e();
            androidx.recyclerview.widget.LinearLayoutManager.a aVar2 = this.D;
            aVar2.f1822d = this.f1812w ^ this.f1813x;
            x2(vVar, yVar, aVar2);
            this.D.f1823e = true;
        } else if (viewU != null && (this.f1809t.g(viewU) >= this.f1809t.i() || this.f1809t.d(viewU) <= this.f1809t.m())) {
            this.D.c(viewU, f0(viewU));
        }
        androidx.recyclerview.widget.LinearLayoutManager.c cVar = this.f1808s;
        cVar.f1833f = cVar.f1838k >= 0 ? 1 : -1;
        int[] iArr = this.G;
        iArr[0] = 0;
        iArr[1] = 0;
        G1(yVar, iArr);
        int iMax = java.lang.Math.max(0, this.G[0]) + this.f1809t.m();
        int iMax2 = java.lang.Math.max(0, this.G[1]) + this.f1809t.j();
        if (yVar.e() && (i9 = this.f1815z) != -1 && this.A != Integer.MIN_VALUE && (viewB = B(i9)) != null) {
            if (this.f1812w) {
                i10 = this.f1809t.i() - this.f1809t.d(viewB);
                iG = this.A;
            } else {
                iG = this.f1809t.g(viewB) - this.f1809t.m();
                i10 = this.A;
            }
            int i12 = i10 - iG;
            if (i12 > 0) {
                iMax += i12;
            } else {
                iMax2 -= i12;
            }
        }
        androidx.recyclerview.widget.LinearLayoutManager.a aVar3 = this.D;
        if (!aVar3.f1822d ? !this.f1812w : this.f1812w) {
            i11 = 1;
        }
        k2(vVar, yVar, aVar3, i11);
        v(vVar);
        this.f1808s.f1840m = p2();
        this.f1808s.f1837j = yVar.e();
        this.f1808s.f1836i = 0;
        androidx.recyclerview.widget.LinearLayoutManager.a aVar4 = this.D;
        if (aVar4.f1822d) {
            C2(aVar4);
            androidx.recyclerview.widget.LinearLayoutManager.c cVar2 = this.f1808s;
            cVar2.f1835h = iMax;
            O1(vVar, cVar2, yVar, false);
            androidx.recyclerview.widget.LinearLayoutManager.c cVar3 = this.f1808s;
            i6 = cVar3.f1829b;
            int i13 = cVar3.f1831d;
            int i14 = cVar3.f1830c;
            if (i14 > 0) {
                iMax2 += i14;
            }
            A2(this.D);
            androidx.recyclerview.widget.LinearLayoutManager.c cVar4 = this.f1808s;
            cVar4.f1835h = iMax2;
            cVar4.f1831d += cVar4.f1832e;
            O1(vVar, cVar4, yVar, false);
            androidx.recyclerview.widget.LinearLayoutManager.c cVar5 = this.f1808s;
            i5 = cVar5.f1829b;
            int i15 = cVar5.f1830c;
            if (i15 > 0) {
                B2(i13, i6);
                androidx.recyclerview.widget.LinearLayoutManager.c cVar6 = this.f1808s;
                cVar6.f1835h = i15;
                O1(vVar, cVar6, yVar, false);
                i6 = this.f1808s.f1829b;
            }
        } else {
            A2(aVar4);
            androidx.recyclerview.widget.LinearLayoutManager.c cVar7 = this.f1808s;
            cVar7.f1835h = iMax2;
            O1(vVar, cVar7, yVar, false);
            androidx.recyclerview.widget.LinearLayoutManager.c cVar8 = this.f1808s;
            i5 = cVar8.f1829b;
            int i16 = cVar8.f1831d;
            int i17 = cVar8.f1830c;
            if (i17 > 0) {
                iMax += i17;
            }
            C2(this.D);
            androidx.recyclerview.widget.LinearLayoutManager.c cVar9 = this.f1808s;
            cVar9.f1835h = iMax;
            cVar9.f1831d += cVar9.f1832e;
            O1(vVar, cVar9, yVar, false);
            androidx.recyclerview.widget.LinearLayoutManager.c cVar10 = this.f1808s;
            i6 = cVar10.f1829b;
            int i18 = cVar10.f1830c;
            if (i18 > 0) {
                z2(i16, i5);
                androidx.recyclerview.widget.LinearLayoutManager.c cVar11 = this.f1808s;
                cVar11.f1835h = i18;
                O1(vVar, cVar11, yVar, false);
                i5 = this.f1808s.f1829b;
            }
        }
        if (I() > 0) {
            if (this.f1812w ^ this.f1813x) {
                int iA3 = a2(i5, vVar, yVar, true);
                i7 = i6 + iA3;
                i8 = i5 + iA3;
                iA2 = b2(i7, vVar, yVar, false);
            } else {
                int iB2 = b2(i6, vVar, yVar, true);
                i7 = i6 + iB2;
                i8 = i5 + iB2;
                iA2 = a2(i8, vVar, yVar, false);
            }
            i6 = i7 + iA2;
            i5 = i8 + iA2;
        }
        j2(vVar, yVar, i6, i5);
        if (yVar.e()) {
            this.D.e();
        } else {
            this.f1809t.s();
        }
        this.f1810u = this.f1813x;
    }

    public android.view.View V1(int i5, int i6) {
        byte b5;
        int i7;
        int i8;
        N1();
        if (i6 > i5) {
            b5 = 1;
        } else {
            b5 = i6 < i5 ? (byte) -1 : (byte) 0;
        }
        if (b5 == 0) {
            return H(i5);
        }
        if (this.f1809t.g(H(i5)) < this.f1809t.m()) {
            i7 = 16644;
            i8 = 16388;
        } else {
            i7 = 4161;
            i8 = 4097;
        }
        return this.f1807r == 0 ? this.f1947e.a(i5, i6, i7, i8) : this.f1948f.a(i5, i6, i7, i8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void W0(androidx.recyclerview.widget.RecyclerView.y yVar) {
        super.W0(yVar);
        this.C = null;
        this.f1815z = -1;
        this.A = Integer.MIN_VALUE;
        this.D.e();
    }

    public android.view.View W1(int i5, int i6, boolean z4, boolean z5) {
        N1();
        int i7 = z4 ? 24579 : 320;
        int i8 = z5 ? 320 : 0;
        return this.f1807r == 0 ? this.f1947e.a(i5, i6, i7, i8) : this.f1948f.a(i5, i6, i7, i8);
    }

    public final android.view.View X1() {
        return this.f1812w ? P1() : T1();
    }

    public final android.view.View Y1() {
        return this.f1812w ? T1() : P1();
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0073  */
    /* JADX WARN: Code duplicated, block: B:35:0x0077  */
    public android.view.View Z1(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, boolean z4, boolean z5) {
        int I;
        int i5;
        N1();
        int I2 = I();
        int i6 = -1;
        if (z5) {
            I = I() - 1;
            i5 = -1;
        } else {
            i6 = I2;
            I = 0;
            i5 = 1;
        }
        int iB = yVar.b();
        int iM = this.f1809t.m();
        int i7 = this.f1809t.i();
        android.view.View view = null;
        android.view.View view2 = null;
        android.view.View view3 = null;
        while (I != i6) {
            android.view.View viewH = H(I);
            int iF0 = f0(viewH);
            int iG = this.f1809t.g(viewH);
            int iD = this.f1809t.d(viewH);
            if (iF0 >= 0 && iF0 < iB) {
                if (!((androidx.recyclerview.widget.RecyclerView.LayoutParams) viewH.getLayoutParams()).c()) {
                    boolean z6 = iD <= iM && iG < iM;
                    boolean z7 = iG >= i7 && iD > i7;
                    if (!z6 && !z7) {
                        return viewH;
                    }
                    if (z4) {
                        if (z7) {
                            view2 = viewH;
                        } else if (view == null) {
                            view = viewH;
                        }
                    } else if (z6) {
                        view2 = viewH;
                    } else if (view == null) {
                        view = viewH;
                    }
                } else if (view3 == null) {
                    view3 = viewH;
                }
            }
            I += i5;
        }
        if (view != null) {
            return view;
        }
        return view2 != null ? view2 : view3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void a1(android.os.Parcelable parcelable) {
        if (parcelable instanceof androidx.recyclerview.widget.LinearLayoutManager.SavedState) {
            androidx.recyclerview.widget.LinearLayoutManager.SavedState savedState = (androidx.recyclerview.widget.LinearLayoutManager.SavedState) parcelable;
            this.C = savedState;
            if (this.f1815z != -1) {
                savedState.b();
            }
            q1();
        }
    }

    public final int a2(int i5, androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, boolean z4) {
        int i6;
        int i7 = this.f1809t.i() - i5;
        if (i7 <= 0) {
            return 0;
        }
        int i8 = -r2(-i7, vVar, yVar);
        int i9 = i5 + i8;
        if (!z4 || (i6 = this.f1809t.i() - i9) <= 0) {
            return i8;
        }
        this.f1809t.r(i6);
        return i6 + i8;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public android.os.Parcelable b1() {
        if (this.C != null) {
            return new androidx.recyclerview.widget.LinearLayoutManager.SavedState(this.C);
        }
        androidx.recyclerview.widget.LinearLayoutManager.SavedState savedState = new androidx.recyclerview.widget.LinearLayoutManager.SavedState();
        if (I() > 0) {
            N1();
            boolean z4 = this.f1810u ^ this.f1812w;
            savedState.f1818c = z4;
            if (z4) {
                android.view.View viewC2 = c2();
                savedState.f1817b = this.f1809t.i() - this.f1809t.d(viewC2);
                savedState.f1816a = f0(viewC2);
            } else {
                android.view.View viewD2 = d2();
                savedState.f1816a = f0(viewD2);
                savedState.f1817b = this.f1809t.g(viewD2) - this.f1809t.m();
            }
        } else {
            savedState.b();
        }
        return savedState;
    }

    public final int b2(int i5, androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, boolean z4) {
        int iM;
        int iM2 = i5 - this.f1809t.m();
        if (iM2 <= 0) {
            return 0;
        }
        int i6 = -r2(iM2, vVar, yVar);
        int i7 = i5 + i6;
        if (!z4 || (iM = i7 - this.f1809t.m()) <= 0) {
            return i6;
        }
        this.f1809t.r(-iM);
        return i6 - iM;
    }

    public final android.view.View c2() {
        return H(this.f1812w ? 0 : I() - 1);
    }

    public final android.view.View d2() {
        return H(this.f1812w ? I() - 1 : 0);
    }

    @java.lang.Deprecated
    public int e2(androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (yVar.d()) {
            return this.f1809t.n();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void f(java.lang.String str) {
        if (this.C == null) {
            super.f(str);
        }
    }

    public int f2() {
        return this.f1807r;
    }

    public boolean g2() {
        return X() == 1;
    }

    public boolean h2() {
        return this.f1814y;
    }

    public void i2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.LinearLayoutManager.c cVar, androidx.recyclerview.widget.LinearLayoutManager.b bVar) {
        int i5;
        int i6;
        int i7;
        int iC0;
        int iF;
        android.view.View viewD = cVar.d(vVar);
        if (viewD == null) {
            bVar.f1825b = true;
            return;
        }
        androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams = (androidx.recyclerview.widget.RecyclerView.LayoutParams) viewD.getLayoutParams();
        if (cVar.f1839l == null) {
            if (this.f1812w == (cVar.f1833f == -1)) {
                c(viewD);
            } else {
                d(viewD, 0);
            }
        } else {
            if (this.f1812w == (cVar.f1833f == -1)) {
                a(viewD);
            } else {
                b(viewD, 0);
            }
        }
        y0(viewD, 0, 0);
        bVar.f1824a = this.f1809t.e(viewD);
        if (this.f1807r == 1) {
            if (g2()) {
                iF = m0() - d0();
                iC0 = iF - this.f1809t.f(viewD);
            } else {
                iC0 = c0();
                iF = this.f1809t.f(viewD) + iC0;
            }
            if (cVar.f1833f == -1) {
                int i8 = cVar.f1829b;
                i7 = i8;
                i6 = iF;
                i5 = i8 - bVar.f1824a;
            } else {
                int i9 = cVar.f1829b;
                i5 = i9;
                i6 = iF;
                i7 = bVar.f1824a + i9;
            }
        } else {
            int iE0 = e0();
            int iF2 = this.f1809t.f(viewD) + iE0;
            if (cVar.f1833f == -1) {
                int i10 = cVar.f1829b;
                i6 = i10;
                i5 = iE0;
                i7 = iF2;
                iC0 = i10 - bVar.f1824a;
            } else {
                int i11 = cVar.f1829b;
                i5 = iE0;
                i6 = bVar.f1824a + i11;
                i7 = iF2;
                iC0 = i11;
            }
        }
        x0(viewD, iC0, i5, i6, i7);
        if (layoutParams.c() || layoutParams.b()) {
            bVar.f1826c = true;
        }
        bVar.f1827d = viewD.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean j() {
        return this.f1807r == 0;
    }

    public final void j2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, int i5, int i6) {
        if (!yVar.g() || I() == 0 || yVar.e() || !F1()) {
            return;
        }
        java.util.List<androidx.recyclerview.widget.RecyclerView.b0> listK = vVar.k();
        int size = listK.size();
        int iF0 = f0(H(0));
        int iE = 0;
        int iE2 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            androidx.recyclerview.widget.RecyclerView.b0 b0Var = listK.get(i7);
            if (!b0Var.p()) {
                if (((b0Var.getLayoutPosition() < iF0) != this.f1812w ? (byte) -1 : (byte) 1) == -1) {
                    iE += this.f1809t.e(b0Var.itemView);
                } else {
                    iE2 += this.f1809t.e(b0Var.itemView);
                }
            }
        }
        this.f1808s.f1839l = listK;
        if (iE > 0) {
            B2(f0(d2()), i5);
            androidx.recyclerview.widget.LinearLayoutManager.c cVar = this.f1808s;
            cVar.f1835h = iE;
            cVar.f1830c = 0;
            cVar.a();
            O1(vVar, this.f1808s, yVar, false);
        }
        if (iE2 > 0) {
            z2(f0(c2()), i6);
            androidx.recyclerview.widget.LinearLayoutManager.c cVar2 = this.f1808s;
            cVar2.f1835h = iE2;
            cVar2.f1830c = 0;
            cVar2.a();
            O1(vVar, this.f1808s, yVar, false);
        }
        this.f1808s.f1839l = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean k() {
        return this.f1807r == 1;
    }

    public void k2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.LinearLayoutManager.a aVar, int i5) {
    }

    public final void l2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.LinearLayoutManager.c cVar) {
        if (!cVar.f1828a || cVar.f1840m) {
            return;
        }
        int i5 = cVar.f1834g;
        int i6 = cVar.f1836i;
        if (cVar.f1833f == -1) {
            n2(vVar, i5, i6);
        } else {
            o2(vVar, i5, i6);
        }
    }

    public final void m2(androidx.recyclerview.widget.RecyclerView.v vVar, int i5, int i6) {
        if (i5 == i6) {
            return;
        }
        if (i6 <= i5) {
            while (i5 > i6) {
                k1(i5, vVar);
                i5--;
            }
        } else {
            for (int i7 = i6 - 1; i7 >= i5; i7--) {
                k1(i7, vVar);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void n(int i5, int i6, androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.RecyclerView.p.c cVar) {
        if (this.f1807r != 0) {
            i5 = i6;
        }
        if (I() == 0 || i5 == 0) {
            return;
        }
        N1();
        y2(i5 > 0 ? 1 : -1, java.lang.Math.abs(i5), true, yVar);
        H1(yVar, this.f1808s, cVar);
    }

    public final void n2(androidx.recyclerview.widget.RecyclerView.v vVar, int i5, int i6) {
        int I = I();
        if (i5 < 0) {
            return;
        }
        int iH = (this.f1809t.h() - i5) + i6;
        if (this.f1812w) {
            for (int i7 = 0; i7 < I; i7++) {
                android.view.View viewH = H(i7);
                if (this.f1809t.g(viewH) < iH || this.f1809t.q(viewH) < iH) {
                    m2(vVar, 0, i7);
                    return;
                }
            }
            return;
        }
        int i8 = I - 1;
        for (int i9 = i8; i9 >= 0; i9--) {
            android.view.View viewH2 = H(i9);
            if (this.f1809t.g(viewH2) < iH || this.f1809t.q(viewH2) < iH) {
                m2(vVar, i8, i9);
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void o(int i5, androidx.recyclerview.widget.RecyclerView.p.c cVar) {
        boolean z4;
        int i6;
        androidx.recyclerview.widget.LinearLayoutManager.SavedState savedState = this.C;
        if (savedState == null || !savedState.a()) {
            q2();
            z4 = this.f1812w;
            i6 = this.f1815z;
            if (i6 == -1) {
                i6 = z4 ? i5 - 1 : 0;
            }
        } else {
            androidx.recyclerview.widget.LinearLayoutManager.SavedState savedState2 = this.C;
            z4 = savedState2.f1818c;
            i6 = savedState2.f1816a;
        }
        int i7 = z4 ? -1 : 1;
        for (int i8 = 0; i8 < this.F && i6 >= 0 && i6 < i5; i8++) {
            cVar.a(i6, 0);
            i6 += i7;
        }
    }

    public final void o2(androidx.recyclerview.widget.RecyclerView.v vVar, int i5, int i6) {
        if (i5 < 0) {
            return;
        }
        int i7 = i5 - i6;
        int I = I();
        if (!this.f1812w) {
            for (int i8 = 0; i8 < I; i8++) {
                android.view.View viewH = H(i8);
                if (this.f1809t.d(viewH) > i7 || this.f1809t.p(viewH) > i7) {
                    m2(vVar, 0, i8);
                    return;
                }
            }
            return;
        }
        int i9 = I - 1;
        for (int i10 = i9; i10 >= 0; i10--) {
            android.view.View viewH2 = H(i10);
            if (this.f1809t.d(viewH2) > i7 || this.f1809t.p(viewH2) > i7) {
                m2(vVar, i9, i10);
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int p(androidx.recyclerview.widget.RecyclerView.y yVar) {
        return I1(yVar);
    }

    public boolean p2() {
        return this.f1809t.k() == 0 && this.f1809t.h() == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int q(androidx.recyclerview.widget.RecyclerView.y yVar) {
        return J1(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean q0() {
        return true;
    }

    public final void q2() {
        if (this.f1807r == 1 || !g2()) {
            this.f1812w = this.f1811v;
        } else {
            this.f1812w = !this.f1811v;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int r(androidx.recyclerview.widget.RecyclerView.y yVar) {
        return K1(yVar);
    }

    public int r2(int i5, androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (I() == 0 || i5 == 0) {
            return 0;
        }
        N1();
        this.f1808s.f1828a = true;
        int i6 = i5 > 0 ? 1 : -1;
        int iAbs = java.lang.Math.abs(i5);
        y2(i6, iAbs, true, yVar);
        androidx.recyclerview.widget.LinearLayoutManager.c cVar = this.f1808s;
        int iO1 = cVar.f1834g + O1(vVar, cVar, yVar, false);
        if (iO1 < 0) {
            return 0;
        }
        if (iAbs > iO1) {
            i5 = i6 * iO1;
        }
        this.f1809t.r(-i5);
        this.f1808s.f1838k = i5;
        return i5;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int s(androidx.recyclerview.widget.RecyclerView.y yVar) {
        return I1(yVar);
    }

    public void s2(int i5) {
        if (i5 != 0 && i5 != 1) {
            throw new java.lang.IllegalArgumentException("invalid orientation:" + i5);
        }
        f(null);
        if (i5 != this.f1807r || this.f1809t == null) {
            androidx.recyclerview.widget.h hVarB = androidx.recyclerview.widget.h.b(this, i5);
            this.f1809t = hVarB;
            this.D.f1819a = hVarB;
            this.f1807r = i5;
            q1();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int t(androidx.recyclerview.widget.RecyclerView.y yVar) {
        return J1(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int t1(int i5, androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (this.f1807r == 1) {
            return 0;
        }
        return r2(i5, vVar, yVar);
    }

    public void t2(boolean z4) {
        f(null);
        if (z4 == this.f1811v) {
            return;
        }
        this.f1811v = z4;
        q1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int u(androidx.recyclerview.widget.RecyclerView.y yVar) {
        return K1(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int u1(int i5, androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (this.f1807r == 0) {
            return 0;
        }
        return r2(i5, vVar, yVar);
    }

    public void u2(boolean z4) {
        f(null);
        if (this.f1813x == z4) {
            return;
        }
        this.f1813x = z4;
        q1();
    }

    public final boolean v2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.LinearLayoutManager.a aVar) {
        android.view.View viewZ1;
        boolean z4 = false;
        if (I() == 0) {
            return false;
        }
        android.view.View viewU = U();
        if (viewU != null && aVar.d(viewU, yVar)) {
            aVar.c(viewU, f0(viewU));
            return true;
        }
        boolean z5 = this.f1810u;
        boolean z6 = this.f1813x;
        if (z5 != z6 || (viewZ1 = Z1(vVar, yVar, aVar.f1822d, z6)) == null) {
            return false;
        }
        aVar.b(viewZ1, f0(viewZ1));
        if (!yVar.e() && F1()) {
            int iG = this.f1809t.g(viewZ1);
            int iD = this.f1809t.d(viewZ1);
            int iM = this.f1809t.m();
            int i5 = this.f1809t.i();
            boolean z7 = iD <= iM && iG < iM;
            if (iG >= i5 && iD > i5) {
                z4 = true;
            }
            if (z7 || z4) {
                if (aVar.f1822d) {
                    iM = i5;
                }
                aVar.f1821c = iM;
            }
        }
        return true;
    }

    public final boolean w2(androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.LinearLayoutManager.a aVar) {
        int i5;
        if (!yVar.e() && (i5 = this.f1815z) != -1) {
            if (i5 >= 0 && i5 < yVar.b()) {
                aVar.f1820b = this.f1815z;
                androidx.recyclerview.widget.LinearLayoutManager.SavedState savedState = this.C;
                if (savedState != null && savedState.a()) {
                    boolean z4 = this.C.f1818c;
                    aVar.f1822d = z4;
                    if (z4) {
                        aVar.f1821c = this.f1809t.i() - this.C.f1817b;
                    } else {
                        aVar.f1821c = this.f1809t.m() + this.C.f1817b;
                    }
                    return true;
                }
                if (this.A != Integer.MIN_VALUE) {
                    boolean z5 = this.f1812w;
                    aVar.f1822d = z5;
                    if (z5) {
                        aVar.f1821c = this.f1809t.i() - this.A;
                    } else {
                        aVar.f1821c = this.f1809t.m() + this.A;
                    }
                    return true;
                }
                android.view.View viewB = B(this.f1815z);
                if (viewB == null) {
                    if (I() > 0) {
                        aVar.f1822d = (this.f1815z < f0(H(0))) == this.f1812w;
                    }
                    aVar.a();
                } else {
                    if (this.f1809t.e(viewB) > this.f1809t.n()) {
                        aVar.a();
                        return true;
                    }
                    if (this.f1809t.g(viewB) - this.f1809t.m() < 0) {
                        aVar.f1821c = this.f1809t.m();
                        aVar.f1822d = false;
                        return true;
                    }
                    if (this.f1809t.i() - this.f1809t.d(viewB) < 0) {
                        aVar.f1821c = this.f1809t.i();
                        aVar.f1822d = true;
                        return true;
                    }
                    aVar.f1821c = aVar.f1822d ? this.f1809t.d(viewB) + this.f1809t.o() : this.f1809t.g(viewB);
                }
                return true;
            }
            this.f1815z = -1;
            this.A = Integer.MIN_VALUE;
        }
        return false;
    }

    public final void x2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.LinearLayoutManager.a aVar) {
        if (w2(yVar, aVar) || v2(vVar, yVar, aVar)) {
            return;
        }
        aVar.a();
        aVar.f1820b = this.f1813x ? yVar.b() - 1 : 0;
    }

    public final void y2(int i5, int i6, boolean z4, androidx.recyclerview.widget.RecyclerView.y yVar) {
        int iM;
        this.f1808s.f1840m = p2();
        this.f1808s.f1833f = i5;
        int[] iArr = this.G;
        iArr[0] = 0;
        iArr[1] = 0;
        G1(yVar, iArr);
        int iMax = java.lang.Math.max(0, this.G[0]);
        int iMax2 = java.lang.Math.max(0, this.G[1]);
        boolean z5 = i5 == 1;
        androidx.recyclerview.widget.LinearLayoutManager.c cVar = this.f1808s;
        int i7 = z5 ? iMax2 : iMax;
        cVar.f1835h = i7;
        if (!z5) {
            iMax = iMax2;
        }
        cVar.f1836i = iMax;
        if (z5) {
            cVar.f1835h = i7 + this.f1809t.j();
            android.view.View viewC2 = c2();
            androidx.recyclerview.widget.LinearLayoutManager.c cVar2 = this.f1808s;
            cVar2.f1832e = this.f1812w ? -1 : 1;
            int iF0 = f0(viewC2);
            androidx.recyclerview.widget.LinearLayoutManager.c cVar3 = this.f1808s;
            cVar2.f1831d = iF0 + cVar3.f1832e;
            cVar3.f1829b = this.f1809t.d(viewC2);
            iM = this.f1809t.d(viewC2) - this.f1809t.i();
        } else {
            android.view.View viewD2 = d2();
            this.f1808s.f1835h += this.f1809t.m();
            androidx.recyclerview.widget.LinearLayoutManager.c cVar4 = this.f1808s;
            cVar4.f1832e = this.f1812w ? 1 : -1;
            int iF1 = f0(viewD2);
            androidx.recyclerview.widget.LinearLayoutManager.c cVar5 = this.f1808s;
            cVar4.f1831d = iF1 + cVar5.f1832e;
            cVar5.f1829b = this.f1809t.g(viewD2);
            iM = (-this.f1809t.g(viewD2)) + this.f1809t.m();
        }
        androidx.recyclerview.widget.LinearLayoutManager.c cVar6 = this.f1808s;
        cVar6.f1830c = i6;
        if (z4) {
            cVar6.f1830c = i6 - iM;
        }
        cVar6.f1834g = iM;
    }

    public final void z2(int i5, int i6) {
        this.f1808s.f1830c = this.f1809t.i() - i6;
        androidx.recyclerview.widget.LinearLayoutManager.c cVar = this.f1808s;
        cVar.f1832e = this.f1812w ? -1 : 1;
        cVar.f1831d = i5;
        cVar.f1833f = 1;
        cVar.f1829b = i6;
        cVar.f1834g = Integer.MIN_VALUE;
    }

    public LinearLayoutManager(android.content.Context context, int i5, boolean z4) {
        this.f1807r = 1;
        this.f1811v = false;
        this.f1812w = false;
        this.f1813x = false;
        this.f1814y = true;
        this.f1815z = -1;
        this.A = Integer.MIN_VALUE;
        this.C = null;
        this.D = new androidx.recyclerview.widget.LinearLayoutManager.a();
        this.E = new androidx.recyclerview.widget.LinearLayoutManager.b();
        this.F = 2;
        this.G = new int[2];
        s2(i5);
        t2(z4);
    }

    public LinearLayoutManager(android.content.Context context, android.util.AttributeSet attributeSet, int i5, int i6) {
        this.f1807r = 1;
        this.f1811v = false;
        this.f1812w = false;
        this.f1813x = false;
        this.f1814y = true;
        this.f1815z = -1;
        this.A = Integer.MIN_VALUE;
        this.C = null;
        this.D = new androidx.recyclerview.widget.LinearLayoutManager.a();
        this.E = new androidx.recyclerview.widget.LinearLayoutManager.b();
        this.F = 2;
        this.G = new int[2];
        androidx.recyclerview.widget.RecyclerView.p.d dVarG0 = androidx.recyclerview.widget.RecyclerView.p.g0(context, attributeSet, i5, i6);
        s2(dVarG0.f1962a);
        t2(dVarG0.f1964c);
        u2(dVarG0.f1965d);
    }
}
