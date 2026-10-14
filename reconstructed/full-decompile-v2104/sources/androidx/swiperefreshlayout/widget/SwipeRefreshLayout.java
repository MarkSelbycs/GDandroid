package androidx.swiperefreshlayout.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SwipeRefreshLayout extends android.view.ViewGroup {
    public static final java.lang.String T = androidx.swiperefreshlayout.widget.SwipeRefreshLayout.class.getSimpleName();
    public static final int[] U = {android.R.attr.enabled};
    public int A;
    public int B;
    public float C;
    public int D;
    public int E;
    public int F;
    public j0.b G;
    public android.view.animation.Animation H;
    public android.view.animation.Animation I;
    public android.view.animation.Animation J;
    public android.view.animation.Animation K;
    public android.view.animation.Animation L;
    public boolean M;
    public int N;
    public boolean O;
    public androidx.swiperefreshlayout.widget.SwipeRefreshLayout.i P;
    public android.view.animation.Animation.AnimationListener Q;
    public final android.view.animation.Animation R;
    public final android.view.animation.Animation S;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.view.View f2466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j f2467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2468c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2469d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f2470e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f2471f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final w.m f2472g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final w.j f2473h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f2474i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int[] f2475o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f2476p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2477q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f2478r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public float f2479s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f2480t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f2481u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2482v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f2483w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f2484x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final android.view.animation.DecelerateInterpolator f2485y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public j0.a f2486z;

    public class a implements android.view.animation.Animation.AnimationListener {
        public a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(android.view.animation.Animation animation) {
            androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j jVar;
            androidx.swiperefreshlayout.widget.SwipeRefreshLayout swipeRefreshLayout = androidx.swiperefreshlayout.widget.SwipeRefreshLayout.this;
            if (!swipeRefreshLayout.f2468c) {
                swipeRefreshLayout.k();
                return;
            }
            swipeRefreshLayout.G.setAlpha(255);
            androidx.swiperefreshlayout.widget.SwipeRefreshLayout.this.G.start();
            androidx.swiperefreshlayout.widget.SwipeRefreshLayout swipeRefreshLayout2 = androidx.swiperefreshlayout.widget.SwipeRefreshLayout.this;
            if (swipeRefreshLayout2.M && (jVar = swipeRefreshLayout2.f2467b) != null) {
                jVar.a();
            }
            androidx.swiperefreshlayout.widget.SwipeRefreshLayout swipeRefreshLayout3 = androidx.swiperefreshlayout.widget.SwipeRefreshLayout.this;
            swipeRefreshLayout3.f2478r = swipeRefreshLayout3.f2486z.getTop();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(android.view.animation.Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(android.view.animation.Animation animation) {
        }
    }

    public class b extends android.view.animation.Animation {
        public b() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f5, android.view.animation.Transformation transformation) {
            androidx.swiperefreshlayout.widget.SwipeRefreshLayout.this.setAnimationProgress(f5);
        }
    }

    public class c extends android.view.animation.Animation {
        public c() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f5, android.view.animation.Transformation transformation) {
            androidx.swiperefreshlayout.widget.SwipeRefreshLayout.this.setAnimationProgress(1.0f - f5);
        }
    }

    public class d extends android.view.animation.Animation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f2490a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f2491b;

        public d(int i5, int i6) {
            this.f2490a = i5;
            this.f2491b = i6;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f5, android.view.animation.Transformation transformation) {
            j0.b bVar = androidx.swiperefreshlayout.widget.SwipeRefreshLayout.this.G;
            int i5 = this.f2490a;
            bVar.setAlpha((int) (i5 + ((this.f2491b - i5) * f5)));
        }
    }

    public class e implements android.view.animation.Animation.AnimationListener {
        public e() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(android.view.animation.Animation animation) {
            androidx.swiperefreshlayout.widget.SwipeRefreshLayout swipeRefreshLayout = androidx.swiperefreshlayout.widget.SwipeRefreshLayout.this;
            if (swipeRefreshLayout.f2483w) {
                return;
            }
            swipeRefreshLayout.q(null);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(android.view.animation.Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(android.view.animation.Animation animation) {
        }
    }

    public class f extends android.view.animation.Animation {
        public f() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f5, android.view.animation.Transformation transformation) {
            androidx.swiperefreshlayout.widget.SwipeRefreshLayout swipeRefreshLayout = androidx.swiperefreshlayout.widget.SwipeRefreshLayout.this;
            int iAbs = !swipeRefreshLayout.O ? swipeRefreshLayout.E - java.lang.Math.abs(swipeRefreshLayout.D) : swipeRefreshLayout.E;
            androidx.swiperefreshlayout.widget.SwipeRefreshLayout swipeRefreshLayout2 = androidx.swiperefreshlayout.widget.SwipeRefreshLayout.this;
            int i5 = swipeRefreshLayout2.B;
            androidx.swiperefreshlayout.widget.SwipeRefreshLayout.this.setTargetOffsetTopAndBottom((i5 + ((int) ((iAbs - i5) * f5))) - swipeRefreshLayout2.f2486z.getTop());
            androidx.swiperefreshlayout.widget.SwipeRefreshLayout.this.G.e(1.0f - f5);
        }
    }

    public class g extends android.view.animation.Animation {
        public g() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f5, android.view.animation.Transformation transformation) {
            androidx.swiperefreshlayout.widget.SwipeRefreshLayout.this.i(f5);
        }
    }

    public class h extends android.view.animation.Animation {
        public h() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f5, android.view.animation.Transformation transformation) {
            androidx.swiperefreshlayout.widget.SwipeRefreshLayout swipeRefreshLayout = androidx.swiperefreshlayout.widget.SwipeRefreshLayout.this;
            float f6 = swipeRefreshLayout.C;
            swipeRefreshLayout.setAnimationProgress(f6 + ((-f6) * f5));
            androidx.swiperefreshlayout.widget.SwipeRefreshLayout.this.i(f5);
        }
    }

    public interface i {
        boolean a(androidx.swiperefreshlayout.widget.SwipeRefreshLayout swipeRefreshLayout, android.view.View view);
    }

    public interface j {
        void a();
    }

    public SwipeRefreshLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2468c = false;
        this.f2470e = -1.0f;
        this.f2474i = new int[2];
        this.f2475o = new int[2];
        this.f2482v = -1;
        this.A = -1;
        this.Q = new androidx.swiperefreshlayout.widget.SwipeRefreshLayout.a();
        this.R = new androidx.swiperefreshlayout.widget.SwipeRefreshLayout.f();
        this.S = new androidx.swiperefreshlayout.widget.SwipeRefreshLayout.g();
        this.f2469d = android.view.ViewConfiguration.get(context).getScaledTouchSlop();
        this.f2477q = getResources().getInteger(android.R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.f2485y = new android.view.animation.DecelerateInterpolator(2.0f);
        android.util.DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.N = (int) (displayMetrics.density * 40.0f);
        d();
        setChildrenDrawingOrderEnabled(true);
        int i5 = (int) (displayMetrics.density * 64.0f);
        this.E = i5;
        this.f2470e = i5;
        this.f2472g = new w.m(this);
        this.f2473h = new w.j(this);
        setNestedScrollingEnabled(true);
        int i6 = -this.N;
        this.f2478r = i6;
        this.D = i6;
        i(1.0f);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, U);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(0, true));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void setColorViewAlpha(int i5) {
        this.f2486z.getBackground().setAlpha(i5);
        this.G.setAlpha(i5);
    }

    public final void a(int i5, android.view.animation.Animation.AnimationListener animationListener) {
        this.B = i5;
        this.R.reset();
        this.R.setDuration(200L);
        this.R.setInterpolator(this.f2485y);
        if (animationListener != null) {
            this.f2486z.b(animationListener);
        }
        this.f2486z.clearAnimation();
        this.f2486z.startAnimation(this.R);
    }

    public final void b(int i5, android.view.animation.Animation.AnimationListener animationListener) {
        if (this.f2483w) {
            r(i5, animationListener);
            return;
        }
        this.B = i5;
        this.S.reset();
        this.S.setDuration(200L);
        this.S.setInterpolator(this.f2485y);
        if (animationListener != null) {
            this.f2486z.b(animationListener);
        }
        this.f2486z.clearAnimation();
        this.f2486z.startAnimation(this.S);
    }

    public boolean c() {
        androidx.swiperefreshlayout.widget.SwipeRefreshLayout.i iVar = this.P;
        if (iVar != null) {
            return iVar.a(this, this.f2466a);
        }
        android.view.View view = this.f2466a;
        return view instanceof android.widget.ListView ? androidx.core.widget.i.a((android.widget.ListView) view, -1) : view.canScrollVertically(-1);
    }

    public final void d() {
        this.f2486z = new j0.a(getContext(), -328966);
        j0.b bVar = new j0.b(getContext());
        this.G = bVar;
        bVar.l(1);
        this.f2486z.setImageDrawable(this.G);
        this.f2486z.setVisibility(8);
        addView(this.f2486z);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f5, float f6, boolean z4) {
        return this.f2473h.a(f5, f6, z4);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f5, float f6) {
        return this.f2473h.b(f5, f6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i5, int i6, int[] iArr, int[] iArr2) {
        return this.f2473h.c(i5, i6, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i5, int i6, int i7, int i8, int[] iArr) {
        return this.f2473h.f(i5, i6, i7, i8, iArr);
    }

    public final void e() {
        if (this.f2466a == null) {
            for (int i5 = 0; i5 < getChildCount(); i5++) {
                android.view.View childAt = getChildAt(i5);
                if (!childAt.equals(this.f2486z)) {
                    this.f2466a = childAt;
                    return;
                }
            }
        }
    }

    public final void f(float f5) {
        if (f5 > this.f2470e) {
            l(true, true);
            return;
        }
        this.f2468c = false;
        this.G.j(0.0f, 0.0f);
        b(this.f2478r, this.f2483w ? null : new androidx.swiperefreshlayout.widget.SwipeRefreshLayout.e());
        this.G.d(false);
    }

    public final boolean g(android.view.animation.Animation animation) {
        return (animation == null || !animation.hasStarted() || animation.hasEnded()) ? false : true;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i5, int i6) {
        int i7 = this.A;
        if (i7 < 0) {
            return i6;
        }
        if (i6 == i5 - 1) {
            return i7;
        }
        return i6 >= i7 ? i6 + 1 : i6;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f2472g.a();
    }

    public int getProgressCircleDiameter() {
        return this.N;
    }

    public int getProgressViewEndOffset() {
        return this.E;
    }

    public int getProgressViewStartOffset() {
        return this.D;
    }

    public final void h(float f5) {
        this.G.d(true);
        float fMin = java.lang.Math.min(1.0f, java.lang.Math.abs(f5 / this.f2470e));
        float fMax = (((float) java.lang.Math.max(((double) fMin) - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float fAbs = java.lang.Math.abs(f5) - this.f2470e;
        int i5 = this.F;
        if (i5 <= 0) {
            i5 = this.O ? this.E - this.D : this.E;
        }
        float f6 = i5;
        double dMax = java.lang.Math.max(0.0f, java.lang.Math.min(fAbs, f6 * 2.0f) / f6) / 4.0f;
        float fPow = ((float) (dMax - java.lang.Math.pow(dMax, 2.0d))) * 2.0f;
        int i6 = this.D + ((int) ((f6 * fMin) + (f6 * fPow * 2.0f)));
        if (this.f2486z.getVisibility() != 0) {
            this.f2486z.setVisibility(0);
        }
        if (!this.f2483w) {
            this.f2486z.setScaleX(1.0f);
            this.f2486z.setScaleY(1.0f);
        }
        if (this.f2483w) {
            setAnimationProgress(java.lang.Math.min(1.0f, f5 / this.f2470e));
        }
        if (f5 < this.f2470e) {
            if (this.G.getAlpha() > 76 && !g(this.J)) {
                p();
            }
        } else if (this.G.getAlpha() < 255 && !g(this.K)) {
            o();
        }
        this.G.j(0.0f, java.lang.Math.min(0.8f, fMax * 0.8f));
        this.G.e(java.lang.Math.min(1.0f, fMax));
        this.G.g((((fMax * 0.4f) - 0.25f) + (fPow * 2.0f)) * 0.5f);
        setTargetOffsetTopAndBottom(i6 - this.f2478r);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return this.f2473h.j();
    }

    public void i(float f5) {
        int i5 = this.B;
        setTargetOffsetTopAndBottom((i5 + ((int) ((this.D - i5) * f5))) - this.f2486z.getTop());
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.f2473h.l();
    }

    public final void j(android.view.MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f2482v) {
            this.f2482v = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    public void k() {
        this.f2486z.clearAnimation();
        this.G.stop();
        this.f2486z.setVisibility(8);
        setColorViewAlpha(255);
        if (this.f2483w) {
            setAnimationProgress(0.0f);
        } else {
            setTargetOffsetTopAndBottom(this.D - this.f2478r);
        }
        this.f2478r = this.f2486z.getTop();
    }

    public final void l(boolean z4, boolean z5) {
        if (this.f2468c != z4) {
            this.M = z5;
            e();
            this.f2468c = z4;
            if (z4) {
                a(this.f2478r, this.Q);
            } else {
                q(this.Q);
            }
        }
    }

    public final android.view.animation.Animation m(int i5, int i6) {
        androidx.swiperefreshlayout.widget.SwipeRefreshLayout.d dVar = new androidx.swiperefreshlayout.widget.SwipeRefreshLayout.d(i5, i6);
        dVar.setDuration(300L);
        this.f2486z.b(null);
        this.f2486z.clearAnimation();
        this.f2486z.startAnimation(dVar);
        return dVar;
    }

    public final void n(float f5) {
        float f6 = this.f2480t;
        float f7 = f5 - f6;
        int i5 = this.f2469d;
        if (f7 <= i5 || this.f2481u) {
            return;
        }
        this.f2479s = f6 + i5;
        this.f2481u = true;
        this.G.setAlpha(76);
    }

    public final void o() {
        this.K = m(this.G.getAlpha(), 255);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        k();
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0058  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(android.view.MotionEvent motionEvent) {
        e();
        int actionMasked = motionEvent.getActionMasked();
        if (this.f2484x && actionMasked == 0) {
            this.f2484x = false;
        }
        if (!isEnabled() || this.f2484x || c() || this.f2468c || this.f2476p) {
            return false;
        }
        if (actionMasked == 0) {
            setTargetOffsetTopAndBottom(this.D - this.f2486z.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.f2482v = pointerId;
            this.f2481u = false;
            int iFindPointerIndex = motionEvent.findPointerIndex(pointerId);
            if (iFindPointerIndex < 0) {
                return false;
            }
            this.f2480t = motionEvent.getY(iFindPointerIndex);
        } else if (actionMasked == 1) {
            this.f2481u = false;
            this.f2482v = -1;
        } else if (actionMasked == 2) {
            int i5 = this.f2482v;
            if (i5 == -1) {
                android.util.Log.e(T, "Got ACTION_MOVE event but don't have an active pointer id.");
                return false;
            }
            int iFindPointerIndex2 = motionEvent.findPointerIndex(i5);
            if (iFindPointerIndex2 < 0) {
                return false;
            }
            n(motionEvent.getY(iFindPointerIndex2));
        } else if (actionMasked == 3) {
            this.f2481u = false;
            this.f2482v = -1;
        } else if (actionMasked == 6) {
            j(motionEvent);
        }
        return this.f2481u;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.f2466a == null) {
            e();
        }
        android.view.View view = this.f2466a;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.f2486z.getMeasuredWidth();
        int measuredHeight2 = this.f2486z.getMeasuredHeight();
        int i9 = measuredWidth / 2;
        int i10 = measuredWidth2 / 2;
        int i11 = this.f2478r;
        this.f2486z.layout(i9 - i10, i11, i9 + i10, measuredHeight2 + i11);
    }

    @Override // android.view.View
    public void onMeasure(int i5, int i6) {
        super.onMeasure(i5, i6);
        if (this.f2466a == null) {
            e();
        }
        android.view.View view = this.f2466a;
        if (view == null) {
            return;
        }
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), android.view.View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY));
        this.f2486z.measure(android.view.View.MeasureSpec.makeMeasureSpec(this.N, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), android.view.View.MeasureSpec.makeMeasureSpec(this.N, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY));
        this.A = -1;
        for (int i7 = 0; i7 < getChildCount(); i7++) {
            if (getChildAt(i7) == this.f2486z) {
                this.A = i7;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(android.view.View view, float f5, float f6, boolean z4) {
        return dispatchNestedFling(f5, f6, z4);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(android.view.View view, float f5, float f6) {
        return dispatchNestedPreFling(f5, f6);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(android.view.View view, int i5, int i6, int[] iArr) {
        if (i6 > 0) {
            float f5 = this.f2471f;
            if (f5 > 0.0f) {
                float f6 = i6;
                if (f6 > f5) {
                    iArr[1] = i6 - ((int) f5);
                    this.f2471f = 0.0f;
                } else {
                    this.f2471f = f5 - f6;
                    iArr[1] = i6;
                }
                h(this.f2471f);
            }
        }
        if (this.O && i6 > 0 && this.f2471f == 0.0f && java.lang.Math.abs(i6 - iArr[1]) > 0) {
            this.f2486z.setVisibility(8);
        }
        int[] iArr2 = this.f2474i;
        if (dispatchNestedPreScroll(i5 - iArr[0], i6 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(android.view.View view, int i5, int i6, int i7, int i8) {
        dispatchNestedScroll(i5, i6, i7, i8, this.f2475o);
        int i9 = i8 + this.f2475o[1];
        if (i9 >= 0 || c()) {
            return;
        }
        float fAbs = this.f2471f + java.lang.Math.abs(i9);
        this.f2471f = fAbs;
        h(fAbs);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(android.view.View view, android.view.View view2, int i5) {
        this.f2472g.b(view, view2, i5);
        startNestedScroll(i5 & 2);
        this.f2471f = 0.0f;
        this.f2476p = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(android.view.View view, android.view.View view2, int i5) {
        return (!isEnabled() || this.f2484x || this.f2468c || (i5 & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(android.view.View view) {
        this.f2472g.d(view);
        this.f2476p = false;
        float f5 = this.f2471f;
        if (f5 > 0.0f) {
            f(f5);
            this.f2471f = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.f2484x && actionMasked == 0) {
            this.f2484x = false;
        }
        if (!isEnabled() || this.f2484x || c() || this.f2468c || this.f2476p) {
            return false;
        }
        if (actionMasked == 0) {
            this.f2482v = motionEvent.getPointerId(0);
            this.f2481u = false;
        } else {
            if (actionMasked == 1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f2482v);
                if (iFindPointerIndex < 0) {
                    android.util.Log.e(T, "Got ACTION_UP event but don't have an active pointer id.");
                    return false;
                }
                if (this.f2481u) {
                    float y4 = (motionEvent.getY(iFindPointerIndex) - this.f2479s) * 0.5f;
                    this.f2481u = false;
                    f(y4);
                }
                this.f2482v = -1;
                return false;
            }
            if (actionMasked == 2) {
                int iFindPointerIndex2 = motionEvent.findPointerIndex(this.f2482v);
                if (iFindPointerIndex2 < 0) {
                    android.util.Log.e(T, "Got ACTION_MOVE event but have an invalid active pointer id.");
                    return false;
                }
                float y5 = motionEvent.getY(iFindPointerIndex2);
                n(y5);
                if (this.f2481u) {
                    float f5 = (y5 - this.f2479s) * 0.5f;
                    if (f5 <= 0.0f) {
                        return false;
                    }
                    h(f5);
                }
            } else {
                if (actionMasked == 3) {
                    return false;
                }
                if (actionMasked == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    if (actionIndex < 0) {
                        android.util.Log.e(T, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                        return false;
                    }
                    this.f2482v = motionEvent.getPointerId(actionIndex);
                } else if (actionMasked == 6) {
                    j(motionEvent);
                }
            }
        }
        return true;
    }

    public final void p() {
        this.J = m(this.G.getAlpha(), 76);
    }

    public void q(android.view.animation.Animation.AnimationListener animationListener) {
        androidx.swiperefreshlayout.widget.SwipeRefreshLayout.c cVar = new androidx.swiperefreshlayout.widget.SwipeRefreshLayout.c();
        this.I = cVar;
        cVar.setDuration(150L);
        this.f2486z.b(animationListener);
        this.f2486z.clearAnimation();
        this.f2486z.startAnimation(this.I);
    }

    public final void r(int i5, android.view.animation.Animation.AnimationListener animationListener) {
        this.B = i5;
        this.C = this.f2486z.getScaleX();
        androidx.swiperefreshlayout.widget.SwipeRefreshLayout.h hVar = new androidx.swiperefreshlayout.widget.SwipeRefreshLayout.h();
        this.L = hVar;
        hVar.setDuration(150L);
        if (animationListener != null) {
            this.f2486z.b(animationListener);
        }
        this.f2486z.clearAnimation();
        this.f2486z.startAnimation(this.L);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z4) {
        android.view.View view = this.f2466a;
        if (view == null || w.q.E(view)) {
            super.requestDisallowInterceptTouchEvent(z4);
        }
    }

    public final void s(android.view.animation.Animation.AnimationListener animationListener) {
        this.f2486z.setVisibility(0);
        this.G.setAlpha(255);
        androidx.swiperefreshlayout.widget.SwipeRefreshLayout.b bVar = new androidx.swiperefreshlayout.widget.SwipeRefreshLayout.b();
        this.H = bVar;
        bVar.setDuration(this.f2477q);
        if (animationListener != null) {
            this.f2486z.b(animationListener);
        }
        this.f2486z.clearAnimation();
        this.f2486z.startAnimation(this.H);
    }

    public void setAnimationProgress(float f5) {
        this.f2486z.setScaleX(f5);
        this.f2486z.setScaleY(f5);
    }

    @java.lang.Deprecated
    public void setColorScheme(int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(int... iArr) {
        e();
        this.G.f(iArr);
    }

    public void setColorSchemeResources(int... iArr) {
        android.content.Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i5 = 0; i5 < iArr.length; i5++) {
            iArr2[i5] = androidx.core.content.a.a(context, iArr[i5]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i5) {
        this.f2470e = i5;
    }

    @Override // android.view.View
    public void setEnabled(boolean z4) {
        super.setEnabled(z4);
        if (z4) {
            return;
        }
        k();
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z4) {
        this.f2473h.m(z4);
    }

    public void setOnChildScrollUpCallback(androidx.swiperefreshlayout.widget.SwipeRefreshLayout.i iVar) {
        this.P = iVar;
    }

    public void setOnRefreshListener(androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j jVar) {
        this.f2467b = jVar;
    }

    @java.lang.Deprecated
    public void setProgressBackgroundColor(int i5) {
        setProgressBackgroundColorSchemeResource(i5);
    }

    public void setProgressBackgroundColorSchemeColor(int i5) {
        this.f2486z.setBackgroundColor(i5);
    }

    public void setProgressBackgroundColorSchemeResource(int i5) {
        setProgressBackgroundColorSchemeColor(androidx.core.content.a.a(getContext(), i5));
    }

    public void setRefreshing(boolean z4) {
        if (!z4 || this.f2468c == z4) {
            l(z4, false);
            return;
        }
        this.f2468c = z4;
        setTargetOffsetTopAndBottom((!this.O ? this.E + this.D : this.E) - this.f2478r);
        this.M = false;
        s(this.Q);
    }

    public void setSize(int i5) {
        if (i5 == 0 || i5 == 1) {
            android.util.DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i5 == 0) {
                this.N = (int) (displayMetrics.density * 56.0f);
            } else {
                this.N = (int) (displayMetrics.density * 40.0f);
            }
            this.f2486z.setImageDrawable(null);
            this.G.l(i5);
            this.f2486z.setImageDrawable(this.G);
        }
    }

    public void setSlingshotDistance(int i5) {
        this.F = i5;
    }

    public void setTargetOffsetTopAndBottom(int i5) {
        this.f2486z.bringToFront();
        w.q.H(this.f2486z, i5);
        this.f2478r = this.f2486z.getTop();
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i5) {
        return this.f2473h.o(i5);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        this.f2473h.q();
    }
}
