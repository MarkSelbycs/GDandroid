package androidx.recyclerview.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class StaggeredGridLayoutManager extends androidx.recyclerview.widget.RecyclerView.p {
    public java.util.BitSet A;
    public boolean F;
    public boolean G;
    public androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState H;
    public int I;
    public int[] N;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public androidx.recyclerview.widget.StaggeredGridLayoutManager.c[] f1999s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public androidx.recyclerview.widget.h f2000t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public androidx.recyclerview.widget.h f2001u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2002v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2003w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final androidx.recyclerview.widget.f f2004x;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f1998r = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f2005y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f2006z = false;
    public int B = -1;
    public int C = Integer.MIN_VALUE;
    public androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup D = new androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup();
    public int E = 2;
    public final android.graphics.Rect J = new android.graphics.Rect();
    public final androidx.recyclerview.widget.StaggeredGridLayoutManager.b K = new androidx.recyclerview.widget.StaggeredGridLayoutManager.b();
    public boolean L = false;
    public boolean M = true;
    public final java.lang.Runnable O = new androidx.recyclerview.widget.StaggeredGridLayoutManager.a();

    public static class LayoutParams extends androidx.recyclerview.widget.RecyclerView.LayoutParams {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public androidx.recyclerview.widget.StaggeredGridLayoutManager.c f2007e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f2008f;

        public LayoutParams(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public boolean e() {
            return this.f2008f;
        }

        public LayoutParams(int i5, int i6) {
            super(i5, i6);
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    @android.annotation.SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState> CREATOR = new androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState.a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2015a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2016b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2017c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int[] f2018d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2019e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int[] f2020f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> f2021g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f2022h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f2023i;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f2024o;

        public class a implements android.os.Parcelable.Creator<androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState createFromParcel(android.os.Parcel parcel) {
                return new androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState[] newArray(int i5) {
                return new androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState[i5];
            }
        }

        public SavedState() {
        }

        public void a() {
            this.f2018d = null;
            this.f2017c = 0;
            this.f2015a = -1;
            this.f2016b = -1;
        }

        public void b() {
            this.f2018d = null;
            this.f2017c = 0;
            this.f2019e = 0;
            this.f2020f = null;
            this.f2021g = null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i5) {
            parcel.writeInt(this.f2015a);
            parcel.writeInt(this.f2016b);
            parcel.writeInt(this.f2017c);
            if (this.f2017c > 0) {
                parcel.writeIntArray(this.f2018d);
            }
            parcel.writeInt(this.f2019e);
            if (this.f2019e > 0) {
                parcel.writeIntArray(this.f2020f);
            }
            parcel.writeInt(this.f2022h ? 1 : 0);
            parcel.writeInt(this.f2023i ? 1 : 0);
            parcel.writeInt(this.f2024o ? 1 : 0);
            parcel.writeList(this.f2021g);
        }

        public SavedState(android.os.Parcel parcel) {
            this.f2015a = parcel.readInt();
            this.f2016b = parcel.readInt();
            int i5 = parcel.readInt();
            this.f2017c = i5;
            if (i5 > 0) {
                int[] iArr = new int[i5];
                this.f2018d = iArr;
                parcel.readIntArray(iArr);
            }
            int i6 = parcel.readInt();
            this.f2019e = i6;
            if (i6 > 0) {
                int[] iArr2 = new int[i6];
                this.f2020f = iArr2;
                parcel.readIntArray(iArr2);
            }
            this.f2022h = parcel.readInt() == 1;
            this.f2023i = parcel.readInt() == 1;
            this.f2024o = parcel.readInt() == 1;
            this.f2021g = parcel.readArrayList(androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState savedState) {
            this.f2017c = savedState.f2017c;
            this.f2015a = savedState.f2015a;
            this.f2016b = savedState.f2016b;
            this.f2018d = savedState.f2018d;
            this.f2019e = savedState.f2019e;
            this.f2020f = savedState.f2020f;
            this.f2022h = savedState.f2022h;
            this.f2023i = savedState.f2023i;
            this.f2024o = savedState.f2024o;
            this.f2021g = savedState.f2021g;
        }
    }

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.recyclerview.widget.StaggeredGridLayoutManager.this.M1();
        }
    }

    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2026a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2027b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f2028c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f2029d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f2030e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int[] f2031f;

        public b() {
            c();
        }

        public void a() {
            this.f2027b = this.f2028c ? androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2000t.i() : androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2000t.m();
        }

        public void b(int i5) {
            if (this.f2028c) {
                this.f2027b = androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2000t.i() - i5;
            } else {
                this.f2027b = androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2000t.m() + i5;
            }
        }

        public void c() {
            this.f2026a = -1;
            this.f2027b = Integer.MIN_VALUE;
            this.f2028c = false;
            this.f2029d = false;
            this.f2030e = false;
            int[] iArr = this.f2031f;
            if (iArr != null) {
                java.util.Arrays.fill(iArr, -1);
            }
        }

        public void d(androidx.recyclerview.widget.StaggeredGridLayoutManager.c[] cVarArr) {
            int length = cVarArr.length;
            int[] iArr = this.f2031f;
            if (iArr == null || iArr.length < length) {
                this.f2031f = new int[androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f1999s.length];
            }
            for (int i5 = 0; i5 < length; i5++) {
                this.f2031f[i5] = cVarArr[i5].p(Integer.MIN_VALUE);
            }
        }
    }

    public class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.util.ArrayList<android.view.View> f2033a = new java.util.ArrayList<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2034b = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2035c = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2036d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f2037e;

        public c(int i5) {
            this.f2037e = i5;
        }

        public void a(android.view.View view) {
            androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams layoutParamsN = n(view);
            layoutParamsN.f2007e = this;
            this.f2033a.add(view);
            this.f2035c = Integer.MIN_VALUE;
            if (this.f2033a.size() == 1) {
                this.f2034b = Integer.MIN_VALUE;
            }
            if (layoutParamsN.c() || layoutParamsN.b()) {
                this.f2036d += androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2000t.e(view);
            }
        }

        public void b(boolean z4, int i5) {
            int iL = z4 ? l(Integer.MIN_VALUE) : p(Integer.MIN_VALUE);
            e();
            if (iL == Integer.MIN_VALUE) {
                return;
            }
            if (!z4 || iL >= androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2000t.i()) {
                if (z4 || iL <= androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2000t.m()) {
                    if (i5 != Integer.MIN_VALUE) {
                        iL += i5;
                    }
                    this.f2035c = iL;
                    this.f2034b = iL;
                }
            }
        }

        public void c() {
            androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItemF;
            java.util.ArrayList<android.view.View> arrayList = this.f2033a;
            android.view.View view = arrayList.get(arrayList.size() - 1);
            androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams layoutParamsN = n(view);
            this.f2035c = androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2000t.d(view);
            if (layoutParamsN.f2008f && (fullSpanItemF = androidx.recyclerview.widget.StaggeredGridLayoutManager.this.D.f(layoutParamsN.a())) != null && fullSpanItemF.f2012b == 1) {
                this.f2035c += fullSpanItemF.a(this.f2037e);
            }
        }

        public void d() {
            androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItemF;
            android.view.View view = this.f2033a.get(0);
            androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams layoutParamsN = n(view);
            this.f2034b = androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2000t.g(view);
            if (layoutParamsN.f2008f && (fullSpanItemF = androidx.recyclerview.widget.StaggeredGridLayoutManager.this.D.f(layoutParamsN.a())) != null && fullSpanItemF.f2012b == -1) {
                this.f2034b -= fullSpanItemF.a(this.f2037e);
            }
        }

        public void e() {
            this.f2033a.clear();
            q();
            this.f2036d = 0;
        }

        public int f() {
            return androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2005y ? i(this.f2033a.size() - 1, -1, true) : i(0, this.f2033a.size(), true);
        }

        public int g() {
            return androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2005y ? i(0, this.f2033a.size(), true) : i(this.f2033a.size() - 1, -1, true);
        }

        public int h(int i5, int i6, boolean z4, boolean z5, boolean z6) {
            int iM = androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2000t.m();
            int i7 = androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2000t.i();
            int i8 = i6 > i5 ? 1 : -1;
            while (i5 != i6) {
                android.view.View view = this.f2033a.get(i5);
                int iG = androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2000t.g(view);
                int iD = androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2000t.d(view);
                boolean z7 = false;
                boolean z8 = !z6 ? iG >= i7 : iG > i7;
                if (!z6 ? iD > iM : iD >= iM) {
                    z7 = true;
                }
                if (z8 && z7) {
                    if (z4 && z5) {
                        if (iG >= iM && iD <= i7) {
                            return androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f0(view);
                        }
                    } else {
                        if (z5) {
                            return androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f0(view);
                        }
                        if (iG < iM || iD > i7) {
                            return androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f0(view);
                        }
                    }
                }
                i5 += i8;
            }
            return -1;
        }

        public int i(int i5, int i6, boolean z4) {
            return h(i5, i6, false, false, z4);
        }

        public int j() {
            return this.f2036d;
        }

        public int k() {
            int i5 = this.f2035c;
            if (i5 != Integer.MIN_VALUE) {
                return i5;
            }
            c();
            return this.f2035c;
        }

        public int l(int i5) {
            int i6 = this.f2035c;
            if (i6 != Integer.MIN_VALUE) {
                return i6;
            }
            if (this.f2033a.size() == 0) {
                return i5;
            }
            c();
            return this.f2035c;
        }

        public android.view.View m(int i5, int i6) {
            android.view.View view = null;
            if (i6 != -1) {
                int size = this.f2033a.size() - 1;
                while (size >= 0) {
                    android.view.View view2 = this.f2033a.get(size);
                    androidx.recyclerview.widget.StaggeredGridLayoutManager staggeredGridLayoutManager = androidx.recyclerview.widget.StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager.f2005y && staggeredGridLayoutManager.f0(view2) >= i5) {
                        break;
                    }
                    androidx.recyclerview.widget.StaggeredGridLayoutManager staggeredGridLayoutManager2 = androidx.recyclerview.widget.StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager2.f2005y && staggeredGridLayoutManager2.f0(view2) <= i5) || !view2.hasFocusable()) {
                        break;
                    }
                    size--;
                    view = view2;
                }
            } else {
                int size2 = this.f2033a.size();
                int i7 = 0;
                while (i7 < size2) {
                    android.view.View view3 = this.f2033a.get(i7);
                    androidx.recyclerview.widget.StaggeredGridLayoutManager staggeredGridLayoutManager3 = androidx.recyclerview.widget.StaggeredGridLayoutManager.this;
                    if (staggeredGridLayoutManager3.f2005y && staggeredGridLayoutManager3.f0(view3) <= i5) {
                        break;
                    }
                    androidx.recyclerview.widget.StaggeredGridLayoutManager staggeredGridLayoutManager4 = androidx.recyclerview.widget.StaggeredGridLayoutManager.this;
                    if ((!staggeredGridLayoutManager4.f2005y && staggeredGridLayoutManager4.f0(view3) >= i5) || !view3.hasFocusable()) {
                        break;
                    }
                    i7++;
                    view = view3;
                }
            }
            return view;
        }

        public androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams n(android.view.View view) {
            return (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) view.getLayoutParams();
        }

        public int o() {
            int i5 = this.f2034b;
            if (i5 != Integer.MIN_VALUE) {
                return i5;
            }
            d();
            return this.f2034b;
        }

        public int p(int i5) {
            int i6 = this.f2034b;
            if (i6 != Integer.MIN_VALUE) {
                return i6;
            }
            if (this.f2033a.size() == 0) {
                return i5;
            }
            d();
            return this.f2034b;
        }

        public void q() {
            this.f2034b = Integer.MIN_VALUE;
            this.f2035c = Integer.MIN_VALUE;
        }

        public void r(int i5) {
            int i6 = this.f2034b;
            if (i6 != Integer.MIN_VALUE) {
                this.f2034b = i6 + i5;
            }
            int i7 = this.f2035c;
            if (i7 != Integer.MIN_VALUE) {
                this.f2035c = i7 + i5;
            }
        }

        public void s() {
            int size = this.f2033a.size();
            android.view.View viewRemove = this.f2033a.remove(size - 1);
            androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams layoutParamsN = n(viewRemove);
            layoutParamsN.f2007e = null;
            if (layoutParamsN.c() || layoutParamsN.b()) {
                this.f2036d -= androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2000t.e(viewRemove);
            }
            if (size == 1) {
                this.f2034b = Integer.MIN_VALUE;
            }
            this.f2035c = Integer.MIN_VALUE;
        }

        public void t() {
            android.view.View viewRemove = this.f2033a.remove(0);
            androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams layoutParamsN = n(viewRemove);
            layoutParamsN.f2007e = null;
            if (this.f2033a.size() == 0) {
                this.f2035c = Integer.MIN_VALUE;
            }
            if (layoutParamsN.c() || layoutParamsN.b()) {
                this.f2036d -= androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2000t.e(viewRemove);
            }
            this.f2034b = Integer.MIN_VALUE;
        }

        public void u(android.view.View view) {
            androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams layoutParamsN = n(view);
            layoutParamsN.f2007e = this;
            this.f2033a.add(0, view);
            this.f2034b = Integer.MIN_VALUE;
            if (this.f2033a.size() == 1) {
                this.f2035c = Integer.MIN_VALUE;
            }
            if (layoutParamsN.c() || layoutParamsN.b()) {
                this.f2036d += androidx.recyclerview.widget.StaggeredGridLayoutManager.this.f2000t.e(view);
            }
        }

        public void v(int i5) {
            this.f2034b = i5;
            this.f2035c = i5;
        }
    }

    public StaggeredGridLayoutManager(android.content.Context context, android.util.AttributeSet attributeSet, int i5, int i6) {
        androidx.recyclerview.widget.RecyclerView.p.d dVarG0 = androidx.recyclerview.widget.RecyclerView.p.g0(context, attributeSet, i5, i6);
        B2(dVarG0.f1962a);
        D2(dVarG0.f1963b);
        C2(dVarG0.f1964c);
        this.f2004x = new androidx.recyclerview.widget.f();
        U1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void A0(int i5) {
        super.A0(i5);
        for (int i6 = 0; i6 < this.f1998r; i6++) {
            this.f1999s[i6].r(i5);
        }
    }

    public final void A2(int i5) {
        androidx.recyclerview.widget.f fVar = this.f2004x;
        fVar.f2157e = i5;
        fVar.f2156d = this.f2006z != (i5 == -1) ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void B0(int i5) {
        super.B0(i5);
        for (int i6 = 0; i6 < this.f1998r; i6++) {
            this.f1999s[i6].r(i5);
        }
    }

    public void B2(int i5) {
        if (i5 != 0 && i5 != 1) {
            throw new java.lang.IllegalArgumentException("invalid orientation.");
        }
        f(null);
        if (i5 == this.f2002v) {
            return;
        }
        this.f2002v = i5;
        androidx.recyclerview.widget.h hVar = this.f2000t;
        this.f2000t = this.f2001u;
        this.f2001u = hVar;
        q1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public androidx.recyclerview.widget.RecyclerView.LayoutParams C() {
        return this.f2002v == 0 ? new androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams(-2, -1) : new androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void C0(androidx.recyclerview.widget.RecyclerView.h hVar, androidx.recyclerview.widget.RecyclerView.h hVar2) {
        this.D.b();
        for (int i5 = 0; i5 < this.f1998r; i5++) {
            this.f1999s[i5].e();
        }
    }

    public void C2(boolean z4) {
        f(null);
        androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState savedState = this.H;
        if (savedState != null && savedState.f2022h != z4) {
            savedState.f2022h = z4;
        }
        this.f2005y = z4;
        q1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public androidx.recyclerview.widget.RecyclerView.LayoutParams D(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams(context, attributeSet);
    }

    public void D2(int i5) {
        f(null);
        if (i5 != this.f1998r) {
            m2();
            this.f1998r = i5;
            this.A = new java.util.BitSet(this.f1998r);
            this.f1999s = new androidx.recyclerview.widget.StaggeredGridLayoutManager.c[this.f1998r];
            for (int i6 = 0; i6 < this.f1998r; i6++) {
                this.f1999s[i6] = new androidx.recyclerview.widget.StaggeredGridLayoutManager.c(i6);
            }
            q1();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public androidx.recyclerview.widget.RecyclerView.LayoutParams E(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof android.view.ViewGroup.MarginLayoutParams ? new androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams((android.view.ViewGroup.MarginLayoutParams) layoutParams) : new androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams(layoutParams);
    }

    public final void E2(int i5, int i6) {
        for (int i7 = 0; i7 < this.f1998r; i7++) {
            if (!this.f1999s[i7].f2033a.isEmpty()) {
                K2(this.f1999s[i7], i5, i6);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean F1() {
        return this.H == null;
    }

    public final boolean F2(androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.StaggeredGridLayoutManager.b bVar) {
        bVar.f2026a = this.F ? a2(yVar.b()) : W1(yVar.b());
        bVar.f2027b = Integer.MIN_VALUE;
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void G0(androidx.recyclerview.widget.RecyclerView recyclerView, androidx.recyclerview.widget.RecyclerView.v vVar) {
        super.G0(recyclerView, vVar);
        l1(this.O);
        for (int i5 = 0; i5 < this.f1998r; i5++) {
            this.f1999s[i5].e();
        }
        recyclerView.requestLayout();
    }

    public final void G1(android.view.View view) {
        for (int i5 = this.f1998r - 1; i5 >= 0; i5--) {
            this.f1999s[i5].a(view);
        }
    }

    public boolean G2(androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.StaggeredGridLayoutManager.b bVar) {
        int i5;
        if (!yVar.e() && (i5 = this.B) != -1) {
            if (i5 >= 0 && i5 < yVar.b()) {
                androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState savedState = this.H;
                if (savedState == null || savedState.f2015a == -1 || savedState.f2017c < 1) {
                    android.view.View viewB = B(this.B);
                    if (viewB != null) {
                        bVar.f2026a = this.f2006z ? e2() : d2();
                        if (this.C != Integer.MIN_VALUE) {
                            if (bVar.f2028c) {
                                bVar.f2027b = (this.f2000t.i() - this.C) - this.f2000t.d(viewB);
                            } else {
                                bVar.f2027b = (this.f2000t.m() + this.C) - this.f2000t.g(viewB);
                            }
                            return true;
                        }
                        if (this.f2000t.e(viewB) > this.f2000t.n()) {
                            bVar.f2027b = bVar.f2028c ? this.f2000t.i() : this.f2000t.m();
                            return true;
                        }
                        int iG = this.f2000t.g(viewB) - this.f2000t.m();
                        if (iG < 0) {
                            bVar.f2027b = -iG;
                            return true;
                        }
                        int i6 = this.f2000t.i() - this.f2000t.d(viewB);
                        if (i6 < 0) {
                            bVar.f2027b = i6;
                            return true;
                        }
                        bVar.f2027b = Integer.MIN_VALUE;
                    } else {
                        int i7 = this.B;
                        bVar.f2026a = i7;
                        int i8 = this.C;
                        if (i8 == Integer.MIN_VALUE) {
                            bVar.f2028c = L1(i7) == 1;
                            bVar.a();
                        } else {
                            bVar.b(i8);
                        }
                        bVar.f2029d = true;
                    }
                } else {
                    bVar.f2027b = Integer.MIN_VALUE;
                    bVar.f2026a = this.B;
                }
                return true;
            }
            this.B = -1;
            this.C = Integer.MIN_VALUE;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public android.view.View H0(android.view.View view, int i5, androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        android.view.View viewA;
        android.view.View viewM;
        if (I() == 0 || (viewA = A(view)) == null) {
            return null;
        }
        y2();
        int iR1 = R1(i5);
        if (iR1 == Integer.MIN_VALUE) {
            return null;
        }
        androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams layoutParams = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) viewA.getLayoutParams();
        boolean z4 = layoutParams.f2008f;
        androidx.recyclerview.widget.StaggeredGridLayoutManager.c cVar = layoutParams.f2007e;
        int iE2 = iR1 == 1 ? e2() : d2();
        I2(iE2, yVar);
        A2(iR1);
        androidx.recyclerview.widget.f fVar = this.f2004x;
        fVar.f2155c = fVar.f2156d + iE2;
        fVar.f2154b = (int) (this.f2000t.n() * 0.33333334f);
        androidx.recyclerview.widget.f fVar2 = this.f2004x;
        fVar2.f2160h = true;
        fVar2.f2153a = false;
        V1(vVar, fVar2, yVar);
        this.F = this.f2006z;
        if (!z4 && (viewM = cVar.m(iE2, iR1)) != null && viewM != viewA) {
            return viewM;
        }
        if (r2(iR1)) {
            for (int i6 = this.f1998r - 1; i6 >= 0; i6--) {
                android.view.View viewM2 = this.f1999s[i6].m(iE2, iR1);
                if (viewM2 != null && viewM2 != viewA) {
                    return viewM2;
                }
            }
        } else {
            for (int i7 = 0; i7 < this.f1998r; i7++) {
                android.view.View viewM3 = this.f1999s[i7].m(iE2, iR1);
                if (viewM3 != null && viewM3 != viewA) {
                    return viewM3;
                }
            }
        }
        boolean z5 = (this.f2005y ^ true) == (iR1 == -1);
        if (!z4) {
            android.view.View viewB = B(z5 ? cVar.f() : cVar.g());
            if (viewB != null && viewB != viewA) {
                return viewB;
            }
        }
        if (r2(iR1)) {
            for (int i8 = this.f1998r - 1; i8 >= 0; i8--) {
                if (i8 != cVar.f2037e) {
                    android.view.View viewB2 = B(z5 ? this.f1999s[i8].f() : this.f1999s[i8].g());
                    if (viewB2 != null && viewB2 != viewA) {
                        return viewB2;
                    }
                }
            }
        } else {
            for (int i9 = 0; i9 < this.f1998r; i9++) {
                android.view.View viewB3 = B(z5 ? this.f1999s[i9].f() : this.f1999s[i9].g());
                if (viewB3 != null && viewB3 != viewA) {
                    return viewB3;
                }
            }
        }
        return null;
    }

    public final void H1(androidx.recyclerview.widget.StaggeredGridLayoutManager.b bVar) {
        androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState savedState = this.H;
        int i5 = savedState.f2017c;
        if (i5 > 0) {
            if (i5 == this.f1998r) {
                for (int i6 = 0; i6 < this.f1998r; i6++) {
                    this.f1999s[i6].e();
                    androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState savedState2 = this.H;
                    int i7 = savedState2.f2018d[i6];
                    if (i7 != Integer.MIN_VALUE) {
                        i7 += savedState2.f2023i ? this.f2000t.i() : this.f2000t.m();
                    }
                    this.f1999s[i6].v(i7);
                }
            } else {
                savedState.b();
                androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState savedState3 = this.H;
                savedState3.f2015a = savedState3.f2016b;
            }
        }
        androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState savedState4 = this.H;
        this.G = savedState4.f2024o;
        C2(savedState4.f2022h);
        y2();
        androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState savedState5 = this.H;
        int i8 = savedState5.f2015a;
        if (i8 != -1) {
            this.B = i8;
            bVar.f2028c = savedState5.f2023i;
        } else {
            bVar.f2028c = this.f2006z;
        }
        if (savedState5.f2019e > 1) {
            androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup lazySpanLookup = this.D;
            lazySpanLookup.f2009a = savedState5.f2020f;
            lazySpanLookup.f2010b = savedState5.f2021g;
        }
    }

    public void H2(androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.StaggeredGridLayoutManager.b bVar) {
        if (G2(yVar, bVar) || F2(yVar, bVar)) {
            return;
        }
        bVar.a();
        bVar.f2026a = 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void I0(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        super.I0(accessibilityEvent);
        if (I() > 0) {
            android.view.View viewY1 = Y1(false);
            android.view.View viewX1 = X1(false);
            if (viewY1 == null || viewX1 == null) {
                return;
            }
            int iF0 = f0(viewY1);
            int iF1 = f0(viewX1);
            if (iF0 < iF1) {
                accessibilityEvent.setFromIndex(iF0);
                accessibilityEvent.setToIndex(iF1);
            } else {
                accessibilityEvent.setFromIndex(iF1);
                accessibilityEvent.setToIndex(iF0);
            }
        }
    }

    public boolean I1() {
        int iL = this.f1999s[0].l(Integer.MIN_VALUE);
        for (int i5 = 1; i5 < this.f1998r; i5++) {
            if (this.f1999s[i5].l(Integer.MIN_VALUE) != iL) {
                return false;
            }
        }
        return true;
    }

    public final void I2(int i5, androidx.recyclerview.widget.RecyclerView.y yVar) {
        int iN;
        int iN2;
        int iC;
        androidx.recyclerview.widget.f fVar = this.f2004x;
        boolean z4 = false;
        fVar.f2154b = 0;
        fVar.f2155c = i5;
        if (!v0() || (iC = yVar.c()) == -1) {
            iN = 0;
            iN2 = 0;
        } else {
            if (this.f2006z == (iC < i5)) {
                iN = this.f2000t.n();
                iN2 = 0;
            } else {
                iN2 = this.f2000t.n();
                iN = 0;
            }
        }
        if (L()) {
            this.f2004x.f2158f = this.f2000t.m() - iN2;
            this.f2004x.f2159g = this.f2000t.i() + iN;
        } else {
            this.f2004x.f2159g = this.f2000t.h() + iN;
            this.f2004x.f2158f = -iN2;
        }
        androidx.recyclerview.widget.f fVar2 = this.f2004x;
        fVar2.f2160h = false;
        fVar2.f2153a = true;
        if (this.f2000t.k() == 0 && this.f2000t.h() == 0) {
            z4 = true;
        }
        fVar2.f2161i = z4;
    }

    public boolean J1() {
        int iP = this.f1999s[0].p(Integer.MIN_VALUE);
        for (int i5 = 1; i5 < this.f1998r; i5++) {
            if (this.f1999s[i5].p(Integer.MIN_VALUE) != iP) {
                return false;
            }
        }
        return true;
    }

    public void J2(int i5) {
        this.f2003w = i5 / this.f1998r;
        this.I = android.view.View.MeasureSpec.makeMeasureSpec(i5, this.f2001u.k());
    }

    public final void K1(android.view.View view, androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams layoutParams, androidx.recyclerview.widget.f fVar) {
        if (fVar.f2157e == 1) {
            if (layoutParams.f2008f) {
                G1(view);
                return;
            } else {
                layoutParams.f2007e.a(view);
                return;
            }
        }
        if (layoutParams.f2008f) {
            t2(view);
        } else {
            layoutParams.f2007e.u(view);
        }
    }

    public final void K2(androidx.recyclerview.widget.StaggeredGridLayoutManager.c cVar, int i5, int i6) {
        int iJ = cVar.j();
        if (i5 == -1) {
            if (cVar.o() + iJ <= i6) {
                this.A.set(cVar.f2037e, false);
            }
        } else if (cVar.k() - iJ >= i6) {
            this.A.set(cVar.f2037e, false);
        }
    }

    public final int L1(int i5) {
        if (I() == 0) {
            return this.f2006z ? 1 : -1;
        }
        return (i5 < d2()) != this.f2006z ? -1 : 1;
    }

    public final int L2(int i5, int i6, int i7) {
        if (i6 == 0 && i7 == 0) {
            return i5;
        }
        int mode = android.view.View.MeasureSpec.getMode(i5);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? android.view.View.MeasureSpec.makeMeasureSpec(java.lang.Math.max(0, (android.view.View.MeasureSpec.getSize(i5) - i6) - i7), mode) : i5;
    }

    public boolean M1() {
        int iD2;
        int iE2;
        if (I() == 0 || this.E == 0 || !p0()) {
            return false;
        }
        if (this.f2006z) {
            iD2 = e2();
            iE2 = d2();
        } else {
            iD2 = d2();
            iE2 = e2();
        }
        if (iD2 == 0 && l2() != null) {
            this.D.b();
            r1();
            q1();
            return true;
        }
        if (!this.L) {
            return false;
        }
        int i5 = this.f2006z ? -1 : 1;
        int i6 = iE2 + 1;
        androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItemE = this.D.e(iD2, i6, i5, true);
        if (fullSpanItemE == null) {
            this.L = false;
            this.D.d(i6);
            return false;
        }
        androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItemE2 = this.D.e(iD2, fullSpanItemE.f2011a, i5 * (-1), true);
        if (fullSpanItemE2 == null) {
            this.D.d(fullSpanItemE.f2011a);
        } else {
            this.D.d(fullSpanItemE2.f2011a + 1);
        }
        r1();
        q1();
        return true;
    }

    public final boolean N1(androidx.recyclerview.widget.StaggeredGridLayoutManager.c cVar) {
        if (this.f2006z) {
            if (cVar.k() < this.f2000t.i()) {
                java.util.ArrayList<android.view.View> arrayList = cVar.f2033a;
                return !cVar.n(arrayList.get(arrayList.size() - 1)).f2008f;
            }
        } else if (cVar.o() > this.f2000t.m()) {
            return !cVar.n(cVar.f2033a.get(0)).f2008f;
        }
        return false;
    }

    public final int O1(androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (I() == 0) {
            return 0;
        }
        return androidx.recyclerview.widget.j.a(yVar, this.f2000t, Y1(!this.M), X1(!this.M), this, this.M);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void P0(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6) {
        k2(i5, i6, 1);
    }

    public final int P1(androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (I() == 0) {
            return 0;
        }
        return androidx.recyclerview.widget.j.b(yVar, this.f2000t, Y1(!this.M), X1(!this.M), this, this.M, this.f2006z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void Q0(androidx.recyclerview.widget.RecyclerView recyclerView) {
        this.D.b();
        q1();
    }

    public final int Q1(androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (I() == 0) {
            return 0;
        }
        return androidx.recyclerview.widget.j.c(yVar, this.f2000t, Y1(!this.M), X1(!this.M), this, this.M);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void R0(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6, int i7) {
        k2(i5, i6, 8);
    }

    public final int R1(int i5) {
        if (i5 == 1) {
            return (this.f2002v != 1 && n2()) ? 1 : -1;
        }
        if (i5 == 2) {
            return (this.f2002v != 1 && n2()) ? -1 : 1;
        }
        if (i5 == 17) {
            return this.f2002v == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i5 == 33) {
            return this.f2002v == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i5 != 66) {
            return (i5 == 130 && this.f2002v == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.f2002v == 0 ? 1 : Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void S0(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6) {
        k2(i5, i6, 2);
    }

    public final androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem S1(int i5) {
        androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItem = new androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem();
        fullSpanItem.f2013c = new int[this.f1998r];
        for (int i6 = 0; i6 < this.f1998r; i6++) {
            fullSpanItem.f2013c[i6] = i5 - this.f1999s[i6].l(i5);
        }
        return fullSpanItem;
    }

    public final androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem T1(int i5) {
        androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItem = new androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem();
        fullSpanItem.f2013c = new int[this.f1998r];
        for (int i6 = 0; i6 < this.f1998r; i6++) {
            fullSpanItem.f2013c[i6] = this.f1999s[i6].p(i5) - i5;
        }
        return fullSpanItem;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void U0(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6, java.lang.Object obj) {
        k2(i5, i6, 4);
    }

    public final void U1() {
        this.f2000t = androidx.recyclerview.widget.h.b(this, this.f2002v);
        this.f2001u = androidx.recyclerview.widget.h.b(this, 1 - this.f2002v);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void V0(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        q2(vVar, yVar, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r16v0, types: [androidx.recyclerview.widget.RecyclerView$p, androidx.recyclerview.widget.StaggeredGridLayoutManager] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v7 */
    public final int V1(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.f fVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        int i5;
        int iF2;
        androidx.recyclerview.widget.StaggeredGridLayoutManager.c cVarJ2;
        int iE;
        int i6;
        int iE2;
        int iE3;
        boolean z4;
        ?? r9 = 0;
        this.A.set(0, this.f1998r, true);
        if (this.f2004x.f2161i) {
            i5 = fVar.f2157e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        } else {
            i5 = fVar.f2157e == 1 ? fVar.f2159g + fVar.f2154b : fVar.f2158f - fVar.f2154b;
        }
        int i7 = i5;
        E2(fVar.f2157e, i7);
        int i8 = this.f2006z ? this.f2000t.i() : this.f2000t.m();
        ?? r5 = false;
        while (fVar.a(yVar) && (this.f2004x.f2161i || !this.A.isEmpty())) {
            android.view.View viewB = fVar.b(vVar);
            androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams layoutParams = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) viewB.getLayoutParams();
            int iA = layoutParams.a();
            int iG = this.D.g(iA);
            ?? r6 = iG == -1 ? 1 : r9;
            if (r6 != 0) {
                cVarJ2 = layoutParams.f2008f ? this.f1999s[r9] : j2(fVar);
                this.D.n(iA, cVarJ2);
            } else {
                cVarJ2 = this.f1999s[iG];
            }
            androidx.recyclerview.widget.StaggeredGridLayoutManager.c cVar = cVarJ2;
            layoutParams.f2007e = cVar;
            if (fVar.f2157e == 1) {
                c(viewB);
            } else {
                d(viewB, r9);
            }
            p2(viewB, layoutParams, r9);
            if (fVar.f2157e == 1) {
                int iF3 = layoutParams.f2008f ? f2(i8) : cVar.l(i8);
                int iE4 = this.f2000t.e(viewB) + iF3;
                if (r6 != 0 && layoutParams.f2008f) {
                    androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItemS1 = S1(iF3);
                    fullSpanItemS1.f2012b = -1;
                    fullSpanItemS1.f2011a = iA;
                    this.D.a(fullSpanItemS1);
                }
                i6 = iE4;
                iE = iF3;
            } else {
                int iI2 = layoutParams.f2008f ? i2(i8) : cVar.p(i8);
                iE = iI2 - this.f2000t.e(viewB);
                if (r6 != 0 && layoutParams.f2008f) {
                    androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItemT1 = T1(iI2);
                    fullSpanItemT1.f2012b = 1;
                    fullSpanItemT1.f2011a = iA;
                    this.D.a(fullSpanItemT1);
                }
                i6 = iI2;
            }
            if (layoutParams.f2008f && fVar.f2156d == -1) {
                if (r6 != 0) {
                    this.L = true;
                } else {
                    if (!(fVar.f2157e == 1 ? I1() : J1())) {
                        androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItemF = this.D.f(iA);
                        if (fullSpanItemF != null) {
                            fullSpanItemF.f2014d = true;
                        }
                        this.L = true;
                    }
                }
            }
            K1(viewB, layoutParams, fVar);
            if (n2() && this.f2002v == 1) {
                int i9 = layoutParams.f2008f ? this.f2001u.i() : this.f2001u.i() - (((this.f1998r - 1) - cVar.f2037e) * this.f2003w);
                iE3 = i9;
                iE2 = i9 - this.f2001u.e(viewB);
            } else {
                int iM = layoutParams.f2008f ? this.f2001u.m() : (cVar.f2037e * this.f2003w) + this.f2001u.m();
                iE2 = iM;
                iE3 = this.f2001u.e(viewB) + iM;
            }
            if (this.f2002v == 1) {
                x0(viewB, iE2, iE, iE3, i6);
            } else {
                x0(viewB, iE, iE2, i6, iE3);
            }
            if (layoutParams.f2008f) {
                E2(this.f2004x.f2157e, i7);
            } else {
                K2(cVar, this.f2004x.f2157e, i7);
            }
            u2(vVar, this.f2004x);
            if (!this.f2004x.f2160h || !viewB.hasFocusable()) {
                z4 = false;
            } else if (layoutParams.f2008f) {
                this.A.clear();
                z4 = false;
            } else {
                z4 = false;
                this.A.set(cVar.f2037e, false);
            }
            r9 = z4;
            r5 = true;
        }
        ?? r7 = r9;
        if (r5 == false) {
            u2(vVar, this.f2004x);
        }
        if (this.f2004x.f2157e == -1) {
            iF2 = this.f2000t.m() - i2(this.f2000t.m());
        } else {
            iF2 = f2(this.f2000t.i()) - this.f2000t.i();
        }
        return iF2 > 0 ? java.lang.Math.min(fVar.f2154b, iF2) : r7 == true ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void W0(androidx.recyclerview.widget.RecyclerView.y yVar) {
        super.W0(yVar);
        this.B = -1;
        this.C = Integer.MIN_VALUE;
        this.H = null;
        this.K.c();
    }

    public final int W1(int i5) {
        int I = I();
        for (int i6 = 0; i6 < I; i6++) {
            int iF0 = f0(H(i6));
            if (iF0 >= 0 && iF0 < i5) {
                return iF0;
            }
        }
        return 0;
    }

    public android.view.View X1(boolean z4) {
        int iM = this.f2000t.m();
        int i5 = this.f2000t.i();
        android.view.View view = null;
        for (int I = I() - 1; I >= 0; I--) {
            android.view.View viewH = H(I);
            int iG = this.f2000t.g(viewH);
            int iD = this.f2000t.d(viewH);
            if (iD > iM && iG < i5) {
                if (iD <= i5 || !z4) {
                    return viewH;
                }
                if (view == null) {
                    view = viewH;
                }
            }
        }
        return view;
    }

    public android.view.View Y1(boolean z4) {
        int iM = this.f2000t.m();
        int i5 = this.f2000t.i();
        int I = I();
        android.view.View view = null;
        for (int i6 = 0; i6 < I; i6++) {
            android.view.View viewH = H(i6);
            int iG = this.f2000t.g(viewH);
            if (this.f2000t.d(viewH) > iM && iG < i5) {
                if (iG >= iM || !z4) {
                    return viewH;
                }
                if (view == null) {
                    view = viewH;
                }
            }
        }
        return view;
    }

    public int Z1() {
        android.view.View viewX1 = this.f2006z ? X1(true) : Y1(true);
        if (viewX1 == null) {
            return -1;
        }
        return f0(viewX1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void a1(android.os.Parcelable parcelable) {
        if (parcelable instanceof androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState) {
            androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState savedState = (androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState) parcelable;
            this.H = savedState;
            if (this.B != -1) {
                savedState.a();
                this.H.b();
            }
            q1();
        }
    }

    public final int a2(int i5) {
        for (int I = I() - 1; I >= 0; I--) {
            int iF0 = f0(H(I));
            if (iF0 >= 0 && iF0 < i5) {
                return iF0;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public android.os.Parcelable b1() {
        int iP;
        int iM;
        int[] iArr;
        if (this.H != null) {
            return new androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState(this.H);
        }
        androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState savedState = new androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState();
        savedState.f2022h = this.f2005y;
        savedState.f2023i = this.F;
        savedState.f2024o = this.G;
        androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup lazySpanLookup = this.D;
        if (lazySpanLookup == null || (iArr = lazySpanLookup.f2009a) == null) {
            savedState.f2019e = 0;
        } else {
            savedState.f2020f = iArr;
            savedState.f2019e = iArr.length;
            savedState.f2021g = lazySpanLookup.f2010b;
        }
        if (I() > 0) {
            savedState.f2015a = this.F ? e2() : d2();
            savedState.f2016b = Z1();
            int i5 = this.f1998r;
            savedState.f2017c = i5;
            savedState.f2018d = new int[i5];
            for (int i6 = 0; i6 < this.f1998r; i6++) {
                if (this.F) {
                    iP = this.f1999s[i6].l(Integer.MIN_VALUE);
                    if (iP != Integer.MIN_VALUE) {
                        iM = this.f2000t.i();
                        iP -= iM;
                    }
                } else {
                    iP = this.f1999s[i6].p(Integer.MIN_VALUE);
                    if (iP != Integer.MIN_VALUE) {
                        iM = this.f2000t.m();
                        iP -= iM;
                    }
                }
                savedState.f2018d[i6] = iP;
            }
        } else {
            savedState.f2015a = -1;
            savedState.f2016b = -1;
            savedState.f2017c = 0;
        }
        return savedState;
    }

    public final void b2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, boolean z4) {
        int i5;
        int iF2 = f2(Integer.MIN_VALUE);
        if (iF2 != Integer.MIN_VALUE && (i5 = this.f2000t.i() - iF2) > 0) {
            int i6 = i5 - (-z2(-i5, vVar, yVar));
            if (!z4 || i6 <= 0) {
                return;
            }
            this.f2000t.r(i6);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void c1(int i5) {
        if (i5 == 0) {
            M1();
        }
    }

    public final void c2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, boolean z4) {
        int iM;
        int iI2 = i2(Integer.MAX_VALUE);
        if (iI2 != Integer.MAX_VALUE && (iM = iI2 - this.f2000t.m()) > 0) {
            int iZ2 = iM - z2(iM, vVar, yVar);
            if (!z4 || iZ2 <= 0) {
                return;
            }
            this.f2000t.r(-iZ2);
        }
    }

    public int d2() {
        if (I() == 0) {
            return 0;
        }
        return f0(H(0));
    }

    public int e2() {
        int I = I();
        if (I == 0) {
            return 0;
        }
        return f0(H(I - 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void f(java.lang.String str) {
        if (this.H == null) {
            super.f(str);
        }
    }

    public final int f2(int i5) {
        int iL = this.f1999s[0].l(i5);
        for (int i6 = 1; i6 < this.f1998r; i6++) {
            int iL2 = this.f1999s[i6].l(i5);
            if (iL2 > iL) {
                iL = iL2;
            }
        }
        return iL;
    }

    public final int g2(int i5) {
        int iP = this.f1999s[0].p(i5);
        for (int i6 = 1; i6 < this.f1998r; i6++) {
            int iP2 = this.f1999s[i6].p(i5);
            if (iP2 > iP) {
                iP = iP2;
            }
        }
        return iP;
    }

    public final int h2(int i5) {
        int iL = this.f1999s[0].l(i5);
        for (int i6 = 1; i6 < this.f1998r; i6++) {
            int iL2 = this.f1999s[i6].l(i5);
            if (iL2 < iL) {
                iL = iL2;
            }
        }
        return iL;
    }

    public final int i2(int i5) {
        int iP = this.f1999s[0].p(i5);
        for (int i6 = 1; i6 < this.f1998r; i6++) {
            int iP2 = this.f1999s[i6].p(i5);
            if (iP2 < iP) {
                iP = iP2;
            }
        }
        return iP;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean j() {
        return this.f2002v == 0;
    }

    public final androidx.recyclerview.widget.StaggeredGridLayoutManager.c j2(androidx.recyclerview.widget.f fVar) {
        int i5;
        int i6;
        int i7 = -1;
        if (r2(fVar.f2157e)) {
            i5 = this.f1998r - 1;
            i6 = -1;
        } else {
            i5 = 0;
            i7 = this.f1998r;
            i6 = 1;
        }
        androidx.recyclerview.widget.StaggeredGridLayoutManager.c cVar = null;
        if (fVar.f2157e == 1) {
            int i8 = Integer.MAX_VALUE;
            int iM = this.f2000t.m();
            while (i5 != i7) {
                androidx.recyclerview.widget.StaggeredGridLayoutManager.c cVar2 = this.f1999s[i5];
                int iL = cVar2.l(iM);
                if (iL < i8) {
                    cVar = cVar2;
                    i8 = iL;
                }
                i5 += i6;
            }
            return cVar;
        }
        int i9 = Integer.MIN_VALUE;
        int i10 = this.f2000t.i();
        while (i5 != i7) {
            androidx.recyclerview.widget.StaggeredGridLayoutManager.c cVar3 = this.f1999s[i5];
            int iP = cVar3.p(i10);
            if (iP > i9) {
                cVar = cVar3;
                i9 = iP;
            }
            i5 += i6;
        }
        return cVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean k() {
        return this.f2002v == 1;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0025  */
    /* JADX WARN: Code duplicated, block: B:17:0x0028 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x002b  */
    /* JADX WARN: Code duplicated, block: B:20:0x0036  */
    /* JADX WARN: Code duplicated, block: B:21:0x003c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0043 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0044  */
    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:27:0x004d  */
    /* JADX WARN: Code duplicated, block: B:29:0x0053  */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    public final void k2(int i5, int i6, int i7) {
        int i8;
        int i9;
        int iE2;
        int iE3 = this.f2006z ? e2() : d2();
        if (i7 == 8) {
            if (i5 < i6) {
                i8 = i6 + 1;
            } else {
                i8 = i5 + 1;
                i9 = i6;
            }
            this.D.h(i9);
            if (i7 != 1) {
                this.D.j(i5, i6);
            } else if (i7 != 2) {
                this.D.k(i5, i6);
            } else if (i7 == 8) {
                this.D.k(i5, 1);
                this.D.j(i6, 1);
            }
            if (i8 <= iE3) {
                return;
            }
            if (this.f2006z) {
                iE2 = d2();
            } else {
                iE2 = e2();
            }
            if (i9 <= iE2) {
                q1();
            }
        }
        i8 = i5 + i6;
        i9 = i5;
        this.D.h(i9);
        if (i7 != 1) {
            this.D.j(i5, i6);
        } else if (i7 != 2) {
            this.D.k(i5, i6);
        } else if (i7 == 8) {
            this.D.k(i5, 1);
            this.D.j(i6, 1);
        }
        if (i8 <= iE3) {
            return;
        }
        if (this.f2006z) {
            iE2 = d2();
        } else {
            iE2 = e2();
        }
        if (i9 <= iE2) {
            q1();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean l(androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0088  */
    /* JADX WARN: Code duplicated, block: B:38:0x008a  */
    public android.view.View l2() {
        int i5;
        int i6;
        boolean z4;
        int I = I() - 1;
        java.util.BitSet bitSet = new java.util.BitSet(this.f1998r);
        bitSet.set(0, this.f1998r, true);
        byte b5 = (this.f2002v == 1 && n2()) ? (byte) 1 : (byte) -1;
        if (this.f2006z) {
            i5 = -1;
        } else {
            i5 = I + 1;
            I = 0;
        }
        int i7 = I < i5 ? 1 : -1;
        while (I != i5) {
            android.view.View viewH = H(I);
            androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams layoutParams = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) viewH.getLayoutParams();
            if (bitSet.get(layoutParams.f2007e.f2037e)) {
                if (N1(layoutParams.f2007e)) {
                    return viewH;
                }
                bitSet.clear(layoutParams.f2007e.f2037e);
            }
            if (!layoutParams.f2008f && (i6 = I + i7) != i5) {
                android.view.View viewH2 = H(i6);
                if (this.f2006z) {
                    int iD = this.f2000t.d(viewH);
                    int iD2 = this.f2000t.d(viewH2);
                    if (iD < iD2) {
                        return viewH;
                    }
                    if (iD == iD2) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                } else {
                    int iG = this.f2000t.g(viewH);
                    int iG2 = this.f2000t.g(viewH2);
                    if (iG > iG2) {
                        return viewH;
                    }
                    if (iG == iG2) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                }
                if (z4) {
                    if ((layoutParams.f2007e.f2037e - ((androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) viewH2.getLayoutParams()).f2007e.f2037e < 0) != (b5 < 0)) {
                        return viewH;
                    }
                } else {
                    continue;
                }
            }
            I += i7;
        }
        return null;
    }

    public void m2() {
        this.D.b();
        q1();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void n(int i5, int i6, androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.RecyclerView.p.c cVar) {
        int iL;
        int iP;
        if (this.f2002v != 0) {
            i5 = i6;
        }
        if (I() == 0 || i5 == 0) {
            return;
        }
        s2(i5, yVar);
        int[] iArr = this.N;
        if (iArr == null || iArr.length < this.f1998r) {
            this.N = new int[this.f1998r];
        }
        int i7 = 0;
        for (int i8 = 0; i8 < this.f1998r; i8++) {
            androidx.recyclerview.widget.f fVar = this.f2004x;
            if (fVar.f2156d == -1) {
                iL = fVar.f2158f;
                iP = this.f1999s[i8].p(iL);
            } else {
                iL = this.f1999s[i8].l(fVar.f2159g);
                iP = this.f2004x.f2159g;
            }
            int i9 = iL - iP;
            if (i9 >= 0) {
                this.N[i7] = i9;
                i7++;
            }
        }
        java.util.Arrays.sort(this.N, 0, i7);
        for (int i10 = 0; i10 < i7 && this.f2004x.a(yVar); i10++) {
            cVar.a(this.f2004x.f2155c, this.N[i10]);
            androidx.recyclerview.widget.f fVar2 = this.f2004x;
            fVar2.f2155c += fVar2.f2156d;
        }
    }

    public boolean n2() {
        return X() == 1;
    }

    public final void o2(android.view.View view, int i5, int i6, boolean z4) {
        i(view, this.J);
        androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams layoutParams = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) view.getLayoutParams();
        int i7 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        android.graphics.Rect rect = this.J;
        int iL2 = L2(i5, i7 + rect.left, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        int i8 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        android.graphics.Rect rect2 = this.J;
        int iL3 = L2(i6, i8 + rect2.top, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect2.bottom);
        if (z4 ? D1(view, iL2, iL3, layoutParams) : B1(view, iL2, iL3, layoutParams)) {
            view.measure(iL2, iL3);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int p(androidx.recyclerview.widget.RecyclerView.y yVar) {
        return O1(yVar);
    }

    public final void p2(android.view.View view, androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams layoutParams, boolean z4) {
        if (layoutParams.f2008f) {
            if (this.f2002v == 1) {
                o2(view, this.I, androidx.recyclerview.widget.RecyclerView.p.J(V(), W(), e0() + b0(), ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height, true), z4);
                return;
            } else {
                o2(view, androidx.recyclerview.widget.RecyclerView.p.J(m0(), n0(), c0() + d0(), ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width, true), this.I, z4);
                return;
            }
        }
        if (this.f2002v == 1) {
            o2(view, androidx.recyclerview.widget.RecyclerView.p.J(this.f2003w, n0(), 0, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width, false), androidx.recyclerview.widget.RecyclerView.p.J(V(), W(), e0() + b0(), ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height, true), z4);
        } else {
            o2(view, androidx.recyclerview.widget.RecyclerView.p.J(m0(), n0(), c0() + d0(), ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width, true), androidx.recyclerview.widget.RecyclerView.p.J(this.f2003w, W(), 0, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height, false), z4);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int q(androidx.recyclerview.widget.RecyclerView.y yVar) {
        return P1(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public boolean q0() {
        return this.E != 0;
    }

    /* JADX WARN: Code duplicated, block: B:89:0x015a  */
    public final void q2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, boolean z4) {
        boolean z5;
        androidx.recyclerview.widget.StaggeredGridLayoutManager.SavedState savedState;
        androidx.recyclerview.widget.StaggeredGridLayoutManager.b bVar = this.K;
        if (!(this.H == null && this.B == -1) && yVar.b() == 0) {
            h1(vVar);
            bVar.c();
            return;
        }
        boolean z6 = (bVar.f2030e && this.B == -1 && this.H == null) ? false : true;
        if (z6) {
            bVar.c();
            if (this.H != null) {
                H1(bVar);
            } else {
                y2();
                bVar.f2028c = this.f2006z;
            }
            H2(yVar, bVar);
            bVar.f2030e = true;
        }
        if (this.H == null && this.B == -1 && (bVar.f2028c != this.F || n2() != this.G)) {
            this.D.b();
            bVar.f2029d = true;
        }
        if (I() > 0 && ((savedState = this.H) == null || savedState.f2017c < 1)) {
            if (bVar.f2029d) {
                for (int i5 = 0; i5 < this.f1998r; i5++) {
                    this.f1999s[i5].e();
                    int i6 = bVar.f2027b;
                    if (i6 != Integer.MIN_VALUE) {
                        this.f1999s[i5].v(i6);
                    }
                }
            } else if (z6 || this.K.f2031f == null) {
                for (int i7 = 0; i7 < this.f1998r; i7++) {
                    this.f1999s[i7].b(this.f2006z, bVar.f2027b);
                }
                this.K.d(this.f1999s);
            } else {
                for (int i8 = 0; i8 < this.f1998r; i8++) {
                    androidx.recyclerview.widget.StaggeredGridLayoutManager.c cVar = this.f1999s[i8];
                    cVar.e();
                    cVar.v(this.K.f2031f[i8]);
                }
            }
        }
        v(vVar);
        this.f2004x.f2153a = false;
        this.L = false;
        J2(this.f2001u.n());
        I2(bVar.f2026a, yVar);
        if (bVar.f2028c) {
            A2(-1);
            V1(vVar, this.f2004x, yVar);
            A2(1);
            androidx.recyclerview.widget.f fVar = this.f2004x;
            fVar.f2155c = bVar.f2026a + fVar.f2156d;
            V1(vVar, fVar, yVar);
        } else {
            A2(1);
            V1(vVar, this.f2004x, yVar);
            A2(-1);
            androidx.recyclerview.widget.f fVar2 = this.f2004x;
            fVar2.f2155c = bVar.f2026a + fVar2.f2156d;
            V1(vVar, fVar2, yVar);
        }
        x2();
        if (I() > 0) {
            if (this.f2006z) {
                b2(vVar, yVar, true);
                c2(vVar, yVar, false);
            } else {
                c2(vVar, yVar, true);
                b2(vVar, yVar, false);
            }
        }
        if (z4 && !yVar.e()) {
            if (this.E != 0 && I() > 0 && (this.L || l2() != null)) {
                l1(this.O);
                z5 = M1();
            }
        }
        if (yVar.e()) {
            this.K.c();
        }
        this.F = bVar.f2028c;
        this.G = n2();
        if (z5) {
            this.K.c();
            q2(vVar, yVar, false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int r(androidx.recyclerview.widget.RecyclerView.y yVar) {
        return Q1(yVar);
    }

    public final boolean r2(int i5) {
        if (this.f2002v == 0) {
            return (i5 == -1) != this.f2006z;
        }
        return ((i5 == -1) == this.f2006z) == n2();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int s(androidx.recyclerview.widget.RecyclerView.y yVar) {
        return O1(yVar);
    }

    public void s2(int i5, androidx.recyclerview.widget.RecyclerView.y yVar) {
        int i6;
        int iD2;
        if (i5 > 0) {
            iD2 = e2();
            i6 = 1;
        } else {
            i6 = -1;
            iD2 = d2();
        }
        this.f2004x.f2153a = true;
        I2(iD2, yVar);
        A2(i6);
        androidx.recyclerview.widget.f fVar = this.f2004x;
        fVar.f2155c = iD2 + fVar.f2156d;
        fVar.f2154b = java.lang.Math.abs(i5);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int t(androidx.recyclerview.widget.RecyclerView.y yVar) {
        return P1(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int t1(int i5, androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        return z2(i5, vVar, yVar);
    }

    public final void t2(android.view.View view) {
        for (int i5 = this.f1998r - 1; i5 >= 0; i5--) {
            this.f1999s[i5].u(view);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int u(androidx.recyclerview.widget.RecyclerView.y yVar) {
        return Q1(yVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public int u1(int i5, androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        return z2(i5, vVar, yVar);
    }

    public final void u2(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.f fVar) {
        int iMin;
        if (!fVar.f2153a || fVar.f2161i) {
            return;
        }
        if (fVar.f2154b == 0) {
            if (fVar.f2157e == -1) {
                v2(vVar, fVar.f2159g);
                return;
            } else {
                w2(vVar, fVar.f2158f);
                return;
            }
        }
        if (fVar.f2157e == -1) {
            int i5 = fVar.f2158f;
            int iG2 = i5 - g2(i5);
            v2(vVar, iG2 < 0 ? fVar.f2159g : fVar.f2159g - java.lang.Math.min(iG2, fVar.f2154b));
        } else {
            int iH2 = h2(fVar.f2159g) - fVar.f2159g;
            if (iH2 < 0) {
                iMin = fVar.f2158f;
            } else {
                iMin = java.lang.Math.min(iH2, fVar.f2154b) + fVar.f2158f;
            }
            w2(vVar, iMin);
        }
    }

    public final void v2(androidx.recyclerview.widget.RecyclerView.v vVar, int i5) {
        for (int I = I() - 1; I >= 0; I--) {
            android.view.View viewH = H(I);
            if (this.f2000t.g(viewH) < i5 || this.f2000t.q(viewH) < i5) {
                return;
            }
            androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams layoutParams = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) viewH.getLayoutParams();
            if (layoutParams.f2008f) {
                for (int i6 = 0; i6 < this.f1998r; i6++) {
                    if (this.f1999s[i6].f2033a.size() == 1) {
                        return;
                    }
                }
                for (int i7 = 0; i7 < this.f1998r; i7++) {
                    this.f1999s[i7].s();
                }
            } else if (layoutParams.f2007e.f2033a.size() == 1) {
                return;
            } else {
                layoutParams.f2007e.s();
            }
            j1(viewH, vVar);
        }
    }

    public final void w2(androidx.recyclerview.widget.RecyclerView.v vVar, int i5) {
        while (I() > 0) {
            android.view.View viewH = H(0);
            if (this.f2000t.d(viewH) > i5 || this.f2000t.p(viewH) > i5) {
                return;
            }
            androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams layoutParams = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) viewH.getLayoutParams();
            if (layoutParams.f2008f) {
                for (int i6 = 0; i6 < this.f1998r; i6++) {
                    if (this.f1999s[i6].f2033a.size() == 1) {
                        return;
                    }
                }
                for (int i7 = 0; i7 < this.f1998r; i7++) {
                    this.f1999s[i7].t();
                }
            } else if (layoutParams.f2007e.f2033a.size() == 1) {
                return;
            } else {
                layoutParams.f2007e.t();
            }
            j1(viewH, vVar);
        }
    }

    public final void x2() {
        if (this.f2001u.k() == 1073741824) {
            return;
        }
        float fMax = 0.0f;
        int I = I();
        for (int i5 = 0; i5 < I; i5++) {
            android.view.View viewH = H(i5);
            float fE = this.f2001u.e(viewH);
            if (fE >= fMax) {
                if (((androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) viewH.getLayoutParams()).e()) {
                    fE = (fE * 1.0f) / this.f1998r;
                }
                fMax = java.lang.Math.max(fMax, fE);
            }
        }
        int i6 = this.f2003w;
        int iRound = java.lang.Math.round(fMax * this.f1998r);
        if (this.f2001u.k() == Integer.MIN_VALUE) {
            iRound = java.lang.Math.min(iRound, this.f2001u.n());
        }
        J2(iRound);
        if (this.f2003w == i6) {
            return;
        }
        for (int i7 = 0; i7 < I; i7++) {
            android.view.View viewH2 = H(i7);
            androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams layoutParams = (androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams) viewH2.getLayoutParams();
            if (!layoutParams.f2008f) {
                if (n2() && this.f2002v == 1) {
                    int i8 = this.f1998r;
                    int i9 = layoutParams.f2007e.f2037e;
                    viewH2.offsetLeftAndRight(((-((i8 - 1) - i9)) * this.f2003w) - ((-((i8 - 1) - i9)) * i6));
                } else {
                    int i10 = layoutParams.f2007e.f2037e;
                    int i11 = this.f2003w * i10;
                    int i12 = i10 * i6;
                    if (this.f2002v == 1) {
                        viewH2.offsetLeftAndRight(i11 - i12);
                    } else {
                        viewH2.offsetTopAndBottom(i11 - i12);
                    }
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void y1(android.graphics.Rect rect, int i5, int i6) {
        int iM;
        int iM2;
        int iC0 = c0() + d0();
        int iE0 = e0() + b0();
        if (this.f2002v == 1) {
            iM2 = androidx.recyclerview.widget.RecyclerView.p.m(i6, rect.height() + iE0, Z());
            iM = androidx.recyclerview.widget.RecyclerView.p.m(i5, (this.f2003w * this.f1998r) + iC0, a0());
        } else {
            iM = androidx.recyclerview.widget.RecyclerView.p.m(i5, rect.width() + iC0, a0());
            iM2 = androidx.recyclerview.widget.RecyclerView.p.m(i6, (this.f2003w * this.f1998r) + iE0, Z());
        }
        x1(iM, iM2);
    }

    public final void y2() {
        if (this.f2002v == 1 || !n2()) {
            this.f2006z = this.f2005y;
        } else {
            this.f2006z = !this.f2005y;
        }
    }

    public int z2(int i5, androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (I() == 0 || i5 == 0) {
            return 0;
        }
        s2(i5, yVar);
        int iV1 = V1(vVar, this.f2004x, yVar);
        if (this.f2004x.f2154b >= iV1) {
            i5 = i5 < 0 ? -iV1 : iV1;
        }
        this.f2000t.r(-i5);
        this.F = this.f2006z;
        androidx.recyclerview.widget.f fVar = this.f2004x;
        fVar.f2154b = 0;
        u2(vVar, fVar);
        return i5;
    }

    public static class LazySpanLookup {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int[] f2009a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> f2010b;

        public void a(androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItem) {
            if (this.f2010b == null) {
                this.f2010b = new java.util.ArrayList();
            }
            int size = this.f2010b.size();
            for (int i5 = 0; i5 < size; i5++) {
                androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItem2 = this.f2010b.get(i5);
                if (fullSpanItem2.f2011a == fullSpanItem.f2011a) {
                    this.f2010b.remove(i5);
                }
                if (fullSpanItem2.f2011a >= fullSpanItem.f2011a) {
                    this.f2010b.add(i5, fullSpanItem);
                    return;
                }
            }
            this.f2010b.add(fullSpanItem);
        }

        public void b() {
            int[] iArr = this.f2009a;
            if (iArr != null) {
                java.util.Arrays.fill(iArr, -1);
            }
            this.f2010b = null;
        }

        public void c(int i5) {
            int[] iArr = this.f2009a;
            if (iArr == null) {
                int[] iArr2 = new int[java.lang.Math.max(i5, 10) + 1];
                this.f2009a = iArr2;
                java.util.Arrays.fill(iArr2, -1);
            } else if (i5 >= iArr.length) {
                int[] iArr3 = new int[o(i5)];
                this.f2009a = iArr3;
                java.lang.System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                int[] iArr4 = this.f2009a;
                java.util.Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
            }
        }

        public int d(int i5) {
            java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> list = this.f2010b;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (this.f2010b.get(size).f2011a >= i5) {
                        this.f2010b.remove(size);
                    }
                }
            }
            return h(i5);
        }

        public androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem e(int i5, int i6, int i7, boolean z4) {
            java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> list = this.f2010b;
            if (list == null) {
                return null;
            }
            int size = list.size();
            for (int i8 = 0; i8 < size; i8++) {
                androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItem = this.f2010b.get(i8);
                int i9 = fullSpanItem.f2011a;
                if (i9 >= i6) {
                    return null;
                }
                if (i9 >= i5 && (i7 == 0 || fullSpanItem.f2012b == i7 || (z4 && fullSpanItem.f2014d))) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        public androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem f(int i5) {
            java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> list = this.f2010b;
            if (list == null) {
                return null;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItem = this.f2010b.get(size);
                if (fullSpanItem.f2011a == i5) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        public int g(int i5) {
            int[] iArr = this.f2009a;
            if (iArr == null || i5 >= iArr.length) {
                return -1;
            }
            return iArr[i5];
        }

        public int h(int i5) {
            int[] iArr = this.f2009a;
            if (iArr == null || i5 >= iArr.length) {
                return -1;
            }
            int i6 = i(i5);
            if (i6 == -1) {
                int[] iArr2 = this.f2009a;
                java.util.Arrays.fill(iArr2, i5, iArr2.length, -1);
                return this.f2009a.length;
            }
            int iMin = java.lang.Math.min(i6 + 1, this.f2009a.length);
            java.util.Arrays.fill(this.f2009a, i5, iMin, -1);
            return iMin;
        }

        public final int i(int i5) {
            if (this.f2010b == null) {
                return -1;
            }
            androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItemF = f(i5);
            if (fullSpanItemF != null) {
                this.f2010b.remove(fullSpanItemF);
            }
            int size = this.f2010b.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size) {
                    i6 = -1;
                    break;
                }
                if (this.f2010b.get(i6).f2011a >= i5) {
                    break;
                }
                i6++;
            }
            if (i6 == -1) {
                return -1;
            }
            androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItem = this.f2010b.get(i6);
            this.f2010b.remove(i6);
            return fullSpanItem.f2011a;
        }

        public void j(int i5, int i6) {
            int[] iArr = this.f2009a;
            if (iArr == null || i5 >= iArr.length) {
                return;
            }
            int i7 = i5 + i6;
            c(i7);
            int[] iArr2 = this.f2009a;
            java.lang.System.arraycopy(iArr2, i5, iArr2, i7, (iArr2.length - i5) - i6);
            java.util.Arrays.fill(this.f2009a, i5, i7, -1);
            l(i5, i6);
        }

        public void k(int i5, int i6) {
            int[] iArr = this.f2009a;
            if (iArr == null || i5 >= iArr.length) {
                return;
            }
            int i7 = i5 + i6;
            c(i7);
            int[] iArr2 = this.f2009a;
            java.lang.System.arraycopy(iArr2, i7, iArr2, i5, (iArr2.length - i5) - i6);
            int[] iArr3 = this.f2009a;
            java.util.Arrays.fill(iArr3, iArr3.length - i6, iArr3.length, -1);
            m(i5, i6);
        }

        public final void l(int i5, int i6) {
            java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> list = this.f2010b;
            if (list == null) {
                return;
            }
            for (int size = list.size() - 1; size >= 0; size--) {
                androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItem = this.f2010b.get(size);
                int i7 = fullSpanItem.f2011a;
                if (i7 >= i5) {
                    fullSpanItem.f2011a = i7 + i6;
                }
            }
        }

        public final void m(int i5, int i6) {
            java.util.List<androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> list = this.f2010b;
            if (list == null) {
                return;
            }
            int i7 = i5 + i6;
            for (int size = list.size() - 1; size >= 0; size--) {
                androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem fullSpanItem = this.f2010b.get(size);
                int i8 = fullSpanItem.f2011a;
                if (i8 >= i5) {
                    if (i8 < i7) {
                        this.f2010b.remove(size);
                    } else {
                        fullSpanItem.f2011a = i8 - i6;
                    }
                }
            }
        }

        public void n(int i5, androidx.recyclerview.widget.StaggeredGridLayoutManager.c cVar) {
            c(i5);
            this.f2009a[i5] = cVar.f2037e;
        }

        public int o(int i5) {
            int length = this.f2009a.length;
            while (length <= i5) {
                length *= 2;
            }
            return length;
        }

        @android.annotation.SuppressLint({"BanParcelableUsage"})
        public static class FullSpanItem implements android.os.Parcelable {
            public static final android.os.Parcelable.Creator<androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> CREATOR = new androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.a();

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f2011a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f2012b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int[] f2013c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f2014d;

            public class a implements android.os.Parcelable.Creator<androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem> {
                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem createFromParcel(android.os.Parcel parcel) {
                    return new androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem(parcel);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem[] newArray(int i5) {
                    return new androidx.recyclerview.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem[i5];
                }
            }

            public FullSpanItem(android.os.Parcel parcel) {
                this.f2011a = parcel.readInt();
                this.f2012b = parcel.readInt();
                this.f2014d = parcel.readInt() == 1;
                int i5 = parcel.readInt();
                if (i5 > 0) {
                    int[] iArr = new int[i5];
                    this.f2013c = iArr;
                    parcel.readIntArray(iArr);
                }
            }

            public int a(int i5) {
                int[] iArr = this.f2013c;
                if (iArr == null) {
                    return 0;
                }
                return iArr[i5];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public java.lang.String toString() {
                return "FullSpanItem{mPosition=" + this.f2011a + ", mGapDir=" + this.f2012b + ", mHasUnwantedGapAfter=" + this.f2014d + ", mGapPerSpan=" + java.util.Arrays.toString(this.f2013c) + '}';
            }

            @Override // android.os.Parcelable
            public void writeToParcel(android.os.Parcel parcel, int i5) {
                parcel.writeInt(this.f2011a);
                parcel.writeInt(this.f2012b);
                parcel.writeInt(this.f2014d ? 1 : 0);
                int[] iArr = this.f2013c;
                if (iArr == null || iArr.length <= 0) {
                    parcel.writeInt(0);
                } else {
                    parcel.writeInt(iArr.length);
                    parcel.writeIntArray(this.f2013c);
                }
            }

            public FullSpanItem() {
            }
        }
    }
}
