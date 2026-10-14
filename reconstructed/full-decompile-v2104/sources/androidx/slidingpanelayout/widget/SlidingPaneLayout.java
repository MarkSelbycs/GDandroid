package androidx.slidingpanelayout.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SlidingPaneLayout extends android.view.ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2430a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2431b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.graphics.drawable.Drawable f2432c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.graphics.drawable.Drawable f2433d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2434e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2435f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public android.view.View f2436g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f2437h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f2438i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2439o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f2440p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f2441q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public float f2442r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public float f2443s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public androidx.slidingpanelayout.widget.SlidingPaneLayout.d f2444t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final z.a f2445u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f2446v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f2447w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final android.graphics.Rect f2448x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final java.util.ArrayList<androidx.slidingpanelayout.widget.SlidingPaneLayout.b> f2449y;

    public static class SavedState extends androidx.customview.view.AbsSavedState {
        public static final android.os.Parcelable.Creator<androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState> CREATOR = new androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState.a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2455a;

        public static class a implements android.os.Parcelable.ClassLoaderCreator<androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState createFromParcel(android.os.Parcel parcel) {
                return new androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                return new androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState[] newArray(int i5) {
                return new androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState[i5];
            }
        }

        public SavedState(android.os.Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i5) {
            super.writeToParcel(parcel, i5);
            parcel.writeInt(this.f2455a ? 1 : 0);
        }

        public SavedState(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2455a = parcel.readInt() != 0;
        }
    }

    public class a extends w.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final android.graphics.Rect f2456d = new android.graphics.Rect();

        public a() {
        }

        @Override // w.a
        public void f(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            super.f(view, accessibilityEvent);
            accessibilityEvent.setClassName(androidx.slidingpanelayout.widget.SlidingPaneLayout.class.getName());
        }

        @Override // w.a
        public void g(android.view.View view, x.c cVar) {
            x.c cVarG = x.c.G(cVar);
            super.g(view, cVarG);
            n(cVar, cVarG);
            cVarG.I();
            cVar.O(androidx.slidingpanelayout.widget.SlidingPaneLayout.class.getName());
            cVar.f0(view);
            java.lang.Object objS = w.q.s(view);
            if (objS instanceof android.view.View) {
                cVar.b0((android.view.View) objS);
            }
            int childCount = androidx.slidingpanelayout.widget.SlidingPaneLayout.this.getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                android.view.View childAt = androidx.slidingpanelayout.widget.SlidingPaneLayout.this.getChildAt(i5);
                if (!o(childAt) && childAt.getVisibility() == 0) {
                    w.q.V(childAt, 1);
                    cVar.c(childAt);
                }
            }
        }

        @Override // w.a
        public boolean i(android.view.ViewGroup viewGroup, android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            if (o(view)) {
                return false;
            }
            return super.i(viewGroup, view, accessibilityEvent);
        }

        public final void n(x.c cVar, x.c cVar2) {
            android.graphics.Rect rect = this.f2456d;
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
            cVar.Y(cVar2.o());
        }

        public boolean o(android.view.View view) {
            return androidx.slidingpanelayout.widget.SlidingPaneLayout.this.h(view);
        }
    }

    public class b implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.view.View f2458a;

        public b(android.view.View view) {
            this.f2458a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f2458a.getParent() == androidx.slidingpanelayout.widget.SlidingPaneLayout.this) {
                this.f2458a.setLayerType(0, null);
                androidx.slidingpanelayout.widget.SlidingPaneLayout.this.g(this.f2458a);
            }
            androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f2449y.remove(this);
        }
    }

    public class c extends z.a.c {
        public c() {
        }

        @Override // z.a.c
        public int a(android.view.View view, int i5, int i6) {
            androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams layoutParams = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f2436g.getLayoutParams();
            if (androidx.slidingpanelayout.widget.SlidingPaneLayout.this.i()) {
                int width = androidx.slidingpanelayout.widget.SlidingPaneLayout.this.getWidth() - ((androidx.slidingpanelayout.widget.SlidingPaneLayout.this.getPaddingRight() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f2436g.getWidth());
                return java.lang.Math.max(java.lang.Math.min(i5, width), width - androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f2439o);
            }
            int paddingLeft = androidx.slidingpanelayout.widget.SlidingPaneLayout.this.getPaddingLeft() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            return java.lang.Math.min(java.lang.Math.max(i5, paddingLeft), androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f2439o + paddingLeft);
        }

        @Override // z.a.c
        public int b(android.view.View view, int i5, int i6) {
            return view.getTop();
        }

        @Override // z.a.c
        public int d(android.view.View view) {
            return androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f2439o;
        }

        @Override // z.a.c
        public void f(int i5, int i6) {
            androidx.slidingpanelayout.widget.SlidingPaneLayout slidingPaneLayout = androidx.slidingpanelayout.widget.SlidingPaneLayout.this;
            slidingPaneLayout.f2445u.c(slidingPaneLayout.f2436g, i6);
        }

        @Override // z.a.c
        public void i(android.view.View view, int i5) {
            androidx.slidingpanelayout.widget.SlidingPaneLayout.this.p();
        }

        @Override // z.a.c
        public void j(int i5) {
            if (androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f2445u.A() == 0) {
                androidx.slidingpanelayout.widget.SlidingPaneLayout slidingPaneLayout = androidx.slidingpanelayout.widget.SlidingPaneLayout.this;
                if (slidingPaneLayout.f2437h != 0.0f) {
                    slidingPaneLayout.e(slidingPaneLayout.f2436g);
                    androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f2446v = true;
                } else {
                    slidingPaneLayout.r(slidingPaneLayout.f2436g);
                    androidx.slidingpanelayout.widget.SlidingPaneLayout slidingPaneLayout2 = androidx.slidingpanelayout.widget.SlidingPaneLayout.this;
                    slidingPaneLayout2.d(slidingPaneLayout2.f2436g);
                    androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f2446v = false;
                }
            }
        }

        @Override // z.a.c
        public void k(android.view.View view, int i5, int i6, int i7, int i8) {
            androidx.slidingpanelayout.widget.SlidingPaneLayout.this.l(i5);
            androidx.slidingpanelayout.widget.SlidingPaneLayout.this.invalidate();
        }

        @Override // z.a.c
        public void l(android.view.View view, float f5, float f6) {
            int paddingLeft;
            androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams layoutParams = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) view.getLayoutParams();
            if (androidx.slidingpanelayout.widget.SlidingPaneLayout.this.i()) {
                int paddingRight = androidx.slidingpanelayout.widget.SlidingPaneLayout.this.getPaddingRight() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                if (f5 < 0.0f || (f5 == 0.0f && androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f2437h > 0.5f)) {
                    paddingRight += androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f2439o;
                }
                paddingLeft = (androidx.slidingpanelayout.widget.SlidingPaneLayout.this.getWidth() - paddingRight) - androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f2436g.getWidth();
            } else {
                paddingLeft = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + androidx.slidingpanelayout.widget.SlidingPaneLayout.this.getPaddingLeft();
                if (f5 > 0.0f || (f5 == 0.0f && androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f2437h > 0.5f)) {
                    paddingLeft += androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f2439o;
                }
            }
            androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f2445u.N(paddingLeft, view.getTop());
            androidx.slidingpanelayout.widget.SlidingPaneLayout.this.invalidate();
        }

        @Override // z.a.c
        public boolean m(android.view.View view, int i5) {
            if (androidx.slidingpanelayout.widget.SlidingPaneLayout.this.f2440p) {
                return false;
            }
            return ((androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) view.getLayoutParams()).f2452b;
        }
    }

    public interface d {
        void a(android.view.View view, float f5);

        void b(android.view.View view);

        void c(android.view.View view);
    }

    public SlidingPaneLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static boolean s(android.view.View view) {
        return view.isOpaque();
    }

    public boolean a() {
        return b(this.f2436g, 0);
    }

    public final boolean b(android.view.View view, int i5) {
        if (!this.f2447w && !q(0.0f, i5)) {
            return false;
        }
        this.f2446v = false;
        return true;
    }

    public final void c(android.view.View view, float f5, int i5) {
        androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams layoutParams = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) view.getLayoutParams();
        if (f5 > 0.0f && i5 != 0) {
            int i6 = (((int) ((((-16777216) & i5) >>> 24) * f5)) << 24) | (i5 & 16777215);
            if (layoutParams.f2454d == null) {
                layoutParams.f2454d = new android.graphics.Paint();
            }
            layoutParams.f2454d.setColorFilter(new android.graphics.PorterDuffColorFilter(i6, android.graphics.PorterDuff.Mode.SRC_OVER));
            if (view.getLayerType() != 2) {
                view.setLayerType(2, layoutParams.f2454d);
            }
            g(view);
            return;
        }
        if (view.getLayerType() != 0) {
            android.graphics.Paint paint = layoutParams.f2454d;
            if (paint != null) {
                paint.setColorFilter(null);
            }
            androidx.slidingpanelayout.widget.SlidingPaneLayout.b bVar = new androidx.slidingpanelayout.widget.SlidingPaneLayout.b(view);
            this.f2449y.add(bVar);
            w.q.L(this, bVar);
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f2445u.n(true)) {
            if (this.f2435f) {
                w.q.K(this);
            } else {
                this.f2445u.a();
            }
        }
    }

    public void d(android.view.View view) {
        androidx.slidingpanelayout.widget.SlidingPaneLayout.d dVar = this.f2444t;
        if (dVar != null) {
            dVar.c(view);
        }
        sendAccessibilityEvent(32);
    }

    @Override // android.view.View
    public void draw(android.graphics.Canvas canvas) {
        int i5;
        int right;
        super.draw(canvas);
        android.graphics.drawable.Drawable drawable = i() ? this.f2433d : this.f2432c;
        android.view.View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt == null || drawable == null) {
            return;
        }
        int top = childAt.getTop();
        int bottom = childAt.getBottom();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (i()) {
            right = childAt.getRight();
            i5 = intrinsicWidth + right;
        } else {
            int left = childAt.getLeft();
            int i6 = left - intrinsicWidth;
            i5 = left;
            right = i6;
        }
        drawable.setBounds(right, top, i5, bottom);
        drawable.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(android.graphics.Canvas canvas, android.view.View view, long j5) {
        androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams layoutParams = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) view.getLayoutParams();
        int iSave = canvas.save();
        if (this.f2435f && !layoutParams.f2452b && this.f2436g != null) {
            canvas.getClipBounds(this.f2448x);
            if (i()) {
                android.graphics.Rect rect = this.f2448x;
                rect.left = java.lang.Math.max(rect.left, this.f2436g.getRight());
            } else {
                android.graphics.Rect rect2 = this.f2448x;
                rect2.right = java.lang.Math.min(rect2.right, this.f2436g.getLeft());
            }
            canvas.clipRect(this.f2448x);
        }
        boolean zDrawChild = super.drawChild(canvas, view, j5);
        canvas.restoreToCount(iSave);
        return zDrawChild;
    }

    public void e(android.view.View view) {
        androidx.slidingpanelayout.widget.SlidingPaneLayout.d dVar = this.f2444t;
        if (dVar != null) {
            dVar.b(view);
        }
        sendAccessibilityEvent(32);
    }

    public void f(android.view.View view) {
        androidx.slidingpanelayout.widget.SlidingPaneLayout.d dVar = this.f2444t;
        if (dVar != null) {
            dVar.a(view, this.f2437h);
        }
    }

    public void g(android.view.View view) {
        w.q.X(view, ((androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) view.getLayoutParams()).f2454d);
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams();
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof android.view.ViewGroup.MarginLayoutParams ? new androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams((android.view.ViewGroup.MarginLayoutParams) layoutParams) : new androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams(layoutParams);
    }

    public int getCoveredFadeColor() {
        return this.f2431b;
    }

    public int getParallaxDistance() {
        return this.f2441q;
    }

    public int getSliderFadeColor() {
        return this.f2430a;
    }

    public boolean h(android.view.View view) {
        if (view == null) {
            return false;
        }
        return this.f2435f && ((androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) view.getLayoutParams()).f2453c && this.f2437h > 0.0f;
    }

    public boolean i() {
        return w.q.p(this) == 1;
    }

    public boolean j() {
        return !this.f2435f || this.f2437h == 1.0f;
    }

    public boolean k() {
        return this.f2435f;
    }

    public void l(int i5) {
        if (this.f2436g == null) {
            this.f2437h = 0.0f;
            return;
        }
        boolean zI = i();
        androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams layoutParams = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) this.f2436g.getLayoutParams();
        int width = this.f2436g.getWidth();
        if (zI) {
            i5 = (getWidth() - i5) - width;
        }
        float paddingRight = (i5 - ((zI ? getPaddingRight() : getPaddingLeft()) + (zI ? ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin))) / this.f2439o;
        this.f2437h = paddingRight;
        if (this.f2441q != 0) {
            o(paddingRight);
        }
        if (layoutParams.f2453c) {
            c(this.f2436g, this.f2437h, this.f2430a);
        }
        f(this.f2436g);
    }

    public boolean m() {
        return n(this.f2436g, 0);
    }

    public final boolean n(android.view.View view, int i5) {
        if (!this.f2447w && !q(1.0f, i5)) {
            return false;
        }
        this.f2446v = true;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001c  */
    public final void o(float f5) {
        boolean z4;
        boolean zI = i();
        androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams layoutParams = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) this.f2436g.getLayoutParams();
        if (!layoutParams.f2453c) {
            z4 = false;
        } else if ((zI ? ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin) <= 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            if (childAt != this.f2436g) {
                float f6 = 1.0f - this.f2438i;
                int i6 = this.f2441q;
                this.f2438i = f5;
                int i7 = ((int) (f6 * i6)) - ((int) ((1.0f - f5) * i6));
                if (zI) {
                    i7 = -i7;
                }
                childAt.offsetLeftAndRight(i7);
                if (z4) {
                    float f7 = this.f2438i;
                    c(childAt, zI ? f7 - 1.0f : 1.0f - f7, this.f2431b);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f2447w = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f2447w = true;
        int size = this.f2449y.size();
        for (int i5 = 0; i5 < size; i5++) {
            this.f2449y.get(i5).run();
        }
        this.f2449y.clear();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(android.view.MotionEvent motionEvent) {
        boolean z4;
        android.view.View childAt;
        int actionMasked = motionEvent.getActionMasked();
        if (!this.f2435f && actionMasked == 0 && getChildCount() > 1 && (childAt = getChildAt(1)) != null) {
            this.f2446v = !this.f2445u.E(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (!this.f2435f || (this.f2440p && actionMasked != 0)) {
            this.f2445u.b();
            return super.onInterceptTouchEvent(motionEvent);
        }
        if (actionMasked == 3 || actionMasked == 1) {
            this.f2445u.b();
            return false;
        }
        if (actionMasked == 0) {
            this.f2440p = false;
            float x4 = motionEvent.getX();
            float y4 = motionEvent.getY();
            this.f2442r = x4;
            this.f2443s = y4;
            if (this.f2445u.E(this.f2436g, (int) x4, (int) y4) && h(this.f2436g)) {
                z4 = true;
            }
            return this.f2445u.O(motionEvent) || z4;
        }
        if (actionMasked == 2) {
            float x5 = motionEvent.getX();
            float y5 = motionEvent.getY();
            float fAbs = java.lang.Math.abs(x5 - this.f2442r);
            float fAbs2 = java.lang.Math.abs(y5 - this.f2443s);
            if (fAbs > this.f2445u.z() && fAbs2 > fAbs) {
                this.f2445u.b();
                this.f2440p = true;
                return false;
            }
        }
        z4 = false;
        if (this.f2445u.O(motionEvent)) {
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int i9;
        int i10;
        int i11;
        int i12;
        boolean zI = i();
        if (zI) {
            this.f2445u.L(2);
        } else {
            this.f2445u.L(1);
        }
        int i13 = i7 - i5;
        int paddingRight = zI ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = zI ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.f2447w) {
            this.f2437h = (this.f2435f && this.f2446v) ? 1.0f : 0.0f;
        }
        int i14 = paddingRight;
        for (int i15 = 0; i15 < childCount; i15++) {
            android.view.View childAt = getChildAt(i15);
            if (childAt.getVisibility() != 8) {
                androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams layoutParams = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.f2452b) {
                    int i16 = i13 - paddingLeft;
                    int iMin = (java.lang.Math.min(paddingRight, i16 - this.f2434e) - i14) - (((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                    this.f2439o = iMin;
                    int i17 = zI ? ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    layoutParams.f2453c = ((i14 + i17) + iMin) + (measuredWidth / 2) > i16;
                    int i18 = (int) (iMin * this.f2437h);
                    i14 += i17 + i18;
                    this.f2437h = i18 / iMin;
                    i9 = 0;
                } else if (!this.f2435f || (i10 = this.f2441q) == 0) {
                    i14 = paddingRight;
                    i9 = 0;
                } else {
                    i9 = (int) ((1.0f - this.f2437h) * i10);
                    i14 = paddingRight;
                }
                if (zI) {
                    i12 = (i13 - i14) + i9;
                    i11 = i12 - measuredWidth;
                } else {
                    i11 = i14 - i9;
                    i12 = i11 + measuredWidth;
                }
                childAt.layout(i11, paddingTop, i12, childAt.getMeasuredHeight() + paddingTop);
                paddingRight += childAt.getWidth();
            }
        }
        if (this.f2447w) {
            if (this.f2435f) {
                if (this.f2441q != 0) {
                    o(this.f2437h);
                }
                if (((androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) this.f2436g.getLayoutParams()).f2453c) {
                    c(this.f2436g, this.f2437h, this.f2430a);
                }
            } else {
                for (int i19 = 0; i19 < childCount; i19++) {
                    c(getChildAt(i19), 0.0f, this.f2430a);
                }
            }
            r(this.f2436g);
        }
        this.f2447w = false;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00ad A[PHI: r13
  0x00ad: PHI (r13v2 float) = (r13v1 float), (r13v8 float) binds: [B:36:0x00a4, B:38:0x00a9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:42:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:46:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:50:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:51:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:58:0x0103 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:62:0x010c  */
    /* JADX WARN: Code duplicated, block: B:63:0x010f  */
    /* JADX WARN: Code duplicated, block: B:66:0x0115  */
    /* JADX WARN: Code duplicated, block: B:76:0x013a  */
    @Override // android.view.View
    public void onMeasure(int i5, int i6) {
        int paddingTop;
        int iMin;
        int i7;
        int iMakeMeasureSpec;
        int i8;
        int i9;
        int iMakeMeasureSpec2;
        int i10;
        int i11;
        float f5;
        int i12;
        int iMakeMeasureSpec3;
        int iMakeMeasureSpec4;
        int i13;
        int iMakeMeasureSpec5;
        int iMakeMeasureSpec6;
        int measuredHeight;
        boolean z4;
        int mode = android.view.View.MeasureSpec.getMode(i5);
        int size = android.view.View.MeasureSpec.getSize(i5);
        int mode2 = android.view.View.MeasureSpec.getMode(i6);
        int size2 = android.view.View.MeasureSpec.getSize(i6);
        if (mode != 1073741824) {
            if (!isInEditMode()) {
                throw new java.lang.IllegalStateException("Width must have an exact value or MATCH_PARENT");
            }
            if (mode != Integer.MIN_VALUE && mode == 0) {
                size = 300;
            }
        } else if (mode2 == 0) {
            if (!isInEditMode()) {
                throw new java.lang.IllegalStateException("Height must not be UNSPECIFIED");
            }
            if (mode2 == 0) {
                size2 = 300;
                mode2 = Integer.MIN_VALUE;
            }
        }
        boolean z5 = false;
        if (mode2 != Integer.MIN_VALUE) {
            iMin = mode2 != 1073741824 ? 0 : (size2 - getPaddingTop()) - getPaddingBottom();
            paddingTop = iMin;
        } else {
            paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            iMin = 0;
        }
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int childCount = getChildCount();
        if (childCount > 2) {
            android.util.Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        this.f2436g = null;
        int i14 = 0;
        boolean z6 = false;
        int i15 = paddingLeft;
        float f6 = 0.0f;
        while (true) {
            i7 = 8;
            if (i14 >= childCount) {
                break;
            }
            android.view.View childAt = getChildAt(i14);
            androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams layoutParams = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.f2453c = z5;
            } else {
                float f7 = layoutParams.f2451a;
                if (f7 > 0.0f) {
                    f6 += f7;
                    if (((android.view.ViewGroup.MarginLayoutParams) layoutParams).width != 0) {
                        i10 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        i11 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width;
                        if (i11 == -2) {
                            iMakeMeasureSpec4 = android.view.View.MeasureSpec.makeMeasureSpec(paddingLeft - i10, Integer.MIN_VALUE);
                            f5 = f6;
                            i12 = Integer.MIN_VALUE;
                        } else {
                            f5 = f6;
                            i12 = Integer.MIN_VALUE;
                            if (i11 == -1) {
                                iMakeMeasureSpec4 = android.view.View.MeasureSpec.makeMeasureSpec(paddingLeft - i10, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                            } else {
                                iMakeMeasureSpec3 = android.view.View.MeasureSpec.makeMeasureSpec(i11, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                            }
                            i13 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height;
                            if (i13 == -2) {
                                iMakeMeasureSpec6 = android.view.View.MeasureSpec.makeMeasureSpec(paddingTop, i12);
                            } else {
                                if (i13 == -1) {
                                    iMakeMeasureSpec5 = android.view.View.MeasureSpec.makeMeasureSpec(paddingTop, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                                } else {
                                    iMakeMeasureSpec5 = android.view.View.MeasureSpec.makeMeasureSpec(i13, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                                }
                                iMakeMeasureSpec6 = iMakeMeasureSpec5;
                            }
                            childAt.measure(iMakeMeasureSpec3, iMakeMeasureSpec6);
                            int measuredWidth = childAt.getMeasuredWidth();
                            measuredHeight = childAt.getMeasuredHeight();
                            if (mode2 == i12 && measuredHeight > iMin) {
                                iMin = java.lang.Math.min(measuredHeight, paddingTop);
                            }
                            i15 -= measuredWidth;
                            if (i15 < 0) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            layoutParams.f2452b = z4;
                            z6 |= z4;
                            if (z4) {
                                this.f2436g = childAt;
                            }
                            f6 = f5;
                        }
                        iMakeMeasureSpec3 = iMakeMeasureSpec4;
                        i13 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height;
                        if (i13 == -2) {
                            iMakeMeasureSpec6 = android.view.View.MeasureSpec.makeMeasureSpec(paddingTop, i12);
                        } else {
                            if (i13 == -1) {
                                iMakeMeasureSpec5 = android.view.View.MeasureSpec.makeMeasureSpec(paddingTop, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                            } else {
                                iMakeMeasureSpec5 = android.view.View.MeasureSpec.makeMeasureSpec(i13, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                            }
                            iMakeMeasureSpec6 = iMakeMeasureSpec5;
                        }
                        childAt.measure(iMakeMeasureSpec3, iMakeMeasureSpec6);
                        int measuredWidth2 = childAt.getMeasuredWidth();
                        measuredHeight = childAt.getMeasuredHeight();
                        if (mode2 == i12) {
                            iMin = java.lang.Math.min(measuredHeight, paddingTop);
                        }
                        i15 -= measuredWidth2;
                        if (i15 < 0) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        layoutParams.f2452b = z4;
                        z6 |= z4;
                        if (z4) {
                            this.f2436g = childAt;
                        }
                        f6 = f5;
                    }
                } else {
                    i10 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    i11 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width;
                    if (i11 == -2) {
                        iMakeMeasureSpec4 = android.view.View.MeasureSpec.makeMeasureSpec(paddingLeft - i10, Integer.MIN_VALUE);
                        f5 = f6;
                        i12 = Integer.MIN_VALUE;
                    } else {
                        f5 = f6;
                        i12 = Integer.MIN_VALUE;
                        if (i11 == -1) {
                            iMakeMeasureSpec4 = android.view.View.MeasureSpec.makeMeasureSpec(paddingLeft - i10, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                        } else {
                            iMakeMeasureSpec3 = android.view.View.MeasureSpec.makeMeasureSpec(i11, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                        }
                        i13 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height;
                        if (i13 == -2) {
                            iMakeMeasureSpec6 = android.view.View.MeasureSpec.makeMeasureSpec(paddingTop, i12);
                        } else {
                            if (i13 == -1) {
                                iMakeMeasureSpec5 = android.view.View.MeasureSpec.makeMeasureSpec(paddingTop, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                            } else {
                                iMakeMeasureSpec5 = android.view.View.MeasureSpec.makeMeasureSpec(i13, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                            }
                            iMakeMeasureSpec6 = iMakeMeasureSpec5;
                        }
                        childAt.measure(iMakeMeasureSpec3, iMakeMeasureSpec6);
                        int measuredWidth3 = childAt.getMeasuredWidth();
                        measuredHeight = childAt.getMeasuredHeight();
                        if (mode2 == i12) {
                            iMin = java.lang.Math.min(measuredHeight, paddingTop);
                        }
                        i15 -= measuredWidth3;
                        if (i15 < 0) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        layoutParams.f2452b = z4;
                        z6 |= z4;
                        if (z4) {
                            this.f2436g = childAt;
                        }
                        f6 = f5;
                    }
                    iMakeMeasureSpec3 = iMakeMeasureSpec4;
                    i13 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height;
                    if (i13 == -2) {
                        iMakeMeasureSpec6 = android.view.View.MeasureSpec.makeMeasureSpec(paddingTop, i12);
                    } else {
                        if (i13 == -1) {
                            iMakeMeasureSpec5 = android.view.View.MeasureSpec.makeMeasureSpec(paddingTop, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                        } else {
                            iMakeMeasureSpec5 = android.view.View.MeasureSpec.makeMeasureSpec(i13, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                        }
                        iMakeMeasureSpec6 = iMakeMeasureSpec5;
                    }
                    childAt.measure(iMakeMeasureSpec3, iMakeMeasureSpec6);
                    int measuredWidth4 = childAt.getMeasuredWidth();
                    measuredHeight = childAt.getMeasuredHeight();
                    if (mode2 == i12) {
                        iMin = java.lang.Math.min(measuredHeight, paddingTop);
                    }
                    i15 -= measuredWidth4;
                    if (i15 < 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    layoutParams.f2452b = z4;
                    z6 |= z4;
                    if (z4) {
                        this.f2436g = childAt;
                    }
                    f6 = f5;
                }
            }
            i14++;
            z5 = false;
        }
        if (z6 || f6 > 0.0f) {
            int i16 = paddingLeft - this.f2434e;
            int i17 = 0;
            while (i17 < childCount) {
                android.view.View childAt2 = getChildAt(i17);
                if (childAt2.getVisibility() == i7) {
                    i8 = i16;
                } else {
                    androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams layoutParams2 = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != i7) {
                        boolean z7 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).width == 0 && layoutParams2.f2451a > 0.0f;
                        int measuredWidth5 = z7 ? 0 : childAt2.getMeasuredWidth();
                        if (!z6 || childAt2 == this.f2436g) {
                            if (layoutParams2.f2451a > 0.0f) {
                                if (((android.view.ViewGroup.MarginLayoutParams) layoutParams2).width == 0) {
                                    int i18 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).height;
                                    if (i18 == -2) {
                                        iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE);
                                    } else {
                                        iMakeMeasureSpec = i18 == -1 ? android.view.View.MeasureSpec.makeMeasureSpec(paddingTop, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY) : android.view.View.MeasureSpec.makeMeasureSpec(i18, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                                    }
                                } else {
                                    iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                                }
                                if (z6) {
                                    int i19 = paddingLeft - (((android.view.ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
                                    i8 = i16;
                                    int iMakeMeasureSpec7 = android.view.View.MeasureSpec.makeMeasureSpec(i19, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                                    if (measuredWidth5 != i19) {
                                        childAt2.measure(iMakeMeasureSpec7, iMakeMeasureSpec);
                                    }
                                } else {
                                    i8 = i16;
                                    childAt2.measure(android.view.View.MeasureSpec.makeMeasureSpec(measuredWidth5 + ((int) ((layoutParams2.f2451a * java.lang.Math.max(0, i15)) / f6)), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), iMakeMeasureSpec);
                                }
                            }
                        } else if (((android.view.ViewGroup.MarginLayoutParams) layoutParams2).width < 0 && (measuredWidth5 > i16 || layoutParams2.f2451a > 0.0f)) {
                            if (z7) {
                                int i20 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).height;
                                if (i20 == -2) {
                                    iMakeMeasureSpec2 = android.view.View.MeasureSpec.makeMeasureSpec(paddingTop, Integer.MIN_VALUE);
                                    i9 = com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY;
                                } else if (i20 == -1) {
                                    i9 = com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY;
                                    iMakeMeasureSpec2 = android.view.View.MeasureSpec.makeMeasureSpec(paddingTop, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                                } else {
                                    i9 = com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY;
                                    iMakeMeasureSpec2 = android.view.View.MeasureSpec.makeMeasureSpec(i20, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                                }
                            } else {
                                i9 = com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY;
                                iMakeMeasureSpec2 = android.view.View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                            }
                            childAt2.measure(android.view.View.MeasureSpec.makeMeasureSpec(i16, i9), iMakeMeasureSpec2);
                        }
                        i8 = i16;
                    } else {
                        i8 = i16;
                    }
                }
                i17++;
                i16 = i8;
                i7 = 8;
            }
        }
        setMeasuredDimension(size, iMin + getPaddingTop() + getPaddingBottom());
        this.f2435f = z6;
        if (this.f2445u.A() == 0 || z6) {
            return;
        }
        this.f2445u.a();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        if (!(parcelable instanceof androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState savedState = (androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        if (savedState.f2455a) {
            m();
        } else {
            a();
        }
        this.f2446v = savedState.f2455a;
    }

    @Override // android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState savedState = new androidx.slidingpanelayout.widget.SlidingPaneLayout.SavedState(super.onSaveInstanceState());
        savedState.f2455a = k() ? j() : this.f2446v;
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i5, int i6, int i7, int i8) {
        super.onSizeChanged(i5, i6, i7, i8);
        if (i5 != i7) {
            this.f2447w = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        if (!this.f2435f) {
            return super.onTouchEvent(motionEvent);
        }
        this.f2445u.F(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x4 = motionEvent.getX();
            float y4 = motionEvent.getY();
            this.f2442r = x4;
            this.f2443s = y4;
        } else if (actionMasked == 1 && h(this.f2436g)) {
            float x5 = motionEvent.getX();
            float y5 = motionEvent.getY();
            float f5 = x5 - this.f2442r;
            float f6 = y5 - this.f2443s;
            int iZ = this.f2445u.z();
            if ((f5 * f5) + (f6 * f6) < iZ * iZ && this.f2445u.E(this.f2436g, (int) x5, (int) y5)) {
                b(this.f2436g, 0);
            }
        }
        return true;
    }

    public void p() {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    public boolean q(float f5, int i5) {
        int paddingLeft;
        if (!this.f2435f) {
            return false;
        }
        boolean zI = i();
        androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams layoutParams = (androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams) this.f2436g.getLayoutParams();
        if (zI) {
            paddingLeft = (int) (getWidth() - (((getPaddingRight() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + (f5 * this.f2439o)) + this.f2436g.getWidth()));
        } else {
            paddingLeft = (int) (getPaddingLeft() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + (f5 * this.f2439o));
        }
        z.a aVar = this.f2445u;
        android.view.View view = this.f2436g;
        if (!aVar.P(view, paddingLeft, view.getTop())) {
            return false;
        }
        p();
        w.q.K(this);
        return true;
    }

    public void r(android.view.View view) {
        int left;
        int right;
        int top;
        int bottom;
        android.view.View childAt;
        android.view.View view2 = view;
        boolean zI = i();
        int width = zI ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = zI ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (view2 == null || !s(view)) {
            left = 0;
            right = 0;
            top = 0;
            bottom = 0;
        } else {
            left = view.getLeft();
            right = view.getRight();
            top = view.getTop();
            bottom = view.getBottom();
        }
        int childCount = getChildCount();
        int i5 = 0;
        while (i5 < childCount && (childAt = getChildAt(i5)) != view2) {
            if (childAt.getVisibility() != 8) {
                childAt.setVisibility((java.lang.Math.max(zI ? paddingLeft : width, childAt.getLeft()) < left || java.lang.Math.max(paddingTop, childAt.getTop()) < top || java.lang.Math.min(zI ? width : paddingLeft, childAt.getRight()) > right || java.lang.Math.min(height, childAt.getBottom()) > bottom) ? 0 : 4);
            }
            i5++;
            view2 = view;
            zI = zI;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(android.view.View view, android.view.View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() || this.f2435f) {
            return;
        }
        this.f2446v = view == this.f2436g;
    }

    public void setCoveredFadeColor(int i5) {
        this.f2431b = i5;
    }

    public void setPanelSlideListener(androidx.slidingpanelayout.widget.SlidingPaneLayout.d dVar) {
        this.f2444t = dVar;
    }

    public void setParallaxDistance(int i5) {
        this.f2441q = i5;
        requestLayout();
    }

    @java.lang.Deprecated
    public void setShadowDrawable(android.graphics.drawable.Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(android.graphics.drawable.Drawable drawable) {
        this.f2432c = drawable;
    }

    public void setShadowDrawableRight(android.graphics.drawable.Drawable drawable) {
        this.f2433d = drawable;
    }

    @java.lang.Deprecated
    public void setShadowResource(int i5) {
        setShadowDrawable(getResources().getDrawable(i5));
    }

    public void setShadowResourceLeft(int i5) {
        setShadowDrawableLeft(androidx.core.content.a.b(getContext(), i5));
    }

    public void setShadowResourceRight(int i5) {
        setShadowDrawableRight(androidx.core.content.a.b(getContext(), i5));
    }

    public void setSliderFadeColor(int i5) {
        this.f2430a = i5;
    }

    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int[] f2450e = {android.R.attr.layout_weight};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f2451a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f2452b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f2453c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public android.graphics.Paint f2454d;

        public LayoutParams() {
            super(-1, -1);
            this.f2451a = 0.0f;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2451a = 0.0f;
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2451a = 0.0f;
        }

        public LayoutParams(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2451a = 0.0f;
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f2450e);
            this.f2451a = typedArrayObtainStyledAttributes.getFloat(0, 0.0f);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public SlidingPaneLayout(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.f2430a = -858993460;
        this.f2447w = true;
        this.f2448x = new android.graphics.Rect();
        this.f2449y = new java.util.ArrayList<>();
        float f5 = context.getResources().getDisplayMetrics().density;
        this.f2434e = (int) ((32.0f * f5) + 0.5f);
        setWillNotDraw(false);
        w.q.Q(this, new androidx.slidingpanelayout.widget.SlidingPaneLayout.a());
        w.q.V(this, 1);
        z.a aVarO = z.a.o(this, 0.5f, new androidx.slidingpanelayout.widget.SlidingPaneLayout.c());
        this.f2445u = aVarO;
        aVarO.M(f5 * 400.0f);
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams(getContext(), attributeSet);
    }
}
