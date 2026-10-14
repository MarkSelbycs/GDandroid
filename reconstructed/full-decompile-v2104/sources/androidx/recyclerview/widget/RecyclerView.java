package androidx.recyclerview.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class RecyclerView extends android.view.ViewGroup {
    public static final int[] G0 = {android.R.attr.nestedScrollingEnabled};
    public static final boolean H0 = false;
    public static final boolean I0 = true;
    public static final boolean J0 = true;
    public static final boolean K0 = true;
    public static final boolean L0 = false;
    public static final boolean M0 = false;
    public static final java.lang.Class<?>[] N0;
    public static final android.view.animation.Interpolator O0;
    public boolean A;
    public final java.util.List<androidx.recyclerview.widget.RecyclerView.b0> A0;
    public int B;
    public java.lang.Runnable B0;
    public boolean C;
    public boolean C0;
    public boolean D;
    public int D0;
    public boolean E;
    public int E0;
    public int F;
    public final androidx.recyclerview.widget.m.b F0;
    public boolean G;
    public final android.view.accessibility.AccessibilityManager H;
    public java.util.List<androidx.recyclerview.widget.RecyclerView.q> I;
    public boolean J;
    public boolean K;
    public int L;
    public int M;
    public androidx.recyclerview.widget.RecyclerView.l N;
    public android.widget.EdgeEffect O;
    public android.widget.EdgeEffect P;
    public android.widget.EdgeEffect Q;
    public android.widget.EdgeEffect R;
    public androidx.recyclerview.widget.RecyclerView.m S;
    public int T;
    public int U;
    public android.view.VelocityTracker V;
    public int W;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.recyclerview.widget.RecyclerView.x f1841a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f1842a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.recyclerview.widget.RecyclerView.v f1843b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f1844b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.recyclerview.widget.RecyclerView.SavedState f1845c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f1846c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public androidx.recyclerview.widget.a f1847d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f1848d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.recyclerview.widget.b f1849e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final int f1850e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final androidx.recyclerview.widget.m f1851f;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final int f1852f0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1853g;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public float f1854g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final java.lang.Runnable f1855h;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public float f1856h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final android.graphics.Rect f1857i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f1858i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final androidx.recyclerview.widget.RecyclerView.a0 f1859j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public androidx.recyclerview.widget.e f1860k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public androidx.recyclerview.widget.e.b f1861l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final androidx.recyclerview.widget.RecyclerView.y f1862m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public androidx.recyclerview.widget.RecyclerView.t f1863n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final android.graphics.Rect f1864o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public java.util.List<androidx.recyclerview.widget.RecyclerView.t> f1865o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final android.graphics.RectF f1866p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public boolean f1867p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public androidx.recyclerview.widget.RecyclerView.h f1868q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public boolean f1869q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public androidx.recyclerview.widget.RecyclerView.p f1870r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public androidx.recyclerview.widget.RecyclerView.m.b f1871r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public androidx.recyclerview.widget.RecyclerView.w f1872s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public boolean f1873s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final java.util.List<androidx.recyclerview.widget.RecyclerView.w> f1874t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public androidx.recyclerview.widget.i f1875t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.o> f1876u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public androidx.recyclerview.widget.RecyclerView.k f1877u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.s> f1878v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public final int[] f1879v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public androidx.recyclerview.widget.RecyclerView.s f1880w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public w.j f1881w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f1882x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public final int[] f1883x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f1884y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public final int[] f1885y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f1886z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public final int[] f1887z0;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
            if (!recyclerView.A || recyclerView.isLayoutRequested()) {
                return;
            }
            androidx.recyclerview.widget.RecyclerView recyclerView2 = androidx.recyclerview.widget.RecyclerView.this;
            if (!recyclerView2.f1882x) {
                recyclerView2.requestLayout();
            } else if (recyclerView2.D) {
                recyclerView2.C = true;
            } else {
                recyclerView2.t();
            }
        }
    }

    public class a0 implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1894a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1895b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public android.widget.OverScroller f1896c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public android.view.animation.Interpolator f1897d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f1898e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f1899f;

        public a0() {
            android.view.animation.Interpolator interpolator = androidx.recyclerview.widget.RecyclerView.O0;
            this.f1897d = interpolator;
            this.f1898e = false;
            this.f1899f = false;
            this.f1896c = new android.widget.OverScroller(androidx.recyclerview.widget.RecyclerView.this.getContext(), interpolator);
        }

        public final int a(int i5, int i6) {
            int iAbs = java.lang.Math.abs(i5);
            int iAbs2 = java.lang.Math.abs(i6);
            boolean z4 = iAbs > iAbs2;
            androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
            int width = z4 ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z4) {
                iAbs = iAbs2;
            }
            return java.lang.Math.min((int) (((iAbs / width) + 1.0f) * 300.0f), 2000);
        }

        public void b(int i5, int i6) {
            androidx.recyclerview.widget.RecyclerView.this.setScrollState(2);
            this.f1895b = 0;
            this.f1894a = 0;
            android.view.animation.Interpolator interpolator = this.f1897d;
            android.view.animation.Interpolator interpolator2 = androidx.recyclerview.widget.RecyclerView.O0;
            if (interpolator != interpolator2) {
                this.f1897d = interpolator2;
                this.f1896c = new android.widget.OverScroller(androidx.recyclerview.widget.RecyclerView.this.getContext(), interpolator2);
            }
            this.f1896c.fling(0, 0, i5, i6, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            d();
        }

        public final void c() {
            androidx.recyclerview.widget.RecyclerView.this.removeCallbacks(this);
            w.q.L(androidx.recyclerview.widget.RecyclerView.this, this);
        }

        public void d() {
            if (this.f1898e) {
                this.f1899f = true;
            } else {
                c();
            }
        }

        public void e(int i5, int i6, int i7, android.view.animation.Interpolator interpolator) {
            if (i7 == Integer.MIN_VALUE) {
                i7 = a(i5, i6);
            }
            int i8 = i7;
            if (interpolator == null) {
                interpolator = androidx.recyclerview.widget.RecyclerView.O0;
            }
            if (this.f1897d != interpolator) {
                this.f1897d = interpolator;
                this.f1896c = new android.widget.OverScroller(androidx.recyclerview.widget.RecyclerView.this.getContext(), interpolator);
            }
            this.f1895b = 0;
            this.f1894a = 0;
            androidx.recyclerview.widget.RecyclerView.this.setScrollState(2);
            this.f1896c.startScroll(0, 0, i5, i6, i8);
            d();
        }

        public void f() {
            androidx.recyclerview.widget.RecyclerView.this.removeCallbacks(this);
            this.f1896c.abortAnimation();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i5;
            int i6;
            int i7;
            androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
            if (recyclerView.f1870r == null) {
                f();
                return;
            }
            this.f1899f = false;
            this.f1898e = true;
            recyclerView.t();
            android.widget.OverScroller overScroller = this.f1896c;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i8 = currX - this.f1894a;
                int i9 = currY - this.f1895b;
                this.f1894a = currX;
                this.f1895b = currY;
                androidx.recyclerview.widget.RecyclerView recyclerView2 = androidx.recyclerview.widget.RecyclerView.this;
                int[] iArr = recyclerView2.f1887z0;
                iArr[0] = 0;
                iArr[1] = 0;
                if (recyclerView2.E(i8, i9, iArr, null, 1)) {
                    int[] iArr2 = androidx.recyclerview.widget.RecyclerView.this.f1887z0;
                    i8 -= iArr2[0];
                    i9 -= iArr2[1];
                }
                if (androidx.recyclerview.widget.RecyclerView.this.getOverScrollMode() != 2) {
                    androidx.recyclerview.widget.RecyclerView.this.s(i8, i9);
                }
                androidx.recyclerview.widget.RecyclerView recyclerView3 = androidx.recyclerview.widget.RecyclerView.this;
                if (recyclerView3.f1868q != null) {
                    int[] iArr3 = recyclerView3.f1887z0;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.d1(i8, i9, iArr3);
                    androidx.recyclerview.widget.RecyclerView recyclerView4 = androidx.recyclerview.widget.RecyclerView.this;
                    int[] iArr4 = recyclerView4.f1887z0;
                    i6 = iArr4[0];
                    i5 = iArr4[1];
                    i8 -= i6;
                    i9 -= i5;
                    java.util.Objects.requireNonNull(recyclerView4.f1870r);
                } else {
                    i5 = 0;
                    i6 = 0;
                }
                if (!androidx.recyclerview.widget.RecyclerView.this.f1876u.isEmpty()) {
                    androidx.recyclerview.widget.RecyclerView.this.invalidate();
                }
                androidx.recyclerview.widget.RecyclerView recyclerView5 = androidx.recyclerview.widget.RecyclerView.this;
                int[] iArr5 = recyclerView5.f1887z0;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.F(i6, i5, i8, i9, null, 1, iArr5);
                androidx.recyclerview.widget.RecyclerView recyclerView6 = androidx.recyclerview.widget.RecyclerView.this;
                int[] iArr6 = recyclerView6.f1887z0;
                int i10 = i8 - iArr6[0];
                int i11 = i9 - iArr6[1];
                if (i6 != 0 || i5 != 0) {
                    recyclerView6.H(i6, i5);
                }
                if (!androidx.recyclerview.widget.RecyclerView.this.awakenScrollBars()) {
                    androidx.recyclerview.widget.RecyclerView.this.invalidate();
                }
                boolean z4 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i10 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i11 != 0));
                java.util.Objects.requireNonNull(androidx.recyclerview.widget.RecyclerView.this.f1870r);
                if (z4) {
                    if (androidx.recyclerview.widget.RecyclerView.this.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        if (i10 < 0) {
                            i7 = -currVelocity;
                        } else {
                            i7 = i10 > 0 ? currVelocity : 0;
                        }
                        if (i11 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i11 <= 0) {
                            currVelocity = 0;
                        }
                        androidx.recyclerview.widget.RecyclerView.this.a(i7, currVelocity);
                    }
                    if (androidx.recyclerview.widget.RecyclerView.K0) {
                        androidx.recyclerview.widget.RecyclerView.this.f1861l0.b();
                    }
                } else {
                    d();
                    androidx.recyclerview.widget.RecyclerView recyclerView7 = androidx.recyclerview.widget.RecyclerView.this;
                    androidx.recyclerview.widget.e eVar = recyclerView7.f1860k0;
                    if (eVar != null) {
                        eVar.f(recyclerView7, i6, i5);
                    }
                }
            }
            java.util.Objects.requireNonNull(androidx.recyclerview.widget.RecyclerView.this.f1870r);
            this.f1898e = false;
            if (this.f1899f) {
                c();
            } else {
                androidx.recyclerview.widget.RecyclerView.this.setScrollState(0);
                androidx.recyclerview.widget.RecyclerView.this.o1(1);
            }
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.recyclerview.widget.RecyclerView.m mVar = androidx.recyclerview.widget.RecyclerView.this.S;
            if (mVar != null) {
                mVar.u();
            }
            androidx.recyclerview.widget.RecyclerView.this.f1873s0 = false;
        }
    }

    public static abstract class b0 {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public static final java.util.List<java.lang.Object> f1902s = java.util.Collections.emptyList();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.lang.ref.WeakReference<androidx.recyclerview.widget.RecyclerView> f1903a;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f1911i;
        public final android.view.View itemView;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView f1919q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView.h<? extends androidx.recyclerview.widget.RecyclerView.b0> f1920r;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1904b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1905c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f1906d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1907e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1908f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView.b0 f1909g = null;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView.b0 f1910h = null;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public java.util.List<java.lang.Object> f1912j = null;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public java.util.List<java.lang.Object> f1913k = null;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f1914l = 0;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView.v f1915m = null;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f1916n = false;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f1917o = 0;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f1918p = -1;

        public b0(android.view.View view) {
            if (view == null) {
                throw new java.lang.IllegalArgumentException("itemView may not be null");
            }
            this.itemView = view;
        }

        public void A(androidx.recyclerview.widget.RecyclerView.v vVar, boolean z4) {
            this.f1915m = vVar;
            this.f1916n = z4;
        }

        public boolean B() {
            return (this.f1911i & 16) != 0;
        }

        public boolean C() {
            return (this.f1911i & com.alibaba.fastjson.asm.Opcodes.IOR) != 0;
        }

        public void D() {
            this.f1915m.J(this);
        }

        public boolean E() {
            return (this.f1911i & 32) != 0;
        }

        public void a(java.lang.Object obj) {
            if (obj == null) {
                b(1024);
            } else if ((1024 & this.f1911i) == 0) {
                g();
                this.f1912j.add(obj);
            }
        }

        public void b(int i5) {
            this.f1911i = i5 | this.f1911i;
        }

        public void c() {
            this.f1905c = -1;
            this.f1908f = -1;
        }

        public void d() {
            java.util.List<java.lang.Object> list = this.f1912j;
            if (list != null) {
                list.clear();
            }
            this.f1911i &= -1025;
        }

        public void e() {
            this.f1911i &= -33;
        }

        public void f() {
            this.f1911i &= -257;
        }

        public final void g() {
            if (this.f1912j == null) {
                java.util.ArrayList arrayList = new java.util.ArrayList();
                this.f1912j = arrayList;
                this.f1913k = java.util.Collections.unmodifiableList(arrayList);
            }
        }

        public final int getAbsoluteAdapterPosition() {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1919q;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.a0(this);
        }

        @java.lang.Deprecated
        public final int getAdapterPosition() {
            return getBindingAdapterPosition();
        }

        public final androidx.recyclerview.widget.RecyclerView.h<? extends androidx.recyclerview.widget.RecyclerView.b0> getBindingAdapter() {
            return this.f1920r;
        }

        public final int getBindingAdapterPosition() {
            androidx.recyclerview.widget.RecyclerView recyclerView;
            androidx.recyclerview.widget.RecyclerView.h adapter;
            int iA0;
            if (this.f1920r == null || (recyclerView = this.f1919q) == null || (adapter = recyclerView.getAdapter()) == null || (iA0 = this.f1919q.a0(this)) == -1) {
                return -1;
            }
            return adapter.findRelativeAdapterPositionIn(this.f1920r, this, iA0);
        }

        public final long getItemId() {
            return this.f1906d;
        }

        public final int getItemViewType() {
            return this.f1907e;
        }

        public final int getLayoutPosition() {
            int i5 = this.f1908f;
            return i5 == -1 ? this.f1904b : i5;
        }

        public final int getOldPosition() {
            return this.f1905c;
        }

        @java.lang.Deprecated
        public final int getPosition() {
            int i5 = this.f1908f;
            return i5 == -1 ? this.f1904b : i5;
        }

        public boolean h() {
            return (this.f1911i & 16) == 0 && w.q.A(this.itemView);
        }

        public void i(int i5, int i6, boolean z4) {
            b(8);
            u(i6, z4);
            this.f1904b = i5;
        }

        public final boolean isRecyclable() {
            return (this.f1911i & 16) == 0 && !w.q.A(this.itemView);
        }

        public java.util.List<java.lang.Object> j() {
            if ((this.f1911i & 1024) != 0) {
                return f1902s;
            }
            java.util.List<java.lang.Object> list = this.f1912j;
            return (list == null || list.size() == 0) ? f1902s : this.f1913k;
        }

        public boolean k(int i5) {
            return (i5 & this.f1911i) != 0;
        }

        public boolean l() {
            return (this.f1911i & 512) != 0 || o();
        }

        public boolean m() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.f1919q) ? false : true;
        }

        public boolean n() {
            return (this.f1911i & 1) != 0;
        }

        public boolean o() {
            return (this.f1911i & 4) != 0;
        }

        public boolean p() {
            return (this.f1911i & 8) != 0;
        }

        public boolean q() {
            return this.f1915m != null;
        }

        public boolean r() {
            return (this.f1911i & 256) != 0;
        }

        public boolean s() {
            return (this.f1911i & 2) != 0;
        }

        public final void setIsRecyclable(boolean z4) {
            int i5 = this.f1914l;
            int i6 = z4 ? i5 - 1 : i5 + 1;
            this.f1914l = i6;
            if (i6 < 0) {
                this.f1914l = 0;
                android.util.Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                return;
            }
            if (!z4 && i6 == 1) {
                this.f1911i |= 16;
            } else if (z4 && i6 == 0) {
                this.f1911i &= -17;
            }
        }

        public boolean t() {
            return (this.f1911i & 2) != 0;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder((getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName()) + "{" + java.lang.Integer.toHexString(hashCode()) + " position=" + this.f1904b + " id=" + this.f1906d + ", oldPos=" + this.f1905c + ", pLpos:" + this.f1908f);
            if (q()) {
                sb.append(" scrap ");
                sb.append(this.f1916n ? "[changeScrap]" : "[attachedScrap]");
            }
            if (o()) {
                sb.append(" invalid");
            }
            if (!n()) {
                sb.append(" unbound");
            }
            if (t()) {
                sb.append(" update");
            }
            if (p()) {
                sb.append(" removed");
            }
            if (C()) {
                sb.append(" ignored");
            }
            if (r()) {
                sb.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                sb.append(" not recyclable(" + this.f1914l + ")");
            }
            if (l()) {
                sb.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        public void u(int i5, boolean z4) {
            if (this.f1905c == -1) {
                this.f1905c = this.f1904b;
            }
            if (this.f1908f == -1) {
                this.f1908f = this.f1904b;
            }
            if (z4) {
                this.f1908f += i5;
            }
            this.f1904b += i5;
            if (this.itemView.getLayoutParams() != null) {
                ((androidx.recyclerview.widget.RecyclerView.LayoutParams) this.itemView.getLayoutParams()).f1890c = true;
            }
        }

        public void v(androidx.recyclerview.widget.RecyclerView recyclerView) {
            int i5 = this.f1918p;
            if (i5 != -1) {
                this.f1917o = i5;
            } else {
                this.f1917o = w.q.n(this.itemView);
            }
            recyclerView.f1(this, 4);
        }

        public void w(androidx.recyclerview.widget.RecyclerView recyclerView) {
            recyclerView.f1(this, this.f1917o);
            this.f1917o = 0;
        }

        public void x() {
            this.f1911i = 0;
            this.f1904b = -1;
            this.f1905c = -1;
            this.f1906d = -1L;
            this.f1908f = -1;
            this.f1914l = 0;
            this.f1909g = null;
            this.f1910h = null;
            d();
            this.f1917o = 0;
            this.f1918p = -1;
            androidx.recyclerview.widget.RecyclerView.q(this);
        }

        public void y() {
            if (this.f1905c == -1) {
                this.f1905c = this.f1904b;
            }
        }

        public void z(int i5, int i6) {
            this.f1911i = (i5 & i6) | (this.f1911i & (~i6));
        }
    }

    public class c implements android.view.animation.Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f5) {
            float f6 = f5 - 1.0f;
            return (f6 * f6 * f6 * f6 * f6) + 1.0f;
        }
    }

    public class d implements androidx.recyclerview.widget.m.b {
        public d() {
        }

        @Override // androidx.recyclerview.widget.m.b
        public void a(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
            androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
            recyclerView.f1870r.j1(b0Var.itemView, recyclerView.f1843b);
        }

        @Override // androidx.recyclerview.widget.m.b
        public void b(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2) {
            androidx.recyclerview.widget.RecyclerView.this.k(b0Var, cVar, cVar2);
        }

        @Override // androidx.recyclerview.widget.m.b
        public void c(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2) {
            androidx.recyclerview.widget.RecyclerView.this.f1843b.J(b0Var);
            androidx.recyclerview.widget.RecyclerView.this.m(b0Var, cVar, cVar2);
        }

        @Override // androidx.recyclerview.widget.m.b
        public void d(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2) {
            b0Var.setIsRecyclable(false);
            androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
            if (recyclerView.J) {
                if (recyclerView.S.b(b0Var, b0Var, cVar, cVar2)) {
                    androidx.recyclerview.widget.RecyclerView.this.J0();
                }
            } else if (recyclerView.S.d(b0Var, cVar, cVar2)) {
                androidx.recyclerview.widget.RecyclerView.this.J0();
            }
        }
    }

    public class e implements androidx.recyclerview.widget.b.InterfaceC0014b {
        public e() {
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0014b
        public android.view.View a(int i5) {
            return androidx.recyclerview.widget.RecyclerView.this.getChildAt(i5);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0014b
        public void b(android.view.View view) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = androidx.recyclerview.widget.RecyclerView.d0(view);
            if (b0VarD0 != null) {
                b0VarD0.v(androidx.recyclerview.widget.RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0014b
        public void c(int i5) {
            android.view.View childAt = androidx.recyclerview.widget.RecyclerView.this.getChildAt(i5);
            if (childAt != null) {
                androidx.recyclerview.widget.RecyclerView.this.y(childAt);
                childAt.clearAnimation();
            }
            androidx.recyclerview.widget.RecyclerView.this.removeViewAt(i5);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0014b
        public void d() {
            int iK = k();
            for (int i5 = 0; i5 < iK; i5++) {
                android.view.View viewA = a(i5);
                androidx.recyclerview.widget.RecyclerView.this.y(viewA);
                viewA.clearAnimation();
            }
            androidx.recyclerview.widget.RecyclerView.this.removeAllViews();
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0014b
        public androidx.recyclerview.widget.RecyclerView.b0 e(android.view.View view) {
            return androidx.recyclerview.widget.RecyclerView.d0(view);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0014b
        public void f(int i5) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0;
            android.view.View viewA = a(i5);
            if (viewA != null && (b0VarD0 = androidx.recyclerview.widget.RecyclerView.d0(viewA)) != null) {
                if (b0VarD0.r() && !b0VarD0.C()) {
                    throw new java.lang.IllegalArgumentException("called detach on an already detached child " + b0VarD0 + androidx.recyclerview.widget.RecyclerView.this.O());
                }
                b0VarD0.b(256);
            }
            androidx.recyclerview.widget.RecyclerView.this.detachViewFromParent(i5);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0014b
        public void g(android.view.View view) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = androidx.recyclerview.widget.RecyclerView.d0(view);
            if (b0VarD0 != null) {
                b0VarD0.w(androidx.recyclerview.widget.RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0014b
        public void h(android.view.View view, int i5, android.view.ViewGroup.LayoutParams layoutParams) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = androidx.recyclerview.widget.RecyclerView.d0(view);
            if (b0VarD0 != null) {
                if (!b0VarD0.r() && !b0VarD0.C()) {
                    throw new java.lang.IllegalArgumentException("Called attach on a child which is not detached: " + b0VarD0 + androidx.recyclerview.widget.RecyclerView.this.O());
                }
                b0VarD0.f();
            }
            androidx.recyclerview.widget.RecyclerView.this.attachViewToParent(view, i5, layoutParams);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0014b
        public void i(android.view.View view, int i5) {
            androidx.recyclerview.widget.RecyclerView.this.addView(view, i5);
            androidx.recyclerview.widget.RecyclerView.this.x(view);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0014b
        public int j(android.view.View view) {
            return androidx.recyclerview.widget.RecyclerView.this.indexOfChild(view);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0014b
        public int k() {
            return androidx.recyclerview.widget.RecyclerView.this.getChildCount();
        }
    }

    public class f implements androidx.recyclerview.widget.a.InterfaceC0013a {
        public f() {
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0013a
        public void a(int i5, int i6) {
            androidx.recyclerview.widget.RecyclerView.this.z0(i5, i6);
            androidx.recyclerview.widget.RecyclerView.this.f1867p0 = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0013a
        public void b(androidx.recyclerview.widget.a.b bVar) {
            i(bVar);
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0013a
        public androidx.recyclerview.widget.RecyclerView.b0 c(int i5) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarY = androidx.recyclerview.widget.RecyclerView.this.Y(i5, true);
            if (b0VarY == null || androidx.recyclerview.widget.RecyclerView.this.f1849e.n(b0VarY.itemView)) {
                return null;
            }
            return b0VarY;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0013a
        public void d(int i5, int i6) {
            androidx.recyclerview.widget.RecyclerView.this.A0(i5, i6, true);
            androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
            recyclerView.f1867p0 = true;
            recyclerView.f1862m0.f1984d += i6;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0013a
        public void e(int i5, int i6) {
            androidx.recyclerview.widget.RecyclerView.this.A0(i5, i6, false);
            androidx.recyclerview.widget.RecyclerView.this.f1867p0 = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0013a
        public void f(androidx.recyclerview.widget.a.b bVar) {
            i(bVar);
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0013a
        public void g(int i5, int i6) {
            androidx.recyclerview.widget.RecyclerView.this.y0(i5, i6);
            androidx.recyclerview.widget.RecyclerView.this.f1867p0 = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0013a
        public void h(int i5, int i6, java.lang.Object obj) {
            androidx.recyclerview.widget.RecyclerView.this.r1(i5, i6, obj);
            androidx.recyclerview.widget.RecyclerView.this.f1869q0 = true;
        }

        public void i(androidx.recyclerview.widget.a.b bVar) {
            int i5 = bVar.f2047a;
            if (i5 == 1) {
                androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
                recyclerView.f1870r.P0(recyclerView, bVar.f2048b, bVar.f2050d);
                return;
            }
            if (i5 == 2) {
                androidx.recyclerview.widget.RecyclerView recyclerView2 = androidx.recyclerview.widget.RecyclerView.this;
                recyclerView2.f1870r.S0(recyclerView2, bVar.f2048b, bVar.f2050d);
            } else if (i5 == 4) {
                androidx.recyclerview.widget.RecyclerView recyclerView3 = androidx.recyclerview.widget.RecyclerView.this;
                recyclerView3.f1870r.U0(recyclerView3, bVar.f2048b, bVar.f2050d, bVar.f2049c);
            } else {
                if (i5 != 8) {
                    return;
                }
                androidx.recyclerview.widget.RecyclerView recyclerView4 = androidx.recyclerview.widget.RecyclerView.this;
                recyclerView4.f1870r.R0(recyclerView4, bVar.f2048b, bVar.f2050d, 1);
            }
        }
    }

    public static /* synthetic */ class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1924a;

        static {
            int[] iArr = new int[androidx.recyclerview.widget.RecyclerView.h.a.values().length];
            f1924a = iArr;
            try {
                iArr[androidx.recyclerview.widget.RecyclerView.h.a.PREVENT.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                f1924a[androidx.recyclerview.widget.RecyclerView.h.a.PREVENT_WHEN_EMPTY.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
        }
    }

    public static abstract class h<VH extends androidx.recyclerview.widget.RecyclerView.b0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.recyclerview.widget.RecyclerView.i f1925a = new androidx.recyclerview.widget.RecyclerView.i();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1926b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView.h.a f1927c = androidx.recyclerview.widget.RecyclerView.h.a.ALLOW;

        public enum a {
            ALLOW,
            PREVENT_WHEN_EMPTY,
            PREVENT
        }

        public boolean a() {
            int i5 = androidx.recyclerview.widget.RecyclerView.g.f1924a[this.f1927c.ordinal()];
            if (i5 != 1) {
                return i5 != 2 || getItemCount() > 0;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void bindViewHolder(VH vh, int i5) {
            boolean z4 = vh.f1920r == null;
            if (z4) {
                vh.f1904b = i5;
                if (hasStableIds()) {
                    vh.f1906d = getItemId(i5);
                }
                vh.z(1, 519);
                s.c.a("RV OnBindView");
            }
            vh.f1920r = this;
            onBindViewHolder(vh, i5, vh.j());
            if (z4) {
                vh.d();
                android.view.ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
                if (layoutParams instanceof androidx.recyclerview.widget.RecyclerView.LayoutParams) {
                    ((androidx.recyclerview.widget.RecyclerView.LayoutParams) layoutParams).f1890c = true;
                }
                s.c.b();
            }
        }

        public final VH createViewHolder(android.view.ViewGroup viewGroup, int i5) {
            try {
                s.c.a("RV CreateView");
                VH vh = (VH) onCreateViewHolder(viewGroup, i5);
                if (vh.itemView.getParent() != null) {
                    throw new java.lang.IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                vh.f1907e = i5;
                s.c.b();
                return vh;
            } catch (java.lang.Throwable th) {
                s.c.b();
                throw th;
            }
        }

        public int findRelativeAdapterPositionIn(androidx.recyclerview.widget.RecyclerView.h<? extends androidx.recyclerview.widget.RecyclerView.b0> hVar, androidx.recyclerview.widget.RecyclerView.b0 b0Var, int i5) {
            if (hVar == this) {
                return i5;
            }
            return -1;
        }

        public abstract int getItemCount();

        public long getItemId(int i5) {
            return -1L;
        }

        public int getItemViewType(int i5) {
            return 0;
        }

        public final androidx.recyclerview.widget.RecyclerView.h.a getStateRestorationPolicy() {
            return this.f1927c;
        }

        public final boolean hasObservers() {
            return this.f1925a.a();
        }

        public final boolean hasStableIds() {
            return this.f1926b;
        }

        public final void notifyDataSetChanged() {
            this.f1925a.b();
        }

        public final void notifyItemChanged(int i5) {
            this.f1925a.d(i5, 1);
        }

        public final void notifyItemInserted(int i5) {
            this.f1925a.f(i5, 1);
        }

        public final void notifyItemMoved(int i5, int i6) {
            this.f1925a.c(i5, i6);
        }

        public final void notifyItemRangeChanged(int i5, int i6) {
            this.f1925a.d(i5, i6);
        }

        public final void notifyItemRangeInserted(int i5, int i6) {
            this.f1925a.f(i5, i6);
        }

        public final void notifyItemRangeRemoved(int i5, int i6) {
            this.f1925a.g(i5, i6);
        }

        public final void notifyItemRemoved(int i5) {
            this.f1925a.g(i5, 1);
        }

        public void onAttachedToRecyclerView(androidx.recyclerview.widget.RecyclerView recyclerView) {
        }

        public abstract void onBindViewHolder(VH vh, int i5);

        public void onBindViewHolder(VH vh, int i5, java.util.List<java.lang.Object> list) {
            onBindViewHolder(vh, i5);
        }

        public abstract VH onCreateViewHolder(android.view.ViewGroup viewGroup, int i5);

        public void onDetachedFromRecyclerView(androidx.recyclerview.widget.RecyclerView recyclerView) {
        }

        public boolean onFailedToRecycleView(VH vh) {
            return false;
        }

        public void onViewAttachedToWindow(VH vh) {
        }

        public void onViewDetachedFromWindow(VH vh) {
        }

        public void onViewRecycled(VH vh) {
        }

        public void registerAdapterDataObserver(androidx.recyclerview.widget.RecyclerView.j jVar) {
            this.f1925a.registerObserver(jVar);
        }

        public void setHasStableIds(boolean z4) {
            if (hasObservers()) {
                throw new java.lang.IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.f1926b = z4;
        }

        public void setStateRestorationPolicy(androidx.recyclerview.widget.RecyclerView.h.a aVar) {
            this.f1927c = aVar;
            this.f1925a.h();
        }

        public void unregisterAdapterDataObserver(androidx.recyclerview.widget.RecyclerView.j jVar) {
            this.f1925a.unregisterObserver(jVar);
        }

        public final void notifyItemChanged(int i5, java.lang.Object obj) {
            this.f1925a.e(i5, 1, obj);
        }

        public final void notifyItemRangeChanged(int i5, int i6, java.lang.Object obj) {
            this.f1925a.e(i5, i6, obj);
        }
    }

    public static class i extends android.database.Observable<androidx.recyclerview.widget.RecyclerView.j> {
        public boolean a() {
            return !((android.database.Observable) this).mObservers.isEmpty();
        }

        public void b() {
            for (int size = ((android.database.Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((androidx.recyclerview.widget.RecyclerView.j) ((android.database.Observable) this).mObservers.get(size)).a();
            }
        }

        public void c(int i5, int i6) {
            for (int size = ((android.database.Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((androidx.recyclerview.widget.RecyclerView.j) ((android.database.Observable) this).mObservers.get(size)).e(i5, i6, 1);
            }
        }

        public void d(int i5, int i6) {
            e(i5, i6, null);
        }

        public void e(int i5, int i6, java.lang.Object obj) {
            for (int size = ((android.database.Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((androidx.recyclerview.widget.RecyclerView.j) ((android.database.Observable) this).mObservers.get(size)).c(i5, i6, obj);
            }
        }

        public void f(int i5, int i6) {
            for (int size = ((android.database.Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((androidx.recyclerview.widget.RecyclerView.j) ((android.database.Observable) this).mObservers.get(size)).d(i5, i6);
            }
        }

        public void g(int i5, int i6) {
            for (int size = ((android.database.Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((androidx.recyclerview.widget.RecyclerView.j) ((android.database.Observable) this).mObservers.get(size)).f(i5, i6);
            }
        }

        public void h() {
            for (int size = ((android.database.Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((androidx.recyclerview.widget.RecyclerView.j) ((android.database.Observable) this).mObservers.get(size)).g();
            }
        }
    }

    public static abstract class j {
        public void a() {
        }

        public void b(int i5, int i6) {
        }

        public void c(int i5, int i6, java.lang.Object obj) {
            b(i5, i6);
        }

        public void d(int i5, int i6) {
        }

        public void e(int i5, int i6, int i7) {
        }

        public void f(int i5, int i6) {
        }

        public void g() {
        }
    }

    public interface k {
        int a(int i5, int i6);
    }

    public static class l {
        public android.widget.EdgeEffect a(androidx.recyclerview.widget.RecyclerView recyclerView, int i5) {
            return new android.widget.EdgeEffect(recyclerView.getContext());
        }
    }

    public static abstract class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView.m.b f1932a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.m.a> f1933b = new java.util.ArrayList<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f1934c = 120;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f1935d = 120;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f1936e = 250;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f1937f = 250;

        public interface a {
            void a();
        }

        public interface b {
            void a(androidx.recyclerview.widget.RecyclerView.b0 b0Var);
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f1938a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f1939b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f1940c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f1941d;

            public androidx.recyclerview.widget.RecyclerView.m.c a(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
                return b(b0Var, 0);
            }

            public androidx.recyclerview.widget.RecyclerView.m.c b(androidx.recyclerview.widget.RecyclerView.b0 b0Var, int i5) {
                android.view.View view = b0Var.itemView;
                this.f1938a = view.getLeft();
                this.f1939b = view.getTop();
                this.f1940c = view.getRight();
                this.f1941d = view.getBottom();
                return this;
            }
        }

        public static int e(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
            int i5 = b0Var.f1911i & 14;
            if (b0Var.o()) {
                return 4;
            }
            if ((i5 & 4) != 0) {
                return i5;
            }
            int oldPosition = b0Var.getOldPosition();
            int absoluteAdapterPosition = b0Var.getAbsoluteAdapterPosition();
            return (oldPosition == -1 || absoluteAdapterPosition == -1 || oldPosition == absoluteAdapterPosition) ? i5 : i5 | 2048;
        }

        public abstract boolean a(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2);

        public abstract boolean b(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.b0 b0Var2, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2);

        public abstract boolean c(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2);

        public abstract boolean d(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2);

        public abstract boolean f(androidx.recyclerview.widget.RecyclerView.b0 b0Var);

        public boolean g(androidx.recyclerview.widget.RecyclerView.b0 b0Var, java.util.List<java.lang.Object> list) {
            return f(b0Var);
        }

        public final void h(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
            r(b0Var);
            androidx.recyclerview.widget.RecyclerView.m.b bVar = this.f1932a;
            if (bVar != null) {
                bVar.a(b0Var);
            }
        }

        public final void i() {
            int size = this.f1933b.size();
            for (int i5 = 0; i5 < size; i5++) {
                this.f1933b.get(i5).a();
            }
            this.f1933b.clear();
        }

        public abstract void j(androidx.recyclerview.widget.RecyclerView.b0 b0Var);

        public abstract void k();

        public long l() {
            return this.f1934c;
        }

        public long m() {
            return this.f1937f;
        }

        public long n() {
            return this.f1936e;
        }

        public long o() {
            return this.f1935d;
        }

        public abstract boolean p();

        public androidx.recyclerview.widget.RecyclerView.m.c q() {
            return new androidx.recyclerview.widget.RecyclerView.m.c();
        }

        public void r(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        }

        public androidx.recyclerview.widget.RecyclerView.m.c s(androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
            return q().a(b0Var);
        }

        public androidx.recyclerview.widget.RecyclerView.m.c t(androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.RecyclerView.b0 b0Var, int i5, java.util.List<java.lang.Object> list) {
            return q().a(b0Var);
        }

        public abstract void u();

        public void v(androidx.recyclerview.widget.RecyclerView.m.b bVar) {
            this.f1932a = bVar;
        }
    }

    public class n implements androidx.recyclerview.widget.RecyclerView.m.b {
        public n() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.m.b
        public void a(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
            b0Var.setIsRecyclable(true);
            if (b0Var.f1909g != null && b0Var.f1910h == null) {
                b0Var.f1909g = null;
            }
            b0Var.f1910h = null;
            if (b0Var.B() || androidx.recyclerview.widget.RecyclerView.this.S0(b0Var.itemView) || !b0Var.r()) {
                return;
            }
            androidx.recyclerview.widget.RecyclerView.this.removeDetachedView(b0Var.itemView, false);
        }
    }

    public static abstract class o {
        @java.lang.Deprecated
        public void d(android.graphics.Rect rect, int i5, androidx.recyclerview.widget.RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void e(android.graphics.Rect rect, android.view.View view, androidx.recyclerview.widget.RecyclerView recyclerView, androidx.recyclerview.widget.RecyclerView.y yVar) {
            d(rect, ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams()).a(), recyclerView);
        }

        @java.lang.Deprecated
        public void f(android.graphics.Canvas canvas, androidx.recyclerview.widget.RecyclerView recyclerView) {
        }

        public void g(android.graphics.Canvas canvas, androidx.recyclerview.widget.RecyclerView recyclerView, androidx.recyclerview.widget.RecyclerView.y yVar) {
            f(canvas, recyclerView);
        }

        @java.lang.Deprecated
        public void h(android.graphics.Canvas canvas, androidx.recyclerview.widget.RecyclerView recyclerView) {
        }

        public void i(android.graphics.Canvas canvas, androidx.recyclerview.widget.RecyclerView recyclerView, androidx.recyclerview.widget.RecyclerView.y yVar) {
            h(canvas, recyclerView);
        }
    }

    public static abstract class p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public androidx.recyclerview.widget.b f1943a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView f1944b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final androidx.recyclerview.widget.l.b f1945c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final androidx.recyclerview.widget.l.b f1946d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public androidx.recyclerview.widget.l f1947e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public androidx.recyclerview.widget.l f1948f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f1949g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f1950h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f1951i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f1952j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f1953k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f1954l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f1955m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f1956n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f1957o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f1958p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f1959q;

        public class a implements androidx.recyclerview.widget.l.b {
            public a() {
            }

            @Override // androidx.recyclerview.widget.l.b
            public android.view.View a(int i5) {
                return androidx.recyclerview.widget.RecyclerView.p.this.H(i5);
            }

            @Override // androidx.recyclerview.widget.l.b
            public int b() {
                return androidx.recyclerview.widget.RecyclerView.p.this.m0() - androidx.recyclerview.widget.RecyclerView.p.this.d0();
            }

            @Override // androidx.recyclerview.widget.l.b
            public int c() {
                return androidx.recyclerview.widget.RecyclerView.p.this.c0();
            }

            @Override // androidx.recyclerview.widget.l.b
            public int d(android.view.View view) {
                return androidx.recyclerview.widget.RecyclerView.p.this.S(view) + ((android.view.ViewGroup.MarginLayoutParams) ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
            }

            @Override // androidx.recyclerview.widget.l.b
            public int e(android.view.View view) {
                return androidx.recyclerview.widget.RecyclerView.p.this.P(view) - ((android.view.ViewGroup.MarginLayoutParams) ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
            }
        }

        public class b implements androidx.recyclerview.widget.l.b {
            public b() {
            }

            @Override // androidx.recyclerview.widget.l.b
            public android.view.View a(int i5) {
                return androidx.recyclerview.widget.RecyclerView.p.this.H(i5);
            }

            @Override // androidx.recyclerview.widget.l.b
            public int b() {
                return androidx.recyclerview.widget.RecyclerView.p.this.V() - androidx.recyclerview.widget.RecyclerView.p.this.b0();
            }

            @Override // androidx.recyclerview.widget.l.b
            public int c() {
                return androidx.recyclerview.widget.RecyclerView.p.this.e0();
            }

            @Override // androidx.recyclerview.widget.l.b
            public int d(android.view.View view) {
                return androidx.recyclerview.widget.RecyclerView.p.this.N(view) + ((android.view.ViewGroup.MarginLayoutParams) ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
            }

            @Override // androidx.recyclerview.widget.l.b
            public int e(android.view.View view) {
                return androidx.recyclerview.widget.RecyclerView.p.this.T(view) - ((android.view.ViewGroup.MarginLayoutParams) ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
            }
        }

        public interface c {
            void a(int i5, int i6);
        }

        public static class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f1962a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f1963b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f1964c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f1965d;
        }

        public p() {
            androidx.recyclerview.widget.RecyclerView.p.a aVar = new androidx.recyclerview.widget.RecyclerView.p.a();
            this.f1945c = aVar;
            androidx.recyclerview.widget.RecyclerView.p.b bVar = new androidx.recyclerview.widget.RecyclerView.p.b();
            this.f1946d = bVar;
            this.f1947e = new androidx.recyclerview.widget.l(aVar);
            this.f1948f = new androidx.recyclerview.widget.l(bVar);
            this.f1949g = false;
            this.f1950h = false;
            this.f1951i = false;
            this.f1952j = true;
            this.f1953k = true;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x001c  */
        /* JADX WARN: Code duplicated, block: B:14:0x0020  */
        /* JADX WARN: Code duplicated, block: B:21:0x002f  */
        public static int J(int i5, int i6, int i7, int i8, boolean z4) {
            int iMax = java.lang.Math.max(0, i5 - i7);
            if (z4) {
                if (i8 >= 0) {
                    i6 = 1073741824;
                } else if (i8 != -1 || (i6 != Integer.MIN_VALUE && (i6 == 0 || i6 != 1073741824))) {
                    i6 = 0;
                    i8 = 0;
                } else {
                    i8 = iMax;
                }
            } else if (i8 >= 0) {
                i6 = 1073741824;
            } else if (i8 == -1) {
                i8 = iMax;
            } else if (i8 != -2) {
                i6 = 0;
                i8 = 0;
            } else if (i6 == Integer.MIN_VALUE || i6 == 1073741824) {
                i8 = iMax;
                i6 = Integer.MIN_VALUE;
            } else {
                i8 = iMax;
                i6 = 0;
            }
            return android.view.View.MeasureSpec.makeMeasureSpec(i8, i6);
        }

        public static androidx.recyclerview.widget.RecyclerView.p.d g0(android.content.Context context, android.util.AttributeSet attributeSet, int i5, int i6) {
            androidx.recyclerview.widget.RecyclerView.p.d dVar = new androidx.recyclerview.widget.RecyclerView.p.d();
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.recyclerview.R.styleable.RecyclerView, i5, i6);
            dVar.f1962a = typedArrayObtainStyledAttributes.getInt(androidx.recyclerview.R.styleable.RecyclerView_android_orientation, 1);
            dVar.f1963b = typedArrayObtainStyledAttributes.getInt(androidx.recyclerview.R.styleable.RecyclerView_spanCount, 1);
            dVar.f1964c = typedArrayObtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_reverseLayout, false);
            dVar.f1965d = typedArrayObtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_stackFromEnd, false);
            typedArrayObtainStyledAttributes.recycle();
            return dVar;
        }

        public static int m(int i5, int i6, int i7) {
            int mode = android.view.View.MeasureSpec.getMode(i5);
            int size = android.view.View.MeasureSpec.getSize(i5);
            if (mode != Integer.MIN_VALUE) {
                return mode != 1073741824 ? java.lang.Math.max(i6, i7) : size;
            }
            return java.lang.Math.min(size, java.lang.Math.max(i6, i7));
        }

        public static boolean u0(int i5, int i6, int i7) {
            int mode = android.view.View.MeasureSpec.getMode(i6);
            int size = android.view.View.MeasureSpec.getSize(i6);
            if (i7 > 0 && i5 != i7) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i5;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i5;
            }
            return true;
        }

        public android.view.View A(android.view.View view) {
            android.view.View viewQ;
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            if (recyclerView == null || (viewQ = recyclerView.Q(view)) == null || this.f1943a.n(viewQ)) {
                return null;
            }
            return viewQ;
        }

        public void A0(int i5) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            if (recyclerView != null) {
                recyclerView.w0(i5);
            }
        }

        public void A1(androidx.recyclerview.widget.RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f1944b = null;
                this.f1943a = null;
                this.f1958p = 0;
                this.f1959q = 0;
            } else {
                this.f1944b = recyclerView;
                this.f1943a = recyclerView.f1849e;
                this.f1958p = recyclerView.getWidth();
                this.f1959q = recyclerView.getHeight();
            }
            this.f1956n = com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY;
            this.f1957o = com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY;
        }

        public android.view.View B(int i5) {
            int I = I();
            for (int i6 = 0; i6 < I; i6++) {
                android.view.View viewH = H(i6);
                androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = androidx.recyclerview.widget.RecyclerView.d0(viewH);
                if (b0VarD0 != null && b0VarD0.getLayoutPosition() == i5 && !b0VarD0.C() && (this.f1944b.f1862m0.e() || !b0VarD0.p())) {
                    return viewH;
                }
            }
            return null;
        }

        public void B0(int i5) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            if (recyclerView != null) {
                recyclerView.x0(i5);
            }
        }

        public boolean B1(android.view.View view, int i5, int i6, androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams) {
            return (!view.isLayoutRequested() && this.f1952j && u0(view.getWidth(), i5, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width) && u0(view.getHeight(), i6, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
        }

        public abstract androidx.recyclerview.widget.RecyclerView.LayoutParams C();

        public void C0(androidx.recyclerview.widget.RecyclerView.h hVar, androidx.recyclerview.widget.RecyclerView.h hVar2) {
        }

        public boolean C1() {
            return false;
        }

        public androidx.recyclerview.widget.RecyclerView.LayoutParams D(android.content.Context context, android.util.AttributeSet attributeSet) {
            return new androidx.recyclerview.widget.RecyclerView.LayoutParams(context, attributeSet);
        }

        public boolean D0(androidx.recyclerview.widget.RecyclerView recyclerView, java.util.ArrayList<android.view.View> arrayList, int i5, int i6) {
            return false;
        }

        public boolean D1(android.view.View view, int i5, int i6, androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams) {
            return (this.f1952j && u0(view.getMeasuredWidth(), i5, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width) && u0(view.getMeasuredHeight(), i6, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
        }

        public androidx.recyclerview.widget.RecyclerView.LayoutParams E(android.view.ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof androidx.recyclerview.widget.RecyclerView.LayoutParams) {
                return new androidx.recyclerview.widget.RecyclerView.LayoutParams((androidx.recyclerview.widget.RecyclerView.LayoutParams) layoutParams);
            }
            return layoutParams instanceof android.view.ViewGroup.MarginLayoutParams ? new androidx.recyclerview.widget.RecyclerView.LayoutParams((android.view.ViewGroup.MarginLayoutParams) layoutParams) : new androidx.recyclerview.widget.RecyclerView.LayoutParams(layoutParams);
        }

        public void E0(androidx.recyclerview.widget.RecyclerView recyclerView) {
        }

        public void E1() {
        }

        public int F() {
            return -1;
        }

        @java.lang.Deprecated
        public void F0(androidx.recyclerview.widget.RecyclerView recyclerView) {
        }

        public boolean F1() {
            return false;
        }

        public int G(android.view.View view) {
            return ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams()).f1889b.bottom;
        }

        public void G0(androidx.recyclerview.widget.RecyclerView recyclerView, androidx.recyclerview.widget.RecyclerView.v vVar) {
            F0(recyclerView);
        }

        public android.view.View H(int i5) {
            androidx.recyclerview.widget.b bVar = this.f1943a;
            if (bVar != null) {
                return bVar.f(i5);
            }
            return null;
        }

        public android.view.View H0(android.view.View view, int i5, androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
            return null;
        }

        public int I() {
            androidx.recyclerview.widget.b bVar = this.f1943a;
            if (bVar != null) {
                return bVar.g();
            }
            return 0;
        }

        public void I0(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            J0(recyclerView.f1843b, recyclerView.f1862m0, accessibilityEvent);
        }

        public void J0(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z4 = true;
            if (!recyclerView.canScrollVertically(1) && !this.f1944b.canScrollVertically(-1) && !this.f1944b.canScrollHorizontally(-1) && !this.f1944b.canScrollHorizontally(1)) {
                z4 = false;
            }
            accessibilityEvent.setScrollable(z4);
            androidx.recyclerview.widget.RecyclerView.h hVar = this.f1944b.f1868q;
            if (hVar != null) {
                accessibilityEvent.setItemCount(hVar.getItemCount());
            }
        }

        public final int[] K(android.view.View view, android.graphics.Rect rect) {
            int[] iArr = new int[2];
            int iC0 = c0();
            int iE0 = e0();
            int iM0 = m0() - d0();
            int iV = V() - b0();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int iWidth = rect.width() + left;
            int iHeight = rect.height() + top;
            int i5 = left - iC0;
            int iMin = java.lang.Math.min(0, i5);
            int i6 = top - iE0;
            int iMin2 = java.lang.Math.min(0, i6);
            int i7 = iWidth - iM0;
            int iMax = java.lang.Math.max(0, i7);
            int iMax2 = java.lang.Math.max(0, iHeight - iV);
            if (X() != 1) {
                if (iMin == 0) {
                    iMin = java.lang.Math.min(i5, iMax);
                }
                iMax = iMin;
            } else if (iMax == 0) {
                iMax = java.lang.Math.max(iMin, i7);
            }
            if (iMin2 == 0) {
                iMin2 = java.lang.Math.min(i6, iMax2);
            }
            iArr[0] = iMax;
            iArr[1] = iMin2;
            return iArr;
        }

        public void K0(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, x.c cVar) {
            if (this.f1944b.canScrollVertically(-1) || this.f1944b.canScrollHorizontally(-1)) {
                cVar.a(8192);
                cVar.d0(true);
            }
            if (this.f1944b.canScrollVertically(1) || this.f1944b.canScrollHorizontally(1)) {
                cVar.a(4096);
                cVar.d0(true);
            }
            cVar.Q(x.c.b.a(i0(vVar, yVar), M(vVar, yVar), t0(vVar, yVar), j0(vVar, yVar)));
        }

        public boolean L() {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            return recyclerView != null && recyclerView.f1853g;
        }

        public void L0(x.c cVar) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            K0(recyclerView.f1843b, recyclerView.f1862m0, cVar);
        }

        public int M(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
            return -1;
        }

        public void M0(android.view.View view, x.c cVar) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = androidx.recyclerview.widget.RecyclerView.d0(view);
            if (b0VarD0 == null || b0VarD0.p() || this.f1943a.n(b0VarD0.itemView)) {
                return;
            }
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            N0(recyclerView.f1843b, recyclerView.f1862m0, view, cVar);
        }

        public int N(android.view.View view) {
            return view.getBottom() + G(view);
        }

        public void N0(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, android.view.View view, x.c cVar) {
        }

        public void O(android.view.View view, android.graphics.Rect rect) {
            androidx.recyclerview.widget.RecyclerView.e0(view, rect);
        }

        public android.view.View O0(android.view.View view, int i5) {
            return null;
        }

        public int P(android.view.View view) {
            return view.getLeft() - Y(view);
        }

        public void P0(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6) {
        }

        public int Q(android.view.View view) {
            android.graphics.Rect rect = ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams()).f1889b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public void Q0(androidx.recyclerview.widget.RecyclerView recyclerView) {
        }

        public int R(android.view.View view) {
            android.graphics.Rect rect = ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams()).f1889b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public void R0(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6, int i7) {
        }

        public int S(android.view.View view) {
            return view.getRight() + h0(view);
        }

        public void S0(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6) {
        }

        public int T(android.view.View view) {
            return view.getTop() - k0(view);
        }

        public void T0(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6) {
        }

        public android.view.View U() {
            android.view.View focusedChild;
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f1943a.n(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public void U0(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6, java.lang.Object obj) {
            T0(recyclerView, i5, i6);
        }

        public int V() {
            return this.f1959q;
        }

        public void V0(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
            android.util.Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public int W() {
            return this.f1957o;
        }

        public void W0(androidx.recyclerview.widget.RecyclerView.y yVar) {
        }

        public int X() {
            return w.q.p(this.f1944b);
        }

        public void X0(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, int i5, int i6) {
            this.f1944b.v(i5, i6);
        }

        public int Y(android.view.View view) {
            return ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams()).f1889b.left;
        }

        @java.lang.Deprecated
        public boolean Y0(androidx.recyclerview.widget.RecyclerView recyclerView, android.view.View view, android.view.View view2) {
            return v0() || recyclerView.r0();
        }

        public int Z() {
            return w.q.q(this.f1944b);
        }

        public boolean Z0(androidx.recyclerview.widget.RecyclerView recyclerView, androidx.recyclerview.widget.RecyclerView.y yVar, android.view.View view, android.view.View view2) {
            return Y0(recyclerView, view, view2);
        }

        public void a(android.view.View view) {
            b(view, -1);
        }

        public int a0() {
            return w.q.r(this.f1944b);
        }

        public void a1(android.os.Parcelable parcelable) {
        }

        public void b(android.view.View view, int i5) {
            e(view, i5, true);
        }

        public int b0() {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public android.os.Parcelable b1() {
            return null;
        }

        public void c(android.view.View view) {
            d(view, -1);
        }

        public int c0() {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public void c1(int i5) {
        }

        public void d(android.view.View view, int i5) {
            e(view, i5, false);
        }

        public int d0() {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public boolean d1(int i5, android.os.Bundle bundle) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            return e1(recyclerView.f1843b, recyclerView.f1862m0, i5, bundle);
        }

        public final void e(android.view.View view, int i5, boolean z4) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = androidx.recyclerview.widget.RecyclerView.d0(view);
            if (z4 || b0VarD0.p()) {
                this.f1944b.f1851f.b(b0VarD0);
            } else {
                this.f1944b.f1851f.p(b0VarD0);
            }
            androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams = (androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams();
            if (b0VarD0.E() || b0VarD0.q()) {
                if (b0VarD0.q()) {
                    b0VarD0.D();
                } else {
                    b0VarD0.e();
                }
                this.f1943a.c(view, i5, view.getLayoutParams(), false);
            } else if (view.getParent() == this.f1944b) {
                int iM = this.f1943a.m(view);
                if (i5 == -1) {
                    i5 = this.f1943a.g();
                }
                if (iM == -1) {
                    throw new java.lang.IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f1944b.indexOfChild(view) + this.f1944b.O());
                }
                if (iM != i5) {
                    this.f1944b.f1870r.z0(iM, i5);
                }
            } else {
                this.f1943a.a(view, i5, false);
                layoutParams.f1890c = true;
            }
            if (layoutParams.f1891d) {
                b0VarD0.itemView.invalidate();
                layoutParams.f1891d = false;
            }
        }

        public int e0() {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        /* JADX WARN: Code duplicated, block: B:25:0x0071 A[PHI: r8
  0x0071: PHI (r8v8 int) = (r8v4 int), (r8v12 int) binds: [B:22:0x005e, B:15:0x0030] A[DONT_GENERATE, DONT_INLINE]] */
        public boolean e1(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, int i5, android.os.Bundle bundle) {
            int iV;
            int iM0;
            int i6;
            int i7;
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            if (recyclerView == null) {
                return false;
            }
            if (i5 == 4096) {
                iV = recyclerView.canScrollVertically(1) ? (V() - e0()) - b0() : 0;
                if (this.f1944b.canScrollHorizontally(1)) {
                    iM0 = (m0() - c0()) - d0();
                    i6 = iV;
                    i7 = iM0;
                } else {
                    i6 = iV;
                    i7 = 0;
                }
            } else if (i5 != 8192) {
                i7 = 0;
                i6 = 0;
            } else {
                iV = recyclerView.canScrollVertically(-1) ? -((V() - e0()) - b0()) : 0;
                if (this.f1944b.canScrollHorizontally(-1)) {
                    iM0 = -((m0() - c0()) - d0());
                    i6 = iV;
                    i7 = iM0;
                } else {
                    i6 = iV;
                    i7 = 0;
                }
            }
            if (i6 == 0 && i7 == 0) {
                return false;
            }
            this.f1944b.k1(i7, i6, null, Integer.MIN_VALUE, true);
            return true;
        }

        public void f(java.lang.String str) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            if (recyclerView != null) {
                recyclerView.n(str);
            }
        }

        public int f0(android.view.View view) {
            return ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams()).a();
        }

        public boolean f1(android.view.View view, int i5, android.os.Bundle bundle) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            return g1(recyclerView.f1843b, recyclerView.f1862m0, view, i5, bundle);
        }

        public void g(android.view.View view, int i5) {
            h(view, i5, (androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams());
        }

        public boolean g1(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar, android.view.View view, int i5, android.os.Bundle bundle) {
            return false;
        }

        public void h(android.view.View view, int i5, androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = androidx.recyclerview.widget.RecyclerView.d0(view);
            if (b0VarD0.p()) {
                this.f1944b.f1851f.b(b0VarD0);
            } else {
                this.f1944b.f1851f.p(b0VarD0);
            }
            this.f1943a.c(view, i5, layoutParams, b0VarD0.p());
        }

        public int h0(android.view.View view) {
            return ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams()).f1889b.right;
        }

        public void h1(androidx.recyclerview.widget.RecyclerView.v vVar) {
            for (int I = I() - 1; I >= 0; I--) {
                if (!androidx.recyclerview.widget.RecyclerView.d0(H(I)).C()) {
                    k1(I, vVar);
                }
            }
        }

        public void i(android.view.View view, android.graphics.Rect rect) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.h0(view));
            }
        }

        public int i0(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
            return -1;
        }

        public void i1(androidx.recyclerview.widget.RecyclerView.v vVar) {
            int iJ = vVar.j();
            for (int i5 = iJ - 1; i5 >= 0; i5--) {
                android.view.View viewN = vVar.n(i5);
                androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = androidx.recyclerview.widget.RecyclerView.d0(viewN);
                if (!b0VarD0.C()) {
                    b0VarD0.setIsRecyclable(false);
                    if (b0VarD0.r()) {
                        this.f1944b.removeDetachedView(viewN, false);
                    }
                    androidx.recyclerview.widget.RecyclerView.m mVar = this.f1944b.S;
                    if (mVar != null) {
                        mVar.j(b0VarD0);
                    }
                    b0VarD0.setIsRecyclable(true);
                    vVar.y(viewN);
                }
            }
            vVar.e();
            if (iJ > 0) {
                this.f1944b.invalidate();
            }
        }

        public boolean j() {
            return false;
        }

        public int j0(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
            return 0;
        }

        public void j1(android.view.View view, androidx.recyclerview.widget.RecyclerView.v vVar) {
            m1(view);
            vVar.B(view);
        }

        public boolean k() {
            return false;
        }

        public int k0(android.view.View view) {
            return ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams()).f1889b.top;
        }

        public void k1(int i5, androidx.recyclerview.widget.RecyclerView.v vVar) {
            android.view.View viewH = H(i5);
            n1(i5);
            vVar.B(viewH);
        }

        public boolean l(androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams) {
            return layoutParams != null;
        }

        public void l0(android.view.View view, boolean z4, android.graphics.Rect rect) {
            android.graphics.Matrix matrix;
            if (z4) {
                android.graphics.Rect rect2 = ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams()).f1889b;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.f1944b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                android.graphics.RectF rectF = this.f1944b.f1866p;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) java.lang.Math.floor(rectF.left), (int) java.lang.Math.floor(rectF.top), (int) java.lang.Math.ceil(rectF.right), (int) java.lang.Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public boolean l1(java.lang.Runnable runnable) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public int m0() {
            return this.f1958p;
        }

        public void m1(android.view.View view) {
            this.f1943a.p(view);
        }

        public void n(int i5, int i6, androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.RecyclerView.p.c cVar) {
        }

        public int n0() {
            return this.f1956n;
        }

        public void n1(int i5) {
            if (H(i5) != null) {
                this.f1943a.q(i5);
            }
        }

        public void o(int i5, androidx.recyclerview.widget.RecyclerView.p.c cVar) {
        }

        public boolean o0() {
            int I = I();
            for (int i5 = 0; i5 < I; i5++) {
                android.view.ViewGroup.LayoutParams layoutParams = H(i5).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public boolean o1(androidx.recyclerview.widget.RecyclerView recyclerView, android.view.View view, android.graphics.Rect rect, boolean z4) {
            return p1(recyclerView, view, rect, z4, false);
        }

        public int p(androidx.recyclerview.widget.RecyclerView.y yVar) {
            return 0;
        }

        public boolean p0() {
            return this.f1950h;
        }

        public boolean p1(androidx.recyclerview.widget.RecyclerView recyclerView, android.view.View view, android.graphics.Rect rect, boolean z4, boolean z5) {
            int[] iArrK = K(view, rect);
            int i5 = iArrK[0];
            int i6 = iArrK[1];
            if ((z5 && !r0(recyclerView, i5, i6)) || (i5 == 0 && i6 == 0)) {
                return false;
            }
            if (z4) {
                recyclerView.scrollBy(i5, i6);
            } else {
                recyclerView.h1(i5, i6);
            }
            return true;
        }

        public int q(androidx.recyclerview.widget.RecyclerView.y yVar) {
            return 0;
        }

        public boolean q0() {
            return this.f1951i;
        }

        public void q1() {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.f1944b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public int r(androidx.recyclerview.widget.RecyclerView.y yVar) {
            return 0;
        }

        public final boolean r0(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6) {
            android.view.View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int iC0 = c0();
            int iE0 = e0();
            int iM0 = m0() - d0();
            int iV = V() - b0();
            android.graphics.Rect rect = this.f1944b.f1857i;
            O(focusedChild, rect);
            return rect.left - i5 < iM0 && rect.right - i5 > iC0 && rect.top - i6 < iV && rect.bottom - i6 > iE0;
        }

        public void r1() {
            this.f1949g = true;
        }

        public int s(androidx.recyclerview.widget.RecyclerView.y yVar) {
            return 0;
        }

        public final boolean s0() {
            return this.f1953k;
        }

        public final void s1(androidx.recyclerview.widget.RecyclerView.v vVar, int i5, android.view.View view) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = androidx.recyclerview.widget.RecyclerView.d0(view);
            if (b0VarD0.C()) {
                return;
            }
            if (b0VarD0.o() && !b0VarD0.p() && !this.f1944b.f1868q.hasStableIds()) {
                n1(i5);
                vVar.C(b0VarD0);
            } else {
                w(i5);
                vVar.D(view);
                this.f1944b.f1851f.k(b0VarD0);
            }
        }

        public int t(androidx.recyclerview.widget.RecyclerView.y yVar) {
            return 0;
        }

        public boolean t0(androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
            return false;
        }

        public int t1(int i5, androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
            return 0;
        }

        public int u(androidx.recyclerview.widget.RecyclerView.y yVar) {
            return 0;
        }

        public int u1(int i5, androidx.recyclerview.widget.RecyclerView.v vVar, androidx.recyclerview.widget.RecyclerView.y yVar) {
            return 0;
        }

        public void v(androidx.recyclerview.widget.RecyclerView.v vVar) {
            for (int I = I() - 1; I >= 0; I--) {
                s1(vVar, I, H(I));
            }
        }

        public boolean v0() {
            return false;
        }

        public void v1(androidx.recyclerview.widget.RecyclerView recyclerView) {
            w1(android.view.View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), android.view.View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY));
        }

        public void w(int i5) {
            x(i5, H(i5));
        }

        public boolean w0(android.view.View view, boolean z4, boolean z5) {
            boolean z6 = this.f1947e.b(view, 24579) && this.f1948f.b(view, 24579);
            return z4 ? z6 : !z6;
        }

        public void w1(int i5, int i6) {
            this.f1958p = android.view.View.MeasureSpec.getSize(i5);
            int mode = android.view.View.MeasureSpec.getMode(i5);
            this.f1956n = mode;
            if (mode == 0 && !androidx.recyclerview.widget.RecyclerView.I0) {
                this.f1958p = 0;
            }
            this.f1959q = android.view.View.MeasureSpec.getSize(i6);
            int mode2 = android.view.View.MeasureSpec.getMode(i6);
            this.f1957o = mode2;
            if (mode2 != 0 || androidx.recyclerview.widget.RecyclerView.I0) {
                return;
            }
            this.f1959q = 0;
        }

        public final void x(int i5, android.view.View view) {
            this.f1943a.d(i5);
        }

        public void x0(android.view.View view, int i5, int i6, int i7, int i8) {
            androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams = (androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams();
            android.graphics.Rect rect = layoutParams.f1889b;
            view.layout(i5 + rect.left + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i6 + rect.top + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i7 - rect.right) - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i8 - rect.bottom) - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        public void x1(int i5, int i6) {
            this.f1944b.setMeasuredDimension(i5, i6);
        }

        public void y(androidx.recyclerview.widget.RecyclerView recyclerView) {
            this.f1950h = true;
            E0(recyclerView);
        }

        public void y0(android.view.View view, int i5, int i6) {
            androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams = (androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams();
            android.graphics.Rect rectH0 = this.f1944b.h0(view);
            int i7 = i5 + rectH0.left + rectH0.right;
            int i8 = i6 + rectH0.top + rectH0.bottom;
            int iJ = J(m0(), n0(), c0() + d0() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i7, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width, j());
            int iJ2 = J(V(), W(), e0() + b0() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i8, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height, k());
            if (B1(view, iJ, iJ2, layoutParams)) {
                view.measure(iJ, iJ2);
            }
        }

        public void y1(android.graphics.Rect rect, int i5, int i6) {
            x1(m(i5, rect.width() + c0() + d0(), a0()), m(i6, rect.height() + e0() + b0(), Z()));
        }

        public void z(androidx.recyclerview.widget.RecyclerView recyclerView, androidx.recyclerview.widget.RecyclerView.v vVar) {
            this.f1950h = false;
            G0(recyclerView, vVar);
        }

        public void z0(int i5, int i6) {
            android.view.View viewH = H(i5);
            if (viewH != null) {
                w(i5);
                g(viewH, i6);
            } else {
                throw new java.lang.IllegalArgumentException("Cannot move a child from non-existing index:" + i5 + this.f1944b.toString());
            }
        }

        public void z1(int i5, int i6) {
            int I = I();
            if (I == 0) {
                this.f1944b.v(i5, i6);
                return;
            }
            int i7 = Integer.MIN_VALUE;
            int i8 = Integer.MAX_VALUE;
            int i9 = Integer.MAX_VALUE;
            int i10 = Integer.MIN_VALUE;
            for (int i11 = 0; i11 < I; i11++) {
                android.view.View viewH = H(i11);
                android.graphics.Rect rect = this.f1944b.f1857i;
                O(viewH, rect);
                int i12 = rect.left;
                if (i12 < i8) {
                    i8 = i12;
                }
                int i13 = rect.right;
                if (i13 > i7) {
                    i7 = i13;
                }
                int i14 = rect.top;
                if (i14 < i9) {
                    i9 = i14;
                }
                int i15 = rect.bottom;
                if (i15 > i10) {
                    i10 = i15;
                }
            }
            this.f1944b.f1857i.set(i8, i9, i7, i10);
            y1(this.f1944b.f1857i, i5, i6);
        }
    }

    public interface q {
        void a(android.view.View view);

        void b(android.view.View view);
    }

    public static abstract class r {
    }

    public interface s {
        boolean a(androidx.recyclerview.widget.RecyclerView recyclerView, android.view.MotionEvent motionEvent);

        void b(androidx.recyclerview.widget.RecyclerView recyclerView, android.view.MotionEvent motionEvent);

        void c(boolean z4);
    }

    public static abstract class t {
        public void a(androidx.recyclerview.widget.RecyclerView recyclerView, int i5) {
        }

        public void b(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6) {
        }
    }

    public static class u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public android.util.SparseArray<androidx.recyclerview.widget.RecyclerView.u.a> f1966a = new android.util.SparseArray<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1967b = 0;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> f1968a = new java.util.ArrayList<>();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f1969b = 5;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public long f1970c = 0;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public long f1971d = 0;
        }

        public void a() {
            this.f1967b++;
        }

        public void b() {
            for (int i5 = 0; i5 < this.f1966a.size(); i5++) {
                this.f1966a.valueAt(i5).f1968a.clear();
            }
        }

        public void c() {
            this.f1967b--;
        }

        public void d(int i5, long j5) {
            androidx.recyclerview.widget.RecyclerView.u.a aVarG = g(i5);
            aVarG.f1971d = j(aVarG.f1971d, j5);
        }

        public void e(int i5, long j5) {
            androidx.recyclerview.widget.RecyclerView.u.a aVarG = g(i5);
            aVarG.f1970c = j(aVarG.f1970c, j5);
        }

        public androidx.recyclerview.widget.RecyclerView.b0 f(int i5) {
            androidx.recyclerview.widget.RecyclerView.u.a aVar = this.f1966a.get(i5);
            if (aVar == null || aVar.f1968a.isEmpty()) {
                return null;
            }
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> arrayList = aVar.f1968a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!arrayList.get(size).m()) {
                    return arrayList.remove(size);
                }
            }
            return null;
        }

        public final androidx.recyclerview.widget.RecyclerView.u.a g(int i5) {
            androidx.recyclerview.widget.RecyclerView.u.a aVar = this.f1966a.get(i5);
            if (aVar != null) {
                return aVar;
            }
            androidx.recyclerview.widget.RecyclerView.u.a aVar2 = new androidx.recyclerview.widget.RecyclerView.u.a();
            this.f1966a.put(i5, aVar2);
            return aVar2;
        }

        public void h(androidx.recyclerview.widget.RecyclerView.h hVar, androidx.recyclerview.widget.RecyclerView.h hVar2, boolean z4) {
            if (hVar != null) {
                c();
            }
            if (!z4 && this.f1967b == 0) {
                b();
            }
            if (hVar2 != null) {
                a();
            }
        }

        public void i(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
            int itemViewType = b0Var.getItemViewType();
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> arrayList = g(itemViewType).f1968a;
            if (this.f1966a.get(itemViewType).f1969b <= arrayList.size()) {
                return;
            }
            b0Var.x();
            arrayList.add(b0Var);
        }

        public long j(long j5, long j6) {
            return j5 == 0 ? j6 : ((j5 / 4) * 3) + (j6 / 4);
        }

        public boolean k(int i5, long j5, long j6) {
            long j7 = g(i5).f1971d;
            return j7 == 0 || j5 + j7 < j6;
        }

        public boolean l(int i5, long j5, long j6) {
            long j7 = g(i5).f1970c;
            return j7 == 0 || j5 + j7 < j6;
        }
    }

    public final class v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> f1972a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> f1973b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> f1974c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final java.util.List<androidx.recyclerview.widget.RecyclerView.b0> f1975d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1976e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1977f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView.u f1978g;

        public v() {
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> arrayList = new java.util.ArrayList<>();
            this.f1972a = arrayList;
            this.f1973b = null;
            this.f1974c = new java.util.ArrayList<>();
            this.f1975d = java.util.Collections.unmodifiableList(arrayList);
            this.f1976e = 2;
            this.f1977f = 2;
        }

        public void A(int i5) {
            a(this.f1974c.get(i5), true);
            this.f1974c.remove(i5);
        }

        public void B(android.view.View view) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = androidx.recyclerview.widget.RecyclerView.d0(view);
            if (b0VarD0.r()) {
                androidx.recyclerview.widget.RecyclerView.this.removeDetachedView(view, false);
            }
            if (b0VarD0.q()) {
                b0VarD0.D();
            } else if (b0VarD0.E()) {
                b0VarD0.e();
            }
            C(b0VarD0);
            if (androidx.recyclerview.widget.RecyclerView.this.S == null || b0VarD0.isRecyclable()) {
                return;
            }
            androidx.recyclerview.widget.RecyclerView.this.S.j(b0VarD0);
        }

        public void C(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
            boolean z4;
            boolean z5 = false;
            boolean z6 = true;
            if (b0Var.q() || b0Var.itemView.getParent() != null) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(b0Var.q());
                sb.append(" isAttached:");
                sb.append(b0Var.itemView.getParent() != null);
                sb.append(androidx.recyclerview.widget.RecyclerView.this.O());
                throw new java.lang.IllegalArgumentException(sb.toString());
            }
            if (b0Var.r()) {
                throw new java.lang.IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + b0Var + androidx.recyclerview.widget.RecyclerView.this.O());
            }
            if (b0Var.C()) {
                throw new java.lang.IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + androidx.recyclerview.widget.RecyclerView.this.O());
            }
            boolean zH = b0Var.h();
            androidx.recyclerview.widget.RecyclerView.h hVar = androidx.recyclerview.widget.RecyclerView.this.f1868q;
            if ((hVar != null && zH && hVar.onFailedToRecycleView(b0Var)) || b0Var.isRecyclable()) {
                if (this.f1977f <= 0 || b0Var.k(526)) {
                    z4 = false;
                } else {
                    int size = this.f1974c.size();
                    if (size >= this.f1977f && size > 0) {
                        A(0);
                        size--;
                    }
                    if (androidx.recyclerview.widget.RecyclerView.K0 && size > 0 && !androidx.recyclerview.widget.RecyclerView.this.f1861l0.d(b0Var.f1904b)) {
                        int i5 = size - 1;
                        while (i5 >= 0) {
                            if (!androidx.recyclerview.widget.RecyclerView.this.f1861l0.d(this.f1974c.get(i5).f1904b)) {
                                break;
                            } else {
                                i5--;
                            }
                        }
                        size = i5 + 1;
                    }
                    this.f1974c.add(size, b0Var);
                    z4 = true;
                }
                if (z4) {
                    z6 = false;
                } else {
                    a(b0Var, true);
                }
                z5 = z4;
            } else {
                z6 = false;
            }
            androidx.recyclerview.widget.RecyclerView.this.f1851f.q(b0Var);
            if (z5 || z6 || !zH) {
                return;
            }
            b0Var.f1920r = null;
            b0Var.f1919q = null;
        }

        public void D(android.view.View view) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = androidx.recyclerview.widget.RecyclerView.d0(view);
            if (!b0VarD0.k(12) && b0VarD0.s() && !androidx.recyclerview.widget.RecyclerView.this.o(b0VarD0)) {
                if (this.f1973b == null) {
                    this.f1973b = new java.util.ArrayList<>();
                }
                b0VarD0.A(this, true);
                this.f1973b.add(b0VarD0);
                return;
            }
            if (!b0VarD0.o() || b0VarD0.p() || androidx.recyclerview.widget.RecyclerView.this.f1868q.hasStableIds()) {
                b0VarD0.A(this, false);
                this.f1972a.add(b0VarD0);
            } else {
                throw new java.lang.IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + androidx.recyclerview.widget.RecyclerView.this.O());
            }
        }

        public void E(androidx.recyclerview.widget.RecyclerView.u uVar) {
            androidx.recyclerview.widget.RecyclerView.u uVar2 = this.f1978g;
            if (uVar2 != null) {
                uVar2.c();
            }
            this.f1978g = uVar;
            if (uVar == null || androidx.recyclerview.widget.RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.f1978g.a();
        }

        public void F(androidx.recyclerview.widget.RecyclerView.z zVar) {
        }

        public void G(int i5) {
            this.f1976e = i5;
            K();
        }

        public final boolean H(androidx.recyclerview.widget.RecyclerView.b0 b0Var, int i5, int i6, long j5) {
            b0Var.f1920r = null;
            b0Var.f1919q = androidx.recyclerview.widget.RecyclerView.this;
            int itemViewType = b0Var.getItemViewType();
            long nanoTime = androidx.recyclerview.widget.RecyclerView.this.getNanoTime();
            if (j5 != Long.MAX_VALUE && !this.f1978g.k(itemViewType, nanoTime, j5)) {
                return false;
            }
            androidx.recyclerview.widget.RecyclerView.this.f1868q.bindViewHolder(b0Var, i5);
            this.f1978g.d(b0Var.getItemViewType(), androidx.recyclerview.widget.RecyclerView.this.getNanoTime() - nanoTime);
            b(b0Var);
            if (!androidx.recyclerview.widget.RecyclerView.this.f1862m0.e()) {
                return true;
            }
            b0Var.f1908f = i6;
            return true;
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0037 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:19:0x0039  */
        /* JADX WARN: Code duplicated, block: B:21:0x0043  */
        /* JADX WARN: Code duplicated, block: B:22:0x004e  */
        /* JADX WARN: Code duplicated, block: B:24:0x0054  */
        /* JADX WARN: Code duplicated, block: B:27:0x005c  */
        /* JADX WARN: Code duplicated, block: B:29:0x005f  */
        /* JADX WARN: Code duplicated, block: B:59:0x012c A[PHI: r1 r4
  0x012c: PHI (r1v12 androidx.recyclerview.widget.RecyclerView$b0) = (r1v11 androidx.recyclerview.widget.RecyclerView$b0), (r1v30 androidx.recyclerview.widget.RecyclerView$b0) binds: [B:28:0x005d, B:45:0x00ad] A[DONT_GENERATE, DONT_INLINE]
  0x012c: PHI (r4v3 boolean) = (r4v2 boolean), (r4v7 boolean) binds: [B:28:0x005d, B:45:0x00ad] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:68:0x014d  */
        /* JADX WARN: Code duplicated, block: B:74:0x0179  */
        /* JADX WARN: Code duplicated, block: B:76:0x017f  */
        /* JADX WARN: Code duplicated, block: B:85:0x01a9  */
        /* JADX WARN: Code duplicated, block: B:86:0x01b7  */
        /* JADX WARN: Code duplicated, block: B:88:0x01bf  */
        /* JADX WARN: Code duplicated, block: B:89:0x01cd  */
        /* JADX WARN: Code duplicated, block: B:92:0x01d3 A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:94:0x01d6  */
        public androidx.recyclerview.widget.RecyclerView.b0 I(int i5, boolean z4, long j5) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarL;
            boolean z5;
            androidx.recyclerview.widget.RecyclerView.b0 b0Var;
            boolean z6;
            boolean zH;
            android.view.ViewGroup.LayoutParams layoutParams;
            androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams2;
            int iM;
            androidx.recyclerview.widget.RecyclerView recyclerViewU;
            if (i5 < 0 || i5 >= androidx.recyclerview.widget.RecyclerView.this.f1862m0.b()) {
                throw new java.lang.IndexOutOfBoundsException("Invalid item position " + i5 + "(" + i5 + "). Item count:" + androidx.recyclerview.widget.RecyclerView.this.f1862m0.b() + androidx.recyclerview.widget.RecyclerView.this.O());
            }
            if (androidx.recyclerview.widget.RecyclerView.this.f1862m0.e()) {
                b0VarL = h(i5);
                if (b0VarL != null) {
                    z5 = true;
                }
                if (b0VarL == null && (b0VarL = m(i5, z4)) != null) {
                    if (L(b0VarL)) {
                        z5 = true;
                    } else {
                        if (!z4) {
                            b0VarL.b(4);
                            if (b0VarL.q()) {
                                androidx.recyclerview.widget.RecyclerView.this.removeDetachedView(b0VarL.itemView, false);
                                b0VarL.D();
                            } else if (b0VarL.E()) {
                                b0VarL.e();
                            }
                            C(b0VarL);
                        }
                        b0VarL = null;
                    }
                }
                if (b0VarL == null) {
                    b0Var = b0VarL;
                } else {
                    iM = androidx.recyclerview.widget.RecyclerView.this.f1847d.m(i5);
                    if (iM >= 0 || iM >= androidx.recyclerview.widget.RecyclerView.this.f1868q.getItemCount()) {
                        throw new java.lang.IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i5 + "(offset:" + iM + ").state:" + androidx.recyclerview.widget.RecyclerView.this.f1862m0.b() + androidx.recyclerview.widget.RecyclerView.this.O());
                    }
                    int itemViewType = androidx.recyclerview.widget.RecyclerView.this.f1868q.getItemViewType(iM);
                    if (androidx.recyclerview.widget.RecyclerView.this.f1868q.hasStableIds() && (b0VarL = l(androidx.recyclerview.widget.RecyclerView.this.f1868q.getItemId(iM), itemViewType, z4)) != null) {
                        b0VarL.f1904b = iM;
                        z5 = true;
                    }
                    if (b0VarL == null) {
                        androidx.recyclerview.widget.RecyclerView.b0 b0VarF = i().f(itemViewType);
                        if (b0VarF != null) {
                            b0VarF.x();
                            if (androidx.recyclerview.widget.RecyclerView.H0) {
                                r(b0VarF);
                            }
                        }
                        b0VarL = b0VarF;
                    }
                    if (b0VarL == null) {
                        long nanoTime = androidx.recyclerview.widget.RecyclerView.this.getNanoTime();
                        if (j5 != Long.MAX_VALUE && !this.f1978g.l(itemViewType, nanoTime, j5)) {
                            return null;
                        }
                        androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
                        androidx.recyclerview.widget.RecyclerView.b0 b0VarCreateViewHolder = recyclerView.f1868q.createViewHolder(recyclerView, itemViewType);
                        if (androidx.recyclerview.widget.RecyclerView.K0 && (recyclerViewU = androidx.recyclerview.widget.RecyclerView.U(b0VarCreateViewHolder.itemView)) != null) {
                            b0VarCreateViewHolder.f1903a = new java.lang.ref.WeakReference<>(recyclerViewU);
                        }
                        this.f1978g.e(itemViewType, androidx.recyclerview.widget.RecyclerView.this.getNanoTime() - nanoTime);
                        b0Var = b0VarCreateViewHolder;
                    } else {
                        b0Var = b0VarL;
                    }
                }
                z6 = z5;
                if (z6 && !androidx.recyclerview.widget.RecyclerView.this.f1862m0.e() && b0Var.k(8192)) {
                    b0Var.z(0, 8192);
                    if (androidx.recyclerview.widget.RecyclerView.this.f1862m0.f1991k) {
                        int iE = androidx.recyclerview.widget.RecyclerView.m.e(b0Var) | 4096;
                        androidx.recyclerview.widget.RecyclerView recyclerView2 = androidx.recyclerview.widget.RecyclerView.this;
                        androidx.recyclerview.widget.RecyclerView.this.O0(b0Var, recyclerView2.S.t(recyclerView2.f1862m0, b0Var, iE, b0Var.j()));
                    }
                }
                if (androidx.recyclerview.widget.RecyclerView.this.f1862m0.e() || !b0Var.n()) {
                    if (b0Var.n() || b0Var.t() || b0Var.o()) {
                        zH = H(b0Var, androidx.recyclerview.widget.RecyclerView.this.f1847d.m(i5), i5, j5);
                    }
                    layoutParams = b0Var.itemView.getLayoutParams();
                    if (layoutParams == null) {
                        layoutParams2 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) androidx.recyclerview.widget.RecyclerView.this.generateDefaultLayoutParams();
                        b0Var.itemView.setLayoutParams(layoutParams2);
                    } else if (androidx.recyclerview.widget.RecyclerView.this.checkLayoutParams(layoutParams)) {
                        layoutParams2 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) layoutParams;
                    } else {
                        layoutParams2 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) androidx.recyclerview.widget.RecyclerView.this.generateLayoutParams(layoutParams);
                        b0Var.itemView.setLayoutParams(layoutParams2);
                    }
                    layoutParams2.f1888a = b0Var;
                    layoutParams2.f1891d = !z6 && zH;
                    return b0Var;
                }
                b0Var.f1908f = i5;
                zH = false;
                layoutParams = b0Var.itemView.getLayoutParams();
                if (layoutParams == null) {
                    layoutParams2 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) androidx.recyclerview.widget.RecyclerView.this.generateDefaultLayoutParams();
                    b0Var.itemView.setLayoutParams(layoutParams2);
                } else if (androidx.recyclerview.widget.RecyclerView.this.checkLayoutParams(layoutParams)) {
                    layoutParams2 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) androidx.recyclerview.widget.RecyclerView.this.generateLayoutParams(layoutParams);
                    b0Var.itemView.setLayoutParams(layoutParams2);
                } else {
                    layoutParams2 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) layoutParams;
                }
                layoutParams2.f1888a = b0Var;
                layoutParams2.f1891d = !z6 && zH;
                return b0Var;
            }
            b0VarL = null;
            z5 = false;
            if (b0VarL == null) {
                if (L(b0VarL)) {
                    if (!z4) {
                        b0VarL.b(4);
                        if (b0VarL.q()) {
                            androidx.recyclerview.widget.RecyclerView.this.removeDetachedView(b0VarL.itemView, false);
                            b0VarL.D();
                        } else if (b0VarL.E()) {
                            b0VarL.e();
                        }
                        C(b0VarL);
                    }
                    b0VarL = null;
                } else {
                    z5 = true;
                }
            }
            if (b0VarL == null) {
                iM = androidx.recyclerview.widget.RecyclerView.this.f1847d.m(i5);
                if (iM >= 0) {
                }
                throw new java.lang.IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + i5 + "(offset:" + iM + ").state:" + androidx.recyclerview.widget.RecyclerView.this.f1862m0.b() + androidx.recyclerview.widget.RecyclerView.this.O());
            }
            b0Var = b0VarL;
            z6 = z5;
            if (z6) {
                b0Var.z(0, 8192);
                if (androidx.recyclerview.widget.RecyclerView.this.f1862m0.f1991k) {
                    int iE2 = androidx.recyclerview.widget.RecyclerView.m.e(b0Var) | 4096;
                    androidx.recyclerview.widget.RecyclerView recyclerView3 = androidx.recyclerview.widget.RecyclerView.this;
                    androidx.recyclerview.widget.RecyclerView.this.O0(b0Var, recyclerView3.S.t(recyclerView3.f1862m0, b0Var, iE2, b0Var.j()));
                }
            }
            if (androidx.recyclerview.widget.RecyclerView.this.f1862m0.e()) {
                if (b0Var.n()) {
                }
                zH = H(b0Var, androidx.recyclerview.widget.RecyclerView.this.f1847d.m(i5), i5, j5);
            } else {
                if (b0Var.n()) {
                }
                zH = H(b0Var, androidx.recyclerview.widget.RecyclerView.this.f1847d.m(i5), i5, j5);
            }
            layoutParams = b0Var.itemView.getLayoutParams();
            if (layoutParams == null) {
                layoutParams2 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) androidx.recyclerview.widget.RecyclerView.this.generateDefaultLayoutParams();
                b0Var.itemView.setLayoutParams(layoutParams2);
            } else if (androidx.recyclerview.widget.RecyclerView.this.checkLayoutParams(layoutParams)) {
                layoutParams2 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) androidx.recyclerview.widget.RecyclerView.this.generateLayoutParams(layoutParams);
                b0Var.itemView.setLayoutParams(layoutParams2);
            } else {
                layoutParams2 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) layoutParams;
            }
            layoutParams2.f1888a = b0Var;
            layoutParams2.f1891d = !z6 && zH;
            return b0Var;
        }

        public void J(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
            if (b0Var.f1916n) {
                this.f1973b.remove(b0Var);
            } else {
                this.f1972a.remove(b0Var);
            }
            b0Var.f1915m = null;
            b0Var.f1916n = false;
            b0Var.e();
        }

        public void K() {
            androidx.recyclerview.widget.RecyclerView.p pVar = androidx.recyclerview.widget.RecyclerView.this.f1870r;
            this.f1977f = this.f1976e + (pVar != null ? pVar.f1954l : 0);
            for (int size = this.f1974c.size() - 1; size >= 0 && this.f1974c.size() > this.f1977f; size--) {
                A(size);
            }
        }

        public boolean L(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
            if (b0Var.p()) {
                return androidx.recyclerview.widget.RecyclerView.this.f1862m0.e();
            }
            int i5 = b0Var.f1904b;
            if (i5 >= 0 && i5 < androidx.recyclerview.widget.RecyclerView.this.f1868q.getItemCount()) {
                if (androidx.recyclerview.widget.RecyclerView.this.f1862m0.e() || androidx.recyclerview.widget.RecyclerView.this.f1868q.getItemViewType(b0Var.f1904b) == b0Var.getItemViewType()) {
                    return !androidx.recyclerview.widget.RecyclerView.this.f1868q.hasStableIds() || b0Var.getItemId() == androidx.recyclerview.widget.RecyclerView.this.f1868q.getItemId(b0Var.f1904b);
                }
                return false;
            }
            throw new java.lang.IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + b0Var + androidx.recyclerview.widget.RecyclerView.this.O());
        }

        public void M(int i5, int i6) {
            int i7;
            int i8 = i6 + i5;
            for (int size = this.f1974c.size() - 1; size >= 0; size--) {
                androidx.recyclerview.widget.RecyclerView.b0 b0Var = this.f1974c.get(size);
                if (b0Var != null && (i7 = b0Var.f1904b) >= i5 && i7 < i8) {
                    b0Var.b(2);
                    A(size);
                }
            }
        }

        public void a(androidx.recyclerview.widget.RecyclerView.b0 b0Var, boolean z4) {
            androidx.recyclerview.widget.RecyclerView.q(b0Var);
            android.view.View view = b0Var.itemView;
            androidx.recyclerview.widget.i iVar = androidx.recyclerview.widget.RecyclerView.this.f1875t0;
            if (iVar != null) {
                w.a aVarN = iVar.n();
                w.q.Q(view, aVarN instanceof androidx.recyclerview.widget.i.a ? ((androidx.recyclerview.widget.i.a) aVarN).n(view) : null);
            }
            if (z4) {
                g(b0Var);
            }
            b0Var.f1920r = null;
            b0Var.f1919q = null;
            i().i(b0Var);
        }

        public final void b(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
            if (androidx.recyclerview.widget.RecyclerView.this.q0()) {
                android.view.View view = b0Var.itemView;
                if (w.q.n(view) == 0) {
                    w.q.V(view, 1);
                }
                androidx.recyclerview.widget.i iVar = androidx.recyclerview.widget.RecyclerView.this.f1875t0;
                if (iVar == null) {
                    return;
                }
                w.a aVarN = iVar.n();
                if (aVarN instanceof androidx.recyclerview.widget.i.a) {
                    ((androidx.recyclerview.widget.i.a) aVarN).o(view);
                }
                w.q.Q(view, aVarN);
            }
        }

        public void c() {
            this.f1972a.clear();
            z();
        }

        public void d() {
            int size = this.f1974c.size();
            for (int i5 = 0; i5 < size; i5++) {
                this.f1974c.get(i5).c();
            }
            int size2 = this.f1972a.size();
            for (int i6 = 0; i6 < size2; i6++) {
                this.f1972a.get(i6).c();
            }
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> arrayList = this.f1973b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i7 = 0; i7 < size3; i7++) {
                    this.f1973b.get(i7).c();
                }
            }
        }

        public void e() {
            this.f1972a.clear();
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> arrayList = this.f1973b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        public int f(int i5) {
            if (i5 >= 0 && i5 < androidx.recyclerview.widget.RecyclerView.this.f1862m0.b()) {
                return !androidx.recyclerview.widget.RecyclerView.this.f1862m0.e() ? i5 : androidx.recyclerview.widget.RecyclerView.this.f1847d.m(i5);
            }
            throw new java.lang.IndexOutOfBoundsException("invalid position " + i5 + ". State item count is " + androidx.recyclerview.widget.RecyclerView.this.f1862m0.b() + androidx.recyclerview.widget.RecyclerView.this.O());
        }

        public void g(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
            androidx.recyclerview.widget.RecyclerView.w wVar = androidx.recyclerview.widget.RecyclerView.this.f1872s;
            if (wVar != null) {
                wVar.a(b0Var);
            }
            int size = androidx.recyclerview.widget.RecyclerView.this.f1874t.size();
            for (int i5 = 0; i5 < size; i5++) {
                androidx.recyclerview.widget.RecyclerView.this.f1874t.get(i5).a(b0Var);
            }
            androidx.recyclerview.widget.RecyclerView.h hVar = androidx.recyclerview.widget.RecyclerView.this.f1868q;
            if (hVar != null) {
                hVar.onViewRecycled(b0Var);
            }
            androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
            if (recyclerView.f1862m0 != null) {
                recyclerView.f1851f.q(b0Var);
            }
        }

        public androidx.recyclerview.widget.RecyclerView.b0 h(int i5) {
            int size;
            int iM;
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> arrayList = this.f1973b;
            if (arrayList != null && (size = arrayList.size()) != 0) {
                for (int i6 = 0; i6 < size; i6++) {
                    androidx.recyclerview.widget.RecyclerView.b0 b0Var = this.f1973b.get(i6);
                    if (!b0Var.E() && b0Var.getLayoutPosition() == i5) {
                        b0Var.b(32);
                        return b0Var;
                    }
                }
                if (androidx.recyclerview.widget.RecyclerView.this.f1868q.hasStableIds() && (iM = androidx.recyclerview.widget.RecyclerView.this.f1847d.m(i5)) > 0 && iM < androidx.recyclerview.widget.RecyclerView.this.f1868q.getItemCount()) {
                    long itemId = androidx.recyclerview.widget.RecyclerView.this.f1868q.getItemId(iM);
                    for (int i7 = 0; i7 < size; i7++) {
                        androidx.recyclerview.widget.RecyclerView.b0 b0Var2 = this.f1973b.get(i7);
                        if (!b0Var2.E() && b0Var2.getItemId() == itemId) {
                            b0Var2.b(32);
                            return b0Var2;
                        }
                    }
                }
            }
            return null;
        }

        public androidx.recyclerview.widget.RecyclerView.u i() {
            if (this.f1978g == null) {
                this.f1978g = new androidx.recyclerview.widget.RecyclerView.u();
            }
            return this.f1978g;
        }

        public int j() {
            return this.f1972a.size();
        }

        public java.util.List<androidx.recyclerview.widget.RecyclerView.b0> k() {
            return this.f1975d;
        }

        public androidx.recyclerview.widget.RecyclerView.b0 l(long j5, int i5, boolean z4) {
            for (int size = this.f1972a.size() - 1; size >= 0; size--) {
                androidx.recyclerview.widget.RecyclerView.b0 b0Var = this.f1972a.get(size);
                if (b0Var.getItemId() == j5 && !b0Var.E()) {
                    if (i5 == b0Var.getItemViewType()) {
                        b0Var.b(32);
                        if (b0Var.p() && !androidx.recyclerview.widget.RecyclerView.this.f1862m0.e()) {
                            b0Var.z(2, 14);
                        }
                        return b0Var;
                    }
                    if (!z4) {
                        this.f1972a.remove(size);
                        androidx.recyclerview.widget.RecyclerView.this.removeDetachedView(b0Var.itemView, false);
                        y(b0Var.itemView);
                    }
                }
            }
            int size2 = this.f1974c.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                androidx.recyclerview.widget.RecyclerView.b0 b0Var2 = this.f1974c.get(size2);
                if (b0Var2.getItemId() == j5 && !b0Var2.m()) {
                    if (i5 == b0Var2.getItemViewType()) {
                        if (!z4) {
                            this.f1974c.remove(size2);
                        }
                        return b0Var2;
                    }
                    if (!z4) {
                        A(size2);
                        return null;
                    }
                }
            }
        }

        public androidx.recyclerview.widget.RecyclerView.b0 m(int i5, boolean z4) {
            android.view.View viewE;
            int size = this.f1972a.size();
            for (int i6 = 0; i6 < size; i6++) {
                androidx.recyclerview.widget.RecyclerView.b0 b0Var = this.f1972a.get(i6);
                if (!b0Var.E() && b0Var.getLayoutPosition() == i5 && !b0Var.o() && (androidx.recyclerview.widget.RecyclerView.this.f1862m0.f1988h || !b0Var.p())) {
                    b0Var.b(32);
                    return b0Var;
                }
            }
            if (z4 || (viewE = androidx.recyclerview.widget.RecyclerView.this.f1849e.e(i5)) == null) {
                int size2 = this.f1974c.size();
                for (int i7 = 0; i7 < size2; i7++) {
                    androidx.recyclerview.widget.RecyclerView.b0 b0Var2 = this.f1974c.get(i7);
                    if (!b0Var2.o() && b0Var2.getLayoutPosition() == i5 && !b0Var2.m()) {
                        if (!z4) {
                            this.f1974c.remove(i7);
                        }
                        return b0Var2;
                    }
                }
                return null;
            }
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = androidx.recyclerview.widget.RecyclerView.d0(viewE);
            androidx.recyclerview.widget.RecyclerView.this.f1849e.s(viewE);
            int iM = androidx.recyclerview.widget.RecyclerView.this.f1849e.m(viewE);
            if (iM != -1) {
                androidx.recyclerview.widget.RecyclerView.this.f1849e.d(iM);
                D(viewE);
                b0VarD0.b(8224);
                return b0VarD0;
            }
            throw new java.lang.IllegalStateException("layout index should not be -1 after unhiding a view:" + b0VarD0 + androidx.recyclerview.widget.RecyclerView.this.O());
        }

        public android.view.View n(int i5) {
            return this.f1972a.get(i5).itemView;
        }

        public android.view.View o(int i5) {
            return p(i5, false);
        }

        public android.view.View p(int i5, boolean z4) {
            return I(i5, z4, Long.MAX_VALUE).itemView;
        }

        public final void q(android.view.ViewGroup viewGroup, boolean z4) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                android.view.View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof android.view.ViewGroup) {
                    q((android.view.ViewGroup) childAt, true);
                }
            }
            if (z4) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        public final void r(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
            android.view.View view = b0Var.itemView;
            if (view instanceof android.view.ViewGroup) {
                q((android.view.ViewGroup) view, false);
            }
        }

        public void s() {
            int size = this.f1974c.size();
            for (int i5 = 0; i5 < size; i5++) {
                androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams = (androidx.recyclerview.widget.RecyclerView.LayoutParams) this.f1974c.get(i5).itemView.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.f1890c = true;
                }
            }
        }

        public void t() {
            int size = this.f1974c.size();
            for (int i5 = 0; i5 < size; i5++) {
                androidx.recyclerview.widget.RecyclerView.b0 b0Var = this.f1974c.get(i5);
                if (b0Var != null) {
                    b0Var.b(6);
                    b0Var.a(null);
                }
            }
            androidx.recyclerview.widget.RecyclerView.h hVar = androidx.recyclerview.widget.RecyclerView.this.f1868q;
            if (hVar == null || !hVar.hasStableIds()) {
                z();
            }
        }

        public void u(int i5, int i6) {
            int size = this.f1974c.size();
            for (int i7 = 0; i7 < size; i7++) {
                androidx.recyclerview.widget.RecyclerView.b0 b0Var = this.f1974c.get(i7);
                if (b0Var != null && b0Var.f1904b >= i5) {
                    b0Var.u(i6, false);
                }
            }
        }

        public void v(int i5, int i6) {
            int i7;
            int i8;
            int i9;
            int i10;
            if (i5 < i6) {
                i7 = -1;
                i9 = i5;
                i8 = i6;
            } else {
                i7 = 1;
                i8 = i5;
                i9 = i6;
            }
            int size = this.f1974c.size();
            for (int i11 = 0; i11 < size; i11++) {
                androidx.recyclerview.widget.RecyclerView.b0 b0Var = this.f1974c.get(i11);
                if (b0Var != null && (i10 = b0Var.f1904b) >= i9 && i10 <= i8) {
                    if (i10 == i5) {
                        b0Var.u(i6 - i5, false);
                    } else {
                        b0Var.u(i7, false);
                    }
                }
            }
        }

        public void w(int i5, int i6, boolean z4) {
            int i7 = i5 + i6;
            for (int size = this.f1974c.size() - 1; size >= 0; size--) {
                androidx.recyclerview.widget.RecyclerView.b0 b0Var = this.f1974c.get(size);
                if (b0Var != null) {
                    int i8 = b0Var.f1904b;
                    if (i8 >= i7) {
                        b0Var.u(-i6, z4);
                    } else if (i8 >= i5) {
                        b0Var.b(8);
                        A(size);
                    }
                }
            }
        }

        public void x(androidx.recyclerview.widget.RecyclerView.h hVar, androidx.recyclerview.widget.RecyclerView.h hVar2, boolean z4) {
            c();
            i().h(hVar, hVar2, z4);
        }

        public void y(android.view.View view) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = androidx.recyclerview.widget.RecyclerView.d0(view);
            b0VarD0.f1915m = null;
            b0VarD0.f1916n = false;
            b0VarD0.e();
            C(b0VarD0);
        }

        public void z() {
            for (int size = this.f1974c.size() - 1; size >= 0; size--) {
                A(size);
            }
            this.f1974c.clear();
            if (androidx.recyclerview.widget.RecyclerView.K0) {
                androidx.recyclerview.widget.RecyclerView.this.f1861l0.b();
            }
        }
    }

    public interface w {
        void a(androidx.recyclerview.widget.RecyclerView.b0 b0Var);
    }

    public class x extends androidx.recyclerview.widget.RecyclerView.j {
        public x() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void a() {
            androidx.recyclerview.widget.RecyclerView.this.n(null);
            androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
            recyclerView.f1862m0.f1987g = true;
            recyclerView.M0(true);
            if (androidx.recyclerview.widget.RecyclerView.this.f1847d.p()) {
                return;
            }
            androidx.recyclerview.widget.RecyclerView.this.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void c(int i5, int i6, java.lang.Object obj) {
            androidx.recyclerview.widget.RecyclerView.this.n(null);
            if (androidx.recyclerview.widget.RecyclerView.this.f1847d.r(i5, i6, obj)) {
                h();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void d(int i5, int i6) {
            androidx.recyclerview.widget.RecyclerView.this.n(null);
            if (androidx.recyclerview.widget.RecyclerView.this.f1847d.s(i5, i6)) {
                h();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void e(int i5, int i6, int i7) {
            androidx.recyclerview.widget.RecyclerView.this.n(null);
            if (androidx.recyclerview.widget.RecyclerView.this.f1847d.t(i5, i6, i7)) {
                h();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void f(int i5, int i6) {
            androidx.recyclerview.widget.RecyclerView.this.n(null);
            if (androidx.recyclerview.widget.RecyclerView.this.f1847d.u(i5, i6)) {
                h();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void g() {
            androidx.recyclerview.widget.RecyclerView.h hVar;
            androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
            if (recyclerView.f1845c == null || (hVar = recyclerView.f1868q) == null || !hVar.a()) {
                return;
            }
            androidx.recyclerview.widget.RecyclerView.this.requestLayout();
        }

        public void h() {
            if (androidx.recyclerview.widget.RecyclerView.J0) {
                androidx.recyclerview.widget.RecyclerView recyclerView = androidx.recyclerview.widget.RecyclerView.this;
                if (recyclerView.f1884y && recyclerView.f1882x) {
                    w.q.L(recyclerView, recyclerView.f1855h);
                    return;
                }
            }
            androidx.recyclerview.widget.RecyclerView recyclerView2 = androidx.recyclerview.widget.RecyclerView.this;
            recyclerView2.G = true;
            recyclerView2.requestLayout();
        }
    }

    public static class y {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public android.util.SparseArray<java.lang.Object> f1982b;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f1993m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public long f1994n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f1995o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f1996p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f1997q;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1981a = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1983c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1984d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1985e = 1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1986f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f1987g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f1988h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f1989i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f1990j = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f1991k = false;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f1992l = false;

        public void a(int i5) {
            if ((this.f1985e & i5) != 0) {
                return;
            }
            throw new java.lang.IllegalStateException("Layout state should be one of " + java.lang.Integer.toBinaryString(i5) + " but it is " + java.lang.Integer.toBinaryString(this.f1985e));
        }

        public int b() {
            return this.f1988h ? this.f1983c - this.f1984d : this.f1986f;
        }

        public int c() {
            return this.f1981a;
        }

        public boolean d() {
            return this.f1981a != -1;
        }

        public boolean e() {
            return this.f1988h;
        }

        public void f(androidx.recyclerview.widget.RecyclerView.h hVar) {
            this.f1985e = 1;
            this.f1986f = hVar.getItemCount();
            this.f1988h = false;
            this.f1989i = false;
            this.f1990j = false;
        }

        public boolean g() {
            return this.f1992l;
        }

        public java.lang.String toString() {
            return "State{mTargetPosition=" + this.f1981a + ", mData=" + this.f1982b + ", mItemCount=" + this.f1986f + ", mIsMeasuring=" + this.f1990j + ", mPreviousLayoutItemCount=" + this.f1983c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f1984d + ", mStructureChanged=" + this.f1987g + ", mInPreLayout=" + this.f1988h + ", mRunSimpleAnimations=" + this.f1991k + ", mRunPredictiveAnimations=" + this.f1992l + '}';
        }
    }

    public static abstract class z {
    }

    static {
        java.lang.Class<?> cls = java.lang.Integer.TYPE;
        N0 = new java.lang.Class[]{android.content.Context.class, android.util.AttributeSet.class, cls, cls};
        O0 = new androidx.recyclerview.widget.RecyclerView.c();
    }

    public RecyclerView(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, androidx.recyclerview.R.attr.recyclerViewStyle);
    }

    public static androidx.recyclerview.widget.RecyclerView U(android.view.View view) {
        if (!(view instanceof android.view.ViewGroup)) {
            return null;
        }
        if (view instanceof androidx.recyclerview.widget.RecyclerView) {
            return (androidx.recyclerview.widget.RecyclerView) view;
        }
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            androidx.recyclerview.widget.RecyclerView recyclerViewU = U(viewGroup.getChildAt(i5));
            if (recyclerViewU != null) {
                return recyclerViewU;
            }
        }
        return null;
    }

    public static androidx.recyclerview.widget.RecyclerView.b0 d0(android.view.View view) {
        if (view == null) {
            return null;
        }
        return ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams()).f1888a;
    }

    public static void e0(android.view.View view, android.graphics.Rect rect) {
        androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams = (androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams();
        android.graphics.Rect rect2 = layoutParams.f1889b;
        rect.set((view.getLeft() - rect2.left) - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - rect2.top) - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + rect2.right + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + rect2.bottom + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
    }

    private w.j getScrollingChildHelper() {
        if (this.f1881w0 == null) {
            this.f1881w0 = new w.j(this);
        }
        return this.f1881w0;
    }

    public static void q(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        java.lang.ref.WeakReference<androidx.recyclerview.widget.RecyclerView> weakReference = b0Var.f1903a;
        if (weakReference != null) {
            androidx.recyclerview.widget.RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == b0Var.itemView) {
                    return;
                }
                java.lang.Object parent = recyclerView.getParent();
                recyclerView = parent instanceof android.view.View ? (android.view.View) parent : null;
            }
            b0Var.f1903a = null;
        }
    }

    public void A() {
        if (this.f1868q == null) {
            android.util.Log.w("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.f1870r == null) {
            android.util.Log.e("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        this.f1862m0.f1990j = false;
        boolean z4 = this.C0 && !(this.D0 == getWidth() && this.E0 == getHeight());
        this.D0 = 0;
        this.E0 = 0;
        this.C0 = false;
        if (this.f1862m0.f1985e == 1) {
            B();
            this.f1870r.v1(this);
            C();
        } else if (this.f1847d.q() || z4 || this.f1870r.m0() != getWidth() || this.f1870r.V() != getHeight()) {
            this.f1870r.v1(this);
            C();
        } else {
            this.f1870r.v1(this);
        }
        D();
    }

    public void A0(int i5, int i6, boolean z4) {
        int i7 = i5 + i6;
        int iJ = this.f1849e.j();
        for (int i8 = 0; i8 < iJ; i8++) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(this.f1849e.i(i8));
            if (b0VarD0 != null && !b0VarD0.C()) {
                int i9 = b0VarD0.f1904b;
                if (i9 >= i7) {
                    b0VarD0.u(-i6, z4);
                    this.f1862m0.f1987g = true;
                } else if (i9 >= i5) {
                    b0VarD0.i(i5 - 1, -i6, z4);
                    this.f1862m0.f1987g = true;
                }
            }
        }
        this.f1843b.w(i5, i6, z4);
        requestLayout();
    }

    public final void B() {
        this.f1862m0.a(1);
        P(this.f1862m0);
        this.f1862m0.f1990j = false;
        l1();
        this.f1851f.f();
        D0();
        L0();
        a1();
        androidx.recyclerview.widget.RecyclerView.y yVar = this.f1862m0;
        yVar.f1989i = yVar.f1991k && this.f1869q0;
        this.f1869q0 = false;
        this.f1867p0 = false;
        yVar.f1988h = yVar.f1992l;
        yVar.f1986f = this.f1868q.getItemCount();
        T(this.f1879v0);
        if (this.f1862m0.f1991k) {
            int iG = this.f1849e.g();
            for (int i5 = 0; i5 < iG; i5++) {
                androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(this.f1849e.f(i5));
                if (!b0VarD0.C() && (!b0VarD0.o() || this.f1868q.hasStableIds())) {
                    this.f1851f.e(b0VarD0, this.S.t(this.f1862m0, b0VarD0, androidx.recyclerview.widget.RecyclerView.m.e(b0VarD0), b0VarD0.j()));
                    if (this.f1862m0.f1989i && b0VarD0.s() && !b0VarD0.p() && !b0VarD0.C() && !b0VarD0.o()) {
                        this.f1851f.c(b0(b0VarD0), b0VarD0);
                    }
                }
            }
        }
        if (this.f1862m0.f1992l) {
            b1();
            androidx.recyclerview.widget.RecyclerView.y yVar2 = this.f1862m0;
            boolean z4 = yVar2.f1987g;
            yVar2.f1987g = false;
            this.f1870r.V0(this.f1843b, yVar2);
            this.f1862m0.f1987g = z4;
            for (int i6 = 0; i6 < this.f1849e.g(); i6++) {
                androidx.recyclerview.widget.RecyclerView.b0 b0VarD1 = d0(this.f1849e.f(i6));
                if (!b0VarD1.C() && !this.f1851f.i(b0VarD1)) {
                    int iE = androidx.recyclerview.widget.RecyclerView.m.e(b0VarD1);
                    boolean zK = b0VarD1.k(8192);
                    if (!zK) {
                        iE |= 4096;
                    }
                    androidx.recyclerview.widget.RecyclerView.m.c cVarT = this.S.t(this.f1862m0, b0VarD1, iE, b0VarD1.j());
                    if (zK) {
                        O0(b0VarD1, cVarT);
                    } else {
                        this.f1851f.a(b0VarD1, cVarT);
                    }
                }
            }
            r();
        } else {
            r();
        }
        E0();
        n1(false);
        this.f1862m0.f1985e = 2;
    }

    public void B0(android.view.View view) {
    }

    public final void C() {
        l1();
        D0();
        this.f1862m0.a(6);
        this.f1847d.j();
        this.f1862m0.f1986f = this.f1868q.getItemCount();
        this.f1862m0.f1984d = 0;
        if (this.f1845c != null && this.f1868q.a()) {
            android.os.Parcelable parcelable = this.f1845c.f1892a;
            if (parcelable != null) {
                this.f1870r.a1(parcelable);
            }
            this.f1845c = null;
        }
        androidx.recyclerview.widget.RecyclerView.y yVar = this.f1862m0;
        yVar.f1988h = false;
        this.f1870r.V0(this.f1843b, yVar);
        androidx.recyclerview.widget.RecyclerView.y yVar2 = this.f1862m0;
        yVar2.f1987g = false;
        yVar2.f1991k = yVar2.f1991k && this.S != null;
        yVar2.f1985e = 4;
        E0();
        n1(false);
    }

    public void C0(android.view.View view) {
    }

    public final void D() {
        this.f1862m0.a(4);
        l1();
        D0();
        androidx.recyclerview.widget.RecyclerView.y yVar = this.f1862m0;
        yVar.f1985e = 1;
        if (yVar.f1991k) {
            for (int iG = this.f1849e.g() - 1; iG >= 0; iG--) {
                androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(this.f1849e.f(iG));
                if (!b0VarD0.C()) {
                    long jB0 = b0(b0VarD0);
                    androidx.recyclerview.widget.RecyclerView.m.c cVarS = this.S.s(this.f1862m0, b0VarD0);
                    androidx.recyclerview.widget.RecyclerView.b0 b0VarG = this.f1851f.g(jB0);
                    if (b0VarG == null || b0VarG.C()) {
                        this.f1851f.d(b0VarD0, cVarS);
                    } else {
                        boolean zH = this.f1851f.h(b0VarG);
                        boolean zH2 = this.f1851f.h(b0VarD0);
                        if (zH && b0VarG == b0VarD0) {
                            this.f1851f.d(b0VarD0, cVarS);
                        } else {
                            androidx.recyclerview.widget.RecyclerView.m.c cVarN = this.f1851f.n(b0VarG);
                            this.f1851f.d(b0VarD0, cVarS);
                            androidx.recyclerview.widget.RecyclerView.m.c cVarM = this.f1851f.m(b0VarD0);
                            if (cVarN == null) {
                                i0(jB0, b0VarD0, b0VarG);
                            } else {
                                l(b0VarG, b0VarD0, cVarN, cVarM, zH, zH2);
                            }
                        }
                    }
                }
            }
            this.f1851f.o(this.F0);
        }
        this.f1870r.i1(this.f1843b);
        androidx.recyclerview.widget.RecyclerView.y yVar2 = this.f1862m0;
        yVar2.f1983c = yVar2.f1986f;
        this.J = false;
        this.K = false;
        yVar2.f1991k = false;
        yVar2.f1992l = false;
        this.f1870r.f1949g = false;
        java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> arrayList = this.f1843b.f1973b;
        if (arrayList != null) {
            arrayList.clear();
        }
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar.f1955m) {
            pVar.f1954l = 0;
            pVar.f1955m = false;
            this.f1843b.K();
        }
        this.f1870r.W0(this.f1862m0);
        E0();
        n1(false);
        this.f1851f.f();
        int[] iArr = this.f1879v0;
        if (w(iArr[0], iArr[1])) {
            H(0, 0);
        }
        P0();
        Y0();
    }

    public void D0() {
        this.L++;
    }

    public boolean E(int i5, int i6, int[] iArr, int[] iArr2, int i7) {
        return getScrollingChildHelper().d(i5, i6, iArr, iArr2, i7);
    }

    public void E0() {
        F0(true);
    }

    public final void F(int i5, int i6, int i7, int i8, int[] iArr, int i9, int[] iArr2) {
        getScrollingChildHelper().e(i5, i6, i7, i8, iArr, i9, iArr2);
    }

    public void F0(boolean z4) {
        int i5 = this.L - 1;
        this.L = i5;
        if (i5 < 1) {
            this.L = 0;
            if (z4) {
                z();
                I();
            }
        }
    }

    public void G(int i5) {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null) {
            pVar.c1(i5);
        }
        H0(i5);
        androidx.recyclerview.widget.RecyclerView.t tVar = this.f1863n0;
        if (tVar != null) {
            tVar.a(this, i5);
        }
        java.util.List<androidx.recyclerview.widget.RecyclerView.t> list = this.f1865o0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f1865o0.get(size).a(this, i5);
            }
        }
    }

    public final void G0(android.view.MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.U) {
            int i5 = actionIndex == 0 ? 1 : 0;
            this.U = motionEvent.getPointerId(i5);
            int x4 = (int) (motionEvent.getX(i5) + 0.5f);
            this.f1844b0 = x4;
            this.W = x4;
            int y4 = (int) (motionEvent.getY(i5) + 0.5f);
            this.f1846c0 = y4;
            this.f1842a0 = y4;
        }
    }

    public void H(int i5, int i6) {
        this.M++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i5, scrollY - i6);
        I0(i5, i6);
        androidx.recyclerview.widget.RecyclerView.t tVar = this.f1863n0;
        if (tVar != null) {
            tVar.b(this, i5, i6);
        }
        java.util.List<androidx.recyclerview.widget.RecyclerView.t> list = this.f1865o0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f1865o0.get(size).b(this, i5, i6);
            }
        }
        this.M--;
    }

    public void H0(int i5) {
    }

    public void I() {
        int i5;
        for (int size = this.A0.size() - 1; size >= 0; size--) {
            androidx.recyclerview.widget.RecyclerView.b0 b0Var = this.A0.get(size);
            if (b0Var.itemView.getParent() == this && !b0Var.C() && (i5 = b0Var.f1918p) != -1) {
                w.q.V(b0Var.itemView, i5);
                b0Var.f1918p = -1;
            }
        }
        this.A0.clear();
    }

    public void I0(int i5, int i6) {
    }

    public final boolean J(android.view.MotionEvent motionEvent) {
        androidx.recyclerview.widget.RecyclerView.s sVar = this.f1880w;
        if (sVar == null) {
            if (motionEvent.getAction() == 0) {
                return false;
            }
            return S(motionEvent);
        }
        sVar.b(this, motionEvent);
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.f1880w = null;
        }
        return true;
    }

    public void J0() {
        if (this.f1873s0 || !this.f1882x) {
            return;
        }
        w.q.L(this, this.B0);
        this.f1873s0 = true;
    }

    public void K() {
        if (this.R != null) {
            return;
        }
        android.widget.EdgeEffect edgeEffectA = this.N.a(this, 3);
        this.R = edgeEffectA;
        if (this.f1853g) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final boolean K0() {
        return this.S != null && this.f1870r.F1();
    }

    public void L() {
        if (this.O != null) {
            return;
        }
        android.widget.EdgeEffect edgeEffectA = this.N.a(this, 0);
        this.O = edgeEffectA;
        if (this.f1853g) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void L0() {
        boolean z4;
        if (this.J) {
            this.f1847d.y();
            if (this.K) {
                this.f1870r.Q0(this);
            }
        }
        if (K0()) {
            this.f1847d.w();
        } else {
            this.f1847d.j();
        }
        boolean z5 = false;
        boolean z6 = this.f1867p0 || this.f1869q0;
        this.f1862m0.f1991k = this.A && this.S != null && ((z4 = this.J) || z6 || this.f1870r.f1949g) && (!z4 || this.f1868q.hasStableIds());
        androidx.recyclerview.widget.RecyclerView.y yVar = this.f1862m0;
        if (yVar.f1991k && z6 && !this.J && K0()) {
            z5 = true;
        }
        yVar.f1992l = z5;
    }

    public void M() {
        if (this.Q != null) {
            return;
        }
        android.widget.EdgeEffect edgeEffectA = this.N.a(this, 2);
        this.Q = edgeEffectA;
        if (this.f1853g) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void M0(boolean z4) {
        this.K = z4 | this.K;
        this.J = true;
        u0();
    }

    public void N() {
        if (this.P != null) {
            return;
        }
        android.widget.EdgeEffect edgeEffectA = this.N.a(this, 1);
        this.P = edgeEffectA;
        if (this.f1853g) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0040  */
    /* JADX WARN: Code duplicated, block: B:13:0x0056  */
    /* JADX WARN: Code duplicated, block: B:15:0x005a  */
    /* JADX WARN: Code duplicated, block: B:16:0x0071  */
    public final void N0(float f5, float f6, float f7, float f8) {
        boolean z4;
        boolean z5 = true;
        if (f6 >= 0.0f) {
            if (f6 > 0.0f) {
                M();
                androidx.core.widget.f.c(this.Q, f6 / getWidth(), f7 / getHeight());
            } else {
                z4 = false;
            }
            if (f8 < 0.0f) {
                N();
                androidx.core.widget.f.c(this.P, (-f8) / getHeight(), f5 / getWidth());
            } else if (f8 > 0.0f) {
                K();
                androidx.core.widget.f.c(this.R, f8 / getHeight(), 1.0f - (f5 / getWidth()));
            } else {
                z5 = z4;
            }
            if (z5 && f6 == 0.0f && f8 == 0.0f) {
                return;
            }
            w.q.K(this);
        }
        L();
        androidx.core.widget.f.c(this.O, (-f6) / getWidth(), 1.0f - (f7 / getHeight()));
        z4 = true;
        if (f8 < 0.0f) {
            N();
            androidx.core.widget.f.c(this.P, (-f8) / getHeight(), f5 / getWidth());
        } else if (f8 > 0.0f) {
            K();
            androidx.core.widget.f.c(this.R, f8 / getHeight(), 1.0f - (f5 / getWidth()));
        } else {
            z5 = z4;
        }
        if (z5) {
        }
        w.q.K(this);
    }

    public java.lang.String O() {
        return " " + super.toString() + ", adapter:" + this.f1868q + ", layout:" + this.f1870r + ", context:" + getContext();
    }

    public void O0(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar) {
        b0Var.z(0, 8192);
        if (this.f1862m0.f1989i && b0Var.s() && !b0Var.p() && !b0Var.C()) {
            this.f1851f.c(b0(b0Var), b0Var);
        }
        this.f1851f.e(b0Var, cVar);
    }

    public final void P(androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (getScrollState() != 2) {
            yVar.f1996p = 0;
            yVar.f1997q = 0;
        } else {
            android.widget.OverScroller overScroller = this.f1859j0.f1896c;
            yVar.f1996p = overScroller.getFinalX() - overScroller.getCurrX();
            yVar.f1997q = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    public final void P0() {
        android.view.View viewFindViewById;
        if (!this.f1858i0 || this.f1868q == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            android.view.View focusedChild = getFocusedChild();
            if (!M0 || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                if (!this.f1849e.n(focusedChild)) {
                    return;
                }
            } else if (this.f1849e.g() == 0) {
                requestFocus();
                return;
            }
        }
        android.view.View viewV = null;
        androidx.recyclerview.widget.RecyclerView.b0 b0VarX = (this.f1862m0.f1994n == -1 || !this.f1868q.hasStableIds()) ? null : X(this.f1862m0.f1994n);
        if (b0VarX != null && !this.f1849e.n(b0VarX.itemView) && b0VarX.itemView.hasFocusable()) {
            viewV = b0VarX.itemView;
        } else if (this.f1849e.g() > 0) {
            viewV = V();
        }
        if (viewV != null) {
            int i5 = this.f1862m0.f1995o;
            if (i5 != -1 && (viewFindViewById = viewV.findViewById(i5)) != null && viewFindViewById.isFocusable()) {
                viewV = viewFindViewById;
            }
            viewV.requestFocus();
        }
    }

    public android.view.View Q(android.view.View view) {
        android.view.ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof android.view.View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public final void Q0() {
        boolean zIsFinished;
        android.widget.EdgeEffect edgeEffect = this.O;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.O.isFinished();
        } else {
            zIsFinished = false;
        }
        android.widget.EdgeEffect edgeEffect2 = this.P;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.P.isFinished();
        }
        android.widget.EdgeEffect edgeEffect3 = this.Q;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.Q.isFinished();
        }
        android.widget.EdgeEffect edgeEffect4 = this.R;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.R.isFinished();
        }
        if (zIsFinished) {
            w.q.K(this);
        }
    }

    public androidx.recyclerview.widget.RecyclerView.b0 R(android.view.View view) {
        android.view.View viewQ = Q(view);
        if (viewQ == null) {
            return null;
        }
        return c0(viewQ);
    }

    public void R0() {
        androidx.recyclerview.widget.RecyclerView.m mVar = this.S;
        if (mVar != null) {
            mVar.k();
        }
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null) {
            pVar.h1(this.f1843b);
            this.f1870r.i1(this.f1843b);
        }
        this.f1843b.c();
    }

    public final boolean S(android.view.MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.f1878v.size();
        for (int i5 = 0; i5 < size; i5++) {
            androidx.recyclerview.widget.RecyclerView.s sVar = this.f1878v.get(i5);
            if (sVar.a(this, motionEvent) && action != 3) {
                this.f1880w = sVar;
                return true;
            }
        }
        return false;
    }

    public boolean S0(android.view.View view) {
        l1();
        boolean zR = this.f1849e.r(view);
        if (zR) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(view);
            this.f1843b.J(b0VarD0);
            this.f1843b.C(b0VarD0);
        }
        n1(!zR);
        return zR;
    }

    public final void T(int[] iArr) {
        int iG = this.f1849e.g();
        if (iG == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i5 = Integer.MAX_VALUE;
        int i6 = Integer.MIN_VALUE;
        for (int i7 = 0; i7 < iG; i7++) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(this.f1849e.f(i7));
            if (!b0VarD0.C()) {
                int layoutPosition = b0VarD0.getLayoutPosition();
                if (layoutPosition < i5) {
                    i5 = layoutPosition;
                }
                if (layoutPosition > i6) {
                    i6 = layoutPosition;
                }
            }
        }
        iArr[0] = i5;
        iArr[1] = i6;
    }

    public void T0(androidx.recyclerview.widget.RecyclerView.o oVar) {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null) {
            pVar.f("Cannot remove item decoration during a scroll  or layout");
        }
        this.f1876u.remove(oVar);
        if (this.f1876u.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        t0();
        requestLayout();
    }

    public void U0(androidx.recyclerview.widget.RecyclerView.s sVar) {
        this.f1878v.remove(sVar);
        if (this.f1880w == sVar) {
            this.f1880w = null;
        }
    }

    public final android.view.View V() {
        androidx.recyclerview.widget.RecyclerView.b0 b0VarW;
        androidx.recyclerview.widget.RecyclerView.y yVar = this.f1862m0;
        int i5 = yVar.f1993m;
        if (i5 == -1) {
            i5 = 0;
        }
        int iB = yVar.b();
        for (int i6 = i5; i6 < iB; i6++) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarW2 = W(i6);
            if (b0VarW2 == null) {
                break;
            }
            if (b0VarW2.itemView.hasFocusable()) {
                return b0VarW2.itemView;
            }
        }
        int iMin = java.lang.Math.min(iB, i5);
        do {
            iMin--;
            if (iMin < 0 || (b0VarW = W(iMin)) == null) {
                return null;
            }
        } while (!b0VarW.itemView.hasFocusable());
        return b0VarW.itemView;
    }

    public void V0(androidx.recyclerview.widget.RecyclerView.t tVar) {
        java.util.List<androidx.recyclerview.widget.RecyclerView.t> list = this.f1865o0;
        if (list != null) {
            list.remove(tVar);
        }
    }

    public androidx.recyclerview.widget.RecyclerView.b0 W(int i5) {
        androidx.recyclerview.widget.RecyclerView.b0 b0Var = null;
        if (this.J) {
            return null;
        }
        int iJ = this.f1849e.j();
        for (int i6 = 0; i6 < iJ; i6++) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(this.f1849e.i(i6));
            if (b0VarD0 != null && !b0VarD0.p() && a0(b0VarD0) == i5) {
                if (!this.f1849e.n(b0VarD0.itemView)) {
                    return b0VarD0;
                }
                b0Var = b0VarD0;
            }
        }
        return b0Var;
    }

    public void W0() {
        androidx.recyclerview.widget.RecyclerView.b0 b0Var;
        int iG = this.f1849e.g();
        for (int i5 = 0; i5 < iG; i5++) {
            android.view.View viewF = this.f1849e.f(i5);
            androidx.recyclerview.widget.RecyclerView.b0 b0VarC0 = c0(viewF);
            if (b0VarC0 != null && (b0Var = b0VarC0.f1910h) != null) {
                android.view.View view = b0Var.itemView;
                int left = viewF.getLeft();
                int top = viewF.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    public androidx.recyclerview.widget.RecyclerView.b0 X(long j5) {
        androidx.recyclerview.widget.RecyclerView.h hVar = this.f1868q;
        androidx.recyclerview.widget.RecyclerView.b0 b0Var = null;
        if (hVar != null && hVar.hasStableIds()) {
            int iJ = this.f1849e.j();
            for (int i5 = 0; i5 < iJ; i5++) {
                androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(this.f1849e.i(i5));
                if (b0VarD0 != null && !b0VarD0.p() && b0VarD0.getItemId() == j5) {
                    if (!this.f1849e.n(b0VarD0.itemView)) {
                        return b0VarD0;
                    }
                    b0Var = b0VarD0;
                }
            }
        }
        return b0Var;
    }

    public final void X0(android.view.View view, android.view.View view2) {
        android.view.View view3 = view2 != null ? view2 : view;
        this.f1857i.set(0, 0, view3.getWidth(), view3.getHeight());
        android.view.ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof androidx.recyclerview.widget.RecyclerView.LayoutParams) {
            androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams2 = (androidx.recyclerview.widget.RecyclerView.LayoutParams) layoutParams;
            if (!layoutParams2.f1890c) {
                android.graphics.Rect rect = layoutParams2.f1889b;
                android.graphics.Rect rect2 = this.f1857i;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.f1857i);
            offsetRectIntoDescendantCoords(view, this.f1857i);
        }
        this.f1870r.p1(this, view, this.f1857i, !this.A, view2 == null);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002a  */
    /* JADX WARN: Code duplicated, block: B:17:0x0034  */
    /* JADX WARN: Code duplicated, block: B:22:0x0036 A[SYNTHETIC] */
    public androidx.recyclerview.widget.RecyclerView.b0 Y(int i5, boolean z4) {
        int iJ = this.f1849e.j();
        androidx.recyclerview.widget.RecyclerView.b0 b0Var = null;
        for (int i6 = 0; i6 < iJ; i6++) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(this.f1849e.i(i6));
            if (b0VarD0 != null && !b0VarD0.p()) {
                if (z4) {
                    if (b0VarD0.f1904b != i5) {
                        continue;
                    } else {
                        if (this.f1849e.n(b0VarD0.itemView)) {
                            return b0VarD0;
                        }
                        b0Var = b0VarD0;
                    }
                } else if (b0VarD0.getLayoutPosition() != i5) {
                    continue;
                } else {
                    if (this.f1849e.n(b0VarD0.itemView)) {
                        return b0VarD0;
                    }
                    b0Var = b0VarD0;
                }
            }
        }
        return b0Var;
    }

    public final void Y0() {
        androidx.recyclerview.widget.RecyclerView.y yVar = this.f1862m0;
        yVar.f1994n = -1L;
        yVar.f1993m = -1;
        yVar.f1995o = -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean Z(int i5, int i6) {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar == null) {
            android.util.Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.D) {
            return false;
        }
        boolean zJ = pVar.j();
        boolean zK = this.f1870r.k();
        if (!zJ || java.lang.Math.abs(i5) < this.f1850e0) {
            i5 = 0;
        }
        if (!zK || java.lang.Math.abs(i6) < this.f1850e0) {
            i6 = 0;
        }
        if (i5 == 0 && i6 == 0) {
            return false;
        }
        float f5 = i5;
        float f6 = i6;
        if (!dispatchNestedPreFling(f5, f6)) {
            boolean z4 = zJ || zK;
            dispatchNestedFling(f5, f6, z4);
            int i7 = zJ;
            if (z4) {
                if (zK) {
                    i7 = (zJ ? 1 : 0) | 2;
                }
                m1(i7, 1);
                int i8 = this.f1852f0;
                int iMax = java.lang.Math.max(-i8, java.lang.Math.min(i5, i8));
                int i9 = this.f1852f0;
                this.f1859j0.b(iMax, java.lang.Math.max(-i9, java.lang.Math.min(i6, i9)));
                return true;
            }
        }
        return false;
    }

    public final void Z0() {
        android.view.VelocityTracker velocityTracker = this.V;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        o1(0);
        Q0();
    }

    public void a(int i5, int i6) {
        if (i5 < 0) {
            L();
            if (this.O.isFinished()) {
                this.O.onAbsorb(-i5);
            }
        } else if (i5 > 0) {
            M();
            if (this.Q.isFinished()) {
                this.Q.onAbsorb(i5);
            }
        }
        if (i6 < 0) {
            N();
            if (this.P.isFinished()) {
                this.P.onAbsorb(-i6);
            }
        } else if (i6 > 0) {
            K();
            if (this.R.isFinished()) {
                this.R.onAbsorb(i6);
            }
        }
        if (i5 == 0 && i6 == 0) {
            return;
        }
        w.q.K(this);
    }

    public int a0(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        if (b0Var.k(524) || !b0Var.n()) {
            return -1;
        }
        return this.f1847d.e(b0Var.f1904b);
    }

    public final void a1() {
        int absoluteAdapterPosition;
        android.view.View focusedChild = (this.f1858i0 && hasFocus() && this.f1868q != null) ? getFocusedChild() : null;
        androidx.recyclerview.widget.RecyclerView.b0 b0VarR = focusedChild != null ? R(focusedChild) : null;
        if (b0VarR == null) {
            Y0();
            return;
        }
        this.f1862m0.f1994n = this.f1868q.hasStableIds() ? b0VarR.getItemId() : -1L;
        androidx.recyclerview.widget.RecyclerView.y yVar = this.f1862m0;
        if (this.J) {
            absoluteAdapterPosition = -1;
        } else {
            absoluteAdapterPosition = b0VarR.p() ? b0VarR.f1905c : b0VarR.getAbsoluteAdapterPosition();
        }
        yVar.f1993m = absoluteAdapterPosition;
        this.f1862m0.f1995o = f0(b0VarR.itemView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(java.util.ArrayList<android.view.View> arrayList, int i5, int i6) {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar == null || !pVar.D0(this, arrayList, i5, i6)) {
            super.addFocusables(arrayList, i5, i6);
        }
    }

    public long b0(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        return this.f1868q.hasStableIds() ? b0Var.getItemId() : b0Var.f1904b;
    }

    public void b1() {
        int iJ = this.f1849e.j();
        for (int i5 = 0; i5 < iJ; i5++) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(this.f1849e.i(i5));
            if (!b0VarD0.C()) {
                b0VarD0.y();
            }
        }
    }

    public androidx.recyclerview.widget.RecyclerView.b0 c0(android.view.View view) {
        android.view.ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return d0(view);
        }
        throw new java.lang.IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    public boolean c1(int i5, int i6, android.view.MotionEvent motionEvent, int i7) {
        int i8;
        int i9;
        int i10;
        int i11;
        t();
        if (this.f1868q != null) {
            int[] iArr = this.f1887z0;
            iArr[0] = 0;
            iArr[1] = 0;
            d1(i5, i6, iArr);
            int[] iArr2 = this.f1887z0;
            int i12 = iArr2[0];
            int i13 = iArr2[1];
            i8 = i13;
            i9 = i12;
            i10 = i5 - i12;
            i11 = i6 - i13;
        } else {
            i8 = 0;
            i9 = 0;
            i10 = 0;
            i11 = 0;
        }
        if (!this.f1876u.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.f1887z0;
        iArr3[0] = 0;
        iArr3[1] = 0;
        F(i9, i8, i10, i11, this.f1883x0, i7, iArr3);
        int[] iArr4 = this.f1887z0;
        int i14 = i10 - iArr4[0];
        int i15 = i11 - iArr4[1];
        boolean z4 = (iArr4[0] == 0 && iArr4[1] == 0) ? false : true;
        int i16 = this.f1844b0;
        int[] iArr5 = this.f1883x0;
        this.f1844b0 = i16 - iArr5[0];
        this.f1846c0 -= iArr5[1];
        int[] iArr6 = this.f1885y0;
        iArr6[0] = iArr6[0] + iArr5[0];
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !w.i.a(motionEvent, 8194)) {
                N0(motionEvent.getX(), i14, motionEvent.getY(), i15);
            }
            s(i5, i6);
        }
        if (i9 != 0 || i8 != 0) {
            H(i9, i8);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z4 && i9 == 0 && i8 == 0) ? false : true;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof androidx.recyclerview.widget.RecyclerView.LayoutParams) && this.f1870r.l((androidx.recyclerview.widget.RecyclerView.LayoutParams) layoutParams);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null && pVar.j()) {
            return this.f1870r.p(this.f1862m0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null && pVar.j()) {
            return this.f1870r.q(this.f1862m0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null && pVar.j()) {
            return this.f1870r.r(this.f1862m0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null && pVar.k()) {
            return this.f1870r.s(this.f1862m0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null && pVar.k()) {
            return this.f1870r.t(this.f1862m0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null && pVar.k()) {
            return this.f1870r.u(this.f1862m0);
        }
        return 0;
    }

    public void d1(int i5, int i6, int[] iArr) {
        l1();
        D0();
        s.c.a("RV Scroll");
        P(this.f1862m0);
        int iT1 = i5 != 0 ? this.f1870r.t1(i5, this.f1843b, this.f1862m0) : 0;
        int iU1 = i6 != 0 ? this.f1870r.u1(i6, this.f1843b, this.f1862m0) : 0;
        s.c.b();
        W0();
        E0();
        n1(false);
        if (iArr != null) {
            iArr[0] = iT1;
            iArr[1] = iU1;
        }
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f5, float f6, boolean z4) {
        return getScrollingChildHelper().a(f5, f6, z4);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f5, float f6) {
        return getScrollingChildHelper().b(f5, f6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i5, int i6, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i5, i6, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i5, int i6, int i7, int i8, int[] iArr) {
        return getScrollingChildHelper().f(i5, i6, i7, i8, iArr);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(android.util.SparseArray<android.os.Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(android.util.SparseArray<android.os.Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(android.graphics.Canvas canvas) {
        boolean z4;
        super.draw(canvas);
        int size = this.f1876u.size();
        boolean z5 = false;
        for (int i5 = 0; i5 < size; i5++) {
            this.f1876u.get(i5).i(canvas, this, this.f1862m0);
        }
        android.widget.EdgeEffect edgeEffect = this.O;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z4 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.f1853g ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            android.widget.EdgeEffect edgeEffect2 = this.O;
            z4 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        android.widget.EdgeEffect edgeEffect3 = this.P;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.f1853g) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            android.widget.EdgeEffect edgeEffect4 = this.P;
            z4 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        android.widget.EdgeEffect edgeEffect5 = this.Q;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f1853g ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            android.widget.EdgeEffect edgeEffect6 = this.Q;
            z4 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        android.widget.EdgeEffect edgeEffect7 = this.R;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f1853g) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            android.widget.EdgeEffect edgeEffect8 = this.R;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z5 = true;
            }
            z4 |= z5;
            canvas.restoreToCount(iSave4);
        }
        if ((z4 || this.S == null || this.f1876u.size() <= 0 || !this.S.p()) ? z4 : true) {
            w.q.K(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(android.graphics.Canvas canvas, android.view.View view, long j5) {
        return super.drawChild(canvas, view, j5);
    }

    public final void e1(androidx.recyclerview.widget.RecyclerView.h hVar, boolean z4, boolean z5) {
        androidx.recyclerview.widget.RecyclerView.h hVar2 = this.f1868q;
        if (hVar2 != null) {
            hVar2.unregisterAdapterDataObserver(this.f1841a);
            this.f1868q.onDetachedFromRecyclerView(this);
        }
        if (!z4 || z5) {
            R0();
        }
        this.f1847d.y();
        androidx.recyclerview.widget.RecyclerView.h hVar3 = this.f1868q;
        this.f1868q = hVar;
        if (hVar != null) {
            hVar.registerAdapterDataObserver(this.f1841a);
            hVar.onAttachedToRecyclerView(this);
        }
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null) {
            pVar.C0(hVar3, this.f1868q);
        }
        this.f1843b.x(hVar3, this.f1868q, z4);
        this.f1862m0.f1987g = true;
    }

    public final void f(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        android.view.View view = b0Var.itemView;
        boolean z4 = view.getParent() == this;
        this.f1843b.J(c0(view));
        if (b0Var.r()) {
            this.f1849e.c(view, -1, view.getLayoutParams(), true);
        } else if (z4) {
            this.f1849e.k(view);
        } else {
            this.f1849e.b(view, true);
        }
    }

    public final int f0(android.view.View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof android.view.ViewGroup) && view.hasFocus()) {
            view = ((android.view.ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    public boolean f1(androidx.recyclerview.widget.RecyclerView.b0 b0Var, int i5) {
        if (!r0()) {
            w.q.V(b0Var.itemView, i5);
            return true;
        }
        b0Var.f1918p = i5;
        this.A0.add(b0Var);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public android.view.View focusSearch(android.view.View view, int i5) {
        android.view.View viewH0;
        boolean z4;
        android.view.View viewO0 = this.f1870r.O0(view, i5);
        if (viewO0 != null) {
            return viewO0;
        }
        boolean z5 = (this.f1868q == null || this.f1870r == null || r0() || this.D) ? false : true;
        android.view.FocusFinder focusFinder = android.view.FocusFinder.getInstance();
        if (z5 && (i5 == 2 || i5 == 1)) {
            if (this.f1870r.k()) {
                int i6 = i5 == 2 ? 130 : 33;
                z4 = focusFinder.findNextFocus(this, view, i6) == null;
                if (L0) {
                    i5 = i6;
                }
            } else {
                z4 = false;
            }
            if (!z4 && this.f1870r.j()) {
                int i7 = (this.f1870r.X() == 1) ^ (i5 == 2) ? 66 : 17;
                boolean z6 = focusFinder.findNextFocus(this, view, i7) == null;
                if (L0) {
                    i5 = i7;
                }
                z4 = z6;
            }
            if (z4) {
                t();
                if (Q(view) == null) {
                    return null;
                }
                l1();
                this.f1870r.H0(view, i5, this.f1843b, this.f1862m0);
                n1(false);
            }
            viewH0 = focusFinder.findNextFocus(this, view, i5);
        } else {
            android.view.View viewFindNextFocus = focusFinder.findNextFocus(this, view, i5);
            if (viewFindNextFocus == null && z5) {
                t();
                if (Q(view) == null) {
                    return null;
                }
                l1();
                viewH0 = this.f1870r.H0(view, i5, this.f1843b, this.f1862m0);
                n1(false);
            } else {
                viewH0 = viewFindNextFocus;
            }
        }
        if (viewH0 == null || viewH0.hasFocusable()) {
            return s0(view, viewH0, i5) ? viewH0 : super.focusSearch(view, i5);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i5);
        }
        X0(viewH0, null);
        return view;
    }

    public void g(androidx.recyclerview.widget.RecyclerView.o oVar) {
        h(oVar, -1);
    }

    public final java.lang.String g0(android.content.Context context, java.lang.String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        if (str.contains(".")) {
            return str;
        }
        return androidx.recyclerview.widget.RecyclerView.class.getPackage().getName() + '.' + str;
    }

    public boolean g1(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        if (!r0()) {
            return false;
        }
        int iA = accessibilityEvent != null ? x.b.a(accessibilityEvent) : 0;
        this.F |= iA != 0 ? iA : 0;
        return true;
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null) {
            return pVar.C();
        }
        throw new java.lang.IllegalStateException("RecyclerView has no LayoutManager" + O());
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null) {
            return pVar.D(getContext(), attributeSet);
        }
        throw new java.lang.IllegalStateException("RecyclerView has no LayoutManager" + O());
    }

    @Override // android.view.ViewGroup, android.view.View
    public java.lang.CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public androidx.recyclerview.widget.RecyclerView.h getAdapter() {
        return this.f1868q;
    }

    @Override // android.view.View
    public int getBaseline() {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        return pVar != null ? pVar.F() : super.getBaseline();
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i5, int i6) {
        androidx.recyclerview.widget.RecyclerView.k kVar = this.f1877u0;
        return kVar == null ? super.getChildDrawingOrder(i5, i6) : kVar.a(i5, i6);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f1853g;
    }

    public androidx.recyclerview.widget.i getCompatAccessibilityDelegate() {
        return this.f1875t0;
    }

    public androidx.recyclerview.widget.RecyclerView.l getEdgeEffectFactory() {
        return this.N;
    }

    public androidx.recyclerview.widget.RecyclerView.m getItemAnimator() {
        return this.S;
    }

    public int getItemDecorationCount() {
        return this.f1876u.size();
    }

    public androidx.recyclerview.widget.RecyclerView.p getLayoutManager() {
        return this.f1870r;
    }

    public int getMaxFlingVelocity() {
        return this.f1852f0;
    }

    public int getMinFlingVelocity() {
        return this.f1850e0;
    }

    public long getNanoTime() {
        if (K0) {
            return java.lang.System.nanoTime();
        }
        return 0L;
    }

    public androidx.recyclerview.widget.RecyclerView.r getOnFlingListener() {
        return null;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.f1858i0;
    }

    public androidx.recyclerview.widget.RecyclerView.u getRecycledViewPool() {
        return this.f1843b.i();
    }

    public int getScrollState() {
        return this.T;
    }

    public void h(androidx.recyclerview.widget.RecyclerView.o oVar, int i5) {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null) {
            pVar.f("Cannot add item decoration during a scroll  or layout");
        }
        if (this.f1876u.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i5 < 0) {
            this.f1876u.add(oVar);
        } else {
            this.f1876u.add(i5, oVar);
        }
        t0();
        requestLayout();
    }

    public android.graphics.Rect h0(android.view.View view) {
        androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams = (androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams();
        if (!layoutParams.f1890c) {
            return layoutParams.f1889b;
        }
        if (this.f1862m0.e() && (layoutParams.b() || layoutParams.d())) {
            return layoutParams.f1889b;
        }
        android.graphics.Rect rect = layoutParams.f1889b;
        rect.set(0, 0, 0, 0);
        int size = this.f1876u.size();
        for (int i5 = 0; i5 < size; i5++) {
            this.f1857i.set(0, 0, 0, 0);
            this.f1876u.get(i5).e(this.f1857i, view, this, this.f1862m0);
            int i6 = rect.left;
            android.graphics.Rect rect2 = this.f1857i;
            rect.left = i6 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        layoutParams.f1890c = false;
        return rect;
    }

    public void h1(int i5, int i6) {
        i1(i5, i6, null);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().j();
    }

    public void i(androidx.recyclerview.widget.RecyclerView.s sVar) {
        this.f1878v.add(sVar);
    }

    public final void i0(long j5, androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.b0 b0Var2) {
        int iG = this.f1849e.g();
        for (int i5 = 0; i5 < iG; i5++) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(this.f1849e.f(i5));
            if (b0VarD0 != b0Var && b0(b0VarD0) == j5) {
                androidx.recyclerview.widget.RecyclerView.h hVar = this.f1868q;
                if (hVar == null || !hVar.hasStableIds()) {
                    throw new java.lang.IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + b0VarD0 + " \n View Holder 2:" + b0Var + O());
                }
                throw new java.lang.IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + b0VarD0 + " \n View Holder 2:" + b0Var + O());
            }
        }
        android.util.Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + b0Var2 + " cannot be found but it is necessary for " + b0Var + O());
    }

    public void i1(int i5, int i6, android.view.animation.Interpolator interpolator) {
        j1(i5, i6, interpolator, Integer.MIN_VALUE);
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.f1882x;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.D;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().l();
    }

    public void j(androidx.recyclerview.widget.RecyclerView.t tVar) {
        if (this.f1865o0 == null) {
            this.f1865o0 = new java.util.ArrayList();
        }
        this.f1865o0.add(tVar);
    }

    public boolean j0() {
        return !this.A || this.J || this.f1847d.p();
    }

    public void j1(int i5, int i6, android.view.animation.Interpolator interpolator, int i7) {
        k1(i5, i6, interpolator, i7, false);
    }

    public void k(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2) {
        b0Var.setIsRecyclable(false);
        if (this.S.a(b0Var, cVar, cVar2)) {
            J0();
        }
    }

    public final boolean k0() {
        int iG = this.f1849e.g();
        for (int i5 = 0; i5 < iG; i5++) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(this.f1849e.f(i5));
            if (b0VarD0 != null && !b0VarD0.C() && b0VarD0.s()) {
                return true;
            }
        }
        return false;
    }

    public void k1(int i5, int i6, android.view.animation.Interpolator interpolator, int i7, boolean z4) {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar == null) {
            android.util.Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.D) {
            return;
        }
        if (!pVar.j()) {
            i5 = 0;
        }
        if (!this.f1870r.k()) {
            i6 = 0;
        }
        if (i5 == 0 && i6 == 0) {
            return;
        }
        if (!(i7 == Integer.MIN_VALUE || i7 > 0)) {
            scrollBy(i5, i6);
            return;
        }
        if (z4) {
            int i8 = i5 != 0 ? 1 : 0;
            if (i6 != 0) {
                i8 |= 2;
            }
            m1(i8, 1);
        }
        this.f1859j0.e(i5, i6, i7, interpolator);
    }

    public final void l(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.b0 b0Var2, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2, boolean z4, boolean z5) {
        b0Var.setIsRecyclable(false);
        if (z4) {
            f(b0Var);
        }
        if (b0Var != b0Var2) {
            if (z5) {
                f(b0Var2);
            }
            b0Var.f1909g = b0Var2;
            f(b0Var);
            this.f1843b.J(b0Var);
            b0Var2.setIsRecyclable(false);
            b0Var2.f1910h = b0Var;
        }
        if (this.S.b(b0Var, b0Var2, cVar, cVar2)) {
            J0();
        }
    }

    public void l0() {
        this.f1847d = new androidx.recyclerview.widget.a(new androidx.recyclerview.widget.RecyclerView.f());
    }

    public void l1() {
        int i5 = this.B + 1;
        this.B = i5;
        if (i5 != 1 || this.D) {
            return;
        }
        this.C = false;
    }

    public void m(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2) {
        f(b0Var);
        b0Var.setIsRecyclable(false);
        if (this.S.c(b0Var, cVar, cVar2)) {
            J0();
        }
    }

    @android.annotation.SuppressLint({"InlinedApi"})
    public final void m0() {
        if (w.q.o(this) == 0) {
            w.q.W(this, 8);
        }
    }

    public boolean m1(int i5, int i6) {
        return getScrollingChildHelper().p(i5, i6);
    }

    public void n(java.lang.String str) {
        if (r0()) {
            if (str != null) {
                throw new java.lang.IllegalStateException(str);
            }
            throw new java.lang.IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + O());
        }
        if (this.M > 0) {
            android.util.Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new java.lang.IllegalStateException("" + O()));
        }
    }

    public final void n0() {
        this.f1849e = new androidx.recyclerview.widget.b(new androidx.recyclerview.widget.RecyclerView.e());
    }

    public void n1(boolean z4) {
        if (this.B < 1) {
            this.B = 1;
        }
        if (!z4 && !this.D) {
            this.C = false;
        }
        if (this.B == 1) {
            if (z4 && this.C && !this.D && this.f1870r != null && this.f1868q != null) {
                A();
            }
            if (!this.D) {
                this.C = false;
            }
        }
        this.B--;
    }

    public boolean o(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        androidx.recyclerview.widget.RecyclerView.m mVar = this.S;
        return mVar == null || mVar.g(b0Var, b0Var.j());
    }

    public void o0(android.graphics.drawable.StateListDrawable stateListDrawable, android.graphics.drawable.Drawable drawable, android.graphics.drawable.StateListDrawable stateListDrawable2, android.graphics.drawable.Drawable drawable2) {
        if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
            android.content.res.Resources resources = getContext().getResources();
            new androidx.recyclerview.widget.d(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(androidx.recyclerview.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(androidx.recyclerview.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(androidx.recyclerview.R.dimen.fastscroll_margin));
        } else {
            throw new java.lang.IllegalArgumentException("Trying to set fast scroller without both required drawables." + O());
        }
    }

    public void o1(int i5) {
        getScrollingChildHelper().r(i5);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.L = 0;
        this.f1882x = true;
        this.A = this.A && !isLayoutRequested();
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null) {
            pVar.y(this);
        }
        this.f1873s0 = false;
        if (K0) {
            java.lang.ThreadLocal<androidx.recyclerview.widget.e> threadLocal = androidx.recyclerview.widget.e.f2138e;
            androidx.recyclerview.widget.e eVar = threadLocal.get();
            this.f1860k0 = eVar;
            if (eVar == null) {
                this.f1860k0 = new androidx.recyclerview.widget.e();
                android.view.Display displayK = w.q.k(this);
                float f5 = 60.0f;
                if (!isInEditMode() && displayK != null) {
                    float refreshRate = displayK.getRefreshRate();
                    if (refreshRate >= 30.0f) {
                        f5 = refreshRate;
                    }
                }
                androidx.recyclerview.widget.e eVar2 = this.f1860k0;
                eVar2.f2142c = (long) (1.0E9f / f5);
                threadLocal.set(eVar2);
            }
            this.f1860k0.a(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        androidx.recyclerview.widget.e eVar;
        super.onDetachedFromWindow();
        androidx.recyclerview.widget.RecyclerView.m mVar = this.S;
        if (mVar != null) {
            mVar.k();
        }
        p1();
        this.f1882x = false;
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null) {
            pVar.z(this, this.f1843b);
        }
        this.A0.clear();
        removeCallbacks(this.B0);
        this.f1851f.j();
        if (!K0 || (eVar = this.f1860k0) == null) {
            return;
        }
        eVar.j(this);
        this.f1860k0 = null;
    }

    @Override // android.view.View
    public void onDraw(android.graphics.Canvas canvas) {
        super.onDraw(canvas);
        int size = this.f1876u.size();
        for (int i5 = 0; i5 < size; i5++) {
            this.f1876u.get(i5).g(canvas, this, this.f1862m0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0062  */
    @Override // android.view.View
    public boolean onGenericMotionEvent(android.view.MotionEvent motionEvent) {
        float f5;
        float axisValue;
        if (this.f1870r != null && !this.D && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f5 = this.f1870r.k() ? -motionEvent.getAxisValue(9) : 0.0f;
                axisValue = this.f1870r.j() ? motionEvent.getAxisValue(10) : 0.0f;
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                float axisValue2 = motionEvent.getAxisValue(26);
                if (this.f1870r.k()) {
                    f5 = -axisValue2;
                } else if (this.f1870r.j()) {
                    axisValue = axisValue2;
                    f5 = 0.0f;
                } else {
                    f5 = 0.0f;
                    axisValue = 0.0f;
                }
            } else {
                f5 = 0.0f;
                axisValue = 0.0f;
            }
            if (f5 != 0.0f || axisValue != 0.0f) {
                v0((int) (axisValue * this.f1854g0), (int) (f5 * this.f1856h0), motionEvent, 1);
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(android.view.MotionEvent motionEvent) {
        boolean z4;
        if (this.D) {
            return false;
        }
        this.f1880w = null;
        if (S(motionEvent)) {
            p();
            return true;
        }
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar == null) {
            return false;
        }
        boolean zJ = pVar.j();
        boolean zK = this.f1870r.k();
        if (this.V == null) {
            this.V = android.view.VelocityTracker.obtain();
        }
        this.V.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.E) {
                this.E = false;
            }
            this.U = motionEvent.getPointerId(0);
            int x4 = (int) (motionEvent.getX() + 0.5f);
            this.f1844b0 = x4;
            this.W = x4;
            int y4 = (int) (motionEvent.getY() + 0.5f);
            this.f1846c0 = y4;
            this.f1842a0 = y4;
            if (this.T == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                o1(1);
            }
            int[] iArr = this.f1885y0;
            iArr[1] = 0;
            iArr[0] = 0;
            int i5 = zJ;
            if (zK) {
                i5 = (zJ ? 1 : 0) | 2;
            }
            m1(i5, 0);
        } else if (actionMasked == 1) {
            this.V.clear();
            o1(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.U);
            if (iFindPointerIndex < 0) {
                android.util.Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.U + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x5 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y5 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.T != 1) {
                int i6 = x5 - this.W;
                int i7 = y5 - this.f1842a0;
                if (!zJ || java.lang.Math.abs(i6) <= this.f1848d0) {
                    z4 = false;
                } else {
                    this.f1844b0 = x5;
                    z4 = true;
                }
                if (zK && java.lang.Math.abs(i7) > this.f1848d0) {
                    this.f1846c0 = y5;
                    z4 = true;
                }
                if (z4) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            p();
        } else if (actionMasked == 5) {
            this.U = motionEvent.getPointerId(actionIndex);
            int x6 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f1844b0 = x6;
            this.W = x6;
            int y6 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.f1846c0 = y6;
            this.f1842a0 = y6;
        } else if (actionMasked == 6) {
            G0(motionEvent);
        }
        return this.T == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        s.c.a("RV OnLayout");
        A();
        s.c.b();
        this.A = true;
    }

    @Override // android.view.View
    public void onMeasure(int i5, int i6) {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar == null) {
            v(i5, i6);
            return;
        }
        boolean z4 = false;
        if (pVar.q0()) {
            int mode = android.view.View.MeasureSpec.getMode(i5);
            int mode2 = android.view.View.MeasureSpec.getMode(i6);
            this.f1870r.X0(this.f1843b, this.f1862m0, i5, i6);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z4 = true;
            }
            this.C0 = z4;
            if (z4 || this.f1868q == null) {
                return;
            }
            if (this.f1862m0.f1985e == 1) {
                B();
            }
            this.f1870r.w1(i5, i6);
            this.f1862m0.f1990j = true;
            C();
            this.f1870r.z1(i5, i6);
            if (this.f1870r.C1()) {
                this.f1870r.w1(android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY));
                this.f1862m0.f1990j = true;
                C();
                this.f1870r.z1(i5, i6);
            }
            this.D0 = getMeasuredWidth();
            this.E0 = getMeasuredHeight();
            return;
        }
        if (this.f1884y) {
            this.f1870r.X0(this.f1843b, this.f1862m0, i5, i6);
            return;
        }
        if (this.G) {
            l1();
            D0();
            L0();
            E0();
            androidx.recyclerview.widget.RecyclerView.y yVar = this.f1862m0;
            if (yVar.f1992l) {
                yVar.f1988h = true;
            } else {
                this.f1847d.j();
                this.f1862m0.f1988h = false;
            }
            this.G = false;
            n1(false);
        } else if (this.f1862m0.f1992l) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        androidx.recyclerview.widget.RecyclerView.h hVar = this.f1868q;
        if (hVar != null) {
            this.f1862m0.f1986f = hVar.getItemCount();
        } else {
            this.f1862m0.f1986f = 0;
        }
        l1();
        this.f1870r.X0(this.f1843b, this.f1862m0, i5, i6);
        n1(false);
        this.f1862m0.f1988h = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i5, android.graphics.Rect rect) {
        if (r0()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i5, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        if (!(parcelable instanceof androidx.recyclerview.widget.RecyclerView.SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        androidx.recyclerview.widget.RecyclerView.SavedState savedState = (androidx.recyclerview.widget.RecyclerView.SavedState) parcelable;
        this.f1845c = savedState;
        super.onRestoreInstanceState(savedState.a());
        requestLayout();
    }

    @Override // android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        androidx.recyclerview.widget.RecyclerView.SavedState savedState = new androidx.recyclerview.widget.RecyclerView.SavedState(super.onSaveInstanceState());
        androidx.recyclerview.widget.RecyclerView.SavedState savedState2 = this.f1845c;
        if (savedState2 != null) {
            savedState.b(savedState2);
        } else {
            androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
            if (pVar != null) {
                savedState.f1892a = pVar.b1();
            } else {
                savedState.f1892a = null;
            }
        }
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i5, int i6, int i7, int i8) {
        super.onSizeChanged(i5, i6, i7, i8);
        if (i5 == i7 && i6 == i8) {
            return;
        }
        p0();
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00df A[PHI: r0
  0x00df: PHI (r0v36 int) = (r0v26 int), (r0v40 int) binds: [B:41:0x00c8, B:45:0x00db] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        int i5;
        boolean z4;
        boolean z5 = false;
        if (this.D || this.E) {
            return false;
        }
        if (J(motionEvent)) {
            p();
            return true;
        }
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar == null) {
            return false;
        }
        boolean zJ = pVar.j();
        boolean zK = this.f1870r.k();
        if (this.V == null) {
            this.V = android.view.VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            int[] iArr = this.f1885y0;
            iArr[1] = 0;
            iArr[0] = 0;
        }
        android.view.MotionEvent motionEventObtain = android.view.MotionEvent.obtain(motionEvent);
        int[] iArr2 = this.f1885y0;
        motionEventObtain.offsetLocation(iArr2[0], iArr2[1]);
        if (actionMasked == 0) {
            this.U = motionEvent.getPointerId(0);
            int x4 = (int) (motionEvent.getX() + 0.5f);
            this.f1844b0 = x4;
            this.W = x4;
            int y4 = (int) (motionEvent.getY() + 0.5f);
            this.f1846c0 = y4;
            this.f1842a0 = y4;
            if (zK) {
                i5 = zJ;
                i5 = (zJ ? 1 : 0) | 2;
            }
            i5 = zJ;
            m1(i5, 0);
        } else if (actionMasked == 1) {
            this.V.addMovement(motionEventObtain);
            this.V.computeCurrentVelocity(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO, this.f1852f0);
            float f5 = zJ ? -this.V.getXVelocity(this.U) : 0.0f;
            float f6 = zK ? -this.V.getYVelocity(this.U) : 0.0f;
            if ((f5 == 0.0f && f6 == 0.0f) || !Z((int) f5, (int) f6)) {
                setScrollState(0);
            }
            Z0();
            z5 = true;
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.U);
            if (iFindPointerIndex < 0) {
                android.util.Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.U + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x5 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y5 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            int iMax = this.f1844b0 - x5;
            int iMax2 = this.f1846c0 - y5;
            if (this.T != 1) {
                if (zJ) {
                    iMax = iMax > 0 ? java.lang.Math.max(0, iMax - this.f1848d0) : java.lang.Math.min(0, iMax + this.f1848d0);
                    if (iMax != 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                } else {
                    z4 = false;
                }
                if (zK) {
                    iMax2 = iMax2 > 0 ? java.lang.Math.max(0, iMax2 - this.f1848d0) : java.lang.Math.min(0, iMax2 + this.f1848d0);
                    if (iMax2 != 0) {
                        z4 = true;
                    }
                }
                if (z4) {
                    setScrollState(1);
                }
            }
            int i6 = iMax;
            int i7 = iMax2;
            if (this.T == 1) {
                int[] iArr3 = this.f1887z0;
                iArr3[0] = 0;
                iArr3[1] = 0;
                if (E(zJ ? i6 : 0, zK ? i7 : 0, iArr3, this.f1883x0, 0)) {
                    int[] iArr4 = this.f1887z0;
                    i6 -= iArr4[0];
                    i7 -= iArr4[1];
                    int[] iArr5 = this.f1885y0;
                    int i8 = iArr5[0];
                    int[] iArr6 = this.f1883x0;
                    iArr5[0] = i8 + iArr6[0];
                    iArr5[1] = iArr5[1] + iArr6[1];
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                int i9 = i7;
                int[] iArr7 = this.f1883x0;
                this.f1844b0 = x5 - iArr7[0];
                this.f1846c0 = y5 - iArr7[1];
                if (c1(zJ ? i6 : 0, zK ? i9 : 0, motionEvent, 0)) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                androidx.recyclerview.widget.e eVar = this.f1860k0;
                if (eVar != null && (i6 != 0 || i9 != 0)) {
                    eVar.f(this, i6, i9);
                }
            }
        } else if (actionMasked == 3) {
            p();
        } else if (actionMasked == 5) {
            this.U = motionEvent.getPointerId(actionIndex);
            int x6 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f1844b0 = x6;
            this.W = x6;
            int y6 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.f1846c0 = y6;
            this.f1842a0 = y6;
        } else if (actionMasked == 6) {
            G0(motionEvent);
        }
        if (!z5) {
            this.V.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    public final void p() {
        Z0();
        setScrollState(0);
    }

    public void p0() {
        this.R = null;
        this.P = null;
        this.Q = null;
        this.O = null;
    }

    public void p1() {
        setScrollState(0);
        q1();
    }

    public boolean q0() {
        android.view.accessibility.AccessibilityManager accessibilityManager = this.H;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public final void q1() {
        this.f1859j0.f();
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null) {
            pVar.E1();
        }
    }

    public void r() {
        int iJ = this.f1849e.j();
        for (int i5 = 0; i5 < iJ; i5++) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(this.f1849e.i(i5));
            if (!b0VarD0.C()) {
                b0VarD0.c();
            }
        }
        this.f1843b.d();
    }

    public boolean r0() {
        return this.L > 0;
    }

    public void r1(int i5, int i6, java.lang.Object obj) {
        int i7;
        int iJ = this.f1849e.j();
        int i8 = i5 + i6;
        for (int i9 = 0; i9 < iJ; i9++) {
            android.view.View viewI = this.f1849e.i(i9);
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(viewI);
            if (b0VarD0 != null && !b0VarD0.C() && (i7 = b0VarD0.f1904b) >= i5 && i7 < i8) {
                b0VarD0.b(2);
                b0VarD0.a(obj);
                ((androidx.recyclerview.widget.RecyclerView.LayoutParams) viewI.getLayoutParams()).f1890c = true;
            }
        }
        this.f1843b.M(i5, i6);
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(android.view.View view, boolean z4) {
        androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(view);
        if (b0VarD0 != null) {
            if (b0VarD0.r()) {
                b0VarD0.f();
            } else if (!b0VarD0.C()) {
                throw new java.lang.IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + b0VarD0 + O());
            }
        }
        view.clearAnimation();
        y(view);
        super.removeDetachedView(view, z4);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(android.view.View view, android.view.View view2) {
        if (!this.f1870r.Z0(this, this.f1862m0, view, view2) && view2 != null) {
            X0(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(android.view.View view, android.graphics.Rect rect, boolean z4) {
        return this.f1870r.o1(this, view, rect, z4);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z4) {
        int size = this.f1878v.size();
        for (int i5 = 0; i5 < size; i5++) {
            this.f1878v.get(i5).c(z4);
        }
        super.requestDisallowInterceptTouchEvent(z4);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.B != 0 || this.D) {
            this.C = true;
        } else {
            super.requestLayout();
        }
    }

    public void s(int i5, int i6) {
        boolean zIsFinished;
        android.widget.EdgeEffect edgeEffect = this.O;
        if (edgeEffect == null || edgeEffect.isFinished() || i5 <= 0) {
            zIsFinished = false;
        } else {
            this.O.onRelease();
            zIsFinished = this.O.isFinished();
        }
        android.widget.EdgeEffect edgeEffect2 = this.Q;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i5 < 0) {
            this.Q.onRelease();
            zIsFinished |= this.Q.isFinished();
        }
        android.widget.EdgeEffect edgeEffect3 = this.P;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i6 > 0) {
            this.P.onRelease();
            zIsFinished |= this.P.isFinished();
        }
        android.widget.EdgeEffect edgeEffect4 = this.R;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i6 < 0) {
            this.R.onRelease();
            zIsFinished |= this.R.isFinished();
        }
        if (zIsFinished) {
            w.q.K(this);
        }
    }

    public final boolean s0(android.view.View view, android.view.View view2, int i5) {
        int i6;
        if (view2 == null || view2 == this || view2 == view || Q(view2) == null) {
            return false;
        }
        if (view == null || Q(view) == null) {
            return true;
        }
        this.f1857i.set(0, 0, view.getWidth(), view.getHeight());
        this.f1864o.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.f1857i);
        offsetDescendantRectToMyCoords(view2, this.f1864o);
        byte b5 = -1;
        int i7 = this.f1870r.X() == 1 ? -1 : 1;
        android.graphics.Rect rect = this.f1857i;
        int i8 = rect.left;
        android.graphics.Rect rect2 = this.f1864o;
        int i9 = rect2.left;
        if ((i8 < i9 || rect.right <= i9) && rect.right < rect2.right) {
            i6 = 1;
        } else {
            int i10 = rect.right;
            int i11 = rect2.right;
            i6 = ((i10 > i11 || i8 >= i11) && i8 > i9) ? -1 : 0;
        }
        int i12 = rect.top;
        int i13 = rect2.top;
        if ((i12 < i13 || rect.bottom <= i13) && rect.bottom < rect2.bottom) {
            b5 = 1;
        } else {
            int i14 = rect.bottom;
            int i15 = rect2.bottom;
            if ((i14 <= i15 && i12 < i15) || i12 <= i13) {
                b5 = 0;
            }
        }
        if (i5 == 1) {
            return b5 < 0 || (b5 == 0 && i6 * i7 < 0);
        }
        if (i5 == 2) {
            return b5 > 0 || (b5 == 0 && i6 * i7 > 0);
        }
        if (i5 == 17) {
            return i6 < 0;
        }
        if (i5 == 33) {
            return b5 < 0;
        }
        if (i5 == 66) {
            return i6 > 0;
        }
        if (i5 == 130) {
            return b5 > 0;
        }
        throw new java.lang.IllegalArgumentException("Invalid direction: " + i5 + O());
    }

    @Override // android.view.View
    public void scrollBy(int i5, int i6) {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar == null) {
            android.util.Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.D) {
            return;
        }
        boolean zJ = pVar.j();
        boolean zK = this.f1870r.k();
        if (zJ || zK) {
            if (!zJ) {
                i5 = 0;
            }
            if (!zK) {
                i6 = 0;
            }
            c1(i5, i6, null, 0);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i5, int i6) {
        android.util.Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        if (g1(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(androidx.recyclerview.widget.i iVar) {
        this.f1875t0 = iVar;
        w.q.Q(this, iVar);
    }

    public void setAdapter(androidx.recyclerview.widget.RecyclerView.h hVar) {
        setLayoutFrozen(false);
        e1(hVar, false, true);
        M0(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(androidx.recyclerview.widget.RecyclerView.k kVar) {
        if (kVar == this.f1877u0) {
            return;
        }
        this.f1877u0 = kVar;
        setChildrenDrawingOrderEnabled(kVar != null);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z4) {
        if (z4 != this.f1853g) {
            p0();
        }
        this.f1853g = z4;
        super.setClipToPadding(z4);
        if (this.A) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(androidx.recyclerview.widget.RecyclerView.l lVar) {
        v.h.b(lVar);
        this.N = lVar;
        p0();
    }

    public void setHasFixedSize(boolean z4) {
        this.f1884y = z4;
    }

    public void setItemAnimator(androidx.recyclerview.widget.RecyclerView.m mVar) {
        androidx.recyclerview.widget.RecyclerView.m mVar2 = this.S;
        if (mVar2 != null) {
            mVar2.k();
            this.S.v(null);
        }
        this.S = mVar;
        if (mVar != null) {
            mVar.v(this.f1871r0);
        }
    }

    public void setItemViewCacheSize(int i5) {
        this.f1843b.G(i5);
    }

    @java.lang.Deprecated
    public void setLayoutFrozen(boolean z4) {
        suppressLayout(z4);
    }

    public void setLayoutManager(androidx.recyclerview.widget.RecyclerView.p pVar) {
        if (pVar == this.f1870r) {
            return;
        }
        p1();
        if (this.f1870r != null) {
            androidx.recyclerview.widget.RecyclerView.m mVar = this.S;
            if (mVar != null) {
                mVar.k();
            }
            this.f1870r.h1(this.f1843b);
            this.f1870r.i1(this.f1843b);
            this.f1843b.c();
            if (this.f1882x) {
                this.f1870r.z(this, this.f1843b);
            }
            this.f1870r.A1(null);
            this.f1870r = null;
        } else {
            this.f1843b.c();
        }
        this.f1849e.o();
        this.f1870r = pVar;
        if (pVar != null) {
            if (pVar.f1944b != null) {
                throw new java.lang.IllegalArgumentException("LayoutManager " + pVar + " is already attached to a RecyclerView:" + pVar.f1944b.O());
            }
            pVar.A1(this);
            if (this.f1882x) {
                this.f1870r.y(this);
            }
        }
        this.f1843b.K();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @java.lang.Deprecated
    public void setLayoutTransition(android.animation.LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new java.lang.IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z4) {
        getScrollingChildHelper().m(z4);
    }

    public void setOnFlingListener(androidx.recyclerview.widget.RecyclerView.r rVar) {
    }

    @java.lang.Deprecated
    public void setOnScrollListener(androidx.recyclerview.widget.RecyclerView.t tVar) {
        this.f1863n0 = tVar;
    }

    public void setPreserveFocusAfterLayout(boolean z4) {
        this.f1858i0 = z4;
    }

    public void setRecycledViewPool(androidx.recyclerview.widget.RecyclerView.u uVar) {
        this.f1843b.E(uVar);
    }

    @java.lang.Deprecated
    public void setRecyclerListener(androidx.recyclerview.widget.RecyclerView.w wVar) {
        this.f1872s = wVar;
    }

    public void setScrollState(int i5) {
        if (i5 == this.T) {
            return;
        }
        this.T = i5;
        if (i5 != 2) {
            q1();
        }
        G(i5);
    }

    public void setScrollingTouchSlop(int i5) {
        android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(getContext());
        if (i5 != 0) {
            if (i5 == 1) {
                this.f1848d0 = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            android.util.Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i5 + "; using default value");
        }
        this.f1848d0 = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(androidx.recyclerview.widget.RecyclerView.z zVar) {
        this.f1843b.F(zVar);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i5) {
        return getScrollingChildHelper().o(i5);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        getScrollingChildHelper().q();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z4) {
        if (z4 != this.D) {
            n("Do not suppressLayout in layout or scroll");
            if (z4) {
                long jUptimeMillis = android.os.SystemClock.uptimeMillis();
                onTouchEvent(android.view.MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
                this.D = true;
                this.E = true;
                p1();
                return;
            }
            this.D = false;
            if (this.C && this.f1870r != null && this.f1868q != null) {
                requestLayout();
            }
            this.C = false;
        }
    }

    public void t() {
        if (!this.A || this.J) {
            s.c.a("RV FullInvalidate");
            A();
            s.c.b();
            return;
        }
        if (this.f1847d.p()) {
            if (!this.f1847d.o(4) || this.f1847d.o(11)) {
                if (this.f1847d.p()) {
                    s.c.a("RV FullInvalidate");
                    A();
                    s.c.b();
                    return;
                }
                return;
            }
            s.c.a("RV PartialInvalidate");
            l1();
            D0();
            this.f1847d.w();
            if (!this.C) {
                if (k0()) {
                    A();
                } else {
                    this.f1847d.i();
                }
            }
            n1(true);
            E0();
            s.c.b();
        }
    }

    public void t0() {
        int iJ = this.f1849e.j();
        for (int i5 = 0; i5 < iJ; i5++) {
            ((androidx.recyclerview.widget.RecyclerView.LayoutParams) this.f1849e.i(i5).getLayoutParams()).f1890c = true;
        }
        this.f1843b.s();
    }

    public final void u(android.content.Context context, java.lang.String str, android.util.AttributeSet attributeSet, int i5, int i6) {
        java.lang.reflect.Constructor constructor;
        if (str != null) {
            java.lang.String strTrim = str.trim();
            if (strTrim.isEmpty()) {
                return;
            }
            java.lang.String strG0 = g0(context, strTrim);
            try {
                java.lang.Class<? extends U> clsAsSubclass = java.lang.Class.forName(strG0, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(androidx.recyclerview.widget.RecyclerView.p.class);
                java.lang.Object[] objArr = null;
                try {
                    constructor = clsAsSubclass.getConstructor(N0);
                    objArr = new java.lang.Object[]{context, attributeSet, java.lang.Integer.valueOf(i5), java.lang.Integer.valueOf(i6)};
                } catch (java.lang.NoSuchMethodException e5) {
                    try {
                        constructor = clsAsSubclass.getConstructor(new java.lang.Class[0]);
                    } catch (java.lang.NoSuchMethodException e6) {
                        e6.initCause(e5);
                        throw new java.lang.IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + strG0, e6);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((androidx.recyclerview.widget.RecyclerView.p) constructor.newInstance(objArr));
            } catch (java.lang.ClassCastException e7) {
                throw new java.lang.IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + strG0, e7);
            } catch (java.lang.ClassNotFoundException e8) {
                throw new java.lang.IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + strG0, e8);
            } catch (java.lang.IllegalAccessException e9) {
                throw new java.lang.IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + strG0, e9);
            } catch (java.lang.InstantiationException e10) {
                throw new java.lang.IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strG0, e10);
            } catch (java.lang.reflect.InvocationTargetException e11) {
                throw new java.lang.IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strG0, e11);
            }
        }
    }

    public void u0() {
        int iJ = this.f1849e.j();
        for (int i5 = 0; i5 < iJ; i5++) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(this.f1849e.i(i5));
            if (b0VarD0 != null && !b0VarD0.C()) {
                b0VarD0.b(6);
            }
        }
        t0();
        this.f1843b.t();
    }

    public void v(int i5, int i6) {
        setMeasuredDimension(androidx.recyclerview.widget.RecyclerView.p.m(i5, getPaddingLeft() + getPaddingRight(), w.q.r(this)), androidx.recyclerview.widget.RecyclerView.p.m(i6, getPaddingTop() + getPaddingBottom(), w.q.q(this)));
    }

    public final void v0(int i5, int i6, android.view.MotionEvent motionEvent, int i7) {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar == null) {
            android.util.Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.D) {
            return;
        }
        int[] iArr = this.f1887z0;
        iArr[0] = 0;
        iArr[1] = 0;
        boolean zJ = pVar.j();
        boolean zK = this.f1870r.k();
        m1(zK ? (zJ ? 1 : 0) | 2 : zJ ? 1 : 0, i7);
        if (E(zJ ? i5 : 0, zK ? i6 : 0, this.f1887z0, this.f1883x0, i7)) {
            int[] iArr2 = this.f1887z0;
            i5 -= iArr2[0];
            i6 -= iArr2[1];
        }
        c1(zJ ? i5 : 0, zK ? i6 : 0, motionEvent, i7);
        androidx.recyclerview.widget.e eVar = this.f1860k0;
        if (eVar != null && (i5 != 0 || i6 != 0)) {
            eVar.f(this, i5, i6);
        }
        o1(i7);
    }

    public final boolean w(int i5, int i6) {
        T(this.f1879v0);
        int[] iArr = this.f1879v0;
        return (iArr[0] == i5 && iArr[1] == i6) ? false : true;
    }

    public void w0(int i5) {
        int iG = this.f1849e.g();
        for (int i6 = 0; i6 < iG; i6++) {
            this.f1849e.f(i6).offsetLeftAndRight(i5);
        }
    }

    public void x(android.view.View view) {
        androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(view);
        B0(view);
        androidx.recyclerview.widget.RecyclerView.h hVar = this.f1868q;
        if (hVar != null && b0VarD0 != null) {
            hVar.onViewAttachedToWindow(b0VarD0);
        }
        java.util.List<androidx.recyclerview.widget.RecyclerView.q> list = this.I;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.I.get(size).a(view);
            }
        }
    }

    public void x0(int i5) {
        int iG = this.f1849e.g();
        for (int i6 = 0; i6 < iG; i6++) {
            this.f1849e.f(i6).offsetTopAndBottom(i5);
        }
    }

    public void y(android.view.View view) {
        androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(view);
        C0(view);
        androidx.recyclerview.widget.RecyclerView.h hVar = this.f1868q;
        if (hVar != null && b0VarD0 != null) {
            hVar.onViewDetachedFromWindow(b0VarD0);
        }
        java.util.List<androidx.recyclerview.widget.RecyclerView.q> list = this.I;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.I.get(size).b(view);
            }
        }
    }

    public void y0(int i5, int i6) {
        int iJ = this.f1849e.j();
        for (int i7 = 0; i7 < iJ; i7++) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(this.f1849e.i(i7));
            if (b0VarD0 != null && !b0VarD0.C() && b0VarD0.f1904b >= i5) {
                b0VarD0.u(i6, false);
                this.f1862m0.f1987g = true;
            }
        }
        this.f1843b.u(i5, i6);
        requestLayout();
    }

    public final void z() {
        int i5 = this.F;
        this.F = 0;
        if (i5 == 0 || !q0()) {
            return;
        }
        android.view.accessibility.AccessibilityEvent accessibilityEventObtain = android.view.accessibility.AccessibilityEvent.obtain();
        accessibilityEventObtain.setEventType(2048);
        x.b.b(accessibilityEventObtain, i5);
        sendAccessibilityEventUnchecked(accessibilityEventObtain);
    }

    public void z0(int i5, int i6) {
        int i7;
        int i8;
        int i9;
        int i10;
        int iJ = this.f1849e.j();
        if (i5 < i6) {
            i9 = -1;
            i8 = i5;
            i7 = i6;
        } else {
            i7 = i5;
            i8 = i6;
            i9 = 1;
        }
        for (int i11 = 0; i11 < iJ; i11++) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarD0 = d0(this.f1849e.i(i11));
            if (b0VarD0 != null && (i10 = b0VarD0.f1904b) >= i8 && i10 <= i7) {
                if (i10 == i5) {
                    b0VarD0.u(i6 - i5, false);
                } else {
                    b0VarD0.u(i9, false);
                }
                this.f1862m0.f1987g = true;
            }
        }
        this.f1843b.v(i5, i6);
        requestLayout();
    }

    public RecyclerView(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.f1841a = new androidx.recyclerview.widget.RecyclerView.x();
        this.f1843b = new androidx.recyclerview.widget.RecyclerView.v();
        this.f1851f = new androidx.recyclerview.widget.m();
        this.f1855h = new androidx.recyclerview.widget.RecyclerView.a();
        this.f1857i = new android.graphics.Rect();
        this.f1864o = new android.graphics.Rect();
        this.f1866p = new android.graphics.RectF();
        this.f1874t = new java.util.ArrayList();
        this.f1876u = new java.util.ArrayList<>();
        this.f1878v = new java.util.ArrayList<>();
        this.B = 0;
        this.J = false;
        this.K = false;
        this.L = 0;
        this.M = 0;
        this.N = new androidx.recyclerview.widget.RecyclerView.l();
        this.S = new androidx.recyclerview.widget.c();
        this.T = 0;
        this.U = -1;
        this.f1854g0 = Float.MIN_VALUE;
        this.f1856h0 = Float.MIN_VALUE;
        this.f1858i0 = true;
        this.f1859j0 = new androidx.recyclerview.widget.RecyclerView.a0();
        this.f1861l0 = K0 ? new androidx.recyclerview.widget.e.b() : null;
        this.f1862m0 = new androidx.recyclerview.widget.RecyclerView.y();
        this.f1867p0 = false;
        this.f1869q0 = false;
        this.f1871r0 = new androidx.recyclerview.widget.RecyclerView.n();
        this.f1873s0 = false;
        this.f1879v0 = new int[2];
        this.f1883x0 = new int[2];
        this.f1885y0 = new int[2];
        this.f1887z0 = new int[2];
        this.A0 = new java.util.ArrayList();
        this.B0 = new androidx.recyclerview.widget.RecyclerView.b();
        this.D0 = 0;
        this.E0 = 0;
        this.F0 = new androidx.recyclerview.widget.RecyclerView.d();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(context);
        this.f1848d0 = viewConfiguration.getScaledTouchSlop();
        this.f1854g0 = w.s.a(viewConfiguration, context);
        this.f1856h0 = w.s.b(viewConfiguration, context);
        this.f1850e0 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f1852f0 = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.S.v(this.f1871r0);
        l0();
        n0();
        m0();
        if (w.q.n(this) == 0) {
            w.q.V(this, 1);
        }
        this.H = (android.view.accessibility.AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new androidx.recyclerview.widget.i(this));
        int[] iArr = androidx.recyclerview.R.styleable.RecyclerView;
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i5, 0);
        w.q.O(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i5, 0);
        java.lang.String string = typedArrayObtainStyledAttributes.getString(androidx.recyclerview.R.styleable.RecyclerView_layoutManager);
        if (typedArrayObtainStyledAttributes.getInt(androidx.recyclerview.R.styleable.RecyclerView_android_descendantFocusability, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.f1853g = typedArrayObtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_android_clipToPadding, true);
        boolean z4 = typedArrayObtainStyledAttributes.getBoolean(androidx.recyclerview.R.styleable.RecyclerView_fastScrollEnabled, false);
        this.f1886z = z4;
        if (z4) {
            o0((android.graphics.drawable.StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollVerticalThumbDrawable), typedArrayObtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollVerticalTrackDrawable), (android.graphics.drawable.StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollHorizontalThumbDrawable), typedArrayObtainStyledAttributes.getDrawable(androidx.recyclerview.R.styleable.RecyclerView_fastScrollHorizontalTrackDrawable));
        }
        typedArrayObtainStyledAttributes.recycle();
        u(context, string, attributeSet, i5, 0);
        int[] iArr2 = G0;
        android.content.res.TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i5, 0);
        w.q.O(this, context, iArr2, attributeSet, typedArrayObtainStyledAttributes2, i5, 0);
        boolean z5 = typedArrayObtainStyledAttributes2.getBoolean(0, true);
        typedArrayObtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z5);
    }

    public static class SavedState extends androidx.customview.view.AbsSavedState {
        public static final android.os.Parcelable.Creator<androidx.recyclerview.widget.RecyclerView.SavedState> CREATOR = new androidx.recyclerview.widget.RecyclerView.SavedState.a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public android.os.Parcelable f1892a;

        public class a implements android.os.Parcelable.ClassLoaderCreator<androidx.recyclerview.widget.RecyclerView.SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public androidx.recyclerview.widget.RecyclerView.SavedState createFromParcel(android.os.Parcel parcel) {
                return new androidx.recyclerview.widget.RecyclerView.SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public androidx.recyclerview.widget.RecyclerView.SavedState createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                return new androidx.recyclerview.widget.RecyclerView.SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public androidx.recyclerview.widget.RecyclerView.SavedState[] newArray(int i5) {
                return new androidx.recyclerview.widget.RecyclerView.SavedState[i5];
            }
        }

        public SavedState(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1892a = parcel.readParcelable(classLoader == null ? androidx.recyclerview.widget.RecyclerView.p.class.getClassLoader() : classLoader);
        }

        public void b(androidx.recyclerview.widget.RecyclerView.SavedState savedState) {
            this.f1892a = savedState.f1892a;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i5) {
            super.writeToParcel(parcel, i5);
            parcel.writeParcelable(this.f1892a, 0);
        }

        public SavedState(android.os.Parcelable parcelable) {
            super(parcelable);
        }
    }

    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView.b0 f1888a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final android.graphics.Rect f1889b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f1890c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f1891d;

        public LayoutParams(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1889b = new android.graphics.Rect();
            this.f1890c = true;
            this.f1891d = false;
        }

        public int a() {
            return this.f1888a.getLayoutPosition();
        }

        public boolean b() {
            return this.f1888a.s();
        }

        public boolean c() {
            return this.f1888a.p();
        }

        public boolean d() {
            return this.f1888a.o();
        }

        public LayoutParams(int i5, int i6) {
            super(i5, i6);
            this.f1889b = new android.graphics.Rect();
            this.f1890c = true;
            this.f1891d = false;
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1889b = new android.graphics.Rect();
            this.f1890c = true;
            this.f1891d = false;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1889b = new android.graphics.Rect();
            this.f1890c = true;
            this.f1891d = false;
        }

        public LayoutParams(androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams) {
            super((android.view.ViewGroup.LayoutParams) layoutParams);
            this.f1889b = new android.graphics.Rect();
            this.f1890c = true;
            this.f1891d = false;
        }
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        androidx.recyclerview.widget.RecyclerView.p pVar = this.f1870r;
        if (pVar != null) {
            return pVar.E(layoutParams);
        }
        throw new java.lang.IllegalStateException("RecyclerView has no LayoutManager" + O());
    }
}
