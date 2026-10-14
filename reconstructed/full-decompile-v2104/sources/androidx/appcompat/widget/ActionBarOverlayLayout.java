package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ActionBarOverlayLayout extends android.view.ViewGroup implements androidx.appcompat.widget.m {
    public static final int[] G = {androidx.appcompat.R.attr.actionBarSize, android.R.attr.windowContentOverlay};
    public android.widget.OverScroller A;
    public android.view.ViewPropertyAnimator B;
    public final android.animation.AnimatorListenerAdapter C;
    public final java.lang.Runnable D;
    public final java.lang.Runnable E;
    public final w.m F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f595a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f596b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.appcompat.widget.ContentFrameLayout f597c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public androidx.appcompat.widget.ActionBarContainer f598d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.appcompat.widget.n f599e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public android.graphics.drawable.Drawable f600f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f601g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f602h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f603i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f604o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f605p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f606q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f607r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final android.graphics.Rect f608s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final android.graphics.Rect f609t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final android.graphics.Rect f610u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final android.graphics.Rect f611v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final android.graphics.Rect f612w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final android.graphics.Rect f613x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final android.graphics.Rect f614y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public androidx.appcompat.widget.ActionBarOverlayLayout.d f615z;

    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams {
        public LayoutParams(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i5, int i6) {
            super(i5, i6);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public class a extends android.animation.AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(android.animation.Animator animator) {
            androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = androidx.appcompat.widget.ActionBarOverlayLayout.this;
            actionBarOverlayLayout.B = null;
            actionBarOverlayLayout.f605p = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = androidx.appcompat.widget.ActionBarOverlayLayout.this;
            actionBarOverlayLayout.B = null;
            actionBarOverlayLayout.f605p = false;
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.appcompat.widget.ActionBarOverlayLayout.this.o();
            androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = androidx.appcompat.widget.ActionBarOverlayLayout.this;
            actionBarOverlayLayout.B = actionBarOverlayLayout.f598d.animate().translationY(0.0f).setListener(androidx.appcompat.widget.ActionBarOverlayLayout.this.C);
        }
    }

    public class c implements java.lang.Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.appcompat.widget.ActionBarOverlayLayout.this.o();
            androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = androidx.appcompat.widget.ActionBarOverlayLayout.this;
            actionBarOverlayLayout.B = actionBarOverlayLayout.f598d.animate().translationY(-androidx.appcompat.widget.ActionBarOverlayLayout.this.f598d.getHeight()).setListener(androidx.appcompat.widget.ActionBarOverlayLayout.this.C);
        }
    }

    public interface d {
        void a(boolean z4);

        void b();

        void c();

        void d(int i5);

        void e();

        void f();
    }

    public ActionBarOverlayLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f596b = 0;
        this.f608s = new android.graphics.Rect();
        this.f609t = new android.graphics.Rect();
        this.f610u = new android.graphics.Rect();
        this.f611v = new android.graphics.Rect();
        this.f612w = new android.graphics.Rect();
        this.f613x = new android.graphics.Rect();
        this.f614y = new android.graphics.Rect();
        this.C = new androidx.appcompat.widget.ActionBarOverlayLayout.a();
        this.D = new androidx.appcompat.widget.ActionBarOverlayLayout.b();
        this.E = new androidx.appcompat.widget.ActionBarOverlayLayout.c();
        p(context);
        this.F = new w.m(this);
    }

    @Override // androidx.appcompat.widget.m
    public void a(android.view.Menu menu, androidx.appcompat.view.menu.i.a aVar) {
        t();
        this.f599e.a(menu, aVar);
    }

    public final void b() {
        o();
        this.E.run();
    }

    @Override // androidx.appcompat.widget.m
    public boolean c() {
        t();
        return this.f599e.c();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams;
    }

    @Override // androidx.appcompat.widget.m
    public boolean d() {
        t();
        return this.f599e.d();
    }

    @Override // android.view.View
    public void draw(android.graphics.Canvas canvas) {
        super.draw(canvas);
        if (this.f600f == null || this.f601g) {
            return;
        }
        int bottom = this.f598d.getVisibility() == 0 ? (int) (this.f598d.getBottom() + this.f598d.getTranslationY() + 0.5f) : 0;
        this.f600f.setBounds(0, bottom, getWidth(), this.f600f.getIntrinsicHeight() + bottom);
        this.f600f.draw(canvas);
    }

    @Override // androidx.appcompat.widget.m
    public boolean e() {
        t();
        return this.f599e.e();
    }

    @Override // androidx.appcompat.widget.m
    public boolean f() {
        t();
        return this.f599e.f();
    }

    @Override // android.view.View
    public boolean fitSystemWindows(android.graphics.Rect rect) {
        t();
        w.q.w(this);
        boolean zK = k(this.f598d, rect, true, true, false, true);
        this.f611v.set(rect);
        androidx.appcompat.widget.h0.a(this, this.f611v, this.f608s);
        if (!this.f612w.equals(this.f611v)) {
            this.f612w.set(this.f611v);
            zK = true;
        }
        if (!this.f609t.equals(this.f608s)) {
            this.f609t.set(this.f608s);
            zK = true;
        }
        if (zK) {
            requestLayout();
        }
        return true;
    }

    @Override // androidx.appcompat.widget.m
    public void g() {
        t();
        this.f599e.g();
    }

    public int getActionBarHideOffset() {
        androidx.appcompat.widget.ActionBarContainer actionBarContainer = this.f598d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.F.a();
    }

    public java.lang.CharSequence getTitle() {
        t();
        return this.f599e.getTitle();
    }

    @Override // androidx.appcompat.widget.m
    public boolean h() {
        t();
        return this.f599e.h();
    }

    @Override // androidx.appcompat.widget.m
    public void i(int i5) {
        t();
        if (i5 == 2) {
            this.f599e.t();
        } else if (i5 == 5) {
            this.f599e.v();
        } else {
            if (i5 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // androidx.appcompat.widget.m
    public void j() {
        t();
        this.f599e.i();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final boolean k(android.view.View view, android.graphics.Rect rect, boolean z4, boolean z5, boolean z6, boolean z7) {
        boolean z8;
        androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams layoutParams = (androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams) view.getLayoutParams();
        if (z4) {
            int i5 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            int i6 = rect.left;
            if (i5 != i6) {
                ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin = i6;
                z8 = true;
            } else {
                z8 = false;
            }
        } else {
            z8 = false;
        }
        if (z5) {
            int i7 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            int i8 = rect.top;
            if (i7 != i8) {
                ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin = i8;
                z8 = true;
            }
        }
        if (z7) {
            int i9 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            int i10 = rect.right;
            if (i9 != i10) {
                ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin = i10;
                z8 = true;
            }
        }
        if (z6) {
            int i11 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            int i12 = rect.bottom;
            if (i11 != i12) {
                ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = i12;
                return true;
            }
        }
        return z8;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams generateDefaultLayoutParams() {
        return new androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams(getContext(), attributeSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final androidx.appcompat.widget.n n(android.view.View view) {
        if (view instanceof androidx.appcompat.widget.n) {
            return (androidx.appcompat.widget.n) view;
        }
        if (view instanceof androidx.appcompat.widget.Toolbar) {
            return ((androidx.appcompat.widget.Toolbar) view).getWrapper();
        }
        throw new java.lang.IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    public void o() {
        removeCallbacks(this.D);
        removeCallbacks(this.E);
        android.view.ViewPropertyAnimator viewPropertyAnimator = this.B;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        p(getContext());
        w.q.N(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        o();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        getPaddingRight();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        for (int i9 = 0; i9 < childCount; i9++) {
            android.view.View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams layoutParams = (androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i10 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeft;
                int i11 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + paddingTop;
                childAt.layout(i10, i11, measuredWidth + i10, measuredHeight + i11);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i5, int i6) {
        int measuredHeight;
        t();
        measureChildWithMargins(this.f598d, i5, 0, i6, 0);
        androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams layoutParams = (androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams) this.f598d.getLayoutParams();
        int iMax = java.lang.Math.max(0, this.f598d.getMeasuredWidth() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
        int iMax2 = java.lang.Math.max(0, this.f598d.getMeasuredHeight() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        int iCombineMeasuredStates = android.view.View.combineMeasuredStates(0, this.f598d.getMeasuredState());
        boolean z4 = (w.q.w(this) & 256) != 0;
        if (z4) {
            measuredHeight = this.f595a;
            if (this.f603i && this.f598d.getTabContainer() != null) {
                measuredHeight += this.f595a;
            }
        } else {
            measuredHeight = this.f598d.getVisibility() != 8 ? this.f598d.getMeasuredHeight() : 0;
        }
        this.f610u.set(this.f608s);
        this.f613x.set(this.f611v);
        if (this.f602h || z4) {
            android.graphics.Rect rect = this.f613x;
            rect.top += measuredHeight;
            rect.bottom += 0;
        } else {
            android.graphics.Rect rect2 = this.f610u;
            rect2.top += measuredHeight;
            rect2.bottom += 0;
        }
        k(this.f597c, this.f610u, true, true, true, true);
        if (!this.f614y.equals(this.f613x)) {
            this.f614y.set(this.f613x);
            this.f597c.a(this.f613x);
        }
        measureChildWithMargins(this.f597c, i5, 0, i6, 0);
        androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams layoutParams2 = (androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams) this.f597c.getLayoutParams();
        int iMax3 = java.lang.Math.max(iMax, this.f597c.getMeasuredWidth() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
        int iMax4 = java.lang.Math.max(iMax2, this.f597c.getMeasuredHeight() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
        int iCombineMeasuredStates2 = android.view.View.combineMeasuredStates(iCombineMeasuredStates, this.f597c.getMeasuredState());
        setMeasuredDimension(android.view.View.resolveSizeAndState(java.lang.Math.max(iMax3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i5, iCombineMeasuredStates2), android.view.View.resolveSizeAndState(java.lang.Math.max(iMax4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i6, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(android.view.View view, float f5, float f6, boolean z4) {
        if (!this.f604o || !z4) {
            return false;
        }
        if (v(f5, f6)) {
            b();
        } else {
            u();
        }
        this.f605p = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(android.view.View view, float f5, float f6) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(android.view.View view, int i5, int i6, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(android.view.View view, int i5, int i6, int i7, int i8) {
        int i9 = this.f606q + i6;
        this.f606q = i9;
        setActionBarHideOffset(i9);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(android.view.View view, android.view.View view2, int i5) {
        this.F.b(view, view2, i5);
        this.f606q = getActionBarHideOffset();
        o();
        androidx.appcompat.widget.ActionBarOverlayLayout.d dVar = this.f615z;
        if (dVar != null) {
            dVar.c();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(android.view.View view, android.view.View view2, int i5) {
        if ((i5 & 2) == 0 || this.f598d.getVisibility() != 0) {
            return false;
        }
        return this.f604o;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(android.view.View view) {
        if (this.f604o && !this.f605p) {
            if (this.f606q <= this.f598d.getHeight()) {
                s();
            } else {
                r();
            }
        }
        androidx.appcompat.widget.ActionBarOverlayLayout.d dVar = this.f615z;
        if (dVar != null) {
            dVar.f();
        }
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i5) {
        super.onWindowSystemUiVisibilityChanged(i5);
        t();
        int i6 = this.f607r ^ i5;
        this.f607r = i5;
        boolean z4 = (i5 & 4) == 0;
        boolean z5 = (i5 & 256) != 0;
        androidx.appcompat.widget.ActionBarOverlayLayout.d dVar = this.f615z;
        if (dVar != null) {
            dVar.a(!z5);
            if (z4 || !z5) {
                this.f615z.b();
            } else {
                this.f615z.e();
            }
        }
        if ((i6 & 256) == 0 || this.f615z == null) {
            return;
        }
        w.q.N(this);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i5) {
        super.onWindowVisibilityChanged(i5);
        this.f596b = i5;
        androidx.appcompat.widget.ActionBarOverlayLayout.d dVar = this.f615z;
        if (dVar != null) {
            dVar.d(i5);
        }
    }

    public final void p(android.content.Context context) {
        android.content.res.TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(G);
        this.f595a = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        android.graphics.drawable.Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f600f = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.f601g = context.getApplicationInfo().targetSdkVersion < 19;
        this.A = new android.widget.OverScroller(context);
    }

    public boolean q() {
        return this.f602h;
    }

    public final void r() {
        o();
        postDelayed(this.E, 600L);
    }

    public final void s() {
        o();
        postDelayed(this.D, 600L);
    }

    public void setActionBarHideOffset(int i5) {
        o();
        this.f598d.setTranslationY(-java.lang.Math.max(0, java.lang.Math.min(i5, this.f598d.getHeight())));
    }

    public void setActionBarVisibilityCallback(androidx.appcompat.widget.ActionBarOverlayLayout.d dVar) {
        this.f615z = dVar;
        if (getWindowToken() != null) {
            this.f615z.d(this.f596b);
            int i5 = this.f607r;
            if (i5 != 0) {
                onWindowSystemUiVisibilityChanged(i5);
                w.q.N(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z4) {
        this.f603i = z4;
    }

    public void setHideOnContentScrollEnabled(boolean z4) {
        if (z4 != this.f604o) {
            this.f604o = z4;
            if (z4) {
                return;
            }
            o();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i5) {
        t();
        this.f599e.setIcon(i5);
    }

    public void setLogo(int i5) {
        t();
        this.f599e.n(i5);
    }

    public void setOverlayMode(boolean z4) {
        this.f602h = z4;
        this.f601g = z4 && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z4) {
    }

    public void setUiOptions(int i5) {
    }

    @Override // androidx.appcompat.widget.m
    public void setWindowCallback(android.view.Window.Callback callback) {
        t();
        this.f599e.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.m
    public void setWindowTitle(java.lang.CharSequence charSequence) {
        t();
        this.f599e.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public void t() {
        if (this.f597c == null) {
            this.f597c = (androidx.appcompat.widget.ContentFrameLayout) findViewById(androidx.appcompat.R.id.action_bar_activity_content);
            this.f598d = (androidx.appcompat.widget.ActionBarContainer) findViewById(androidx.appcompat.R.id.action_bar_container);
            this.f599e = n(findViewById(androidx.appcompat.R.id.action_bar));
        }
    }

    public final void u() {
        o();
        this.D.run();
    }

    public final boolean v(float f5, float f6) {
        this.A.fling(0, 0, 0, (int) f6, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.A.getFinalY() > this.f598d.getHeight();
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams(layoutParams);
    }

    public void setIcon(android.graphics.drawable.Drawable drawable) {
        t();
        this.f599e.setIcon(drawable);
    }
}
