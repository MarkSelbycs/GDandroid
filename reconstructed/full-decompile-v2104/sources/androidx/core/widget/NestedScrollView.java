package androidx.core.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class NestedScrollView extends android.widget.FrameLayout implements w.l {
    public static final float G = (float) (java.lang.Math.log(0.78d) / java.lang.Math.log(0.9d));
    public static final androidx.core.widget.NestedScrollView.a H = new androidx.core.widget.NestedScrollView.a();
    public static final int[] I = {android.R.attr.fillViewport};
    public int A;
    public androidx.core.widget.NestedScrollView.SavedState B;
    public final w.m C;
    public final w.j D;
    public float E;
    public androidx.core.widget.NestedScrollView.c F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f1395a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f1396b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.graphics.Rect f1397c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.widget.OverScroller f1398d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public android.widget.EdgeEffect f1399e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public android.widget.EdgeEffect f1400f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1401g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1402h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1403i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public android.view.View f1404o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1405p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public android.view.VelocityTracker f1406q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1407r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1408s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1409t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1410u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1411v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f1412w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int[] f1413x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int[] f1414y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f1415z;

    public static class SavedState extends android.view.View.BaseSavedState {
        public static final android.os.Parcelable.Creator<androidx.core.widget.NestedScrollView.SavedState> CREATOR = new androidx.core.widget.NestedScrollView.SavedState.a();
        public int scrollPosition;

        public class a implements android.os.Parcelable.Creator<androidx.core.widget.NestedScrollView.SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public androidx.core.widget.NestedScrollView.SavedState createFromParcel(android.os.Parcel parcel) {
                return new androidx.core.widget.NestedScrollView.SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public androidx.core.widget.NestedScrollView.SavedState[] newArray(int i5) {
                return new androidx.core.widget.NestedScrollView.SavedState[i5];
            }
        }

        public SavedState(android.os.Parcelable parcelable) {
            super(parcelable);
        }

        public java.lang.String toString() {
            return "HorizontalScrollView.SavedState{" + java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)) + " scrollPosition=" + this.scrollPosition + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i5) {
            super.writeToParcel(parcel, i5);
            parcel.writeInt(this.scrollPosition);
        }

        public SavedState(android.os.Parcel parcel) {
            super(parcel);
            this.scrollPosition = parcel.readInt();
        }
    }

    public static class a extends w.a {
        @Override // w.a
        public void f(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            super.f(view, accessibilityEvent);
            androidx.core.widget.NestedScrollView nestedScrollView = (androidx.core.widget.NestedScrollView) view;
            accessibilityEvent.setClassName(android.widget.ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            x.e.a(accessibilityEvent, nestedScrollView.getScrollX());
            x.e.b(accessibilityEvent, nestedScrollView.getScrollRange());
        }

        @Override // w.a
        public void g(android.view.View view, x.c cVar) {
            int scrollRange;
            super.g(view, cVar);
            androidx.core.widget.NestedScrollView nestedScrollView = (androidx.core.widget.NestedScrollView) view;
            cVar.O(android.widget.ScrollView.class.getName());
            if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
                return;
            }
            cVar.d0(true);
            if (nestedScrollView.getScrollY() > 0) {
                cVar.b(x.c.a.f6757r);
                cVar.b(x.c.a.C);
            }
            if (nestedScrollView.getScrollY() < scrollRange) {
                cVar.b(x.c.a.f6756q);
                cVar.b(x.c.a.E);
            }
        }

        @Override // w.a
        public boolean j(android.view.View view, int i5, android.os.Bundle bundle) {
            if (super.j(view, i5, bundle)) {
                return true;
            }
            androidx.core.widget.NestedScrollView nestedScrollView = (androidx.core.widget.NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            int height = nestedScrollView.getHeight();
            android.graphics.Rect rect = new android.graphics.Rect();
            if (nestedScrollView.getMatrix().isIdentity() && nestedScrollView.getGlobalVisibleRect(rect)) {
                height = rect.height();
            }
            if (i5 != 4096) {
                if (i5 == 8192 || i5 == 16908344) {
                    int iMax = java.lang.Math.max(nestedScrollView.getScrollY() - ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (iMax == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.T(0, iMax, true);
                    return true;
                }
                if (i5 != 16908346) {
                    return false;
                }
            }
            int iMin = java.lang.Math.min(nestedScrollView.getScrollY() + ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
            if (iMin == nestedScrollView.getScrollY()) {
                return false;
            }
            nestedScrollView.T(0, iMin, true);
            return true;
        }
    }

    public static class b {
        public static boolean a(android.view.ViewGroup viewGroup) {
            return viewGroup.getClipToPadding();
        }
    }

    public interface c {
        void a(androidx.core.widget.NestedScrollView nestedScrollView, int i5, int i6, int i7, int i8);
    }

    public NestedScrollView(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, androidx.core.R.attr.nestedScrollViewStyle);
    }

    public static boolean D(android.view.View view, android.view.View view2) {
        if (view == view2) {
            return true;
        }
        java.lang.Object parent = view.getParent();
        return (parent instanceof android.view.ViewGroup) && D((android.view.View) parent, view2);
    }

    private float getVerticalScrollFactorCompat() {
        if (this.E == 0.0f) {
            android.util.TypedValue typedValue = new android.util.TypedValue();
            android.content.Context context = getContext();
            if (!context.getTheme().resolveAttribute(android.R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new java.lang.IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.E = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.E;
    }

    public static int k(int i5, int i6, int i7) {
        if (i6 >= i7 || i5 < 0) {
            return 0;
        }
        return i6 + i5 > i7 ? i7 - i6 : i5;
    }

    public final void A() {
        this.f1398d = new android.widget.OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(getContext());
        this.f1409t = viewConfiguration.getScaledTouchSlop();
        this.f1410u = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f1411v = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    public final void B() {
        if (this.f1406q == null) {
            this.f1406q = android.view.VelocityTracker.obtain();
        }
    }

    public final boolean C(android.view.View view) {
        return !E(view, 0, getHeight());
    }

    public final boolean E(android.view.View view, int i5, int i6) {
        view.getDrawingRect(this.f1397c);
        offsetDescendantRectToMyCoords(view, this.f1397c);
        return this.f1397c.bottom + i5 >= getScrollY() && this.f1397c.top - i5 <= getScrollY() + i6;
    }

    public final void F(int i5, int i6, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i5);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.D.e(0, scrollY2, 0, i5 - scrollY2, null, i6, iArr);
    }

    public final void G(android.view.MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f1412w) {
            int i5 = actionIndex == 0 ? 1 : 0;
            this.f1401g = (int) motionEvent.getY(i5);
            this.f1412w = motionEvent.getPointerId(i5);
            android.view.VelocityTracker velocityTracker = this.f1406q;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public boolean H(int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, boolean z4) {
        boolean z5;
        boolean z6;
        int overScrollMode = getOverScrollMode();
        boolean z7 = computeHorizontalScrollRange() > computeHorizontalScrollExtent();
        boolean z8 = computeVerticalScrollRange() > computeVerticalScrollExtent();
        boolean z9 = overScrollMode == 0 || (overScrollMode == 1 && z7);
        boolean z10 = overScrollMode == 0 || (overScrollMode == 1 && z8);
        int i13 = i7 + i5;
        int i14 = !z9 ? 0 : i11;
        int i15 = i8 + i6;
        int i16 = !z10 ? 0 : i12;
        int i17 = -i14;
        int i18 = i14 + i9;
        int i19 = -i16;
        int i20 = i16 + i10;
        if (i13 > i18) {
            i13 = i18;
            z5 = true;
        } else if (i13 < i17) {
            z5 = true;
            i13 = i17;
        } else {
            z5 = false;
        }
        if (i15 > i20) {
            i15 = i20;
            z6 = true;
        } else if (i15 < i19) {
            z6 = true;
            i15 = i19;
        } else {
            z6 = false;
        }
        if (z6 && !x(1)) {
            this.f1398d.springBack(i13, i15, 0, 0, 0, getScrollRange());
        }
        onOverScrolled(i13, i15, z5, z6);
        return z5 || z6;
    }

    public boolean I(int i5) {
        boolean z4 = i5 == 130;
        int height = getHeight();
        if (z4) {
            this.f1397c.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                android.view.View childAt = getChildAt(childCount - 1);
                int bottom = childAt.getBottom() + ((android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
                android.graphics.Rect rect = this.f1397c;
                if (rect.top + height > bottom) {
                    rect.top = bottom - height;
                }
            }
        } else {
            this.f1397c.top = getScrollY() - height;
            android.graphics.Rect rect2 = this.f1397c;
            if (rect2.top < 0) {
                rect2.top = 0;
            }
        }
        android.graphics.Rect rect3 = this.f1397c;
        int i6 = rect3.top;
        int i7 = height + i6;
        rect3.bottom = i7;
        return M(i5, i6, i7);
    }

    public final void J() {
        android.view.VelocityTracker velocityTracker = this.f1406q;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f1406q = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0060  */
    public final int K(int i5, float f5) {
        float fD;
        int iRound;
        float width = f5 / getWidth();
        float height = i5 / getHeight();
        float f6 = 0.0f;
        if (androidx.core.widget.f.b(this.f1399e) == 0.0f) {
            if (androidx.core.widget.f.b(this.f1400f) != 0.0f) {
                fD = androidx.core.widget.f.d(this.f1400f, height, 1.0f - width);
                if (androidx.core.widget.f.b(this.f1400f) == 0.0f) {
                    this.f1400f.onRelease();
                }
            }
            iRound = java.lang.Math.round(f6 * getHeight());
            if (iRound != 0) {
                invalidate();
            }
            return iRound;
        }
        fD = -androidx.core.widget.f.d(this.f1399e, -height, width);
        if (androidx.core.widget.f.b(this.f1399e) == 0.0f) {
            this.f1399e.onRelease();
        }
        f6 = fD;
        iRound = java.lang.Math.round(f6 * getHeight());
        if (iRound != 0) {
            invalidate();
        }
        return iRound;
    }

    public final void L(boolean z4) {
        if (z4) {
            U(2, 1);
        } else {
            W(1);
        }
        this.A = getScrollY();
        w.q.K(this);
    }

    public final boolean M(int i5, int i6, int i7) {
        int height = getHeight();
        int scrollY = getScrollY();
        int i8 = height + scrollY;
        boolean z4 = false;
        boolean z5 = i5 == 33;
        android.view.View viewT = t(z5, i6, i7);
        if (viewT == null) {
            viewT = this;
        }
        if (i6 < scrollY || i7 > i8) {
            p(z5 ? i6 - scrollY : i7 - i8);
            z4 = true;
        }
        if (viewT != findFocus()) {
            viewT.requestFocus(i5);
        }
        return z4;
    }

    public final void N(android.view.View view) {
        view.getDrawingRect(this.f1397c);
        offsetDescendantRectToMyCoords(view, this.f1397c);
        int iL = l(this.f1397c);
        if (iL != 0) {
            scrollBy(0, iL);
        }
    }

    public final boolean O(android.graphics.Rect rect, boolean z4) {
        int iL = l(rect);
        boolean z5 = iL != 0;
        if (z5) {
            if (z4) {
                scrollBy(0, iL);
            } else {
                Q(0, iL);
            }
        }
        return z5;
    }

    public final boolean P(android.widget.EdgeEffect edgeEffect, int i5) {
        if (i5 > 0) {
            return true;
        }
        return w(-i5) < androidx.core.widget.f.b(edgeEffect) * ((float) getHeight());
    }

    public final void Q(int i5, int i6) {
        R(i5, i6, 250, false);
    }

    public final void R(int i5, int i6, int i7, boolean z4) {
        if (getChildCount() == 0) {
            return;
        }
        if (android.view.animation.AnimationUtils.currentAnimationTimeMillis() - this.f1396b > 250) {
            android.view.View childAt = getChildAt(0);
            android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            this.f1398d.startScroll(getScrollX(), scrollY, 0, java.lang.Math.max(0, java.lang.Math.min(i6 + scrollY, java.lang.Math.max(0, height - height2))) - scrollY, i7);
            L(z4);
        } else {
            if (!this.f1398d.isFinished()) {
                g();
            }
            scrollBy(i5, i6);
        }
        this.f1396b = android.view.animation.AnimationUtils.currentAnimationTimeMillis();
    }

    public void S(int i5, int i6, int i7, boolean z4) {
        R(i5 - getScrollX(), i6 - getScrollY(), i7, z4);
    }

    public void T(int i5, int i6, boolean z4) {
        S(i5, i6, 250, z4);
    }

    public boolean U(int i5, int i6) {
        return this.D.p(i5, i6);
    }

    public final boolean V(android.view.MotionEvent motionEvent) {
        boolean z4;
        if (androidx.core.widget.f.b(this.f1399e) != 0.0f) {
            androidx.core.widget.f.d(this.f1399e, 0.0f, motionEvent.getX() / getWidth());
            z4 = true;
        } else {
            z4 = false;
        }
        if (androidx.core.widget.f.b(this.f1400f) == 0.0f) {
            return z4;
        }
        androidx.core.widget.f.d(this.f1400f, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    public void W(int i5) {
        this.D.r(i5);
    }

    @Override // w.k
    public void a(android.view.View view, android.view.View view2, int i5, int i6) {
        this.C.c(view, view2, i5, i6);
        U(2, i6);
    }

    @Override // android.view.ViewGroup
    public void addView(android.view.View view) {
        if (getChildCount() > 0) {
            throw new java.lang.IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // w.k
    public void b(android.view.View view, int i5) {
        this.C.e(view, i5);
        W(i5);
    }

    @Override // w.k
    public void c(android.view.View view, int i5, int i6, int[] iArr, int i7) {
        n(i5, i6, iArr, null, i7);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f1398d.isFinished()) {
            return;
        }
        this.f1398d.computeScrollOffset();
        int currY = this.f1398d.getCurrY();
        int iM = m(currY - this.A);
        this.A = currY;
        int[] iArr = this.f1414y;
        boolean z4 = false;
        iArr[1] = 0;
        n(0, iM, iArr, null, 1);
        int i5 = iM - this.f1414y[1];
        int scrollRange = getScrollRange();
        if (i5 != 0) {
            int scrollY = getScrollY();
            H(0, i5, getScrollX(), scrollY, 0, scrollRange, 0, 0, false);
            int scrollY2 = getScrollY() - scrollY;
            int i6 = i5 - scrollY2;
            int[] iArr2 = this.f1414y;
            iArr2[1] = 0;
            o(0, scrollY2, 0, i6, this.f1413x, 1, iArr2);
            i5 = i6 - this.f1414y[1];
        }
        if (i5 != 0) {
            int overScrollMode = getOverScrollMode();
            if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                z4 = true;
            }
            if (z4) {
                if (i5 < 0) {
                    if (this.f1399e.isFinished()) {
                        this.f1399e.onAbsorb((int) this.f1398d.getCurrVelocity());
                    }
                } else if (this.f1400f.isFinished()) {
                    this.f1400f.onAbsorb((int) this.f1398d.getCurrVelocity());
                }
            }
            g();
        }
        if (this.f1398d.isFinished()) {
            W(1);
        } else {
            w.q.K(this);
        }
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        return java.lang.Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        android.view.View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int iMax = java.lang.Math.max(0, bottom - height);
        if (scrollY < 0) {
            return bottom - scrollY;
        }
        return scrollY > iMax ? bottom + (scrollY - iMax) : bottom;
    }

    @Override // w.l
    public void d(android.view.View view, int i5, int i6, int i7, int i8, int i9, int[] iArr) {
        F(i8, i9, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || s(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f5, float f6, boolean z4) {
        return this.D.a(f5, f6, z4);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f5, float f6) {
        return this.D.b(f5, f6);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i5, int i6, int[] iArr, int[] iArr2) {
        return n(i5, i6, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i5, int i6, int i7, int i8, int[] iArr) {
        return this.D.f(i5, i6, i7, i8, iArr);
    }

    @Override // android.view.View
    public void draw(android.graphics.Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        int scrollY = getScrollY();
        int paddingLeft2 = 0;
        if (!this.f1399e.isFinished()) {
            int iSave = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int iMin = java.lang.Math.min(0, scrollY);
            if (androidx.core.widget.NestedScrollView.b.a(this)) {
                width -= getPaddingLeft() + getPaddingRight();
                paddingLeft = getPaddingLeft() + 0;
            } else {
                paddingLeft = 0;
            }
            if (androidx.core.widget.NestedScrollView.b.a(this)) {
                height -= getPaddingTop() + getPaddingBottom();
                iMin += getPaddingTop();
            }
            canvas.translate(paddingLeft, iMin);
            this.f1399e.setSize(width, height);
            if (this.f1399e.draw(canvas)) {
                w.q.K(this);
            }
            canvas.restoreToCount(iSave);
        }
        if (this.f1400f.isFinished()) {
            return;
        }
        int iSave2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int iMax = java.lang.Math.max(getScrollRange(), scrollY) + height2;
        if (androidx.core.widget.NestedScrollView.b.a(this)) {
            width2 -= getPaddingLeft() + getPaddingRight();
            paddingLeft2 = 0 + getPaddingLeft();
        }
        if (androidx.core.widget.NestedScrollView.b.a(this)) {
            height2 -= getPaddingTop() + getPaddingBottom();
            iMax -= getPaddingBottom();
        }
        canvas.translate(paddingLeft2 - width2, iMax);
        canvas.rotate(180.0f, width2, 0.0f);
        this.f1400f.setSize(width2, height2);
        if (this.f1400f.draw(canvas)) {
            w.q.K(this);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // w.k
    public void e(android.view.View view, int i5, int i6, int i7, int i8, int i9) {
        F(i8, i9, null);
    }

    @Override // w.k
    public boolean f(android.view.View view, android.view.View view2, int i5, int i6) {
        return (i5 & 2) != 0;
    }

    public final void g() {
        this.f1398d.abortAnimation();
        W(1);
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        android.view.View childAt = getChildAt(0);
        android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.C.a();
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        android.view.View childAt = getChildAt(0);
        android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams();
        return java.lang.Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public boolean h(int i5) {
        android.view.View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        android.view.View viewFindNextFocus = android.view.FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i5);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !E(viewFindNextFocus, maxScrollAmount, getHeight())) {
            if (i5 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i5 == 130 && getChildCount() > 0) {
                android.view.View childAt = getChildAt(0);
                maxScrollAmount = java.lang.Math.min((childAt.getBottom() + ((android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getScrollY() + getHeight()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i5 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            p(maxScrollAmount);
        } else {
            viewFindNextFocus.getDrawingRect(this.f1397c);
            offsetDescendantRectToMyCoords(viewFindNextFocus, this.f1397c);
            p(l(this.f1397c));
            viewFindNextFocus.requestFocus(i5);
        }
        if (viewFindFocus == null || !viewFindFocus.isFocused() || !C(viewFindFocus)) {
            return true;
        }
        int descendantFocusability = getDescendantFocusability();
        setDescendantFocusability(131072);
        requestFocus();
        setDescendantFocusability(descendantFocusability);
        return true;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return x(0);
    }

    public final boolean i() {
        int overScrollMode = getOverScrollMode();
        if (overScrollMode != 0) {
            return overScrollMode == 1 && getScrollRange() > 0;
        }
        return true;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return this.D.l();
    }

    public final boolean j() {
        if (getChildCount() <= 0) {
            return false;
        }
        android.view.View childAt = getChildAt(0);
        android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams();
        return (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    public int l(android.graphics.Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i5 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        android.view.View childAt = getChildAt(0);
        android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i6 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i5 - verticalFadingEdgeLength : i5;
        int i7 = rect.bottom;
        if (i7 > i6 && rect.top > scrollY) {
            return java.lang.Math.min((rect.height() > height ? rect.top - scrollY : rect.bottom - i6) + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i5);
        }
        if (rect.top >= scrollY || i7 >= i6) {
            return 0;
        }
        return java.lang.Math.max(rect.height() > height ? 0 - (i6 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    public int m(int i5) {
        int height = getHeight();
        if (i5 > 0 && androidx.core.widget.f.b(this.f1399e) != 0.0f) {
            int iRound = java.lang.Math.round(((-height) / 4.0f) * androidx.core.widget.f.d(this.f1399e, ((-i5) * 4.0f) / height, 0.5f));
            if (iRound != i5) {
                this.f1399e.finish();
            }
            return i5 - iRound;
        }
        if (i5 >= 0 || androidx.core.widget.f.b(this.f1400f) == 0.0f) {
            return i5;
        }
        float f5 = height;
        int iRound2 = java.lang.Math.round((f5 / 4.0f) * androidx.core.widget.f.d(this.f1400f, (i5 * 4.0f) / f5, 0.5f));
        if (iRound2 != i5) {
            this.f1400f.finish();
        }
        return i5 - iRound2;
    }

    @Override // android.view.ViewGroup
    public void measureChild(android.view.View view, int i5, int i6) {
        view.measure(android.widget.FrameLayout.getChildMeasureSpec(i5, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(android.view.View view, int i5, int i6, int i7, int i8) {
        android.view.ViewGroup.MarginLayoutParams marginLayoutParams = (android.view.ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(android.widget.FrameLayout.getChildMeasureSpec(i5, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i6, marginLayoutParams.width), android.view.View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    public boolean n(int i5, int i6, int[] iArr, int[] iArr2, int i7) {
        return this.D.d(i5, i6, iArr, iArr2, i7);
    }

    public void o(int i5, int i6, int i7, int i8, int[] iArr, int i9, int[] iArr2) {
        this.D.e(i5, i6, i7, i8, iArr, i9, iArr2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1403i = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public boolean onGenericMotionEvent(android.view.MotionEvent motionEvent) {
        float axisValue;
        boolean z4;
        int i5 = 0;
        if (motionEvent.getAction() == 8 && !this.f1405p) {
            if (w.i.a(motionEvent, 2)) {
                axisValue = motionEvent.getAxisValue(9);
            } else {
                axisValue = w.i.a(motionEvent, 4194304) ? motionEvent.getAxisValue(26) : 0.0f;
            }
            if (axisValue != 0.0f) {
                int verticalScrollFactorCompat = (int) (axisValue * getVerticalScrollFactorCompat());
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                int i6 = scrollY - verticalScrollFactorCompat;
                if (i6 < 0) {
                    if (i() && !w.i.a(motionEvent, 8194)) {
                        androidx.core.widget.f.d(this.f1399e, (-i6) / getHeight(), 0.5f);
                        this.f1399e.onRelease();
                        invalidate();
                        z4 = 1;
                    } else {
                        z4 = 0;
                    }
                } else if (i6 > scrollRange) {
                    if (i() && !w.i.a(motionEvent, 8194)) {
                        androidx.core.widget.f.d(this.f1400f, (i6 - scrollRange) / getHeight(), 0.5f);
                        this.f1400f.onRelease();
                        invalidate();
                        i5 = 1;
                    }
                    z4 = i5;
                    i5 = scrollRange;
                } else {
                    z4 = 0;
                    i5 = i6;
                }
                if (i5 == scrollY) {
                    return z4;
                }
                super.scrollTo(getScrollX(), i5);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x007e  */
    /* JADX WARN: Code duplicated, block: B:33:0x009c  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(android.view.MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        boolean z4 = true;
        if (action == 2 && this.f1405p) {
            return true;
        }
        int i5 = action & 255;
        if (i5 == 0) {
            int y4 = (int) motionEvent.getY();
            if (y((int) motionEvent.getX(), y4)) {
                this.f1401g = y4;
                this.f1412w = motionEvent.getPointerId(0);
                z();
                this.f1406q.addMovement(motionEvent);
                this.f1398d.computeScrollOffset();
                if (!V(motionEvent) && this.f1398d.isFinished()) {
                    z4 = false;
                }
                this.f1405p = z4;
                U(2, 0);
            } else {
                if (!V(motionEvent) && this.f1398d.isFinished()) {
                    z4 = false;
                }
                this.f1405p = z4;
                J();
            }
        } else if (i5 == 1) {
            this.f1405p = false;
            this.f1412w = -1;
            J();
            if (this.f1398d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                w.q.K(this);
            }
            W(0);
        } else if (i5 == 2) {
            int i6 = this.f1412w;
            if (i6 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i6);
                if (iFindPointerIndex == -1) {
                    android.util.Log.e("NestedScrollView", "Invalid pointerId=" + i6 + " in onInterceptTouchEvent");
                } else {
                    int y5 = (int) motionEvent.getY(iFindPointerIndex);
                    if (java.lang.Math.abs(y5 - this.f1401g) > this.f1409t && (2 & getNestedScrollAxes()) == 0) {
                        this.f1405p = true;
                        this.f1401g = y5;
                        B();
                        this.f1406q.addMovement(motionEvent);
                        this.f1415z = 0;
                        android.view.ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
            }
        } else if (i5 == 3) {
            this.f1405p = false;
            this.f1412w = -1;
            J();
            if (this.f1398d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                w.q.K(this);
            }
            W(0);
        } else if (i5 == 6) {
            G(motionEvent);
        }
        return this.f1405p;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        super.onLayout(z4, i5, i6, i7, i8);
        int measuredHeight = 0;
        this.f1402h = false;
        android.view.View view = this.f1404o;
        if (view != null && D(view, this)) {
            N(this.f1404o);
        }
        this.f1404o = null;
        if (!this.f1403i) {
            if (this.B != null) {
                scrollTo(getScrollX(), this.B.scrollPosition);
                this.B = null;
            }
            if (getChildCount() > 0) {
                android.view.View childAt = getChildAt(0);
                android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams();
                measuredHeight = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = ((i8 - i6) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int iK = k(scrollY, paddingTop, measuredHeight);
            if (iK != scrollY) {
                scrollTo(getScrollX(), iK);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f1403i = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i5, int i6) {
        super.onMeasure(i5, i6);
        if (this.f1407r && android.view.View.MeasureSpec.getMode(i6) != 0 && getChildCount() > 0) {
            android.view.View childAt = getChildAt(0);
            android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(android.widget.FrameLayout.getChildMeasureSpec(i5, getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), android.view.View.MeasureSpec.makeMeasureSpec(measuredHeight2, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(android.view.View view, float f5, float f6, boolean z4) {
        if (z4) {
            return false;
        }
        dispatchNestedFling(0.0f, f6, true);
        u((int) f6);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(android.view.View view, float f5, float f6) {
        return dispatchNestedPreFling(f5, f6);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(android.view.View view, int i5, int i6, int[] iArr) {
        c(view, i5, i6, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(android.view.View view, int i5, int i6, int i7, int i8) {
        F(i8, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(android.view.View view, android.view.View view2, int i5) {
        a(view, view2, i5, 0);
    }

    @Override // android.view.View
    public void onOverScrolled(int i5, int i6, boolean z4, boolean z5) {
        super.scrollTo(i5, i6);
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i5, android.graphics.Rect rect) {
        if (i5 == 2) {
            i5 = 130;
        } else if (i5 == 1) {
            i5 = 33;
        }
        android.view.View viewFindNextFocus = rect == null ? android.view.FocusFinder.getInstance().findNextFocus(this, null, i5) : android.view.FocusFinder.getInstance().findNextFocusFromRect(this, rect, i5);
        if (viewFindNextFocus == null || C(viewFindNextFocus)) {
            return false;
        }
        return viewFindNextFocus.requestFocus(i5, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        if (!(parcelable instanceof androidx.core.widget.NestedScrollView.SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        androidx.core.widget.NestedScrollView.SavedState savedState = (androidx.core.widget.NestedScrollView.SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.B = savedState;
        requestLayout();
    }

    @Override // android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        androidx.core.widget.NestedScrollView.SavedState savedState = new androidx.core.widget.NestedScrollView.SavedState(super.onSaveInstanceState());
        savedState.scrollPosition = getScrollY();
        return savedState;
    }

    @Override // android.view.View
    public void onScrollChanged(int i5, int i6, int i7, int i8) {
        super.onScrollChanged(i5, i6, i7, i8);
        androidx.core.widget.NestedScrollView.c cVar = this.F;
        if (cVar != null) {
            cVar.a(this, i5, i6, i7, i8);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i5, int i6, int i7, int i8) {
        super.onSizeChanged(i5, i6, i7, i8);
        android.view.View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !E(viewFindFocus, 0, i8)) {
            return;
        }
        viewFindFocus.getDrawingRect(this.f1397c);
        offsetDescendantRectToMyCoords(viewFindFocus, this.f1397c);
        p(l(this.f1397c));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(android.view.View view, android.view.View view2, int i5) {
        return f(view, view2, i5, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(android.view.View view) {
        b(view, 0);
    }

    /* JADX WARN: Code duplicated, block: B:76:0x01d5  */
    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        android.view.ViewParent parent;
        B();
        int actionMasked = motionEvent.getActionMasked();
        boolean z4 = false;
        if (actionMasked == 0) {
            this.f1415z = 0;
        }
        android.view.MotionEvent motionEventObtain = android.view.MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(0.0f, this.f1415z);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                android.view.VelocityTracker velocityTracker = this.f1406q;
                velocityTracker.computeCurrentVelocity(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO, this.f1411v);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f1412w);
                if (java.lang.Math.abs(yVelocity) >= this.f1410u) {
                    if (!q(yVelocity)) {
                        int i5 = -yVelocity;
                        float f5 = i5;
                        if (!dispatchNestedPreFling(0.0f, f5)) {
                            dispatchNestedFling(0.0f, f5, true);
                            u(i5);
                        }
                    }
                } else if (this.f1398d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    w.q.K(this);
                }
                this.f1412w = -1;
                r();
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f1412w);
                if (iFindPointerIndex == -1) {
                    android.util.Log.e("NestedScrollView", "Invalid pointerId=" + this.f1412w + " in onTouchEvent");
                } else {
                    int y4 = (int) motionEvent.getY(iFindPointerIndex);
                    int i6 = this.f1401g - y4;
                    int iK = i6 - K(i6, motionEvent.getX(iFindPointerIndex));
                    if (!this.f1405p && java.lang.Math.abs(iK) > this.f1409t) {
                        android.view.ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.f1405p = true;
                        iK = iK > 0 ? iK - this.f1409t : iK + this.f1409t;
                    }
                    int i7 = iK;
                    if (this.f1405p) {
                        if (n(0, i7, this.f1414y, this.f1413x, 0)) {
                            i7 -= this.f1414y[1];
                            this.f1415z += this.f1413x[1];
                        }
                        int i8 = i7;
                        this.f1401g = y4 - this.f1413x[1];
                        int scrollY = getScrollY();
                        int scrollRange = getScrollRange();
                        int overScrollMode = getOverScrollMode();
                        boolean z5 = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                        boolean z6 = H(0, i8, 0, getScrollY(), 0, scrollRange, 0, 0, true) && !x(0);
                        int scrollY2 = getScrollY() - scrollY;
                        int[] iArr = this.f1414y;
                        iArr[1] = 0;
                        o(0, scrollY2, 0, i8 - scrollY2, this.f1413x, 0, iArr);
                        int i9 = this.f1401g;
                        int[] iArr2 = this.f1413x;
                        this.f1401g = i9 - iArr2[1];
                        this.f1415z += iArr2[1];
                        if (z5) {
                            int i10 = i8 - this.f1414y[1];
                            int i11 = scrollY + i10;
                            if (i11 < 0) {
                                androidx.core.widget.f.d(this.f1399e, (-i10) / getHeight(), motionEvent.getX(iFindPointerIndex) / getWidth());
                                if (!this.f1400f.isFinished()) {
                                    this.f1400f.onRelease();
                                }
                            } else if (i11 > scrollRange) {
                                androidx.core.widget.f.d(this.f1400f, i10 / getHeight(), 1.0f - (motionEvent.getX(iFindPointerIndex) / getWidth()));
                                if (!this.f1399e.isFinished()) {
                                    this.f1399e.onRelease();
                                }
                            }
                            if (this.f1399e.isFinished() && this.f1400f.isFinished()) {
                                z4 = z6;
                            } else {
                                w.q.K(this);
                            }
                        } else {
                            z4 = z6;
                        }
                        if (z4) {
                            this.f1406q.clear();
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f1405p && getChildCount() > 0 && this.f1398d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    w.q.K(this);
                }
                this.f1412w = -1;
                r();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f1401g = (int) motionEvent.getY(actionIndex);
                this.f1412w = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                G(motionEvent);
                this.f1401g = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f1412w));
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            if (this.f1405p && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f1398d.isFinished()) {
                g();
            }
            this.f1401g = (int) motionEvent.getY();
            this.f1412w = motionEvent.getPointerId(0);
            U(2, 0);
        }
        android.view.VelocityTracker velocityTracker2 = this.f1406q;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    public final void p(int i5) {
        if (i5 != 0) {
            if (this.f1408s) {
                Q(0, i5);
            } else {
                scrollBy(0, i5);
            }
        }
    }

    public final boolean q(int i5) {
        if (androidx.core.widget.f.b(this.f1399e) != 0.0f) {
            if (P(this.f1399e, i5)) {
                this.f1399e.onAbsorb(i5);
            } else {
                u(-i5);
            }
        } else {
            if (androidx.core.widget.f.b(this.f1400f) == 0.0f) {
                return false;
            }
            int i6 = -i5;
            if (P(this.f1400f, i6)) {
                this.f1400f.onAbsorb(i6);
            } else {
                u(i6);
            }
        }
        return true;
    }

    public final void r() {
        this.f1405p = false;
        J();
        W(0);
        this.f1399e.onRelease();
        this.f1400f.onRelease();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(android.view.View view, android.view.View view2) {
        if (this.f1402h) {
            this.f1404o = view2;
        } else {
            N(view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(android.view.View view, android.graphics.Rect rect, boolean z4) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return O(rect, z4);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z4) {
        if (z4) {
            J();
        }
        super.requestDisallowInterceptTouchEvent(z4);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f1402h = true;
        super.requestLayout();
    }

    public boolean s(android.view.KeyEvent keyEvent) {
        this.f1397c.setEmpty();
        if (!j()) {
            if (!isFocused() || keyEvent.getKeyCode() == 4) {
                return false;
            }
            android.view.View viewFindFocus = findFocus();
            if (viewFindFocus == this) {
                viewFindFocus = null;
            }
            android.view.View viewFindNextFocus = android.view.FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 130);
            return (viewFindNextFocus == null || viewFindNextFocus == this || !viewFindNextFocus.requestFocus(130)) ? false : true;
        }
        if (keyEvent.getAction() != 0) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 19) {
            return !keyEvent.isAltPressed() ? h(33) : v(33);
        }
        if (keyCode == 20) {
            return !keyEvent.isAltPressed() ? h(130) : v(130);
        }
        if (keyCode != 62) {
            return false;
        }
        I(keyEvent.isShiftPressed() ? 33 : 130);
        return false;
    }

    @Override // android.view.View
    public void scrollTo(int i5, int i6) {
        if (getChildCount() > 0) {
            android.view.View childAt = getChildAt(0);
            android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int iK = k(i5, width, width2);
            int iK2 = k(i6, height, height2);
            if (iK == getScrollX() && iK2 == getScrollY()) {
                return;
            }
            super.scrollTo(iK, iK2);
        }
    }

    public void setFillViewport(boolean z4) {
        if (z4 != this.f1407r) {
            this.f1407r = z4;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z4) {
        this.D.m(z4);
    }

    public void setOnScrollChangeListener(androidx.core.widget.NestedScrollView.c cVar) {
        this.F = cVar;
    }

    public void setSmoothScrollingEnabled(boolean z4) {
        this.f1408s = z4;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i5) {
        return U(i5, 0);
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        W(0);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x004f  */
    public final android.view.View t(boolean z4, int i5, int i6) {
        java.util.ArrayList focusables = getFocusables(2);
        int size = focusables.size();
        android.view.View view = null;
        boolean z5 = false;
        for (int i7 = 0; i7 < size; i7++) {
            android.view.View view2 = (android.view.View) focusables.get(i7);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i5 < bottom && top < i6) {
                boolean z6 = i5 < top && bottom < i6;
                if (view == null) {
                    view = view2;
                    z5 = z6;
                } else {
                    boolean z7 = (z4 && top < view.getTop()) || (!z4 && bottom > view.getBottom());
                    if (z5) {
                        if (z6 && z7) {
                            view = view2;
                        }
                    } else if (z6) {
                        view = view2;
                        z5 = true;
                    } else if (z7) {
                        view = view2;
                    }
                }
            }
        }
        return view;
    }

    public void u(int i5) {
        if (getChildCount() > 0) {
            this.f1398d.fling(getScrollX(), getScrollY(), 0, i5, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            L(true);
        }
    }

    public boolean v(int i5) {
        int childCount;
        boolean z4 = i5 == 130;
        int height = getHeight();
        android.graphics.Rect rect = this.f1397c;
        rect.top = 0;
        rect.bottom = height;
        if (z4 && (childCount = getChildCount()) > 0) {
            android.view.View childAt = getChildAt(childCount - 1);
            this.f1397c.bottom = childAt.getBottom() + ((android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
            android.graphics.Rect rect2 = this.f1397c;
            rect2.top = rect2.bottom - height;
        }
        android.graphics.Rect rect3 = this.f1397c;
        return M(i5, rect3.top, rect3.bottom);
    }

    public final float w(int i5) {
        double dLog = java.lang.Math.log((java.lang.Math.abs(i5) * 0.35f) / (this.f1395a * 0.015f));
        float f5 = G;
        return (float) (((double) (this.f1395a * 0.015f)) * java.lang.Math.exp((((double) f5) / (((double) f5) - 1.0d)) * dLog));
    }

    public boolean x(int i5) {
        return this.D.k(i5);
    }

    public final boolean y(int i5, int i6) {
        if (getChildCount() <= 0) {
            return false;
        }
        int scrollY = getScrollY();
        android.view.View childAt = getChildAt(0);
        return i6 >= childAt.getTop() - scrollY && i6 < childAt.getBottom() - scrollY && i5 >= childAt.getLeft() && i5 < childAt.getRight();
    }

    public final void z() {
        android.view.VelocityTracker velocityTracker = this.f1406q;
        if (velocityTracker == null) {
            this.f1406q = android.view.VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    public NestedScrollView(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.f1397c = new android.graphics.Rect();
        this.f1402h = true;
        this.f1403i = false;
        this.f1404o = null;
        this.f1405p = false;
        this.f1408s = true;
        this.f1412w = -1;
        this.f1413x = new int[2];
        this.f1414y = new int[2];
        this.f1399e = androidx.core.widget.f.a(context, attributeSet);
        this.f1400f = androidx.core.widget.f.a(context, attributeSet);
        this.f1395a = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        A();
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I, i5, 0);
        setFillViewport(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
        this.C = new w.m(this);
        this.D = new w.j(this);
        setNestedScrollingEnabled(true);
        w.q.Q(this, H);
    }

    @Override // android.view.ViewGroup
    public void addView(android.view.View view, int i5) {
        if (getChildCount() <= 0) {
            super.addView(view, i5);
            return;
        }
        throw new java.lang.IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new java.lang.IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(android.view.View view, int i5, android.view.ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i5, layoutParams);
            return;
        }
        throw new java.lang.IllegalStateException("ScrollView can host only one direct child");
    }
}
