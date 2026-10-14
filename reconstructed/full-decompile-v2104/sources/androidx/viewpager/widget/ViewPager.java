package androidx.viewpager.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ViewPager extends android.view.ViewGroup {

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static final int[] f2523m0 = {android.R.attr.layout_gravity};

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static final java.util.Comparator<androidx.viewpager.widget.ViewPager.f> f2524n0 = new androidx.viewpager.widget.ViewPager.a();

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static final android.view.animation.Interpolator f2525o0 = new androidx.viewpager.widget.ViewPager.b();

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final androidx.viewpager.widget.ViewPager.l f2526p0 = new androidx.viewpager.widget.ViewPager.l();
    public boolean A;
    public boolean B;
    public int C;
    public boolean D;
    public boolean E;
    public int F;
    public int G;
    public int H;
    public float I;
    public float J;
    public float K;
    public float L;
    public int M;
    public android.view.VelocityTracker N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public boolean S;
    public android.widget.EdgeEffect T;
    public android.widget.EdgeEffect U;
    public boolean V;
    public boolean W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2527a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f2528a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.ArrayList<androidx.viewpager.widget.ViewPager.f> f2529b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f2530b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.viewpager.widget.ViewPager.f f2531c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public java.util.List<androidx.viewpager.widget.ViewPager.i> f2532c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final android.graphics.Rect f2533d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public androidx.viewpager.widget.ViewPager.i f2534d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public n0.a f2535e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public androidx.viewpager.widget.ViewPager.i f2536e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2537f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public java.util.List<androidx.viewpager.widget.ViewPager.h> f2538f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2539g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public androidx.viewpager.widget.ViewPager.j f2540g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public android.os.Parcelable f2541h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f2542h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public java.lang.ClassLoader f2543i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f2544i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public java.util.ArrayList<android.view.View> f2545j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final java.lang.Runnable f2546k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f2547l0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public android.widget.Scroller f2548o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f2549p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public androidx.viewpager.widget.ViewPager.k f2550q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2551r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public android.graphics.drawable.Drawable f2552s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f2553t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f2554u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public float f2555v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public float f2556w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f2557x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f2558y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f2559z;

    public static class SavedState extends androidx.customview.view.AbsSavedState {
        public static final android.os.Parcelable.Creator<androidx.viewpager.widget.ViewPager.SavedState> CREATOR = new androidx.viewpager.widget.ViewPager.SavedState.a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2566a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public android.os.Parcelable f2567b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public java.lang.ClassLoader f2568c;

        public static class a implements android.os.Parcelable.ClassLoaderCreator<androidx.viewpager.widget.ViewPager.SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public androidx.viewpager.widget.ViewPager.SavedState createFromParcel(android.os.Parcel parcel) {
                return new androidx.viewpager.widget.ViewPager.SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public androidx.viewpager.widget.ViewPager.SavedState createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                return new androidx.viewpager.widget.ViewPager.SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public androidx.viewpager.widget.ViewPager.SavedState[] newArray(int i5) {
                return new androidx.viewpager.widget.ViewPager.SavedState[i5];
            }
        }

        public SavedState(android.os.Parcelable parcelable) {
            super(parcelable);
        }

        public java.lang.String toString() {
            return "FragmentPager.SavedState{" + java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)) + " position=" + this.f2566a + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i5) {
            super.writeToParcel(parcel, i5);
            parcel.writeInt(this.f2566a);
            parcel.writeParcelable(this.f2567b, i5);
        }

        public SavedState(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.f2566a = parcel.readInt();
            this.f2567b = parcel.readParcelable(classLoader);
            this.f2568c = classLoader;
        }
    }

    public static class a implements java.util.Comparator<androidx.viewpager.widget.ViewPager.f> {
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(androidx.viewpager.widget.ViewPager.f fVar, androidx.viewpager.widget.ViewPager.f fVar2) {
            return fVar.f2573b - fVar2.f2573b;
        }
    }

    public static class b implements android.view.animation.Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f5) {
            float f6 = f5 - 1.0f;
            return (f6 * f6 * f6 * f6 * f6) + 1.0f;
        }
    }

    public class c implements java.lang.Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.viewpager.widget.ViewPager.this.setScrollState(0);
            androidx.viewpager.widget.ViewPager.this.D();
        }
    }

    public class d implements w.n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.graphics.Rect f2570a = new android.graphics.Rect();

        public d() {
        }

        @Override // w.n
        public w.a0 a(android.view.View view, w.a0 a0Var) {
            w.a0 a0VarI = w.q.I(view, a0Var);
            if (a0VarI.l()) {
                return a0VarI;
            }
            android.graphics.Rect rect = this.f2570a;
            rect.left = a0VarI.i();
            rect.top = a0VarI.k();
            rect.right = a0VarI.j();
            rect.bottom = a0VarI.h();
            int childCount = androidx.viewpager.widget.ViewPager.this.getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                w.a0 a0VarC = w.q.c(androidx.viewpager.widget.ViewPager.this.getChildAt(i5), a0VarI);
                rect.left = java.lang.Math.min(a0VarC.i(), rect.left);
                rect.top = java.lang.Math.min(a0VarC.k(), rect.top);
                rect.right = java.lang.Math.min(a0VarC.j(), rect.right);
                rect.bottom = java.lang.Math.min(a0VarC.h(), rect.bottom);
            }
            return a0VarI.m(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    @java.lang.annotation.Target({java.lang.annotation.ElementType.TYPE})
    @java.lang.annotation.Inherited
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.RUNTIME)
    public @interface e {
    }

    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.lang.Object f2572a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2573b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f2574c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f2575d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f2576e;
    }

    public class g extends w.a {
        public g() {
        }

        @Override // w.a
        public void f(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            n0.a aVar;
            super.f(view, accessibilityEvent);
            accessibilityEvent.setClassName(androidx.viewpager.widget.ViewPager.class.getName());
            accessibilityEvent.setScrollable(n());
            if (accessibilityEvent.getEventType() != 4096 || (aVar = androidx.viewpager.widget.ViewPager.this.f2535e) == null) {
                return;
            }
            accessibilityEvent.setItemCount(aVar.e());
            accessibilityEvent.setFromIndex(androidx.viewpager.widget.ViewPager.this.f2537f);
            accessibilityEvent.setToIndex(androidx.viewpager.widget.ViewPager.this.f2537f);
        }

        @Override // w.a
        public void g(android.view.View view, x.c cVar) {
            super.g(view, cVar);
            cVar.O(androidx.viewpager.widget.ViewPager.class.getName());
            cVar.d0(n());
            if (androidx.viewpager.widget.ViewPager.this.canScrollHorizontally(1)) {
                cVar.a(4096);
            }
            if (androidx.viewpager.widget.ViewPager.this.canScrollHorizontally(-1)) {
                cVar.a(8192);
            }
        }

        @Override // w.a
        public boolean j(android.view.View view, int i5, android.os.Bundle bundle) {
            if (super.j(view, i5, bundle)) {
                return true;
            }
            if (i5 == 4096) {
                if (!androidx.viewpager.widget.ViewPager.this.canScrollHorizontally(1)) {
                    return false;
                }
                androidx.viewpager.widget.ViewPager viewPager = androidx.viewpager.widget.ViewPager.this;
                viewPager.setCurrentItem(viewPager.f2537f + 1);
                return true;
            }
            if (i5 != 8192 || !androidx.viewpager.widget.ViewPager.this.canScrollHorizontally(-1)) {
                return false;
            }
            androidx.viewpager.widget.ViewPager viewPager2 = androidx.viewpager.widget.ViewPager.this;
            viewPager2.setCurrentItem(viewPager2.f2537f - 1);
            return true;
        }

        public final boolean n() {
            n0.a aVar = androidx.viewpager.widget.ViewPager.this.f2535e;
            return aVar != null && aVar.e() > 1;
        }
    }

    public interface h {
        void d(androidx.viewpager.widget.ViewPager viewPager, n0.a aVar, n0.a aVar2);
    }

    public interface i {
        void a(int i5, float f5, int i6);

        void b(int i5);

        void c(int i5);
    }

    public interface j {
        void a(android.view.View view, float f5);
    }

    public class k extends android.database.DataSetObserver {
        public k() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            androidx.viewpager.widget.ViewPager.this.g();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            androidx.viewpager.widget.ViewPager.this.g();
        }
    }

    public static class l implements java.util.Comparator<android.view.View> {
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(android.view.View view, android.view.View view2) {
            androidx.viewpager.widget.ViewPager.LayoutParams layoutParams = (androidx.viewpager.widget.ViewPager.LayoutParams) view.getLayoutParams();
            androidx.viewpager.widget.ViewPager.LayoutParams layoutParams2 = (androidx.viewpager.widget.ViewPager.LayoutParams) view2.getLayoutParams();
            boolean z4 = layoutParams.f2560a;
            if (z4 != layoutParams2.f2560a) {
                return z4 ? 1 : -1;
            }
            return layoutParams.f2564e - layoutParams2.f2564e;
        }
    }

    public ViewPager(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2529b = new java.util.ArrayList<>();
        this.f2531c = new androidx.viewpager.widget.ViewPager.f();
        this.f2533d = new android.graphics.Rect();
        this.f2539g = -1;
        this.f2541h = null;
        this.f2543i = null;
        this.f2555v = -3.4028235E38f;
        this.f2556w = Float.MAX_VALUE;
        this.C = 1;
        this.M = -1;
        this.V = true;
        this.W = false;
        this.f2546k0 = new androidx.viewpager.widget.ViewPager.c();
        this.f2547l0 = 0;
        u();
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z4) {
        if (this.A != z4) {
            this.A = z4;
        }
    }

    public static boolean v(android.view.View view) {
        return view.getClass().getAnnotation(androidx.viewpager.widget.ViewPager.e.class) != null;
    }

    public boolean A() {
        n0.a aVar = this.f2535e;
        if (aVar == null || this.f2537f >= aVar.e() - 1) {
            return false;
        }
        L(this.f2537f + 1, true);
        return true;
    }

    public final boolean B(int i5) {
        if (this.f2529b.size() == 0) {
            if (this.V) {
                return false;
            }
            this.f2528a0 = false;
            x(0, 0.0f, 0);
            if (this.f2528a0) {
                return false;
            }
            throw new java.lang.IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        androidx.viewpager.widget.ViewPager.f fVarS = s();
        int clientWidth = getClientWidth();
        int i6 = this.f2551r;
        int i7 = clientWidth + i6;
        float f5 = clientWidth;
        int i8 = fVarS.f2573b;
        float f6 = ((i5 / f5) - fVarS.f2576e) / (fVarS.f2575d + (i6 / f5));
        this.f2528a0 = false;
        x(i8, f6, (int) (i7 * f6));
        if (this.f2528a0) {
            return true;
        }
        throw new java.lang.IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    public final boolean C(float f5) {
        boolean z4;
        boolean z5;
        float f6 = this.I - f5;
        this.I = f5;
        float scrollX = getScrollX() + f6;
        float clientWidth = getClientWidth();
        float f7 = this.f2555v * clientWidth;
        float f8 = this.f2556w * clientWidth;
        boolean z6 = false;
        androidx.viewpager.widget.ViewPager.f fVar = this.f2529b.get(0);
        java.util.ArrayList<androidx.viewpager.widget.ViewPager.f> arrayList = this.f2529b;
        androidx.viewpager.widget.ViewPager.f fVar2 = arrayList.get(arrayList.size() - 1);
        if (fVar.f2573b != 0) {
            f7 = fVar.f2576e * clientWidth;
            z4 = false;
        } else {
            z4 = true;
        }
        if (fVar2.f2573b != this.f2535e.e() - 1) {
            f8 = fVar2.f2576e * clientWidth;
            z5 = false;
        } else {
            z5 = true;
        }
        if (scrollX < f7) {
            if (z4) {
                this.T.onPull(java.lang.Math.abs(f7 - scrollX) / clientWidth);
                z6 = true;
            }
            scrollX = f7;
        } else if (scrollX > f8) {
            if (z5) {
                this.U.onPull(java.lang.Math.abs(scrollX - f8) / clientWidth);
                z6 = true;
            }
            scrollX = f8;
        }
        int i5 = (int) scrollX;
        this.I += scrollX - i5;
        scrollTo(i5, getScrollY());
        B(i5);
        return z6;
    }

    public void D() {
        E(this.f2537f);
    }

    /* JADX WARN: Code duplicated, block: B:64:0x00f7 A[PHI: r7 r10 r15
  0x00f7: PHI (r7v6 int) = (r7v5 int), (r7v4 int), (r7v9 int) binds: [B:62:0x00ec, B:59:0x00d6, B:53:0x00c0] A[DONT_GENERATE, DONT_INLINE]
  0x00f7: PHI (r10v9 int) = (r10v1 int), (r10v8 int), (r10v12 int) binds: [B:62:0x00ec, B:59:0x00d6, B:53:0x00c0] A[DONT_GENERATE, DONT_INLINE]
  0x00f7: PHI (r15v7 float) = (r15v5 float), (r15v6 float), (r15v4 float) binds: [B:62:0x00ec, B:59:0x00d6, B:53:0x00c0] A[DONT_GENERATE, DONT_INLINE]] */
    public void E(int i5) {
        androidx.viewpager.widget.ViewPager.f fVarT;
        java.lang.String hexString;
        androidx.viewpager.widget.ViewPager.f fVarA;
        androidx.viewpager.widget.ViewPager.f fVarR;
        androidx.viewpager.widget.ViewPager.f fVar;
        int i6 = this.f2537f;
        if (i6 != i5) {
            fVarT = t(i6);
            this.f2537f = i5;
        } else {
            fVarT = null;
        }
        if (this.f2535e == null) {
            Q();
            return;
        }
        if (this.B) {
            Q();
            return;
        }
        if (getWindowToken() == null) {
            return;
        }
        this.f2535e.s(this);
        int i7 = this.C;
        int iMax = java.lang.Math.max(0, this.f2537f - i7);
        int iE = this.f2535e.e();
        int iMin = java.lang.Math.min(iE - 1, this.f2537f + i7);
        if (iE != this.f2527a) {
            try {
                hexString = getResources().getResourceName(getId());
            } catch (android.content.res.Resources.NotFoundException unused) {
                hexString = java.lang.Integer.toHexString(getId());
            }
            throw new java.lang.IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.f2527a + ", found: " + iE + " Pager id: " + hexString + " Pager class: " + getClass() + " Problematic adapter: " + this.f2535e.getClass());
        }
        int i8 = 0;
        while (true) {
            if (i8 < this.f2529b.size()) {
                fVarA = this.f2529b.get(i8);
                int i9 = fVarA.f2573b;
                int i10 = this.f2537f;
                if (i9 >= i10) {
                    if (i9 != i10) {
                        break;
                    } else {
                        break;
                    }
                }
                i8++;
            }
            fVarA = null;
            break;
        }
        if (fVarA == null && iE > 0) {
            fVarA = a(this.f2537f, i8);
        }
        if (fVarA != null) {
            int i11 = i8 - 1;
            androidx.viewpager.widget.ViewPager.f fVar2 = i11 >= 0 ? this.f2529b.get(i11) : null;
            int clientWidth = getClientWidth();
            float paddingLeft = clientWidth <= 0 ? 0.0f : (2.0f - fVarA.f2575d) + (getPaddingLeft() / clientWidth);
            float f5 = 0.0f;
            for (int i12 = this.f2537f - 1; i12 >= 0; i12--) {
                if (f5 < paddingLeft || i12 >= iMax) {
                    if (fVar2 == null || i12 != fVar2.f2573b) {
                        f5 += a(i12, i11 + 1).f2575d;
                        i8++;
                        if (i11 >= 0) {
                            fVar = this.f2529b.get(i11);
                        } else {
                            fVar = null;
                        }
                    } else {
                        f5 += fVar2.f2575d;
                        i11--;
                        if (i11 >= 0) {
                            fVar = this.f2529b.get(i11);
                        } else {
                            fVar = null;
                        }
                    }
                    fVar2 = fVar;
                } else {
                    if (fVar2 == null) {
                        break;
                    }
                    if (i12 == fVar2.f2573b && !fVar2.f2574c) {
                        this.f2529b.remove(i11);
                        this.f2535e.b(this, i12, fVar2.f2572a);
                        i11--;
                        i8--;
                        if (i11 >= 0) {
                            fVar = this.f2529b.get(i11);
                        } else {
                            fVar = null;
                        }
                        fVar2 = fVar;
                    }
                }
            }
            float f6 = fVarA.f2575d;
            int i13 = i8 + 1;
            if (f6 < 2.0f) {
                androidx.viewpager.widget.ViewPager.f fVar3 = i13 < this.f2529b.size() ? this.f2529b.get(i13) : null;
                float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                int i14 = this.f2537f;
                while (true) {
                    i14++;
                    if (i14 >= iE) {
                        break;
                    }
                    if (f6 >= paddingRight && i14 > iMin) {
                        if (fVar3 == null) {
                            break;
                        }
                        if (i14 == fVar3.f2573b && !fVar3.f2574c) {
                            this.f2529b.remove(i13);
                            this.f2535e.b(this, i14, fVar3.f2572a);
                            if (i13 < this.f2529b.size()) {
                                fVar3 = this.f2529b.get(i13);
                            }
                        }
                    } else if (fVar3 == null || i14 != fVar3.f2573b) {
                        androidx.viewpager.widget.ViewPager.f fVarA2 = a(i14, i13);
                        i13++;
                        f6 += fVarA2.f2575d;
                        fVar3 = i13 < this.f2529b.size() ? this.f2529b.get(i13) : null;
                    } else {
                        f6 += fVar3.f2575d;
                        i13++;
                        if (i13 < this.f2529b.size()) {
                            fVar3 = this.f2529b.get(i13);
                        }
                    }
                }
            }
            d(fVarA, i8, fVarT);
            this.f2535e.p(this, this.f2537f, fVarA.f2572a);
        }
        this.f2535e.d(this);
        int childCount = getChildCount();
        for (int i15 = 0; i15 < childCount; i15++) {
            android.view.View childAt = getChildAt(i15);
            androidx.viewpager.widget.ViewPager.LayoutParams layoutParams = (androidx.viewpager.widget.ViewPager.LayoutParams) childAt.getLayoutParams();
            layoutParams.f2565f = i15;
            if (!layoutParams.f2560a && layoutParams.f2562c == 0.0f && (fVarR = r(childAt)) != null) {
                layoutParams.f2562c = fVarR.f2575d;
                layoutParams.f2564e = fVarR.f2573b;
            }
        }
        Q();
        if (hasFocus()) {
            android.view.View viewFindFocus = findFocus();
            androidx.viewpager.widget.ViewPager.f fVarQ = viewFindFocus != null ? q(viewFindFocus) : null;
            if (fVarQ == null || fVarQ.f2573b != this.f2537f) {
                for (int i16 = 0; i16 < getChildCount(); i16++) {
                    android.view.View childAt2 = getChildAt(i16);
                    androidx.viewpager.widget.ViewPager.f fVarR2 = r(childAt2);
                    if (fVarR2 != null && fVarR2.f2573b == this.f2537f && childAt2.requestFocus(2)) {
                        return;
                    }
                }
            }
        }
    }

    public final void F(int i5, int i6, int i7, int i8) {
        if (i6 > 0 && !this.f2529b.isEmpty()) {
            if (!this.f2548o.isFinished()) {
                this.f2548o.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i6 - getPaddingLeft()) - getPaddingRight()) + i8)) * (((i5 - getPaddingLeft()) - getPaddingRight()) + i7)), getScrollY());
                return;
            }
        }
        androidx.viewpager.widget.ViewPager.f fVarT = t(this.f2537f);
        int iMin = (int) ((fVarT != null ? java.lang.Math.min(fVarT.f2576e, this.f2556w) : 0.0f) * ((i5 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            f(false);
            scrollTo(iMin, getScrollY());
        }
    }

    public final void G() {
        int i5 = 0;
        while (i5 < getChildCount()) {
            if (!((androidx.viewpager.widget.ViewPager.LayoutParams) getChildAt(i5).getLayoutParams()).f2560a) {
                removeViewAt(i5);
                i5--;
            }
            i5++;
        }
    }

    public void H(androidx.viewpager.widget.ViewPager.h hVar) {
        java.util.List<androidx.viewpager.widget.ViewPager.h> list = this.f2538f0;
        if (list != null) {
            list.remove(hVar);
        }
    }

    public final void I(boolean z4) {
        android.view.ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z4);
        }
    }

    public final boolean J() {
        this.M = -1;
        n();
        this.T.onRelease();
        this.U.onRelease();
        return this.T.isFinished() || this.U.isFinished();
    }

    public final void K(int i5, boolean z4, int i6, boolean z5) {
        androidx.viewpager.widget.ViewPager.f fVarT = t(i5);
        int clientWidth = fVarT != null ? (int) (getClientWidth() * java.lang.Math.max(this.f2555v, java.lang.Math.min(fVarT.f2576e, this.f2556w))) : 0;
        if (z4) {
            P(clientWidth, 0, i6);
            if (z5) {
                j(i5);
                return;
            }
            return;
        }
        if (z5) {
            j(i5);
        }
        f(false);
        scrollTo(clientWidth, 0);
        B(clientWidth);
    }

    public void L(int i5, boolean z4) {
        this.B = false;
        M(i5, z4, false);
    }

    public void M(int i5, boolean z4, boolean z5) {
        N(i5, z4, z5, 0);
    }

    public void N(int i5, boolean z4, boolean z5, int i6) {
        n0.a aVar = this.f2535e;
        if (aVar == null || aVar.e() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!z5 && this.f2537f == i5 && this.f2529b.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i5 < 0) {
            i5 = 0;
        } else if (i5 >= this.f2535e.e()) {
            i5 = this.f2535e.e() - 1;
        }
        int i7 = this.C;
        int i8 = this.f2537f;
        if (i5 > i8 + i7 || i5 < i8 - i7) {
            for (int i9 = 0; i9 < this.f2529b.size(); i9++) {
                this.f2529b.get(i9).f2574c = true;
            }
        }
        boolean z6 = this.f2537f != i5;
        if (!this.V) {
            E(i5);
            K(i5, z4, i6, z6);
        } else {
            this.f2537f = i5;
            if (z6) {
                j(i5);
            }
            requestLayout();
        }
    }

    public androidx.viewpager.widget.ViewPager.i O(androidx.viewpager.widget.ViewPager.i iVar) {
        androidx.viewpager.widget.ViewPager.i iVar2 = this.f2536e0;
        this.f2536e0 = iVar;
        return iVar2;
    }

    public void P(int i5, int i6, int i7) {
        int scrollX;
        int iAbs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        android.widget.Scroller scroller = this.f2548o;
        if ((scroller == null || scroller.isFinished()) ? false : true) {
            scrollX = this.f2549p ? this.f2548o.getCurrX() : this.f2548o.getStartX();
            this.f2548o.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int i8 = scrollX;
        int scrollY = getScrollY();
        int i9 = i5 - i8;
        int i10 = i6 - scrollY;
        if (i9 == 0 && i10 == 0) {
            f(false);
            D();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i11 = clientWidth / 2;
        float f5 = clientWidth;
        float f6 = i11;
        float fL = f6 + (l(java.lang.Math.min(1.0f, (java.lang.Math.abs(i9) * 1.0f) / f5)) * f6);
        int iAbs2 = java.lang.Math.abs(i7);
        if (iAbs2 > 0) {
            iAbs = java.lang.Math.round(java.lang.Math.abs(fL / iAbs2) * 1000.0f) * 4;
        } else {
            iAbs = (int) (((java.lang.Math.abs(i9) / ((f5 * this.f2535e.h(this.f2537f)) + this.f2551r)) + 1.0f) * 100.0f);
        }
        int iMin = java.lang.Math.min(iAbs, 600);
        this.f2549p = false;
        this.f2548o.startScroll(i8, scrollY, i9, i10, iMin);
        w.q.K(this);
    }

    public final void Q() {
        if (this.f2544i0 != 0) {
            java.util.ArrayList<android.view.View> arrayList = this.f2545j0;
            if (arrayList == null) {
                this.f2545j0 = new java.util.ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                this.f2545j0.add(getChildAt(i5));
            }
            java.util.Collections.sort(this.f2545j0, f2526p0);
        }
    }

    public androidx.viewpager.widget.ViewPager.f a(int i5, int i6) {
        androidx.viewpager.widget.ViewPager.f fVar = new androidx.viewpager.widget.ViewPager.f();
        fVar.f2573b = i5;
        fVar.f2572a = this.f2535e.j(this, i5);
        fVar.f2575d = this.f2535e.h(i5);
        if (i6 < 0 || i6 >= this.f2529b.size()) {
            this.f2529b.add(fVar);
        } else {
            this.f2529b.add(i6, fVar);
        }
        return fVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(java.util.ArrayList<android.view.View> arrayList, int i5, int i6) {
        androidx.viewpager.widget.ViewPager.f fVarR;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i7 = 0; i7 < getChildCount(); i7++) {
                android.view.View childAt = getChildAt(i7);
                if (childAt.getVisibility() == 0 && (fVarR = r(childAt)) != null && fVarR.f2573b == this.f2537f) {
                    childAt.addFocusables(arrayList, i5, i6);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i6 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(java.util.ArrayList<android.view.View> arrayList) {
        androidx.viewpager.widget.ViewPager.f fVarR;
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            android.view.View childAt = getChildAt(i5);
            if (childAt.getVisibility() == 0 && (fVarR = r(childAt)) != null && fVarR.f2573b == this.f2537f) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(android.view.View view, int i5, android.view.ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        androidx.viewpager.widget.ViewPager.LayoutParams layoutParams2 = (androidx.viewpager.widget.ViewPager.LayoutParams) layoutParams;
        boolean zV = layoutParams2.f2560a | v(view);
        layoutParams2.f2560a = zV;
        if (!this.f2559z) {
            super.addView(view, i5, layoutParams);
        } else {
            if (zV) {
                throw new java.lang.IllegalStateException("Cannot add pager decor view during layout");
            }
            layoutParams2.f2563d = true;
            addViewInLayout(view, i5, layoutParams);
        }
    }

    public void b(androidx.viewpager.widget.ViewPager.h hVar) {
        if (this.f2538f0 == null) {
            this.f2538f0 = new java.util.ArrayList();
        }
        this.f2538f0.add(hVar);
    }

    public boolean c(int i5) {
        boolean z4;
        boolean zRequestFocus;
        android.view.View viewFindFocus = findFocus();
        boolean z5 = false;
        if (viewFindFocus == this) {
            viewFindFocus = null;
        } else if (viewFindFocus != null) {
            android.view.ViewParent parent = viewFindFocus.getParent();
            while (true) {
                if (!(parent instanceof android.view.ViewGroup)) {
                    z4 = false;
                    break;
                }
                if (parent == this) {
                    z4 = true;
                    break;
                }
                parent = parent.getParent();
            }
            if (!z4) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append(viewFindFocus.getClass().getSimpleName());
                for (android.view.ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof android.view.ViewGroup; parent2 = parent2.getParent()) {
                    sb.append(" => ");
                    sb.append(parent2.getClass().getSimpleName());
                }
                android.util.Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb.toString());
                viewFindFocus = null;
            }
        }
        android.view.View viewFindNextFocus = android.view.FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i5);
        if (viewFindNextFocus != null && viewFindNextFocus != viewFindFocus) {
            if (i5 == 17) {
                zRequestFocus = (viewFindFocus == null || p(this.f2533d, viewFindNextFocus).left < p(this.f2533d, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : z();
            } else if (i5 == 66) {
                zRequestFocus = (viewFindFocus == null || p(this.f2533d, viewFindNextFocus).left > p(this.f2533d, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : A();
            }
            z5 = zRequestFocus;
        } else if (i5 == 17 || i5 == 1) {
            z5 = z();
        } else if (i5 == 66 || i5 == 2) {
            z5 = A();
        }
        if (z5) {
            playSoundEffect(android.view.SoundEffectConstants.getContantForFocusDirection(i5));
        }
        return z5;
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i5) {
        if (this.f2535e == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i5 < 0) {
            return scrollX > ((int) (((float) clientWidth) * this.f2555v));
        }
        return i5 > 0 && scrollX < ((int) (((float) clientWidth) * this.f2556w));
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof androidx.viewpager.widget.ViewPager.LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f2549p = true;
        if (this.f2548o.isFinished() || !this.f2548o.computeScrollOffset()) {
            f(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f2548o.getCurrX();
        int currY = this.f2548o.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!B(currX)) {
                this.f2548o.abortAnimation();
                scrollTo(0, currY);
            }
        }
        w.q.K(this);
    }

    public final void d(androidx.viewpager.widget.ViewPager.f fVar, int i5, androidx.viewpager.widget.ViewPager.f fVar2) {
        int i6;
        int i7;
        androidx.viewpager.widget.ViewPager.f fVar3;
        androidx.viewpager.widget.ViewPager.f fVar4;
        int iE = this.f2535e.e();
        int clientWidth = getClientWidth();
        float f5 = clientWidth > 0 ? this.f2551r / clientWidth : 0.0f;
        if (fVar2 != null) {
            int i8 = fVar2.f2573b;
            int i9 = fVar.f2573b;
            if (i8 < i9) {
                float fH = fVar2.f2576e + fVar2.f2575d + f5;
                int i10 = i8 + 1;
                int i11 = 0;
                while (i10 <= fVar.f2573b && i11 < this.f2529b.size()) {
                    androidx.viewpager.widget.ViewPager.f fVar5 = this.f2529b.get(i11);
                    while (true) {
                        fVar4 = fVar5;
                        if (i10 <= fVar4.f2573b || i11 >= this.f2529b.size() - 1) {
                            break;
                        }
                        i11++;
                        fVar5 = this.f2529b.get(i11);
                    }
                    while (i10 < fVar4.f2573b) {
                        fH += this.f2535e.h(i10) + f5;
                        i10++;
                    }
                    fVar4.f2576e = fH;
                    fH += fVar4.f2575d + f5;
                    i10++;
                }
            } else if (i8 > i9) {
                int size = this.f2529b.size() - 1;
                float fH2 = fVar2.f2576e;
                while (true) {
                    i8--;
                    if (i8 < fVar.f2573b || size < 0) {
                        break;
                    }
                    androidx.viewpager.widget.ViewPager.f fVar6 = this.f2529b.get(size);
                    while (true) {
                        fVar3 = fVar6;
                        if (i8 >= fVar3.f2573b || size <= 0) {
                            break;
                        }
                        size--;
                        fVar6 = this.f2529b.get(size);
                    }
                    while (i8 > fVar3.f2573b) {
                        fH2 -= this.f2535e.h(i8) + f5;
                        i8--;
                    }
                    fH2 -= fVar3.f2575d + f5;
                    fVar3.f2576e = fH2;
                }
            }
        }
        int size2 = this.f2529b.size();
        float fH3 = fVar.f2576e;
        int i12 = fVar.f2573b;
        int i13 = i12 - 1;
        this.f2555v = i12 == 0 ? fH3 : -3.4028235E38f;
        int i14 = iE - 1;
        this.f2556w = i12 == i14 ? (fVar.f2575d + fH3) - 1.0f : Float.MAX_VALUE;
        int i15 = i5 - 1;
        while (i15 >= 0) {
            androidx.viewpager.widget.ViewPager.f fVar7 = this.f2529b.get(i15);
            while (true) {
                i7 = fVar7.f2573b;
                if (i13 <= i7) {
                    break;
                }
                fH3 -= this.f2535e.h(i13) + f5;
                i13--;
            }
            fH3 -= fVar7.f2575d + f5;
            fVar7.f2576e = fH3;
            if (i7 == 0) {
                this.f2555v = fH3;
            }
            i15--;
            i13--;
        }
        float fH4 = fVar.f2576e + fVar.f2575d + f5;
        int i16 = fVar.f2573b + 1;
        int i17 = i5 + 1;
        while (i17 < size2) {
            androidx.viewpager.widget.ViewPager.f fVar8 = this.f2529b.get(i17);
            while (true) {
                i6 = fVar8.f2573b;
                if (i16 >= i6) {
                    break;
                }
                fH4 += this.f2535e.h(i16) + f5;
                i16++;
            }
            if (i6 == i14) {
                this.f2556w = (fVar8.f2575d + fH4) - 1.0f;
            }
            fVar8.f2576e = fH4;
            fH4 += fVar8.f2575d + f5;
            i17++;
            i16++;
        }
        this.W = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || o(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        androidx.viewpager.widget.ViewPager.f fVarR;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            if (childAt.getVisibility() == 0 && (fVarR = r(childAt)) != null && fVarR.f2573b == this.f2537f && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(android.graphics.Canvas canvas) {
        n0.a aVar;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (aVar = this.f2535e) != null && aVar.e() > 1)) {
            if (!this.T.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.f2555v * width);
                this.T.setSize(height, width);
                zDraw = false | this.T.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.U.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f2556w + 1.0f)) * width2);
                this.U.setSize(height2, width2);
                zDraw |= this.U.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.T.finish();
            this.U.finish();
        }
        if (zDraw) {
            w.q.K(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        android.graphics.drawable.Drawable drawable = this.f2552s;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public boolean e(android.view.View view, boolean z4, int i5, int i6, int i7) {
        int i8;
        if (view instanceof android.view.ViewGroup) {
            android.view.ViewGroup viewGroup = (android.view.ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                android.view.View childAt = viewGroup.getChildAt(childCount);
                int i9 = i6 + scrollX;
                if (i9 >= childAt.getLeft() && i9 < childAt.getRight() && (i8 = i7 + scrollY) >= childAt.getTop() && i8 < childAt.getBottom() && e(childAt, true, i5, i9 - childAt.getLeft(), i8 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z4 && view.canScrollHorizontally(-i5);
    }

    public final void f(boolean z4) {
        boolean z5 = this.f2547l0 == 2;
        if (z5) {
            setScrollingCacheEnabled(false);
            if (!this.f2548o.isFinished()) {
                this.f2548o.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f2548o.getCurrX();
                int currY = this.f2548o.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        B(currX);
                    }
                }
            }
        }
        this.B = false;
        for (int i5 = 0; i5 < this.f2529b.size(); i5++) {
            androidx.viewpager.widget.ViewPager.f fVar = this.f2529b.get(i5);
            if (fVar.f2574c) {
                fVar.f2574c = false;
                z5 = true;
            }
        }
        if (z5) {
            if (z4) {
                w.q.L(this, this.f2546k0);
            } else {
                this.f2546k0.run();
            }
        }
    }

    public void g() {
        int iE = this.f2535e.e();
        this.f2527a = iE;
        boolean z4 = this.f2529b.size() < (this.C * 2) + 1 && this.f2529b.size() < iE;
        int iMax = this.f2537f;
        int i5 = 0;
        boolean z5 = false;
        while (i5 < this.f2529b.size()) {
            androidx.viewpager.widget.ViewPager.f fVar = this.f2529b.get(i5);
            int iF = this.f2535e.f(fVar.f2572a);
            if (iF != -1) {
                if (iF == -2) {
                    this.f2529b.remove(i5);
                    i5--;
                    if (!z5) {
                        this.f2535e.s(this);
                        z5 = true;
                    }
                    this.f2535e.b(this, fVar.f2573b, fVar.f2572a);
                    int i6 = this.f2537f;
                    if (i6 == fVar.f2573b) {
                        iMax = java.lang.Math.max(0, java.lang.Math.min(i6, iE - 1));
                    }
                } else {
                    int i7 = fVar.f2573b;
                    if (i7 != iF) {
                        if (i7 == this.f2537f) {
                            iMax = iF;
                        }
                        fVar.f2573b = iF;
                    }
                }
                z4 = true;
            }
            i5++;
        }
        if (z5) {
            this.f2535e.d(this);
        }
        java.util.Collections.sort(this.f2529b, f2524n0);
        if (z4) {
            int childCount = getChildCount();
            for (int i8 = 0; i8 < childCount; i8++) {
                androidx.viewpager.widget.ViewPager.LayoutParams layoutParams = (androidx.viewpager.widget.ViewPager.LayoutParams) getChildAt(i8).getLayoutParams();
                if (!layoutParams.f2560a) {
                    layoutParams.f2562c = 0.0f;
                }
            }
            M(iMax, false, true);
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new androidx.viewpager.widget.ViewPager.LayoutParams();
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public n0.a getAdapter() {
        return this.f2535e;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i5, int i6) {
        if (this.f2544i0 == 2) {
            i6 = (i5 - 1) - i6;
        }
        return ((androidx.viewpager.widget.ViewPager.LayoutParams) this.f2545j0.get(i6).getLayoutParams()).f2565f;
    }

    public int getCurrentItem() {
        return this.f2537f;
    }

    public int getOffscreenPageLimit() {
        return this.C;
    }

    public int getPageMargin() {
        return this.f2551r;
    }

    public final int h(int i5, float f5, int i6, int i7) {
        if (java.lang.Math.abs(i7) <= this.Q || java.lang.Math.abs(i6) <= this.O) {
            i5 += (int) (f5 + (i5 >= this.f2537f ? 0.4f : 0.6f));
        } else if (i6 <= 0) {
            i5++;
        }
        if (this.f2529b.size() <= 0) {
            return i5;
        }
        androidx.viewpager.widget.ViewPager.f fVar = this.f2529b.get(0);
        java.util.ArrayList<androidx.viewpager.widget.ViewPager.f> arrayList = this.f2529b;
        return java.lang.Math.max(fVar.f2573b, java.lang.Math.min(i5, arrayList.get(arrayList.size() - 1).f2573b));
    }

    public final void i(int i5, float f5, int i6) {
        androidx.viewpager.widget.ViewPager.i iVar = this.f2534d0;
        if (iVar != null) {
            iVar.a(i5, f5, i6);
        }
        java.util.List<androidx.viewpager.widget.ViewPager.i> list = this.f2532c0;
        if (list != null) {
            int size = list.size();
            for (int i7 = 0; i7 < size; i7++) {
                androidx.viewpager.widget.ViewPager.i iVar2 = this.f2532c0.get(i7);
                if (iVar2 != null) {
                    iVar2.a(i5, f5, i6);
                }
            }
        }
        androidx.viewpager.widget.ViewPager.i iVar3 = this.f2536e0;
        if (iVar3 != null) {
            iVar3.a(i5, f5, i6);
        }
    }

    public final void j(int i5) {
        androidx.viewpager.widget.ViewPager.i iVar = this.f2534d0;
        if (iVar != null) {
            iVar.c(i5);
        }
        java.util.List<androidx.viewpager.widget.ViewPager.i> list = this.f2532c0;
        if (list != null) {
            int size = list.size();
            for (int i6 = 0; i6 < size; i6++) {
                androidx.viewpager.widget.ViewPager.i iVar2 = this.f2532c0.get(i6);
                if (iVar2 != null) {
                    iVar2.c(i5);
                }
            }
        }
        androidx.viewpager.widget.ViewPager.i iVar3 = this.f2536e0;
        if (iVar3 != null) {
            iVar3.c(i5);
        }
    }

    public final void k(int i5) {
        androidx.viewpager.widget.ViewPager.i iVar = this.f2534d0;
        if (iVar != null) {
            iVar.b(i5);
        }
        java.util.List<androidx.viewpager.widget.ViewPager.i> list = this.f2532c0;
        if (list != null) {
            int size = list.size();
            for (int i6 = 0; i6 < size; i6++) {
                androidx.viewpager.widget.ViewPager.i iVar2 = this.f2532c0.get(i6);
                if (iVar2 != null) {
                    iVar2.b(i5);
                }
            }
        }
        androidx.viewpager.widget.ViewPager.i iVar3 = this.f2536e0;
        if (iVar3 != null) {
            iVar3.b(i5);
        }
    }

    public float l(float f5) {
        return (float) java.lang.Math.sin((f5 - 0.5f) * 0.47123894f);
    }

    public final void m(boolean z4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            getChildAt(i5).setLayerType(z4 ? this.f2542h0 : 0, null);
        }
    }

    public final void n() {
        this.D = false;
        this.E = false;
        android.view.VelocityTracker velocityTracker = this.N;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.N = null;
        }
    }

    public boolean o(android.view.KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                return keyEvent.hasModifiers(2) ? z() : c(17);
            }
            if (keyCode == 22) {
                return keyEvent.hasModifiers(2) ? A() : c(66);
            }
            if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return c(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return c(1);
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.V = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f2546k0);
        android.widget.Scroller scroller = this.f2548o;
        if (scroller != null && !scroller.isFinished()) {
            this.f2548o.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(android.graphics.Canvas canvas) {
        int i5;
        float f5;
        super.onDraw(canvas);
        if (this.f2551r <= 0 || this.f2552s == null || this.f2529b.size() <= 0 || this.f2535e == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f6 = width;
        float f7 = this.f2551r / f6;
        int i6 = 0;
        androidx.viewpager.widget.ViewPager.f fVar = this.f2529b.get(0);
        float f8 = fVar.f2576e;
        int size = this.f2529b.size();
        int i7 = fVar.f2573b;
        int i8 = this.f2529b.get(size - 1).f2573b;
        while (i7 < i8) {
            while (true) {
                i5 = fVar.f2573b;
                if (i7 <= i5 || i6 >= size) {
                    break;
                }
                i6++;
                fVar = this.f2529b.get(i6);
            }
            if (i7 == i5) {
                float f9 = fVar.f2576e;
                float f10 = fVar.f2575d;
                f5 = (f9 + f10) * f6;
                f8 = f9 + f10 + f7;
            } else {
                float fH = this.f2535e.h(i7);
                f5 = (f8 + fH) * f6;
                f8 += fH + f7;
            }
            if (this.f2551r + f5 > scrollX) {
                this.f2552s.setBounds(java.lang.Math.round(f5), this.f2553t, java.lang.Math.round(this.f2551r + f5), this.f2554u);
                this.f2552s.draw(canvas);
            }
            if (f5 > scrollX + width) {
                return;
            }
            i7++;
            f7 = f7;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(android.view.MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            J();
            return false;
        }
        if (action != 0) {
            if (this.D) {
                return true;
            }
            if (this.E) {
                return false;
            }
        }
        if (action == 0) {
            float x4 = motionEvent.getX();
            this.K = x4;
            this.I = x4;
            float y4 = motionEvent.getY();
            this.L = y4;
            this.J = y4;
            this.M = motionEvent.getPointerId(0);
            this.E = false;
            this.f2549p = true;
            this.f2548o.computeScrollOffset();
            if (this.f2547l0 != 2 || java.lang.Math.abs(this.f2548o.getFinalX() - this.f2548o.getCurrX()) <= this.R) {
                f(false);
                this.D = false;
            } else {
                this.f2548o.abortAnimation();
                this.B = false;
                D();
                this.D = true;
                I(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i5 = this.M;
            if (i5 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i5);
                float x5 = motionEvent.getX(iFindPointerIndex);
                float f5 = x5 - this.I;
                float fAbs = java.lang.Math.abs(f5);
                float y5 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = java.lang.Math.abs(y5 - this.L);
                if (f5 != 0.0f && !w(this.I, f5) && e(this, false, (int) f5, (int) x5, (int) y5)) {
                    this.I = x5;
                    this.J = y5;
                    this.E = true;
                    return false;
                }
                int i6 = this.H;
                if (fAbs > i6 && fAbs * 0.5f > fAbs2) {
                    this.D = true;
                    I(true);
                    setScrollState(1);
                    float f6 = this.K;
                    float f7 = this.H;
                    this.I = f5 > 0.0f ? f6 + f7 : f6 - f7;
                    this.J = y5;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > i6) {
                    this.E = true;
                }
                if (this.D && C(x5)) {
                    w.q.K(this);
                }
            }
        } else if (action == 6) {
            y(motionEvent);
        }
        if (this.N == null) {
            this.N = android.view.VelocityTracker.obtain();
        }
        this.N.addMovement(motionEvent);
        return this.D;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0071  */
    /* JADX WARN: Code duplicated, block: B:24:0x0075  */
    /* JADX WARN: Code duplicated, block: B:26:0x0079  */
    /* JADX WARN: Code duplicated, block: B:27:0x007b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0088  */
    /* JADX WARN: Code duplicated, block: B:29:0x008e  */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        boolean z5;
        androidx.viewpager.widget.ViewPager.f fVarR;
        int iMax;
        int measuredWidth;
        int iMax2;
        int measuredHeight;
        int childCount = getChildCount();
        int i9 = i7 - i5;
        int i10 = i8 - i6;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            android.view.View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                androidx.viewpager.widget.ViewPager.LayoutParams layoutParams = (androidx.viewpager.widget.ViewPager.LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f2560a) {
                    int i13 = layoutParams.f2561b;
                    int i14 = i13 & 7;
                    int i15 = i13 & 112;
                    if (i14 != 1) {
                        if (i14 == 3) {
                            measuredWidth = childAt.getMeasuredWidth() + paddingLeft;
                        } else if (i14 != 5) {
                            measuredWidth = paddingLeft;
                        } else {
                            iMax = (i9 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        if (i15 != 16) {
                            if (i15 != 48) {
                                measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                            } else if (i15 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                iMax2 = (i10 - paddingBottom) - childAt.getMeasuredHeight();
                                paddingBottom += childAt.getMeasuredHeight();
                            }
                            int i16 = paddingLeft + scrollX;
                            childAt.layout(i16, paddingTop, childAt.getMeasuredWidth() + i16, paddingTop + childAt.getMeasuredHeight());
                            i11++;
                            paddingTop = measuredHeight;
                            paddingLeft = measuredWidth;
                        } else {
                            iMax2 = java.lang.Math.max((i10 - childAt.getMeasuredHeight()) / 2, paddingTop);
                        }
                        int i17 = iMax2;
                        measuredHeight = paddingTop;
                        paddingTop = i17;
                        int i18 = paddingLeft + scrollX;
                        childAt.layout(i18, paddingTop, childAt.getMeasuredWidth() + i18, paddingTop + childAt.getMeasuredHeight());
                        i11++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax = java.lang.Math.max((i9 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i19 = iMax;
                    measuredWidth = paddingLeft;
                    paddingLeft = i19;
                    if (i15 != 16) {
                        if (i15 != 48) {
                            measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                        } else if (i15 != 80) {
                            measuredHeight = paddingTop;
                        } else {
                            iMax2 = (i10 - paddingBottom) - childAt.getMeasuredHeight();
                            paddingBottom += childAt.getMeasuredHeight();
                        }
                        int i110 = paddingLeft + scrollX;
                        childAt.layout(i110, paddingTop, childAt.getMeasuredWidth() + i110, paddingTop + childAt.getMeasuredHeight());
                        i11++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax2 = java.lang.Math.max((i10 - childAt.getMeasuredHeight()) / 2, paddingTop);
                    }
                    int i111 = iMax2;
                    measuredHeight = paddingTop;
                    paddingTop = i111;
                    int i112 = paddingLeft + scrollX;
                    childAt.layout(i112, paddingTop, childAt.getMeasuredWidth() + i112, paddingTop + childAt.getMeasuredHeight());
                    i11++;
                    paddingTop = measuredHeight;
                    paddingLeft = measuredWidth;
                }
            }
        }
        int i20 = (i9 - paddingLeft) - paddingRight;
        for (int i21 = 0; i21 < childCount; i21++) {
            android.view.View childAt2 = getChildAt(i21);
            if (childAt2.getVisibility() != 8) {
                androidx.viewpager.widget.ViewPager.LayoutParams layoutParams2 = (androidx.viewpager.widget.ViewPager.LayoutParams) childAt2.getLayoutParams();
                if (!layoutParams2.f2560a && (fVarR = r(childAt2)) != null) {
                    float f5 = i20;
                    int i22 = ((int) (fVarR.f2576e * f5)) + paddingLeft;
                    if (layoutParams2.f2563d) {
                        layoutParams2.f2563d = false;
                        childAt2.measure(android.view.View.MeasureSpec.makeMeasureSpec((int) (f5 * layoutParams2.f2562c), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), android.view.View.MeasureSpec.makeMeasureSpec((i10 - paddingTop) - paddingBottom, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY));
                    }
                    childAt2.layout(i22, paddingTop, childAt2.getMeasuredWidth() + i22, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.f2553t = paddingTop;
        this.f2554u = i10 - paddingBottom;
        this.f2530b0 = i11;
        if (this.V) {
            z5 = false;
            K(this.f2537f, false, 0, false);
        } else {
            z5 = false;
        }
        this.V = z5;
    }

    @Override // android.view.View
    public void onMeasure(int i5, int i6) {
        androidx.viewpager.widget.ViewPager.LayoutParams layoutParams;
        androidx.viewpager.widget.ViewPager.LayoutParams layoutParams2;
        int i7;
        setMeasuredDimension(android.view.ViewGroup.getDefaultSize(0, i5), android.view.ViewGroup.getDefaultSize(0, i6));
        int measuredWidth = getMeasuredWidth();
        this.G = java.lang.Math.min(measuredWidth / 10, this.F);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i8 = 0;
        while (true) {
            boolean z4 = true;
            int i9 = com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY;
            if (i8 >= childCount) {
                break;
            }
            android.view.View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8 && (layoutParams2 = (androidx.viewpager.widget.ViewPager.LayoutParams) childAt.getLayoutParams()) != null && layoutParams2.f2560a) {
                int i10 = layoutParams2.f2561b;
                int i11 = i10 & 7;
                int i12 = i10 & 112;
                boolean z5 = i12 == 48 || i12 == 80;
                if (i11 != 3 && i11 != 5) {
                    z4 = false;
                }
                int i13 = Integer.MIN_VALUE;
                if (z5) {
                    i7 = Integer.MIN_VALUE;
                    i13 = 1073741824;
                } else {
                    i7 = z4 ? 1073741824 : Integer.MIN_VALUE;
                }
                int i14 = ((android.view.ViewGroup.LayoutParams) layoutParams2).width;
                if (i14 != -2) {
                    if (i14 == -1) {
                        i14 = paddingLeft;
                    }
                    i13 = 1073741824;
                } else {
                    i14 = paddingLeft;
                }
                int i15 = ((android.view.ViewGroup.LayoutParams) layoutParams2).height;
                if (i15 == -2) {
                    i15 = measuredHeight;
                    i9 = i7;
                } else if (i15 == -1) {
                    i15 = measuredHeight;
                }
                childAt.measure(android.view.View.MeasureSpec.makeMeasureSpec(i14, i13), android.view.View.MeasureSpec.makeMeasureSpec(i15, i9));
                if (z5) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z4) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i8++;
        }
        this.f2557x = android.view.View.MeasureSpec.makeMeasureSpec(paddingLeft, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
        this.f2558y = android.view.View.MeasureSpec.makeMeasureSpec(measuredHeight, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
        this.f2559z = true;
        D();
        this.f2559z = false;
        int childCount2 = getChildCount();
        for (int i16 = 0; i16 < childCount2; i16++) {
            android.view.View childAt2 = getChildAt(i16);
            if (childAt2.getVisibility() != 8 && ((layoutParams = (androidx.viewpager.widget.ViewPager.LayoutParams) childAt2.getLayoutParams()) == null || !layoutParams.f2560a)) {
                childAt2.measure(android.view.View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * layoutParams.f2562c), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), this.f2558y);
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i5, android.graphics.Rect rect) {
        int i6;
        int i7;
        androidx.viewpager.widget.ViewPager.f fVarR;
        int childCount = getChildCount();
        int i8 = -1;
        if ((i5 & 2) != 0) {
            i8 = childCount;
            i6 = 0;
            i7 = 1;
        } else {
            i6 = childCount - 1;
            i7 = -1;
        }
        while (i6 != i8) {
            android.view.View childAt = getChildAt(i6);
            if (childAt.getVisibility() == 0 && (fVarR = r(childAt)) != null && fVarR.f2573b == this.f2537f && childAt.requestFocus(i5, rect)) {
                return true;
            }
            i6 += i7;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        if (!(parcelable instanceof androidx.viewpager.widget.ViewPager.SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        androidx.viewpager.widget.ViewPager.SavedState savedState = (androidx.viewpager.widget.ViewPager.SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        n0.a aVar = this.f2535e;
        if (aVar != null) {
            aVar.m(savedState.f2567b, savedState.f2568c);
            M(savedState.f2566a, false, true);
        } else {
            this.f2539g = savedState.f2566a;
            this.f2541h = savedState.f2567b;
            this.f2543i = savedState.f2568c;
        }
    }

    @Override // android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        androidx.viewpager.widget.ViewPager.SavedState savedState = new androidx.viewpager.widget.ViewPager.SavedState(super.onSaveInstanceState());
        savedState.f2566a = this.f2537f;
        n0.a aVar = this.f2535e;
        if (aVar != null) {
            savedState.f2567b = aVar.n();
        }
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i5, int i6, int i7, int i8) {
        super.onSizeChanged(i5, i6, i7, i8);
        if (i5 != i7) {
            int i9 = this.f2551r;
            F(i5, i7, i9, i9);
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00dc  */
    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        n0.a aVar;
        if (this.S) {
            return true;
        }
        boolean zJ = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (aVar = this.f2535e) == null || aVar.e() == 0) {
            return false;
        }
        if (this.N == null) {
            this.N = android.view.VelocityTracker.obtain();
        }
        this.N.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f2548o.abortAnimation();
            this.B = false;
            D();
            float x4 = motionEvent.getX();
            this.K = x4;
            this.I = x4;
            float y4 = motionEvent.getY();
            this.L = y4;
            this.J = y4;
            this.M = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        this.I = motionEvent.getX(actionIndex);
                        this.M = motionEvent.getPointerId(actionIndex);
                    } else if (action == 6) {
                        y(motionEvent);
                        this.I = motionEvent.getX(motionEvent.findPointerIndex(this.M));
                    }
                } else if (this.D) {
                    K(this.f2537f, true, 0, false);
                    zJ = J();
                }
            } else if (!this.D) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.M);
                if (iFindPointerIndex == -1) {
                    zJ = J();
                } else {
                    float x5 = motionEvent.getX(iFindPointerIndex);
                    float fAbs = java.lang.Math.abs(x5 - this.I);
                    float y5 = motionEvent.getY(iFindPointerIndex);
                    float fAbs2 = java.lang.Math.abs(y5 - this.J);
                    if (fAbs > this.H && fAbs > fAbs2) {
                        this.D = true;
                        I(true);
                        float f5 = this.K;
                        this.I = x5 - f5 > 0.0f ? f5 + this.H : f5 - this.H;
                        this.J = y5;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        android.view.ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (this.D) {
                        zJ = false | C(motionEvent.getX(motionEvent.findPointerIndex(this.M)));
                    }
                }
            } else if (this.D) {
                zJ = false | C(motionEvent.getX(motionEvent.findPointerIndex(this.M)));
            }
        } else if (this.D) {
            android.view.VelocityTracker velocityTracker = this.N;
            velocityTracker.computeCurrentVelocity(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO, this.P);
            int xVelocity = (int) velocityTracker.getXVelocity(this.M);
            this.B = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            androidx.viewpager.widget.ViewPager.f fVarS = s();
            float f6 = clientWidth;
            N(h(fVarS.f2573b, ((scrollX / f6) - fVarS.f2576e) / (fVarS.f2575d + (this.f2551r / f6)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.M)) - this.K)), true, true, xVelocity);
            zJ = J();
        }
        if (zJ) {
            w.q.K(this);
        }
        return true;
    }

    public final android.graphics.Rect p(android.graphics.Rect rect, android.view.View view) {
        if (rect == null) {
            rect = new android.graphics.Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        android.view.ViewParent parent = view.getParent();
        while ((parent instanceof android.view.ViewGroup) && parent != this) {
            android.view.ViewGroup viewGroup = (android.view.ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    public androidx.viewpager.widget.ViewPager.f q(android.view.View view) {
        while (true) {
            java.lang.Object parent = view.getParent();
            if (parent == this) {
                return r(view);
            }
            if (parent == null || !(parent instanceof android.view.View)) {
                return null;
            }
            view = (android.view.View) parent;
        }
    }

    public androidx.viewpager.widget.ViewPager.f r(android.view.View view) {
        for (int i5 = 0; i5 < this.f2529b.size(); i5++) {
            androidx.viewpager.widget.ViewPager.f fVar = this.f2529b.get(i5);
            if (this.f2535e.k(view, fVar.f2572a)) {
                return fVar;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(android.view.View view) {
        if (this.f2559z) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public final androidx.viewpager.widget.ViewPager.f s() {
        int i5;
        int clientWidth = getClientWidth();
        float f5 = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f6 = clientWidth > 0 ? this.f2551r / clientWidth : 0.0f;
        androidx.viewpager.widget.ViewPager.f fVar = null;
        int i6 = 0;
        int i7 = -1;
        boolean z4 = true;
        float f7 = 0.0f;
        while (i6 < this.f2529b.size()) {
            androidx.viewpager.widget.ViewPager.f fVar2 = this.f2529b.get(i6);
            if (!z4 && fVar2.f2573b != (i5 = i7 + 1)) {
                fVar2 = this.f2531c;
                fVar2.f2576e = f5 + f7 + f6;
                fVar2.f2573b = i5;
                fVar2.f2575d = this.f2535e.h(i5);
                i6--;
            }
            f5 = fVar2.f2576e;
            float f8 = fVar2.f2575d + f5 + f6;
            if (!z4 && scrollX < f5) {
                return fVar;
            }
            if (scrollX < f8 || i6 == this.f2529b.size() - 1) {
                return fVar2;
            }
            i7 = fVar2.f2573b;
            f7 = fVar2.f2575d;
            i6++;
            z4 = false;
            fVar = fVar2;
        }
        return fVar;
    }

    public void setAdapter(n0.a aVar) {
        n0.a aVar2 = this.f2535e;
        if (aVar2 != null) {
            aVar2.q(null);
            this.f2535e.s(this);
            for (int i5 = 0; i5 < this.f2529b.size(); i5++) {
                androidx.viewpager.widget.ViewPager.f fVar = this.f2529b.get(i5);
                this.f2535e.b(this, fVar.f2573b, fVar.f2572a);
            }
            this.f2535e.d(this);
            this.f2529b.clear();
            G();
            this.f2537f = 0;
            scrollTo(0, 0);
        }
        n0.a aVar3 = this.f2535e;
        this.f2535e = aVar;
        this.f2527a = 0;
        if (aVar != null) {
            if (this.f2550q == null) {
                this.f2550q = new androidx.viewpager.widget.ViewPager.k();
            }
            this.f2535e.q(this.f2550q);
            this.B = false;
            boolean z4 = this.V;
            this.V = true;
            this.f2527a = this.f2535e.e();
            if (this.f2539g >= 0) {
                this.f2535e.m(this.f2541h, this.f2543i);
                M(this.f2539g, false, true);
                this.f2539g = -1;
                this.f2541h = null;
                this.f2543i = null;
            } else if (z4) {
                requestLayout();
            } else {
                D();
            }
        }
        java.util.List<androidx.viewpager.widget.ViewPager.h> list = this.f2538f0;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.f2538f0.size();
        for (int i6 = 0; i6 < size; i6++) {
            this.f2538f0.get(i6).d(this, aVar3, aVar);
        }
    }

    public void setCurrentItem(int i5) {
        this.B = false;
        M(i5, !this.V, false);
    }

    public void setOffscreenPageLimit(int i5) {
        if (i5 < 1) {
            android.util.Log.w("ViewPager", "Requested offscreen page limit " + i5 + " too small; defaulting to 1");
            i5 = 1;
        }
        if (i5 != this.C) {
            this.C = i5;
            D();
        }
    }

    @java.lang.Deprecated
    public void setOnPageChangeListener(androidx.viewpager.widget.ViewPager.i iVar) {
        this.f2534d0 = iVar;
    }

    public void setPageMargin(int i5) {
        int i6 = this.f2551r;
        this.f2551r = i5;
        int width = getWidth();
        F(width, width, i5, i6);
        requestLayout();
    }

    public void setPageMarginDrawable(android.graphics.drawable.Drawable drawable) {
        this.f2552s = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i5) {
        if (this.f2547l0 == i5) {
            return;
        }
        this.f2547l0 = i5;
        if (this.f2540g0 != null) {
            m(i5 != 0);
        }
        k(i5);
    }

    public androidx.viewpager.widget.ViewPager.f t(int i5) {
        for (int i6 = 0; i6 < this.f2529b.size(); i6++) {
            androidx.viewpager.widget.ViewPager.f fVar = this.f2529b.get(i6);
            if (fVar.f2573b == i5) {
                return fVar;
            }
        }
        return null;
    }

    public void u() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        android.content.Context context = getContext();
        this.f2548o = new android.widget.Scroller(context, f2525o0);
        android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(context);
        float f5 = context.getResources().getDisplayMetrics().density;
        this.H = viewConfiguration.getScaledPagingTouchSlop();
        this.O = (int) (400.0f * f5);
        this.P = viewConfiguration.getScaledMaximumFlingVelocity();
        this.T = new android.widget.EdgeEffect(context);
        this.U = new android.widget.EdgeEffect(context);
        this.Q = (int) (25.0f * f5);
        this.R = (int) (2.0f * f5);
        this.F = (int) (f5 * 16.0f);
        w.q.Q(this, new androidx.viewpager.widget.ViewPager.g());
        if (w.q.n(this) == 0) {
            w.q.V(this, 1);
        }
        w.q.Y(this, new androidx.viewpager.widget.ViewPager.d());
    }

    @Override // android.view.View
    public boolean verifyDrawable(android.graphics.drawable.Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f2552s;
    }

    public final boolean w(float f5, float f6) {
        return (f5 < ((float) this.G) && f6 > 0.0f) || (f5 > ((float) (getWidth() - this.G)) && f6 < 0.0f);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0064  */
    public void x(int i5, float f5, int i6) {
        int iMax;
        int width;
        int left;
        if (this.f2530b0 > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = getWidth();
            int childCount = getChildCount();
            for (int i7 = 0; i7 < childCount; i7++) {
                android.view.View childAt = getChildAt(i7);
                androidx.viewpager.widget.ViewPager.LayoutParams layoutParams = (androidx.viewpager.widget.ViewPager.LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f2560a) {
                    int i8 = layoutParams.f2561b & 7;
                    if (i8 != 1) {
                        if (i8 == 3) {
                            width = childAt.getWidth() + paddingLeft;
                        } else if (i8 != 5) {
                            width = paddingLeft;
                        } else {
                            iMax = (width2 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        left = (paddingLeft + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        paddingLeft = width;
                    } else {
                        iMax = java.lang.Math.max((width2 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i9 = iMax;
                    width = paddingLeft;
                    paddingLeft = i9;
                    left = (paddingLeft + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                    paddingLeft = width;
                }
            }
        }
        i(i5, f5, i6);
        if (this.f2540g0 != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i10 = 0; i10 < childCount2; i10++) {
                android.view.View childAt2 = getChildAt(i10);
                if (!((androidx.viewpager.widget.ViewPager.LayoutParams) childAt2.getLayoutParams()).f2560a) {
                    this.f2540g0.a(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.f2528a0 = true;
    }

    public final void y(android.view.MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.M) {
            int i5 = actionIndex == 0 ? 1 : 0;
            this.I = motionEvent.getX(i5);
            this.M = motionEvent.getPointerId(i5);
            android.view.VelocityTracker velocityTracker = this.N;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public boolean z() {
        int i5 = this.f2537f;
        if (i5 <= 0) {
            return false;
        }
        L(i5 - 1, true);
        return true;
    }

    public static class LayoutParams extends android.view.ViewGroup.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2560a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2561b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f2562c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f2563d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2564e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2565f;

        public LayoutParams() {
            super(-1, -1);
            this.f2562c = 0.0f;
        }

        public LayoutParams(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2562c = 0.0f;
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.viewpager.widget.ViewPager.f2523m0);
            this.f2561b = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new androidx.viewpager.widget.ViewPager.LayoutParams(getContext(), attributeSet);
    }

    public void setPageMarginDrawable(int i5) {
        setPageMarginDrawable(androidx.core.content.a.b(getContext(), i5));
    }
}
