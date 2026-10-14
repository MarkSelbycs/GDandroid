package androidx.drawerlayout.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class DrawerLayout extends android.view.ViewGroup {
    public static final int[] Q = {android.R.attr.colorPrimaryDark};
    public static final int[] R = {android.R.attr.layout_gravity};
    public static final boolean S = true;
    public static final boolean T = true;
    public float A;
    public float B;
    public android.graphics.drawable.Drawable C;
    public android.graphics.drawable.Drawable D;
    public android.graphics.drawable.Drawable E;
    public java.lang.CharSequence F;
    public java.lang.CharSequence G;
    public java.lang.Object H;
    public boolean I;
    public android.graphics.drawable.Drawable J;
    public android.graphics.drawable.Drawable K;
    public android.graphics.drawable.Drawable L;
    public android.graphics.drawable.Drawable M;
    public final java.util.ArrayList<android.view.View> N;
    public android.graphics.Rect O;
    public android.graphics.Matrix P;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.drawerlayout.widget.DrawerLayout.c f1450a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f1451b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1452c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1453d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f1454e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public android.graphics.Paint f1455f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final z.a f1456g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final z.a f1457h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final androidx.drawerlayout.widget.DrawerLayout.e f1458i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final androidx.drawerlayout.widget.DrawerLayout.e f1459o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1460p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1461q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1462r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1463s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1464t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1465u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1466v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f1467w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f1468x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public androidx.drawerlayout.widget.DrawerLayout.d f1469y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public java.util.List<androidx.drawerlayout.widget.DrawerLayout.d> f1470z;

    public class a implements android.view.View.OnApplyWindowInsetsListener {
        public a() {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public android.view.WindowInsets onApplyWindowInsets(android.view.View view, android.view.WindowInsets windowInsets) {
            ((androidx.drawerlayout.widget.DrawerLayout) view).M(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    public class b extends w.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final android.graphics.Rect f1481d = new android.graphics.Rect();

        public b() {
        }

        @Override // w.a
        public boolean a(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return super.a(view, accessibilityEvent);
            }
            java.util.List<java.lang.CharSequence> text = accessibilityEvent.getText();
            android.view.View viewN = androidx.drawerlayout.widget.DrawerLayout.this.n();
            if (viewN == null) {
                return true;
            }
            java.lang.CharSequence charSequenceQ = androidx.drawerlayout.widget.DrawerLayout.this.q(androidx.drawerlayout.widget.DrawerLayout.this.r(viewN));
            if (charSequenceQ == null) {
                return true;
            }
            text.add(charSequenceQ);
            return true;
        }

        @Override // w.a
        public void f(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            super.f(view, accessibilityEvent);
            accessibilityEvent.setClassName(androidx.drawerlayout.widget.DrawerLayout.class.getName());
        }

        @Override // w.a
        public void g(android.view.View view, x.c cVar) {
            if (androidx.drawerlayout.widget.DrawerLayout.S) {
                super.g(view, cVar);
            } else {
                x.c cVarG = x.c.G(cVar);
                super.g(view, cVarG);
                cVar.f0(view);
                java.lang.Object objS = w.q.s(view);
                if (objS instanceof android.view.View) {
                    cVar.b0((android.view.View) objS);
                }
                o(cVar, cVarG);
                cVarG.I();
                n(cVar, (android.view.ViewGroup) view);
            }
            cVar.O(androidx.drawerlayout.widget.DrawerLayout.class.getName());
            cVar.U(false);
            cVar.V(false);
            cVar.J(x.c.a.f6744e);
            cVar.J(x.c.a.f6745f);
        }

        @Override // w.a
        public boolean i(android.view.ViewGroup viewGroup, android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            if (androidx.drawerlayout.widget.DrawerLayout.S || androidx.drawerlayout.widget.DrawerLayout.y(view)) {
                return super.i(viewGroup, view, accessibilityEvent);
            }
            return false;
        }

        public final void n(x.c cVar, android.view.ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                android.view.View childAt = viewGroup.getChildAt(i5);
                if (androidx.drawerlayout.widget.DrawerLayout.y(childAt)) {
                    cVar.c(childAt);
                }
            }
        }

        public final void o(x.c cVar, x.c cVar2) {
            android.graphics.Rect rect = this.f1481d;
            cVar2.i(rect);
            cVar.L(rect);
            cVar2.j(rect);
            cVar.M(rect);
            cVar.h0(cVar2.F());
            cVar.Z(cVar2.p());
            cVar.O(cVar2.k());
            cVar.S(cVar2.m());
            cVar.T(cVar2.y());
            cVar.P(cVar2.x());
            cVar.U(cVar2.z());
            cVar.V(cVar2.A());
            cVar.K(cVar2.u());
            cVar.e0(cVar2.E());
            cVar.X(cVar2.B());
            cVar.a(cVar2.h());
        }
    }

    public static final class c extends w.a {
        @Override // w.a
        public void g(android.view.View view, x.c cVar) {
            super.g(view, cVar);
            if (androidx.drawerlayout.widget.DrawerLayout.y(view)) {
                return;
            }
            cVar.b0(null);
        }
    }

    public interface d {
        void a(int i5);

        void b(android.view.View view);

        void c(android.view.View view, float f5);

        void d(android.view.View view);
    }

    public class e extends z.a.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f1483a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public z.a f1484b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.lang.Runnable f1485c = new androidx.drawerlayout.widget.DrawerLayout.e.a();

        public class a implements java.lang.Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                androidx.drawerlayout.widget.DrawerLayout.e.this.o();
            }
        }

        public e(int i5) {
            this.f1483a = i5;
        }

        @Override // z.a.c
        public int a(android.view.View view, int i5, int i6) {
            if (androidx.drawerlayout.widget.DrawerLayout.this.c(view, 3)) {
                return java.lang.Math.max(-view.getWidth(), java.lang.Math.min(i5, 0));
            }
            int width = androidx.drawerlayout.widget.DrawerLayout.this.getWidth();
            return java.lang.Math.max(width - view.getWidth(), java.lang.Math.min(i5, width));
        }

        @Override // z.a.c
        public int b(android.view.View view, int i5, int i6) {
            return view.getTop();
        }

        @Override // z.a.c
        public int d(android.view.View view) {
            if (androidx.drawerlayout.widget.DrawerLayout.this.B(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // z.a.c
        public void f(int i5, int i6) {
            android.view.View viewL = (i5 & 1) == 1 ? androidx.drawerlayout.widget.DrawerLayout.this.l(3) : androidx.drawerlayout.widget.DrawerLayout.this.l(5);
            if (viewL == null || androidx.drawerlayout.widget.DrawerLayout.this.p(viewL) != 0) {
                return;
            }
            this.f1484b.c(viewL, i6);
        }

        @Override // z.a.c
        public boolean g(int i5) {
            return false;
        }

        @Override // z.a.c
        public void h(int i5, int i6) {
            androidx.drawerlayout.widget.DrawerLayout.this.postDelayed(this.f1485c, 160L);
        }

        @Override // z.a.c
        public void i(android.view.View view, int i5) {
            ((androidx.drawerlayout.widget.DrawerLayout.LayoutParams) view.getLayoutParams()).f1473c = false;
            n();
        }

        @Override // z.a.c
        public void j(int i5) {
            androidx.drawerlayout.widget.DrawerLayout.this.Q(this.f1483a, i5, this.f1484b.w());
        }

        @Override // z.a.c
        public void k(android.view.View view, int i5, int i6, int i7, int i8) {
            int width = view.getWidth();
            float width2 = (androidx.drawerlayout.widget.DrawerLayout.this.c(view, 3) ? i5 + width : androidx.drawerlayout.widget.DrawerLayout.this.getWidth() - i5) / width;
            androidx.drawerlayout.widget.DrawerLayout.this.O(view, width2);
            view.setVisibility(width2 == 0.0f ? 4 : 0);
            androidx.drawerlayout.widget.DrawerLayout.this.invalidate();
        }

        @Override // z.a.c
        public void l(android.view.View view, float f5, float f6) {
            int i5;
            float fS = androidx.drawerlayout.widget.DrawerLayout.this.s(view);
            int width = view.getWidth();
            if (androidx.drawerlayout.widget.DrawerLayout.this.c(view, 3)) {
                i5 = (f5 > 0.0f || (f5 == 0.0f && fS > 0.5f)) ? 0 : -width;
            } else {
                int width2 = androidx.drawerlayout.widget.DrawerLayout.this.getWidth();
                if (f5 < 0.0f || (f5 == 0.0f && fS > 0.5f)) {
                    width2 -= width;
                }
                i5 = width2;
            }
            this.f1484b.N(i5, view.getTop());
            androidx.drawerlayout.widget.DrawerLayout.this.invalidate();
        }

        @Override // z.a.c
        public boolean m(android.view.View view, int i5) {
            return androidx.drawerlayout.widget.DrawerLayout.this.B(view) && androidx.drawerlayout.widget.DrawerLayout.this.c(view, this.f1483a) && androidx.drawerlayout.widget.DrawerLayout.this.p(view) == 0;
        }

        public final void n() {
            android.view.View viewL = androidx.drawerlayout.widget.DrawerLayout.this.l(this.f1483a == 3 ? 5 : 3);
            if (viewL != null) {
                androidx.drawerlayout.widget.DrawerLayout.this.d(viewL);
            }
        }

        public void o() {
            android.view.View viewL;
            int width;
            int iX = this.f1484b.x();
            boolean z4 = this.f1483a == 3;
            if (z4) {
                viewL = androidx.drawerlayout.widget.DrawerLayout.this.l(3);
                width = (viewL != null ? -viewL.getWidth() : 0) + iX;
            } else {
                viewL = androidx.drawerlayout.widget.DrawerLayout.this.l(5);
                width = androidx.drawerlayout.widget.DrawerLayout.this.getWidth() - iX;
            }
            if (viewL != null) {
                if (((!z4 || viewL.getLeft() >= width) && (z4 || viewL.getLeft() <= width)) || androidx.drawerlayout.widget.DrawerLayout.this.p(viewL) != 0) {
                    return;
                }
                androidx.drawerlayout.widget.DrawerLayout.LayoutParams layoutParams = (androidx.drawerlayout.widget.DrawerLayout.LayoutParams) viewL.getLayoutParams();
                this.f1484b.P(viewL, width, viewL.getTop());
                layoutParams.f1473c = true;
                androidx.drawerlayout.widget.DrawerLayout.this.invalidate();
                n();
                androidx.drawerlayout.widget.DrawerLayout.this.b();
            }
        }

        public void p() {
            androidx.drawerlayout.widget.DrawerLayout.this.removeCallbacks(this.f1485c);
        }

        public void q(z.a aVar) {
            this.f1484b = aVar;
        }
    }

    public DrawerLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static java.lang.String u(int i5) {
        if ((i5 & 3) == 3) {
            return "LEFT";
        }
        return (i5 & 5) == 5 ? "RIGHT" : java.lang.Integer.toHexString(i5);
    }

    public static boolean v(android.view.View view) {
        android.graphics.drawable.Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    public static boolean y(android.view.View view) {
        return (w.q.n(view) == 4 || w.q.n(view) == 2) ? false : true;
    }

    public boolean A(android.view.View view) {
        if (B(view)) {
            return (((androidx.drawerlayout.widget.DrawerLayout.LayoutParams) view.getLayoutParams()).f1474d & 1) == 1;
        }
        throw new java.lang.IllegalArgumentException("View " + view + " is not a drawer");
    }

    public boolean B(android.view.View view) {
        int iB = w.d.b(((androidx.drawerlayout.widget.DrawerLayout.LayoutParams) view.getLayoutParams()).f1471a, w.q.p(view));
        return ((iB & 3) == 0 && (iB & 5) == 0) ? false : true;
    }

    public boolean C(android.view.View view) {
        if (B(view)) {
            return ((androidx.drawerlayout.widget.DrawerLayout.LayoutParams) view.getLayoutParams()).f1472b > 0.0f;
        }
        throw new java.lang.IllegalArgumentException("View " + view + " is not a drawer");
    }

    public final boolean D(float f5, float f6, android.view.View view) {
        if (this.O == null) {
            this.O = new android.graphics.Rect();
        }
        view.getHitRect(this.O);
        return this.O.contains((int) f5, (int) f6);
    }

    public final boolean E(android.graphics.drawable.Drawable drawable, int i5) {
        if (drawable == null || !p.a.a(drawable)) {
            return false;
        }
        p.a.f(drawable, i5);
        return true;
    }

    public void F(android.view.View view, float f5) {
        float fS = s(view);
        float width = view.getWidth();
        int i5 = ((int) (width * f5)) - ((int) (fS * width));
        if (!c(view, 3)) {
            i5 = -i5;
        }
        view.offsetLeftAndRight(i5);
        O(view, f5);
    }

    public void G(android.view.View view) {
        H(view, true);
    }

    public void H(android.view.View view, boolean z4) {
        if (!B(view)) {
            throw new java.lang.IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        androidx.drawerlayout.widget.DrawerLayout.LayoutParams layoutParams = (androidx.drawerlayout.widget.DrawerLayout.LayoutParams) view.getLayoutParams();
        if (this.f1462r) {
            layoutParams.f1472b = 1.0f;
            layoutParams.f1474d = 1;
            P(view, true);
        } else if (z4) {
            layoutParams.f1474d |= 2;
            if (c(view, 3)) {
                this.f1456g.P(view, 0, view.getTop());
            } else {
                this.f1457h.P(view, getWidth() - view.getWidth(), view.getTop());
            }
        } else {
            F(view, 1.0f);
            Q(layoutParams.f1471a, 0, view);
            view.setVisibility(0);
        }
        invalidate();
    }

    public void I(androidx.drawerlayout.widget.DrawerLayout.d dVar) {
        java.util.List<androidx.drawerlayout.widget.DrawerLayout.d> list;
        if (dVar == null || (list = this.f1470z) == null) {
            return;
        }
        list.remove(dVar);
    }

    public final android.graphics.drawable.Drawable J() {
        int iP = w.q.p(this);
        if (iP == 0) {
            android.graphics.drawable.Drawable drawable = this.J;
            if (drawable != null) {
                E(drawable, iP);
                return this.J;
            }
        } else {
            android.graphics.drawable.Drawable drawable2 = this.K;
            if (drawable2 != null) {
                E(drawable2, iP);
                return this.K;
            }
        }
        return this.L;
    }

    public final android.graphics.drawable.Drawable K() {
        int iP = w.q.p(this);
        if (iP == 0) {
            android.graphics.drawable.Drawable drawable = this.K;
            if (drawable != null) {
                E(drawable, iP);
                return this.K;
            }
        } else {
            android.graphics.drawable.Drawable drawable2 = this.J;
            if (drawable2 != null) {
                E(drawable2, iP);
                return this.J;
            }
        }
        return this.M;
    }

    public final void L() {
        if (T) {
            return;
        }
        this.D = J();
        this.E = K();
    }

    public void M(java.lang.Object obj, boolean z4) {
        this.H = obj;
        this.I = z4;
        setWillNotDraw(!z4 && getBackground() == null);
        requestLayout();
    }

    public void N(int i5, int i6) {
        android.view.View viewL;
        int iB = w.d.b(i6, w.q.p(this));
        if (i6 == 3) {
            this.f1463s = i5;
        } else if (i6 == 5) {
            this.f1464t = i5;
        } else if (i6 == 8388611) {
            this.f1465u = i5;
        } else if (i6 == 8388613) {
            this.f1466v = i5;
        }
        if (i5 != 0) {
            (iB == 3 ? this.f1456g : this.f1457h).b();
        }
        if (i5 != 1) {
            if (i5 == 2 && (viewL = l(iB)) != null) {
                G(viewL);
                return;
            }
            return;
        }
        android.view.View viewL2 = l(iB);
        if (viewL2 != null) {
            d(viewL2);
        }
    }

    public void O(android.view.View view, float f5) {
        androidx.drawerlayout.widget.DrawerLayout.LayoutParams layoutParams = (androidx.drawerlayout.widget.DrawerLayout.LayoutParams) view.getLayoutParams();
        if (f5 == layoutParams.f1472b) {
            return;
        }
        layoutParams.f1472b = f5;
        j(view, f5);
    }

    public final void P(android.view.View view, boolean z4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            if ((z4 || B(childAt)) && !(z4 && childAt == view)) {
                w.q.V(childAt, 4);
            } else {
                w.q.V(childAt, 1);
            }
        }
    }

    public void Q(int i5, int i6, android.view.View view) {
        int iA = this.f1456g.A();
        int iA2 = this.f1457h.A();
        int i7 = 2;
        if (iA == 1 || iA2 == 1) {
            i7 = 1;
        } else if (iA != 2 && iA2 != 2) {
            i7 = 0;
        }
        if (view != null && i6 == 0) {
            float f5 = ((androidx.drawerlayout.widget.DrawerLayout.LayoutParams) view.getLayoutParams()).f1472b;
            if (f5 == 0.0f) {
                h(view);
            } else if (f5 == 1.0f) {
                i(view);
            }
        }
        if (i7 != this.f1460p) {
            this.f1460p = i7;
            java.util.List<androidx.drawerlayout.widget.DrawerLayout.d> list = this.f1470z;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f1470z.get(size).a(i7);
                }
            }
        }
    }

    public void a(androidx.drawerlayout.widget.DrawerLayout.d dVar) {
        if (dVar == null) {
            return;
        }
        if (this.f1470z == null) {
            this.f1470z = new java.util.ArrayList();
        }
        this.f1470z.add(dVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(java.util.ArrayList<android.view.View> arrayList, int i5, int i6) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        boolean z4 = false;
        for (int i7 = 0; i7 < childCount; i7++) {
            android.view.View childAt = getChildAt(i7);
            if (!B(childAt)) {
                this.N.add(childAt);
            } else if (A(childAt)) {
                childAt.addFocusables(arrayList, i5, i6);
                z4 = true;
            }
        }
        if (!z4) {
            int size = this.N.size();
            for (int i8 = 0; i8 < size; i8++) {
                android.view.View view = this.N.get(i8);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i5, i6);
                }
            }
        }
        this.N.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(android.view.View view, int i5, android.view.ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i5, layoutParams);
        if (m() != null || B(view)) {
            w.q.V(view, 4);
        } else {
            w.q.V(view, 1);
        }
        if (S) {
            return;
        }
        w.q.Q(view, this.f1450a);
    }

    public void b() {
        if (this.f1468x) {
            return;
        }
        long jUptimeMillis = android.os.SystemClock.uptimeMillis();
        android.view.MotionEvent motionEventObtain = android.view.MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            getChildAt(i5).dispatchTouchEvent(motionEventObtain);
        }
        motionEventObtain.recycle();
        this.f1468x = true;
    }

    public boolean c(android.view.View view, int i5) {
        return (r(view) & i5) == i5;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof androidx.drawerlayout.widget.DrawerLayout.LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i5 = 0; i5 < childCount; i5++) {
            fMax = java.lang.Math.max(fMax, ((androidx.drawerlayout.widget.DrawerLayout.LayoutParams) getChildAt(i5).getLayoutParams()).f1472b);
        }
        this.f1454e = fMax;
        boolean zN = this.f1456g.n(true);
        boolean zN2 = this.f1457h.n(true);
        if (zN || zN2) {
            w.q.K(this);
        }
    }

    public void d(android.view.View view) {
        e(view, true);
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(android.view.MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f1454e <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x4 = motionEvent.getX();
        float y4 = motionEvent.getY();
        for (int i5 = childCount - 1; i5 >= 0; i5--) {
            android.view.View childAt = getChildAt(i5);
            if (D(x4, y4, childAt) && !z(childAt) && k(motionEvent, childAt)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(android.graphics.Canvas canvas, android.view.View view, long j5) {
        int height = getHeight();
        boolean z4 = z(view);
        int width = getWidth();
        int iSave = canvas.save();
        int i5 = 0;
        if (z4) {
            int childCount = getChildCount();
            int i6 = 0;
            for (int i7 = 0; i7 < childCount; i7++) {
                android.view.View childAt = getChildAt(i7);
                if (childAt != view && childAt.getVisibility() == 0 && v(childAt) && B(childAt) && childAt.getHeight() >= height) {
                    if (c(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right > i6) {
                            i6 = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < width) {
                            width = left;
                        }
                    }
                }
            }
            canvas.clipRect(i6, 0, width, getHeight());
            i5 = i6;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j5);
        canvas.restoreToCount(iSave);
        float f5 = this.f1454e;
        if (f5 > 0.0f && z4) {
            int i8 = this.f1453d;
            this.f1455f.setColor((i8 & 16777215) | (((int) ((((-16777216) & i8) >>> 24) * f5)) << 24));
            canvas.drawRect(i5, 0.0f, width, getHeight(), this.f1455f);
        } else if (this.D != null && c(view, 3)) {
            int intrinsicWidth = this.D.getIntrinsicWidth();
            int right2 = view.getRight();
            float fMax = java.lang.Math.max(0.0f, java.lang.Math.min(right2 / this.f1456g.x(), 1.0f));
            this.D.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.D.setAlpha((int) (fMax * 255.0f));
            this.D.draw(canvas);
        } else if (this.E != null && c(view, 5)) {
            int intrinsicWidth2 = this.E.getIntrinsicWidth();
            int left2 = view.getLeft();
            float fMax2 = java.lang.Math.max(0.0f, java.lang.Math.min((getWidth() - left2) / this.f1457h.x(), 1.0f));
            this.E.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.E.setAlpha((int) (fMax2 * 255.0f));
            this.E.draw(canvas);
        }
        return zDrawChild;
    }

    public void e(android.view.View view, boolean z4) {
        if (!B(view)) {
            throw new java.lang.IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        androidx.drawerlayout.widget.DrawerLayout.LayoutParams layoutParams = (androidx.drawerlayout.widget.DrawerLayout.LayoutParams) view.getLayoutParams();
        if (this.f1462r) {
            layoutParams.f1472b = 0.0f;
            layoutParams.f1474d = 0;
        } else if (z4) {
            layoutParams.f1474d |= 4;
            if (c(view, 3)) {
                this.f1456g.P(view, -view.getWidth(), view.getTop());
            } else {
                this.f1457h.P(view, getWidth(), view.getTop());
            }
        } else {
            F(view, 0.0f);
            Q(layoutParams.f1471a, 0, view);
            view.setVisibility(4);
        }
        invalidate();
    }

    public void f() {
        g(false);
    }

    public void g(boolean z4) {
        int childCount = getChildCount();
        boolean zP = false;
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            androidx.drawerlayout.widget.DrawerLayout.LayoutParams layoutParams = (androidx.drawerlayout.widget.DrawerLayout.LayoutParams) childAt.getLayoutParams();
            if (B(childAt) && (!z4 || layoutParams.f1473c)) {
                zP |= c(childAt, 3) ? this.f1456g.P(childAt, -childAt.getWidth(), childAt.getTop()) : this.f1457h.P(childAt, getWidth(), childAt.getTop());
                layoutParams.f1473c = false;
            }
        }
        this.f1458i.p();
        this.f1459o.p();
        if (zP) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new androidx.drawerlayout.widget.DrawerLayout.LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof androidx.drawerlayout.widget.DrawerLayout.LayoutParams) {
            return new androidx.drawerlayout.widget.DrawerLayout.LayoutParams((androidx.drawerlayout.widget.DrawerLayout.LayoutParams) layoutParams);
        }
        return layoutParams instanceof android.view.ViewGroup.MarginLayoutParams ? new androidx.drawerlayout.widget.DrawerLayout.LayoutParams((android.view.ViewGroup.MarginLayoutParams) layoutParams) : new androidx.drawerlayout.widget.DrawerLayout.LayoutParams(layoutParams);
    }

    public float getDrawerElevation() {
        if (T) {
            return this.f1451b;
        }
        return 0.0f;
    }

    public android.graphics.drawable.Drawable getStatusBarBackgroundDrawable() {
        return this.C;
    }

    public void h(android.view.View view) {
        android.view.View rootView;
        androidx.drawerlayout.widget.DrawerLayout.LayoutParams layoutParams = (androidx.drawerlayout.widget.DrawerLayout.LayoutParams) view.getLayoutParams();
        if ((layoutParams.f1474d & 1) == 1) {
            layoutParams.f1474d = 0;
            java.util.List<androidx.drawerlayout.widget.DrawerLayout.d> list = this.f1470z;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f1470z.get(size).d(view);
                }
            }
            P(view, false);
            if (!hasWindowFocus() || (rootView = getRootView()) == null) {
                return;
            }
            rootView.sendAccessibilityEvent(32);
        }
    }

    public void i(android.view.View view) {
        androidx.drawerlayout.widget.DrawerLayout.LayoutParams layoutParams = (androidx.drawerlayout.widget.DrawerLayout.LayoutParams) view.getLayoutParams();
        if ((layoutParams.f1474d & 1) == 0) {
            layoutParams.f1474d = 1;
            java.util.List<androidx.drawerlayout.widget.DrawerLayout.d> list = this.f1470z;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f1470z.get(size).b(view);
                }
            }
            P(view, true);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
        }
    }

    public void j(android.view.View view, float f5) {
        java.util.List<androidx.drawerlayout.widget.DrawerLayout.d> list = this.f1470z;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f1470z.get(size).c(view, f5);
            }
        }
    }

    public final boolean k(android.view.MotionEvent motionEvent, android.view.View view) {
        if (!view.getMatrix().isIdentity()) {
            android.view.MotionEvent motionEventT = t(motionEvent, view);
            boolean zDispatchGenericMotionEvent = view.dispatchGenericMotionEvent(motionEventT);
            motionEventT.recycle();
            return zDispatchGenericMotionEvent;
        }
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        motionEvent.offsetLocation(scrollX, scrollY);
        boolean zDispatchGenericMotionEvent2 = view.dispatchGenericMotionEvent(motionEvent);
        motionEvent.offsetLocation(-scrollX, -scrollY);
        return zDispatchGenericMotionEvent2;
    }

    public android.view.View l(int i5) {
        int iB = w.d.b(i5, w.q.p(this)) & 7;
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            android.view.View childAt = getChildAt(i6);
            if ((r(childAt) & 7) == iB) {
                return childAt;
            }
        }
        return null;
    }

    public android.view.View m() {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            if ((((androidx.drawerlayout.widget.DrawerLayout.LayoutParams) childAt.getLayoutParams()).f1474d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    public android.view.View n() {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            if (B(childAt) && C(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    public int o(int i5) {
        int iP = w.q.p(this);
        if (i5 == 3) {
            int i6 = this.f1463s;
            if (i6 != 3) {
                return i6;
            }
            int i7 = iP == 0 ? this.f1465u : this.f1466v;
            if (i7 != 3) {
                return i7;
            }
            return 0;
        }
        if (i5 == 5) {
            int i8 = this.f1464t;
            if (i8 != 3) {
                return i8;
            }
            int i9 = iP == 0 ? this.f1466v : this.f1465u;
            if (i9 != 3) {
                return i9;
            }
            return 0;
        }
        if (i5 == 8388611) {
            int i10 = this.f1465u;
            if (i10 != 3) {
                return i10;
            }
            int i11 = iP == 0 ? this.f1463s : this.f1464t;
            if (i11 != 3) {
                return i11;
            }
            return 0;
        }
        if (i5 != 8388613) {
            return 0;
        }
        int i12 = this.f1466v;
        if (i12 != 3) {
            return i12;
        }
        int i13 = iP == 0 ? this.f1464t : this.f1463s;
        if (i13 != 3) {
            return i13;
        }
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1462r = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1462r = true;
    }

    @Override // android.view.View
    public void onDraw(android.graphics.Canvas canvas) {
        super.onDraw(canvas);
        if (!this.I || this.C == null) {
            return;
        }
        java.lang.Object obj = this.H;
        int systemWindowInsetTop = obj != null ? ((android.view.WindowInsets) obj).getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.C.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.C.draw(canvas);
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0031  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(android.view.MotionEvent motionEvent) {
        boolean z4;
        android.view.View viewU;
        int actionMasked = motionEvent.getActionMasked();
        boolean zO = this.f1456g.O(motionEvent) | this.f1457h.O(motionEvent);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                g(true);
                this.f1467w = false;
                this.f1468x = false;
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    g(true);
                    this.f1467w = false;
                    this.f1468x = false;
                }
            } else if (this.f1456g.e(3)) {
                this.f1458i.p();
                this.f1459o.p();
            }
            z4 = false;
        } else {
            float x4 = motionEvent.getX();
            float y4 = motionEvent.getY();
            this.A = x4;
            this.B = y4;
            z4 = this.f1454e > 0.0f && (viewU = this.f1456g.u((int) x4, (int) y4)) != null && z(viewU);
            this.f1467w = false;
            this.f1468x = false;
        }
        return zO || z4 || w() || this.f1468x;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i5, android.view.KeyEvent keyEvent) {
        if (i5 != 4 || !x()) {
            return super.onKeyDown(i5, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i5, android.view.KeyEvent keyEvent) {
        if (i5 != 4) {
            return super.onKeyUp(i5, keyEvent);
        }
        android.view.View viewN = n();
        if (viewN != null && p(viewN) == 0) {
            f();
        }
        return viewN != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        float f5;
        int i9;
        boolean z5 = true;
        this.f1461q = true;
        int i10 = i7 - i5;
        int childCount = getChildCount();
        int i11 = 0;
        while (i11 < childCount) {
            android.view.View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                androidx.drawerlayout.widget.DrawerLayout.LayoutParams layoutParams = (androidx.drawerlayout.widget.DrawerLayout.LayoutParams) childAt.getLayoutParams();
                if (z(childAt)) {
                    int i12 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    childAt.layout(i12, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin, childAt.getMeasuredWidth() + i12, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (c(childAt, 3)) {
                        float f6 = measuredWidth;
                        i9 = (-measuredWidth) + ((int) (layoutParams.f1472b * f6));
                        f5 = (measuredWidth + i9) / f6;
                    } else {
                        float f7 = measuredWidth;
                        int i13 = i10 - ((int) (layoutParams.f1472b * f7));
                        f5 = (i10 - i13) / f7;
                        i9 = i13;
                    }
                    boolean z6 = f5 != layoutParams.f1472b ? z5 : false;
                    int i14 = layoutParams.f1471a & 112;
                    if (i14 == 16) {
                        int i15 = i8 - i6;
                        int i16 = (i15 - measuredHeight) / 2;
                        int i17 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        if (i16 < i17) {
                            i16 = i17;
                        } else {
                            int i18 = i16 + measuredHeight;
                            int i19 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            if (i18 > i15 - i19) {
                                i16 = (i15 - i19) - measuredHeight;
                            }
                        }
                        childAt.layout(i9, i16, measuredWidth + i9, measuredHeight + i16);
                    } else if (i14 != 80) {
                        int i20 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        childAt.layout(i9, i20, measuredWidth + i9, measuredHeight + i20);
                    } else {
                        int i21 = i8 - i6;
                        childAt.layout(i9, (i21 - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i9, i21 - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    }
                    if (z6) {
                        O(childAt, f5);
                    }
                    int i22 = layoutParams.f1472b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i22) {
                        childAt.setVisibility(i22);
                    }
                }
            }
            i11++;
            z5 = true;
        }
        this.f1461q = false;
        this.f1462r = false;
    }

    @Override // android.view.View
    @android.annotation.SuppressLint({"WrongConstant"})
    public void onMeasure(int i5, int i6) {
        int mode = android.view.View.MeasureSpec.getMode(i5);
        int mode2 = android.view.View.MeasureSpec.getMode(i6);
        int size = android.view.View.MeasureSpec.getSize(i5);
        int size2 = android.view.View.MeasureSpec.getSize(i6);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                throw new java.lang.IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
            if (mode != Integer.MIN_VALUE && mode == 0) {
                size = 300;
            }
            if (mode2 != Integer.MIN_VALUE && mode2 == 0) {
                size2 = 300;
            }
        }
        setMeasuredDimension(size, size2);
        int i7 = 0;
        boolean z4 = this.H != null && w.q.m(this);
        int iP = w.q.p(this);
        int childCount = getChildCount();
        int i8 = 0;
        boolean z5 = false;
        boolean z6 = false;
        while (i8 < childCount) {
            android.view.View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                androidx.drawerlayout.widget.DrawerLayout.LayoutParams layoutParams = (androidx.drawerlayout.widget.DrawerLayout.LayoutParams) childAt.getLayoutParams();
                if (z4) {
                    int iB = w.d.b(layoutParams.f1471a, iP);
                    if (w.q.m(childAt)) {
                        android.view.WindowInsets windowInsetsReplaceSystemWindowInsets = (android.view.WindowInsets) this.H;
                        if (iB == 3) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), i7, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        } else if (iB == 5) {
                            windowInsetsReplaceSystemWindowInsets = windowInsetsReplaceSystemWindowInsets.replaceSystemWindowInsets(i7, windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets.getSystemWindowInsetBottom());
                        }
                        childAt.dispatchApplyWindowInsets(windowInsetsReplaceSystemWindowInsets);
                    } else {
                        android.view.WindowInsets windowInsetsReplaceSystemWindowInsets2 = (android.view.WindowInsets) this.H;
                        if (iB == 3) {
                            windowInsetsReplaceSystemWindowInsets2 = windowInsetsReplaceSystemWindowInsets2.replaceSystemWindowInsets(windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetLeft(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop(), i7, windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom());
                        } else if (iB == 5) {
                            windowInsetsReplaceSystemWindowInsets2 = windowInsetsReplaceSystemWindowInsets2.replaceSystemWindowInsets(i7, windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetRight(), windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom());
                        }
                        ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetLeft();
                        ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetTop();
                        ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetRight();
                        ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = windowInsetsReplaceSystemWindowInsets2.getSystemWindowInsetBottom();
                    }
                }
                if (z(childAt)) {
                    childAt.measure(android.view.View.MeasureSpec.makeMeasureSpec((size - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), android.view.View.MeasureSpec.makeMeasureSpec((size2 - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin) - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY));
                } else {
                    if (!B(childAt)) {
                        throw new java.lang.IllegalStateException("Child " + childAt + " at index " + i8 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                    }
                    if (T) {
                        float fL = w.q.l(childAt);
                        float f5 = this.f1451b;
                        if (fL != f5) {
                            w.q.U(childAt, f5);
                        }
                    }
                    int iR = r(childAt) & 7;
                    int i9 = iR == 3 ? 1 : i7;
                    if ((i9 != 0 && z5) || (i9 == 0 && z6)) {
                        throw new java.lang.IllegalStateException("Child drawer has absolute gravity " + u(iR) + " but this DrawerLayout already has a drawer view along that edge");
                    }
                    if (i9 != 0) {
                        z5 = true;
                    } else {
                        z6 = true;
                    }
                    childAt.measure(android.view.ViewGroup.getChildMeasureSpec(i5, this.f1452c + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width), android.view.ViewGroup.getChildMeasureSpec(i6, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height));
                }
            }
            i8++;
            i7 = 0;
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        android.view.View viewL;
        if (!(parcelable instanceof androidx.drawerlayout.widget.DrawerLayout.SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        androidx.drawerlayout.widget.DrawerLayout.SavedState savedState = (androidx.drawerlayout.widget.DrawerLayout.SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        int i5 = savedState.f1475a;
        if (i5 != 0 && (viewL = l(i5)) != null) {
            G(viewL);
        }
        int i6 = savedState.f1476b;
        if (i6 != 3) {
            N(i6, 3);
        }
        int i7 = savedState.f1477c;
        if (i7 != 3) {
            N(i7, 5);
        }
        int i8 = savedState.f1478d;
        if (i8 != 3) {
            N(i8, 8388611);
        }
        int i9 = savedState.f1479e;
        if (i9 != 3) {
            N(i9, 8388613);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i5) {
        L();
    }

    @Override // android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        androidx.drawerlayout.widget.DrawerLayout.SavedState savedState = new androidx.drawerlayout.widget.DrawerLayout.SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            androidx.drawerlayout.widget.DrawerLayout.LayoutParams layoutParams = (androidx.drawerlayout.widget.DrawerLayout.LayoutParams) getChildAt(i5).getLayoutParams();
            int i6 = layoutParams.f1474d;
            boolean z4 = i6 == 1;
            boolean z5 = i6 == 2;
            if (z4 || z5) {
                savedState.f1475a = layoutParams.f1471a;
                break;
            }
        }
        savedState.f1476b = this.f1463s;
        savedState.f1477c = this.f1464t;
        savedState.f1478d = this.f1465u;
        savedState.f1479e = this.f1466v;
        return savedState;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005f  */
    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        boolean z4;
        android.view.View viewM;
        this.f1456g.F(motionEvent);
        this.f1457h.F(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            float x4 = motionEvent.getX();
            float y4 = motionEvent.getY();
            this.A = x4;
            this.B = y4;
            this.f1467w = false;
            this.f1468x = false;
        } else if (action == 1) {
            float x5 = motionEvent.getX();
            float y5 = motionEvent.getY();
            android.view.View viewU = this.f1456g.u((int) x5, (int) y5);
            if (viewU == null || !z(viewU)) {
                z4 = true;
            } else {
                float f5 = x5 - this.A;
                float f6 = y5 - this.B;
                int iZ = this.f1456g.z();
                if ((f5 * f5) + (f6 * f6) >= iZ * iZ || (viewM = m()) == null || p(viewM) == 2) {
                    z4 = true;
                } else {
                    z4 = false;
                }
            }
            g(z4);
            this.f1467w = false;
        } else if (action == 3) {
            g(true);
            this.f1467w = false;
            this.f1468x = false;
        }
        return true;
    }

    public int p(android.view.View view) {
        if (B(view)) {
            return o(((androidx.drawerlayout.widget.DrawerLayout.LayoutParams) view.getLayoutParams()).f1471a);
        }
        throw new java.lang.IllegalArgumentException("View " + view + " is not a drawer");
    }

    public java.lang.CharSequence q(int i5) {
        int iB = w.d.b(i5, w.q.p(this));
        if (iB == 3) {
            return this.F;
        }
        if (iB == 5) {
            return this.G;
        }
        return null;
    }

    public int r(android.view.View view) {
        return w.d.b(((androidx.drawerlayout.widget.DrawerLayout.LayoutParams) view.getLayoutParams()).f1471a, w.q.p(this));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z4) {
        super.requestDisallowInterceptTouchEvent(z4);
        this.f1467w = z4;
        if (z4) {
            g(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f1461q) {
            return;
        }
        super.requestLayout();
    }

    public float s(android.view.View view) {
        return ((androidx.drawerlayout.widget.DrawerLayout.LayoutParams) view.getLayoutParams()).f1472b;
    }

    public void setDrawerElevation(float f5) {
        this.f1451b = f5;
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            android.view.View childAt = getChildAt(i5);
            if (B(childAt)) {
                w.q.U(childAt, this.f1451b);
            }
        }
    }

    @java.lang.Deprecated
    public void setDrawerListener(androidx.drawerlayout.widget.DrawerLayout.d dVar) {
        androidx.drawerlayout.widget.DrawerLayout.d dVar2 = this.f1469y;
        if (dVar2 != null) {
            I(dVar2);
        }
        if (dVar != null) {
            a(dVar);
        }
        this.f1469y = dVar;
    }

    public void setDrawerLockMode(int i5) {
        N(i5, 3);
        N(i5, 5);
    }

    public void setScrimColor(int i5) {
        this.f1453d = i5;
        invalidate();
    }

    public void setStatusBarBackground(android.graphics.drawable.Drawable drawable) {
        this.C = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i5) {
        this.C = new android.graphics.drawable.ColorDrawable(i5);
        invalidate();
    }

    public final android.view.MotionEvent t(android.view.MotionEvent motionEvent, android.view.View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        android.view.MotionEvent motionEventObtain = android.view.MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(scrollX, scrollY);
        android.graphics.Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.P == null) {
                this.P = new android.graphics.Matrix();
            }
            matrix.invert(this.P);
            motionEventObtain.transform(this.P);
        }
        return motionEventObtain;
    }

    public final boolean w() {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            if (((androidx.drawerlayout.widget.DrawerLayout.LayoutParams) getChildAt(i5).getLayoutParams()).f1473c) {
                return true;
            }
        }
        return false;
    }

    public final boolean x() {
        return n() != null;
    }

    public boolean z(android.view.View view) {
        return ((androidx.drawerlayout.widget.DrawerLayout.LayoutParams) view.getLayoutParams()).f1471a == 0;
    }

    public DrawerLayout(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.f1450a = new androidx.drawerlayout.widget.DrawerLayout.c();
        this.f1453d = -1728053248;
        this.f1455f = new android.graphics.Paint();
        this.f1462r = true;
        this.f1463s = 3;
        this.f1464t = 3;
        this.f1465u = 3;
        this.f1466v = 3;
        this.J = null;
        this.K = null;
        this.L = null;
        this.M = null;
        setDescendantFocusability(262144);
        float f5 = getResources().getDisplayMetrics().density;
        this.f1452c = (int) ((64.0f * f5) + 0.5f);
        float f6 = 400.0f * f5;
        androidx.drawerlayout.widget.DrawerLayout.e eVar = new androidx.drawerlayout.widget.DrawerLayout.e(3);
        this.f1458i = eVar;
        androidx.drawerlayout.widget.DrawerLayout.e eVar2 = new androidx.drawerlayout.widget.DrawerLayout.e(5);
        this.f1459o = eVar2;
        z.a aVarO = z.a.o(this, 1.0f, eVar);
        this.f1456g = aVarO;
        aVarO.L(1);
        aVarO.M(f6);
        eVar.q(aVarO);
        z.a aVarO2 = z.a.o(this, 1.0f, eVar2);
        this.f1457h = aVarO2;
        aVarO2.L(2);
        aVarO2.M(f6);
        eVar2.q(aVarO2);
        setFocusableInTouchMode(true);
        w.q.V(this, 1);
        w.q.Q(this, new androidx.drawerlayout.widget.DrawerLayout.b());
        setMotionEventSplittingEnabled(false);
        if (w.q.m(this)) {
            setOnApplyWindowInsetsListener(new androidx.drawerlayout.widget.DrawerLayout.a());
            setSystemUiVisibility(1280);
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Q);
            try {
                this.C = typedArrayObtainStyledAttributes.getDrawable(0);
                typedArrayObtainStyledAttributes.recycle();
            } catch (java.lang.Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        this.f1451b = f5 * 10.0f;
        this.N = new java.util.ArrayList<>();
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new androidx.drawerlayout.widget.DrawerLayout.LayoutParams(getContext(), attributeSet);
    }

    public void setStatusBarBackground(int i5) {
        this.C = i5 != 0 ? androidx.core.content.a.b(getContext(), i5) : null;
        invalidate();
    }

    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1471a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f1472b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f1473c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1474d;

        public LayoutParams(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1471a = 0;
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.drawerlayout.widget.DrawerLayout.R);
            this.f1471a = typedArrayObtainStyledAttributes.getInt(0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i5, int i6) {
            super(i5, i6);
            this.f1471a = 0;
        }

        public LayoutParams(androidx.drawerlayout.widget.DrawerLayout.LayoutParams layoutParams) {
            super((android.view.ViewGroup.MarginLayoutParams) layoutParams);
            this.f1471a = 0;
            this.f1471a = layoutParams.f1471a;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1471a = 0;
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1471a = 0;
        }
    }

    public static class SavedState extends androidx.customview.view.AbsSavedState {
        public static final android.os.Parcelable.Creator<androidx.drawerlayout.widget.DrawerLayout.SavedState> CREATOR = new androidx.drawerlayout.widget.DrawerLayout.SavedState.a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1475a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1476b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1477c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1478d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1479e;

        public static class a implements android.os.Parcelable.ClassLoaderCreator<androidx.drawerlayout.widget.DrawerLayout.SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public androidx.drawerlayout.widget.DrawerLayout.SavedState createFromParcel(android.os.Parcel parcel) {
                return new androidx.drawerlayout.widget.DrawerLayout.SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public androidx.drawerlayout.widget.DrawerLayout.SavedState createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                return new androidx.drawerlayout.widget.DrawerLayout.SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public androidx.drawerlayout.widget.DrawerLayout.SavedState[] newArray(int i5) {
                return new androidx.drawerlayout.widget.DrawerLayout.SavedState[i5];
            }
        }

        public SavedState(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1475a = 0;
            this.f1475a = parcel.readInt();
            this.f1476b = parcel.readInt();
            this.f1477c = parcel.readInt();
            this.f1478d = parcel.readInt();
            this.f1479e = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i5) {
            super.writeToParcel(parcel, i5);
            parcel.writeInt(this.f1475a);
            parcel.writeInt(this.f1476b);
            parcel.writeInt(this.f1477c);
            parcel.writeInt(this.f1478d);
            parcel.writeInt(this.f1479e);
        }

        public SavedState(android.os.Parcelable parcelable) {
            super(parcelable);
            this.f1475a = 0;
        }
    }
}
