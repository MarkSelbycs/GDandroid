package androidx.recyclerview.widget;

/* JADX INFO: compiled from: FastScroller.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d extends androidx.recyclerview.widget.RecyclerView.o implements androidx.recyclerview.widget.RecyclerView.s {
    public static final int[] D = {android.R.attr.state_pressed};
    public static final int[] E = new int[0];
    public int A;
    public final java.lang.Runnable B;
    public final androidx.recyclerview.widget.RecyclerView.t C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2107a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.graphics.drawable.StateListDrawable f2109c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final android.graphics.drawable.Drawable f2110d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2111e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2112f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final android.graphics.drawable.StateListDrawable f2113g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final android.graphics.drawable.Drawable f2114h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f2115i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f2116j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2117k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2118l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f2119m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2120n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2121o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f2122p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public androidx.recyclerview.widget.RecyclerView f2125s;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final android.animation.ValueAnimator f2132z;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2123q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2124r = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f2126t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f2127u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2128v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2129w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int[] f2130x = new int[2];

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int[] f2131y = new int[2];

    /* JADX INFO: compiled from: FastScroller.java */
    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.recyclerview.widget.d.this.q(500);
        }
    }

    /* JADX INFO: compiled from: FastScroller.java */
    public class b extends androidx.recyclerview.widget.RecyclerView.t {
        public b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.t
        public void b(androidx.recyclerview.widget.RecyclerView recyclerView, int i5, int i6) {
            androidx.recyclerview.widget.d.this.B(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    }

    /* JADX INFO: compiled from: FastScroller.java */
    public class c extends android.animation.AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2135a = false;

        public c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(android.animation.Animator animator) {
            this.f2135a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            if (this.f2135a) {
                this.f2135a = false;
                return;
            }
            if (((java.lang.Float) androidx.recyclerview.widget.d.this.f2132z.getAnimatedValue()).floatValue() == 0.0f) {
                androidx.recyclerview.widget.d dVar = androidx.recyclerview.widget.d.this;
                dVar.A = 0;
                dVar.y(0);
            } else {
                androidx.recyclerview.widget.d dVar2 = androidx.recyclerview.widget.d.this;
                dVar2.A = 2;
                dVar2.v();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FastScroller.java */
    public class C0016d implements android.animation.ValueAnimator.AnimatorUpdateListener {
        public C0016d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
            int iFloatValue = (int) (((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            androidx.recyclerview.widget.d.this.f2109c.setAlpha(iFloatValue);
            androidx.recyclerview.widget.d.this.f2110d.setAlpha(iFloatValue);
            androidx.recyclerview.widget.d.this.v();
        }
    }

    public d(androidx.recyclerview.widget.RecyclerView recyclerView, android.graphics.drawable.StateListDrawable stateListDrawable, android.graphics.drawable.Drawable drawable, android.graphics.drawable.StateListDrawable stateListDrawable2, android.graphics.drawable.Drawable drawable2, int i5, int i6, int i7) {
        android.animation.ValueAnimator valueAnimatorOfFloat = android.animation.ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f2132z = valueAnimatorOfFloat;
        this.A = 0;
        this.B = new androidx.recyclerview.widget.d.a();
        this.C = new androidx.recyclerview.widget.d.b();
        this.f2109c = stateListDrawable;
        this.f2110d = drawable;
        this.f2113g = stateListDrawable2;
        this.f2114h = drawable2;
        this.f2111e = java.lang.Math.max(i5, stateListDrawable.getIntrinsicWidth());
        this.f2112f = java.lang.Math.max(i5, drawable.getIntrinsicWidth());
        this.f2115i = java.lang.Math.max(i5, stateListDrawable2.getIntrinsicWidth());
        this.f2116j = java.lang.Math.max(i5, drawable2.getIntrinsicWidth());
        this.f2107a = i6;
        this.f2108b = i7;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        valueAnimatorOfFloat.addListener(new androidx.recyclerview.widget.d.c());
        valueAnimatorOfFloat.addUpdateListener(new androidx.recyclerview.widget.d.C0016d());
        j(recyclerView);
    }

    public void A() {
        int i5 = this.A;
        if (i5 != 0) {
            if (i5 != 3) {
                return;
            } else {
                this.f2132z.cancel();
            }
        }
        this.A = 1;
        android.animation.ValueAnimator valueAnimator = this.f2132z;
        valueAnimator.setFloatValues(((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f2132z.setDuration(500L);
        this.f2132z.setStartDelay(0L);
        this.f2132z.start();
    }

    public void B(int i5, int i6) {
        int iComputeVerticalScrollRange = this.f2125s.computeVerticalScrollRange();
        int i7 = this.f2124r;
        this.f2126t = iComputeVerticalScrollRange - i7 > 0 && i7 >= this.f2107a;
        int iComputeHorizontalScrollRange = this.f2125s.computeHorizontalScrollRange();
        int i8 = this.f2123q;
        boolean z4 = iComputeHorizontalScrollRange - i8 > 0 && i8 >= this.f2107a;
        this.f2127u = z4;
        boolean z5 = this.f2126t;
        if (!z5 && !z4) {
            if (this.f2128v != 0) {
                y(0);
                return;
            }
            return;
        }
        if (z5) {
            float f5 = i7;
            this.f2118l = (int) ((f5 * (i6 + (f5 / 2.0f))) / iComputeVerticalScrollRange);
            this.f2117k = java.lang.Math.min(i7, (i7 * i7) / iComputeVerticalScrollRange);
        }
        if (this.f2127u) {
            float f6 = i8;
            this.f2121o = (int) ((f6 * (i5 + (f6 / 2.0f))) / iComputeHorizontalScrollRange);
            this.f2120n = java.lang.Math.min(i8, (i8 * i8) / iComputeHorizontalScrollRange);
        }
        int i9 = this.f2128v;
        if (i9 == 0 || i9 == 1) {
            y(1);
        }
    }

    public final void C(float f5) {
        int[] iArrP = p();
        float fMax = java.lang.Math.max(iArrP[0], java.lang.Math.min(iArrP[1], f5));
        if (java.lang.Math.abs(this.f2118l - fMax) < 2.0f) {
            return;
        }
        int iX = x(this.f2119m, fMax, iArrP, this.f2125s.computeVerticalScrollRange(), this.f2125s.computeVerticalScrollOffset(), this.f2124r);
        if (iX != 0) {
            this.f2125s.scrollBy(0, iX);
        }
        this.f2119m = fMax;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.s
    public boolean a(androidx.recyclerview.widget.RecyclerView recyclerView, android.view.MotionEvent motionEvent) {
        int i5 = this.f2128v;
        if (i5 == 1) {
            boolean zU = u(motionEvent.getX(), motionEvent.getY());
            boolean zT = t(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!zU && !zT) {
                return false;
            }
            if (zT) {
                this.f2129w = 1;
                this.f2122p = (int) motionEvent.getX();
            } else if (zU) {
                this.f2129w = 2;
                this.f2119m = (int) motionEvent.getY();
            }
            y(2);
        } else if (i5 != 2) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.s
    public void b(androidx.recyclerview.widget.RecyclerView recyclerView, android.view.MotionEvent motionEvent) {
        if (this.f2128v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean zU = u(motionEvent.getX(), motionEvent.getY());
            boolean zT = t(motionEvent.getX(), motionEvent.getY());
            if (zU || zT) {
                if (zT) {
                    this.f2129w = 1;
                    this.f2122p = (int) motionEvent.getX();
                } else if (zU) {
                    this.f2129w = 2;
                    this.f2119m = (int) motionEvent.getY();
                }
                y(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.f2128v == 2) {
            this.f2119m = 0.0f;
            this.f2122p = 0.0f;
            y(1);
            this.f2129w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.f2128v == 2) {
            A();
            if (this.f2129w == 1) {
                r(motionEvent.getX());
            }
            if (this.f2129w == 2) {
                C(motionEvent.getY());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.s
    public void c(boolean z4) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void i(android.graphics.Canvas canvas, androidx.recyclerview.widget.RecyclerView recyclerView, androidx.recyclerview.widget.RecyclerView.y yVar) {
        if (this.f2123q != this.f2125s.getWidth() || this.f2124r != this.f2125s.getHeight()) {
            this.f2123q = this.f2125s.getWidth();
            this.f2124r = this.f2125s.getHeight();
            y(0);
        } else if (this.A != 0) {
            if (this.f2126t) {
                n(canvas);
            }
            if (this.f2127u) {
                m(canvas);
            }
        }
    }

    public void j(androidx.recyclerview.widget.RecyclerView recyclerView) {
        androidx.recyclerview.widget.RecyclerView recyclerView2 = this.f2125s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            l();
        }
        this.f2125s = recyclerView;
        if (recyclerView != null) {
            z();
        }
    }

    public final void k() {
        this.f2125s.removeCallbacks(this.B);
    }

    public final void l() {
        this.f2125s.T0(this);
        this.f2125s.U0(this);
        this.f2125s.V0(this.C);
        k();
    }

    public final void m(android.graphics.Canvas canvas) {
        int i5 = this.f2124r;
        int i6 = this.f2115i;
        int i7 = i5 - i6;
        int i8 = this.f2121o;
        int i9 = this.f2120n;
        int i10 = i8 - (i9 / 2);
        this.f2113g.setBounds(0, 0, i9, i6);
        this.f2114h.setBounds(0, 0, this.f2123q, this.f2116j);
        canvas.translate(0.0f, i7);
        this.f2114h.draw(canvas);
        canvas.translate(i10, 0.0f);
        this.f2113g.draw(canvas);
        canvas.translate(-i10, -i7);
    }

    public final void n(android.graphics.Canvas canvas) {
        int i5 = this.f2123q;
        int i6 = this.f2111e;
        int i7 = i5 - i6;
        int i8 = this.f2118l;
        int i9 = this.f2117k;
        int i10 = i8 - (i9 / 2);
        this.f2109c.setBounds(0, 0, i6, i9);
        this.f2110d.setBounds(0, 0, this.f2112f, this.f2124r);
        if (!s()) {
            canvas.translate(i7, 0.0f);
            this.f2110d.draw(canvas);
            canvas.translate(0.0f, i10);
            this.f2109c.draw(canvas);
            canvas.translate(-i7, -i10);
            return;
        }
        this.f2110d.draw(canvas);
        canvas.translate(this.f2111e, i10);
        canvas.scale(-1.0f, 1.0f);
        this.f2109c.draw(canvas);
        canvas.scale(-1.0f, 1.0f);
        canvas.translate(-this.f2111e, -i10);
    }

    public final int[] o() {
        int[] iArr = this.f2131y;
        int i5 = this.f2108b;
        iArr[0] = i5;
        iArr[1] = this.f2123q - i5;
        return iArr;
    }

    public final int[] p() {
        int[] iArr = this.f2130x;
        int i5 = this.f2108b;
        iArr[0] = i5;
        iArr[1] = this.f2124r - i5;
        return iArr;
    }

    public void q(int i5) {
        int i6 = this.A;
        if (i6 == 1) {
            this.f2132z.cancel();
        } else if (i6 != 2) {
            return;
        }
        this.A = 3;
        android.animation.ValueAnimator valueAnimator = this.f2132z;
        valueAnimator.setFloatValues(((java.lang.Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        this.f2132z.setDuration(i5);
        this.f2132z.start();
    }

    public final void r(float f5) {
        int[] iArrO = o();
        float fMax = java.lang.Math.max(iArrO[0], java.lang.Math.min(iArrO[1], f5));
        if (java.lang.Math.abs(this.f2121o - fMax) < 2.0f) {
            return;
        }
        int iX = x(this.f2122p, fMax, iArrO, this.f2125s.computeHorizontalScrollRange(), this.f2125s.computeHorizontalScrollOffset(), this.f2123q);
        if (iX != 0) {
            this.f2125s.scrollBy(iX, 0);
        }
        this.f2122p = fMax;
    }

    public final boolean s() {
        return w.q.p(this.f2125s) == 1;
    }

    public boolean t(float f5, float f6) {
        if (f6 >= this.f2124r - this.f2115i) {
            int i5 = this.f2121o;
            int i6 = this.f2120n;
            if (f5 >= i5 - (i6 / 2) && f5 <= i5 + (i6 / 2)) {
                return true;
            }
        }
        return false;
    }

    public boolean u(float f5, float f6) {
        if (!s() ? f5 >= this.f2123q - this.f2111e : f5 <= this.f2111e) {
            int i5 = this.f2118l;
            int i6 = this.f2117k;
            if (f6 >= i5 - (i6 / 2) && f6 <= i5 + (i6 / 2)) {
                return true;
            }
        }
        return false;
    }

    public void v() {
        this.f2125s.invalidate();
    }

    public final void w(int i5) {
        k();
        this.f2125s.postDelayed(this.B, i5);
    }

    public final int x(float f5, float f6, int[] iArr, int i5, int i6, int i7) {
        int i8 = iArr[1] - iArr[0];
        if (i8 == 0) {
            return 0;
        }
        int i9 = i5 - i7;
        int i10 = (int) (((f6 - f5) / i8) * i9);
        int i11 = i6 + i10;
        if (i11 >= i9 || i11 < 0) {
            return 0;
        }
        return i10;
    }

    public void y(int i5) {
        if (i5 == 2 && this.f2128v != 2) {
            this.f2109c.setState(D);
            k();
        }
        if (i5 == 0) {
            v();
        } else {
            A();
        }
        if (this.f2128v == 2 && i5 != 2) {
            this.f2109c.setState(E);
            w(1200);
        } else if (i5 == 1) {
            w(1500);
        }
        this.f2128v = i5;
    }

    public final void z() {
        this.f2125s.g(this);
        this.f2125s.i(this);
        this.f2125s.j(this.C);
    }
}
