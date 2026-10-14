package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class LinearLayoutCompat extends android.view.ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f740a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f741b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f742c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f743d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f744e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f745f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f746g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f747h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f748i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int[] f749o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public android.graphics.drawable.Drawable f750p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f751q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f752r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f753s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f754t;

    public LinearLayoutCompat(android.content.Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof androidx.appcompat.widget.LinearLayoutCompat.LayoutParams;
    }

    public void e(android.graphics.Canvas canvas) {
        int right;
        int left;
        int i5;
        int virtualChildCount = getVirtualChildCount();
        boolean zB = androidx.appcompat.widget.h0.b(this);
        for (int i6 = 0; i6 < virtualChildCount; i6++) {
            android.view.View viewQ = q(i6);
            if (viewQ != null && viewQ.getVisibility() != 8 && r(i6)) {
                androidx.appcompat.widget.LinearLayoutCompat.LayoutParams layoutParams = (androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewQ.getLayoutParams();
                h(canvas, zB ? viewQ.getRight() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin : (viewQ.getLeft() - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f751q);
            }
        }
        if (r(virtualChildCount)) {
            android.view.View viewQ2 = q(virtualChildCount - 1);
            if (viewQ2 != null) {
                androidx.appcompat.widget.LinearLayoutCompat.LayoutParams layoutParams2 = (androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewQ2.getLayoutParams();
                if (zB) {
                    left = viewQ2.getLeft() - ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).leftMargin;
                    i5 = this.f751q;
                    right = left - i5;
                } else {
                    right = viewQ2.getRight() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                }
            } else if (zB) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i5 = this.f751q;
                right = left - i5;
            }
            h(canvas, right);
        }
    }

    public void f(android.graphics.Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i5 = 0; i5 < virtualChildCount; i5++) {
            android.view.View viewQ = q(i5);
            if (viewQ != null && viewQ.getVisibility() != 8 && r(i5)) {
                g(canvas, (viewQ.getTop() - ((android.view.ViewGroup.MarginLayoutParams) ((androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewQ.getLayoutParams())).topMargin) - this.f752r);
            }
        }
        if (r(virtualChildCount)) {
            android.view.View viewQ2 = q(virtualChildCount - 1);
            g(canvas, viewQ2 == null ? (getHeight() - getPaddingBottom()) - this.f752r : viewQ2.getBottom() + ((android.view.ViewGroup.MarginLayoutParams) ((androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewQ2.getLayoutParams())).bottomMargin);
        }
    }

    public void g(android.graphics.Canvas canvas, int i5) {
        this.f750p.setBounds(getPaddingLeft() + this.f754t, i5, (getWidth() - getPaddingRight()) - this.f754t, this.f752r + i5);
        this.f750p.draw(canvas);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i5;
        if (this.f741b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i6 = this.f741b;
        if (childCount <= i6) {
            throw new java.lang.RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        android.view.View childAt = getChildAt(i6);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f741b == 0) {
                return -1;
            }
            throw new java.lang.RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.f742c;
        if (this.f743d == 1 && (i5 = this.f744e & 112) != 48) {
            if (i5 == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f745f) / 2;
            } else if (i5 == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.f745f;
            }
        }
        return bottom + ((android.view.ViewGroup.MarginLayoutParams) ((androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f741b;
    }

    public android.graphics.drawable.Drawable getDividerDrawable() {
        return this.f750p;
    }

    public int getDividerPadding() {
        return this.f754t;
    }

    public int getDividerWidth() {
        return this.f751q;
    }

    public int getGravity() {
        return this.f744e;
    }

    public int getOrientation() {
        return this.f743d;
    }

    public int getShowDividers() {
        return this.f753s;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f746g;
    }

    public void h(android.graphics.Canvas canvas, int i5) {
        this.f750p.setBounds(i5, getPaddingTop() + this.f754t, this.f751q + i5, (getHeight() - getPaddingBottom()) - this.f754t);
        this.f750p.draw(canvas);
    }

    public final void i(int i5, int i6) {
        int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
        for (int i7 = 0; i7 < i5; i7++) {
            android.view.View viewQ = q(i7);
            if (viewQ.getVisibility() != 8) {
                androidx.appcompat.widget.LinearLayoutCompat.LayoutParams layoutParams = (androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewQ.getLayoutParams();
                if (((android.view.ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                    int i8 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width;
                    ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width = viewQ.getMeasuredWidth();
                    measureChildWithMargins(viewQ, i6, 0, iMakeMeasureSpec, 0);
                    ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width = i8;
                }
            }
        }
    }

    public final void j(int i5, int i6) {
        int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
        for (int i7 = 0; i7 < i5; i7++) {
            android.view.View viewQ = q(i7);
            if (viewQ.getVisibility() != 8) {
                androidx.appcompat.widget.LinearLayoutCompat.LayoutParams layoutParams = (androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewQ.getLayoutParams();
                if (((android.view.ViewGroup.MarginLayoutParams) layoutParams).width == -1) {
                    int i8 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height;
                    ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height = viewQ.getMeasuredHeight();
                    measureChildWithMargins(viewQ, iMakeMeasureSpec, 0, i6, 0);
                    ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height = i8;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public androidx.appcompat.widget.LinearLayoutCompat.LayoutParams generateDefaultLayoutParams() {
        int i5 = this.f743d;
        if (i5 == 0) {
            return new androidx.appcompat.widget.LinearLayoutCompat.LayoutParams(-2, -2);
        }
        if (i5 == 1) {
            return new androidx.appcompat.widget.LinearLayoutCompat.LayoutParams(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public androidx.appcompat.widget.LinearLayoutCompat.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.LinearLayoutCompat.LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public androidx.appcompat.widget.LinearLayoutCompat.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new androidx.appcompat.widget.LinearLayoutCompat.LayoutParams(layoutParams);
    }

    public int n(android.view.View view, int i5) {
        return 0;
    }

    public int o(android.view.View view) {
        return 0;
    }

    @Override // android.view.View
    public void onDraw(android.graphics.Canvas canvas) {
        if (this.f750p == null) {
            return;
        }
        if (this.f743d == 1) {
            f(canvas);
        } else {
            e(canvas);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(androidx.appcompat.widget.LinearLayoutCompat.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(androidx.appcompat.widget.LinearLayoutCompat.class.getName());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        if (this.f743d == 1) {
            t(i5, i6, i7, i8);
        } else {
            s(i5, i6, i7, i8);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i5, int i6) {
        if (this.f743d == 1) {
            x(i5, i6);
        } else {
            v(i5, i6);
        }
    }

    public int p(android.view.View view) {
        return 0;
    }

    public android.view.View q(int i5) {
        return getChildAt(i5);
    }

    public boolean r(int i5) {
        if (i5 == 0) {
            return (this.f753s & 1) != 0;
        }
        if (i5 == getChildCount()) {
            return (this.f753s & 4) != 0;
        }
        if ((this.f753s & 2) == 0) {
            return false;
        }
        for (int i6 = i5 - 1; i6 >= 0; i6--) {
            if (getChildAt(i6).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00af  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:34:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:39:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:42:0x00df  */
    /* JADX WARN: Code duplicated, block: B:44:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ff  */
    public void s(int i5, int i6, int i7, int i8) {
        int paddingLeft;
        int i9;
        int i10;
        boolean z4;
        int baseline;
        int i11;
        int i12;
        int measuredHeight;
        boolean zB = androidx.appcompat.widget.h0.b(this);
        int paddingTop = getPaddingTop();
        int i13 = i8 - i6;
        int paddingBottom = i13 - getPaddingBottom();
        int paddingBottom2 = (i13 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i14 = this.f744e;
        int i15 = i14 & 112;
        boolean z5 = this.f740a;
        int[] iArr = this.f748i;
        int[] iArr2 = this.f749o;
        int iB = w.d.b(8388615 & i14, w.q.p(this));
        boolean z6 = true;
        if (iB != 1) {
            paddingLeft = iB != 5 ? getPaddingLeft() : ((getPaddingLeft() + i7) - i5) - this.f745f;
        } else {
            paddingLeft = getPaddingLeft() + (((i7 - i5) - this.f745f) / 2);
        }
        if (zB) {
            i9 = virtualChildCount - 1;
            i10 = -1;
        } else {
            i9 = 0;
            i10 = 1;
        }
        int iN = 0;
        while (iN < virtualChildCount) {
            int i16 = i9 + (i10 * iN);
            android.view.View viewQ = q(i16);
            if (viewQ == null) {
                paddingLeft += w(i16);
                z4 = z6;
            } else {
                if (viewQ.getVisibility() != 8) {
                    int measuredWidth = viewQ.getMeasuredWidth();
                    int measuredHeight2 = viewQ.getMeasuredHeight();
                    androidx.appcompat.widget.LinearLayoutCompat.LayoutParams layoutParams = (androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewQ.getLayoutParams();
                    int i17 = iN;
                    if (z5) {
                        virtualChildCount = virtualChildCount;
                        baseline = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height != -1 ? viewQ.getBaseline() : -1;
                        i11 = layoutParams.f756b;
                        if (i11 < 0) {
                            i11 = i15;
                        }
                        i12 = i11 & 112;
                        i15 = i15;
                        if (i12 != 16) {
                            if (i12 != 48) {
                                measuredHeight = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + paddingTop;
                                if (baseline != -1) {
                                    z4 = true;
                                    measuredHeight += iArr[1] - baseline;
                                }
                            } else if (i12 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                measuredHeight = (paddingBottom - measuredHeight2) - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                                if (baseline != -1) {
                                    measuredHeight -= iArr2[2] - (viewQ.getMeasuredHeight() - baseline);
                                }
                            }
                            z4 = true;
                        } else {
                            z4 = true;
                            measuredHeight = ((((paddingBottom2 - measuredHeight2) / 2) + paddingTop) + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin) - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        }
                        if (r(i16)) {
                            paddingLeft += this.f751q;
                        }
                        int i18 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeft;
                        paddingTop = paddingTop;
                        y(viewQ, i18 + o(viewQ), measuredHeight, measuredWidth, measuredHeight2);
                        int iP = i18 + measuredWidth + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin + p(viewQ);
                        iN = i17 + n(viewQ, i16);
                        paddingLeft = iP;
                    } else {
                        virtualChildCount = virtualChildCount;
                    }
                    i11 = layoutParams.f756b;
                    if (i11 < 0) {
                        i11 = i15;
                    }
                    i12 = i11 & 112;
                    i15 = i15;
                    if (i12 != 16) {
                        if (i12 != 48) {
                            measuredHeight = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + paddingTop;
                            if (baseline != -1) {
                                z4 = true;
                                measuredHeight += iArr[1] - baseline;
                            }
                        } else if (i12 != 80) {
                            measuredHeight = paddingTop;
                        } else {
                            measuredHeight = (paddingBottom - measuredHeight2) - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            if (baseline != -1) {
                                measuredHeight -= iArr2[2] - (viewQ.getMeasuredHeight() - baseline);
                            }
                        }
                        z4 = true;
                    } else {
                        z4 = true;
                        measuredHeight = ((((paddingBottom2 - measuredHeight2) / 2) + paddingTop) + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin) - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    }
                    if (r(i16)) {
                        paddingLeft += this.f751q;
                    }
                    int i19 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeft;
                    paddingTop = paddingTop;
                    y(viewQ, i19 + o(viewQ), measuredHeight, measuredWidth, measuredHeight2);
                    int iP2 = i19 + measuredWidth + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin + p(viewQ);
                    iN = i17 + n(viewQ, i16);
                    paddingLeft = iP2;
                } else {
                    z4 = true;
                }
                iN++;
                virtualChildCount = virtualChildCount;
                i15 = i15;
                z6 = z4;
                paddingTop = paddingTop;
            }
            iN++;
            virtualChildCount = virtualChildCount;
            i15 = i15;
            z6 = z4;
            paddingTop = paddingTop;
        }
    }

    public void setBaselineAligned(boolean z4) {
        this.f740a = z4;
    }

    public void setBaselineAlignedChildIndex(int i5) {
        if (i5 >= 0 && i5 < getChildCount()) {
            this.f741b = i5;
            return;
        }
        throw new java.lang.IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(android.graphics.drawable.Drawable drawable) {
        if (drawable == this.f750p) {
            return;
        }
        this.f750p = drawable;
        if (drawable != null) {
            this.f751q = drawable.getIntrinsicWidth();
            this.f752r = drawable.getIntrinsicHeight();
        } else {
            this.f751q = 0;
            this.f752r = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i5) {
        this.f754t = i5;
    }

    public void setGravity(int i5) {
        if (this.f744e != i5) {
            if ((8388615 & i5) == 0) {
                i5 |= 8388611;
            }
            if ((i5 & 112) == 0) {
                i5 |= 48;
            }
            this.f744e = i5;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i5) {
        int i6 = i5 & 8388615;
        int i7 = this.f744e;
        if ((8388615 & i7) != i6) {
            this.f744e = i6 | ((-8388616) & i7);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z4) {
        this.f747h = z4;
    }

    public void setOrientation(int i5) {
        if (this.f743d != i5) {
            this.f743d = i5;
            requestLayout();
        }
    }

    public void setShowDividers(int i5) {
        if (i5 != this.f753s) {
            requestLayout();
        }
        this.f753s = i5;
    }

    public void setVerticalGravity(int i5) {
        int i6 = i5 & 112;
        int i7 = this.f744e;
        if ((i7 & 112) != i6) {
            this.f744e = i6 | (i7 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f5) {
        this.f746g = java.lang.Math.max(0.0f, f5);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x009f  */
    public void t(int i5, int i6, int i7, int i8) {
        int paddingTop;
        int i9;
        int i10;
        int i11;
        int i12;
        int paddingLeft = getPaddingLeft();
        int i13 = i7 - i5;
        int paddingRight = i13 - getPaddingRight();
        int paddingRight2 = (i13 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i14 = this.f744e;
        int i15 = i14 & 112;
        int i16 = i14 & 8388615;
        if (i15 != 16) {
            paddingTop = i15 != 80 ? getPaddingTop() : ((getPaddingTop() + i8) - i6) - this.f745f;
        } else {
            paddingTop = getPaddingTop() + (((i8 - i6) - this.f745f) / 2);
        }
        int iN = 0;
        while (iN < virtualChildCount) {
            android.view.View viewQ = q(iN);
            if (viewQ == null) {
                paddingTop += w(iN);
            } else {
                if (viewQ.getVisibility() != 8) {
                    int measuredWidth = viewQ.getMeasuredWidth();
                    int measuredHeight = viewQ.getMeasuredHeight();
                    androidx.appcompat.widget.LinearLayoutCompat.LayoutParams layoutParams = (androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewQ.getLayoutParams();
                    int i17 = layoutParams.f756b;
                    if (i17 < 0) {
                        i17 = i16;
                    }
                    int iB = w.d.b(i17, w.q.p(this)) & 7;
                    if (iB != 1) {
                        if (iB != 5) {
                            i11 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeft;
                        } else {
                            i9 = paddingRight - measuredWidth;
                            i10 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        }
                        int i18 = i11;
                        if (r(iN)) {
                            paddingTop += this.f752r;
                        }
                        int i19 = paddingTop + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        y(viewQ, i18, i19 + o(viewQ), measuredWidth, measuredHeight);
                        int iP = i19 + measuredHeight + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + p(viewQ);
                        iN += n(viewQ, iN);
                        paddingTop = iP;
                        i12 = 1;
                    } else {
                        i9 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                        i10 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    }
                    i11 = i9 - i10;
                    int i110 = i11;
                    if (r(iN)) {
                        paddingTop += this.f752r;
                    }
                    int i111 = paddingTop + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    y(viewQ, i110, i111 + o(viewQ), measuredWidth, measuredHeight);
                    int iP2 = i111 + measuredHeight + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + p(viewQ);
                    iN += n(viewQ, iN);
                    paddingTop = iP2;
                    i12 = 1;
                }
                iN += i12;
            }
            i12 = 1;
            iN += i12;
        }
    }

    public void u(android.view.View view, int i5, int i6, int i7, int i8, int i9) {
        measureChildWithMargins(view, i6, i7, i8, i9);
    }

    /* JADX WARN: Code duplicated, block: B:197:0x0453  */
    /* JADX WARN: Code duplicated, block: B:60:0x0177  */
    /* JADX WARN: Code duplicated, block: B:67:0x0199  */
    /* JADX WARN: Code duplicated, block: B:74:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:77:0x01cd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:81:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:84:0x01dd  */
    public void v(int i5, int i6) {
        int[] iArr;
        int i7;
        int iMax;
        int iMax2;
        int i8;
        int i9;
        int baseline;
        int i10;
        int i11;
        byte b5;
        int i12;
        int i13;
        boolean z4;
        boolean z5;
        android.view.View view;
        int i14;
        boolean z6;
        int i15;
        int measuredHeight;
        int iN;
        int baseline2;
        int i16;
        this.f745f = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = android.view.View.MeasureSpec.getMode(i5);
        int mode2 = android.view.View.MeasureSpec.getMode(i6);
        if (this.f748i == null || this.f749o == null) {
            this.f748i = new int[4];
            this.f749o = new int[4];
        }
        int[] iArr2 = this.f748i;
        int[] iArr3 = this.f749o;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z7 = this.f740a;
        boolean z8 = this.f747h;
        int i17 = com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY;
        boolean z9 = mode == 1073741824;
        int iN2 = 0;
        int iMax3 = 0;
        int iMax4 = 0;
        int iMax5 = 0;
        int iMax6 = 0;
        boolean z10 = false;
        int iCombineMeasuredStates = 0;
        boolean z11 = false;
        boolean z12 = true;
        float f5 = 0.0f;
        while (true) {
            iArr = iArr3;
            if (iN2 >= virtualChildCount) {
                break;
            }
            android.view.View viewQ = q(iN2);
            if (viewQ == null) {
                this.f745f += w(iN2);
            } else {
                if (viewQ.getVisibility() == 8) {
                    iN2 += n(viewQ, iN2);
                } else {
                    if (r(iN2)) {
                        this.f745f += this.f751q;
                    }
                    androidx.appcompat.widget.LinearLayoutCompat.LayoutParams layoutParams = (androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewQ.getLayoutParams();
                    float f6 = layoutParams.f755a;
                    float f7 = f5 + f6;
                    if (mode == i17 && ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width == 0 && f6 > 0.0f) {
                        if (z9) {
                            this.f745f += ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        } else {
                            int i18 = this.f745f;
                            this.f745f = java.lang.Math.max(i18, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + i18 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                        }
                        if (z7) {
                            int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
                            viewQ.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                            i13 = iN2;
                            z4 = z8;
                            z5 = z7;
                            view = viewQ;
                        } else {
                            i13 = iN2;
                            z4 = z8;
                            z5 = z7;
                            view = viewQ;
                            z10 = true;
                            i14 = com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY;
                        }
                        if (mode2 == i14 && ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                            z6 = true;
                            z11 = true;
                        } else {
                            z6 = false;
                        }
                        i15 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        measuredHeight = view.getMeasuredHeight() + i15;
                        iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                        if (z5 && (baseline2 = view.getBaseline()) != -1) {
                            i16 = layoutParams.f756b;
                            if (i16 < 0) {
                                i16 = this.f744e;
                            }
                            int i19 = (((i16 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i19] = java.lang.Math.max(iArr2[i19], baseline2);
                            iArr[i19] = java.lang.Math.max(iArr[i19], measuredHeight - baseline2);
                        }
                        iMax4 = java.lang.Math.max(iMax4, measuredHeight);
                        if (z12 || ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height != -1) {
                            z12 = false;
                        } else {
                            z12 = true;
                        }
                        if (layoutParams.f755a > 0.0f) {
                            if (!z6) {
                                i15 = measuredHeight;
                            }
                            iMax6 = java.lang.Math.max(iMax6, i15);
                        } else {
                            int i20 = iMax6;
                            if (!z6) {
                                i15 = measuredHeight;
                            }
                            iMax5 = java.lang.Math.max(iMax5, i15);
                            iMax6 = i20;
                        }
                        int i21 = i13;
                        iN = n(view, i21) + i21;
                        f5 = f7;
                    } else {
                        if (((android.view.ViewGroup.MarginLayoutParams) layoutParams).width != 0 || f6 <= 0.0f) {
                            b5 = -2;
                            i12 = Integer.MIN_VALUE;
                        } else {
                            b5 = -2;
                            ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width = -2;
                            i12 = 0;
                        }
                        i13 = iN2;
                        int i22 = i12;
                        z4 = z8;
                        z5 = z7;
                        u(viewQ, i13, i5, f7 == 0.0f ? this.f745f : 0, i6, 0);
                        if (i22 != Integer.MIN_VALUE) {
                            ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width = i22;
                        }
                        int measuredWidth = viewQ.getMeasuredWidth();
                        if (z9) {
                            view = viewQ;
                            this.f745f += ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + measuredWidth + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin + p(view);
                        } else {
                            view = viewQ;
                            int i23 = this.f745f;
                            this.f745f = java.lang.Math.max(i23, i23 + measuredWidth + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin + p(view));
                        }
                        if (z4) {
                            iMax3 = java.lang.Math.max(measuredWidth, iMax3);
                        }
                    }
                    i14 = com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY;
                    if (mode2 == i14) {
                        z6 = false;
                    } else {
                        z6 = false;
                    }
                    i15 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    measuredHeight = view.getMeasuredHeight() + i15;
                    iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    if (z5) {
                        i16 = layoutParams.f756b;
                        if (i16 < 0) {
                            i16 = this.f744e;
                        }
                        int i110 = (((i16 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i110] = java.lang.Math.max(iArr2[i110], baseline2);
                        iArr[i110] = java.lang.Math.max(iArr[i110], measuredHeight - baseline2);
                    }
                    iMax4 = java.lang.Math.max(iMax4, measuredHeight);
                    if (z12) {
                        z12 = false;
                    } else {
                        z12 = false;
                    }
                    if (layoutParams.f755a > 0.0f) {
                        if (!z6) {
                            i15 = measuredHeight;
                        }
                        iMax6 = java.lang.Math.max(iMax6, i15);
                    } else {
                        int i24 = iMax6;
                        if (!z6) {
                            i15 = measuredHeight;
                        }
                        iMax5 = java.lang.Math.max(iMax5, i15);
                        iMax6 = i24;
                    }
                    int i25 = i13;
                    iN = n(view, i25) + i25;
                    f5 = f7;
                }
                int i26 = iN + 1;
                iArr3 = iArr;
                z8 = z4;
                z7 = z5;
                i17 = i14;
                iN2 = i26;
            }
            z4 = z8;
            z5 = z7;
            int i27 = i17;
            iN = iN2;
            i14 = i27;
            int i28 = iN + 1;
            iArr3 = iArr;
            z8 = z4;
            z7 = z5;
            i17 = i14;
            iN2 = i28;
        }
        boolean z13 = z8;
        boolean z14 = z7;
        int i29 = iMax4;
        int i30 = iMax5;
        int i31 = iMax6;
        int i32 = iCombineMeasuredStates;
        if (this.f745f > 0 && r(virtualChildCount)) {
            this.f745f += this.f751q;
        }
        int iMax7 = (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? i29 : java.lang.Math.max(i29, java.lang.Math.max(iArr2[3], java.lang.Math.max(iArr2[0], java.lang.Math.max(iArr2[1], iArr2[2]))) + java.lang.Math.max(iArr[3], java.lang.Math.max(iArr[0], java.lang.Math.max(iArr[1], iArr[2]))));
        if (z13 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.f745f = 0;
            int iN3 = 0;
            while (iN3 < virtualChildCount) {
                android.view.View viewQ2 = q(iN3);
                if (viewQ2 == null) {
                    this.f745f += w(iN3);
                } else if (viewQ2.getVisibility() == 8) {
                    iN3 += n(viewQ2, iN3);
                } else {
                    androidx.appcompat.widget.LinearLayoutCompat.LayoutParams layoutParams2 = (androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewQ2.getLayoutParams();
                    if (z9) {
                        this.f745f += ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + iMax3 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).rightMargin + p(viewQ2);
                    } else {
                        int i33 = this.f745f;
                        this.f745f = java.lang.Math.max(i33, i33 + iMax3 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).rightMargin + p(viewQ2));
                    }
                    iN3++;
                    iMax7 = iMax7;
                }
                iN3++;
                iMax7 = iMax7;
            }
        }
        int i34 = iMax7;
        int paddingLeft = this.f745f + getPaddingLeft() + getPaddingRight();
        this.f745f = paddingLeft;
        int iResolveSizeAndState = android.view.View.resolveSizeAndState(java.lang.Math.max(paddingLeft, getSuggestedMinimumWidth()), i5, 0);
        int i35 = (16777215 & iResolveSizeAndState) - this.f745f;
        if (z10 || (i35 != 0 && f5 > 0.0f)) {
            float f8 = this.f746g;
            if (f8 > 0.0f) {
                f5 = f8;
            }
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            this.f745f = 0;
            int i36 = i30;
            int iMax8 = -1;
            int iCombineMeasuredStates2 = i32;
            int i37 = 0;
            while (i37 < virtualChildCount) {
                android.view.View viewQ3 = q(i37);
                if (viewQ3 == null || viewQ3.getVisibility() == 8) {
                    i8 = i35;
                    virtualChildCount = virtualChildCount;
                } else {
                    androidx.appcompat.widget.LinearLayoutCompat.LayoutParams layoutParams3 = (androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewQ3.getLayoutParams();
                    float f9 = layoutParams3.f755a;
                    if (f9 > 0.0f) {
                        int i38 = (int) ((i35 * f9) / f5);
                        float f10 = f5 - f9;
                        int i39 = i35 - i38;
                        int childMeasureSpec = android.view.ViewGroup.getChildMeasureSpec(i6, getPaddingTop() + getPaddingBottom() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).topMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin, ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).height);
                        if (((android.view.ViewGroup.MarginLayoutParams) layoutParams3).width == 0) {
                            i11 = com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY;
                            if (mode == 1073741824) {
                                if (i38 <= 0) {
                                    i38 = 0;
                                }
                                viewQ3.measure(android.view.View.MeasureSpec.makeMeasureSpec(i38, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), childMeasureSpec);
                            }
                            iCombineMeasuredStates2 = android.view.View.combineMeasuredStates(iCombineMeasuredStates2, viewQ3.getMeasuredState() & (-16777216));
                            f5 = f10;
                            i8 = i39;
                        } else {
                            i11 = com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY;
                        }
                        int measuredWidth2 = viewQ3.getMeasuredWidth() + i38;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        viewQ3.measure(android.view.View.MeasureSpec.makeMeasureSpec(measuredWidth2, i11), childMeasureSpec);
                        iCombineMeasuredStates2 = android.view.View.combineMeasuredStates(iCombineMeasuredStates2, viewQ3.getMeasuredState() & (-16777216));
                        f5 = f10;
                        i8 = i39;
                    } else {
                        i8 = i35;
                    }
                    if (z9) {
                        this.f745f += viewQ3.getMeasuredWidth() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).rightMargin + p(viewQ3);
                    } else {
                        int i40 = this.f745f;
                        this.f745f = java.lang.Math.max(i40, viewQ3.getMeasuredWidth() + i40 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).rightMargin + p(viewQ3));
                    }
                    boolean z15 = mode2 != 1073741824 && ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).height == -1;
                    int i41 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).topMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin;
                    int measuredHeight2 = viewQ3.getMeasuredHeight() + i41;
                    iMax8 = java.lang.Math.max(iMax8, measuredHeight2);
                    if (!z15) {
                        i41 = measuredHeight2;
                    }
                    int iMax9 = java.lang.Math.max(i36, i41);
                    if (z12) {
                        i9 = -1;
                        boolean z16 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).height == -1;
                        if (z14 && (baseline = viewQ3.getBaseline()) != i9) {
                            i10 = layoutParams3.f756b;
                            if (i10 < 0) {
                                i10 = this.f744e;
                            }
                            int i42 = (((i10 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i42] = java.lang.Math.max(iArr2[i42], baseline);
                            iArr[i42] = java.lang.Math.max(iArr[i42], measuredHeight2 - baseline);
                        }
                        z12 = z16;
                        i36 = iMax9;
                        f5 = f5;
                    } else {
                        i9 = -1;
                    }
                    if (z14) {
                        i10 = layoutParams3.f756b;
                        if (i10 < 0) {
                            i10 = this.f744e;
                        }
                        int i43 = (((i10 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i43] = java.lang.Math.max(iArr2[i43], baseline);
                        iArr[i43] = java.lang.Math.max(iArr[i43], measuredHeight2 - baseline);
                    }
                    z12 = z16;
                    i36 = iMax9;
                    f5 = f5;
                }
                i37++;
                i35 = i8;
                virtualChildCount = virtualChildCount;
            }
            i7 = virtualChildCount;
            this.f745f += getPaddingLeft() + getPaddingRight();
            iMax = (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? iMax8 : java.lang.Math.max(iMax8, java.lang.Math.max(iArr2[3], java.lang.Math.max(iArr2[0], java.lang.Math.max(iArr2[1], iArr2[2]))) + java.lang.Math.max(iArr[3], java.lang.Math.max(iArr[0], java.lang.Math.max(iArr[1], iArr[2]))));
            iMax2 = i36;
            i32 = iCombineMeasuredStates2;
        } else {
            iMax2 = java.lang.Math.max(i30, i31);
            if (z13 && mode != 1073741824) {
                for (int i44 = 0; i44 < virtualChildCount; i44++) {
                    android.view.View viewQ4 = q(i44);
                    if (viewQ4 != null && viewQ4.getVisibility() != 8 && ((androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewQ4.getLayoutParams()).f755a > 0.0f) {
                        viewQ4.measure(android.view.View.MeasureSpec.makeMeasureSpec(iMax3, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), android.view.View.MeasureSpec.makeMeasureSpec(viewQ4.getMeasuredHeight(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY));
                    }
                }
            }
            i7 = virtualChildCount;
            iMax = i34;
        }
        if (z12 || mode2 == 1073741824) {
            iMax2 = iMax;
        }
        setMeasuredDimension(iResolveSizeAndState | (i32 & (-16777216)), android.view.View.resolveSizeAndState(java.lang.Math.max(iMax2 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i6, i32 << 16));
        if (z11) {
            i(i7, i5);
        }
    }

    public int w(int i5) {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:150:0x0325  */
    /* JADX WARN: Code duplicated, block: B:156:0x0333  */
    public void x(int i5, int i6) {
        int i7;
        int iCombineMeasuredStates;
        int iMax;
        int i8;
        int i9;
        int i10;
        boolean z4;
        boolean z5;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        android.view.View view;
        int iMax2;
        boolean z6;
        int iMax3;
        this.f745f = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = android.view.View.MeasureSpec.getMode(i5);
        int mode2 = android.view.View.MeasureSpec.getMode(i6);
        int i20 = this.f741b;
        boolean z7 = this.f747h;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int iMax4 = 0;
        int i24 = 0;
        int iN = 0;
        boolean z8 = false;
        boolean z9 = false;
        float f5 = 0.0f;
        boolean z10 = true;
        while (true) {
            int i25 = 8;
            int i26 = iMax4;
            if (iN >= virtualChildCount) {
                int i27 = i21;
                int i28 = i23;
                int i29 = i24;
                int i30 = virtualChildCount;
                int i31 = mode2;
                int iMax5 = i22;
                if (this.f745f > 0) {
                    i7 = i30;
                    if (r(i7)) {
                        this.f745f += this.f752r;
                    }
                } else {
                    i7 = i30;
                }
                if (z7 && (i31 == Integer.MIN_VALUE || i31 == 0)) {
                    this.f745f = 0;
                    int iN2 = 0;
                    while (iN2 < i7) {
                        android.view.View viewQ = q(iN2);
                        if (viewQ == null) {
                            this.f745f += w(iN2);
                        } else if (viewQ.getVisibility() == i25) {
                            iN2 += n(viewQ, iN2);
                        } else {
                            androidx.appcompat.widget.LinearLayoutCompat.LayoutParams layoutParams = (androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewQ.getLayoutParams();
                            int i32 = this.f745f;
                            this.f745f = java.lang.Math.max(i32, i32 + i28 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + p(viewQ));
                        }
                        iN2++;
                        i25 = 8;
                    }
                }
                int paddingTop = this.f745f + getPaddingTop() + getPaddingBottom();
                this.f745f = paddingTop;
                int iResolveSizeAndState = android.view.View.resolveSizeAndState(java.lang.Math.max(paddingTop, getSuggestedMinimumHeight()), i6, 0);
                int i33 = (16777215 & iResolveSizeAndState) - this.f745f;
                if (z8 || (i33 != 0 && f5 > 0.0f)) {
                    float f6 = this.f746g;
                    if (f6 > 0.0f) {
                        f5 = f6;
                    }
                    this.f745f = 0;
                    int i34 = i33;
                    int i35 = i29;
                    iCombineMeasuredStates = i27;
                    int i36 = 0;
                    while (i36 < i7) {
                        android.view.View viewQ2 = q(i36);
                        if (viewQ2.getVisibility() == 8) {
                            i8 = i34;
                        } else {
                            androidx.appcompat.widget.LinearLayoutCompat.LayoutParams layoutParams2 = (androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewQ2.getLayoutParams();
                            float f7 = layoutParams2.f755a;
                            if (f7 > 0.0f) {
                                int i37 = (int) ((i34 * f7) / f5);
                                float f8 = f5 - f7;
                                i8 = i34 - i37;
                                int childMeasureSpec = android.view.ViewGroup.getChildMeasureSpec(i5, getPaddingLeft() + getPaddingRight() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).rightMargin, ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).width);
                                if (((android.view.ViewGroup.MarginLayoutParams) layoutParams2).height == 0) {
                                    i11 = com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY;
                                    if (i31 == 1073741824) {
                                        if (i37 <= 0) {
                                            i37 = 0;
                                        }
                                        viewQ2.measure(childMeasureSpec, android.view.View.MeasureSpec.makeMeasureSpec(i37, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY));
                                    }
                                    iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, viewQ2.getMeasuredState() & (-256));
                                    f5 = f8;
                                } else {
                                    i11 = com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY;
                                }
                                int measuredHeight = viewQ2.getMeasuredHeight() + i37;
                                if (measuredHeight < 0) {
                                    measuredHeight = 0;
                                }
                                viewQ2.measure(childMeasureSpec, android.view.View.MeasureSpec.makeMeasureSpec(measuredHeight, i11));
                                iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, viewQ2.getMeasuredState() & (-256));
                                f5 = f8;
                            } else {
                                i8 = i34;
                            }
                            int i38 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                            int measuredWidth = viewQ2.getMeasuredWidth() + i38;
                            iMax5 = java.lang.Math.max(iMax5, measuredWidth);
                            float f9 = f5;
                            if (mode != 1073741824) {
                                i9 = iCombineMeasuredStates;
                                i10 = -1;
                                z4 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).width == -1;
                                if (!z4) {
                                    i38 = measuredWidth;
                                }
                                int iMax6 = java.lang.Math.max(i35, i38);
                                if (z10 || ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).width != i10) {
                                    z5 = false;
                                } else {
                                    z5 = true;
                                }
                                int i39 = this.f745f;
                                this.f745f = java.lang.Math.max(i39, viewQ2.getMeasuredHeight() + i39 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + p(viewQ2));
                                z10 = z5;
                                iCombineMeasuredStates = i9;
                                i35 = iMax6;
                                f5 = f9;
                            } else {
                                i9 = iCombineMeasuredStates;
                                i10 = -1;
                            }
                            if (!z4) {
                                i38 = measuredWidth;
                            }
                            int iMax7 = java.lang.Math.max(i35, i38);
                            if (z10) {
                                z5 = false;
                            } else {
                                z5 = false;
                            }
                            int i310 = this.f745f;
                            this.f745f = java.lang.Math.max(i310, viewQ2.getMeasuredHeight() + i310 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + p(viewQ2));
                            z10 = z5;
                            iCombineMeasuredStates = i9;
                            i35 = iMax7;
                            f5 = f9;
                        }
                        i36++;
                        i34 = i8;
                    }
                    this.f745f += getPaddingTop() + getPaddingBottom();
                    iMax = i35;
                } else {
                    iMax = java.lang.Math.max(i29, i26);
                    if (z7 && i31 != 1073741824) {
                        for (int i40 = 0; i40 < i7; i40++) {
                            android.view.View viewQ3 = q(i40);
                            if (viewQ3 != null && viewQ3.getVisibility() != 8 && ((androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewQ3.getLayoutParams()).f755a > 0.0f) {
                                viewQ3.measure(android.view.View.MeasureSpec.makeMeasureSpec(viewQ3.getMeasuredWidth(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), android.view.View.MeasureSpec.makeMeasureSpec(i28, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY));
                            }
                        }
                    }
                    iCombineMeasuredStates = i27;
                }
                if (z10 || mode == 1073741824) {
                    iMax = iMax5;
                }
                setMeasuredDimension(android.view.View.resolveSizeAndState(java.lang.Math.max(iMax + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i5, iCombineMeasuredStates), iResolveSizeAndState);
                if (z9) {
                    j(i7, i6);
                    return;
                }
                return;
            }
            android.view.View viewQ4 = q(iN);
            if (viewQ4 == null) {
                this.f745f += w(iN);
                i15 = virtualChildCount;
                i16 = mode2;
                iMax4 = i26;
            } else {
                int i41 = i21;
                if (viewQ4.getVisibility() == 8) {
                    iN += n(viewQ4, iN);
                    i15 = virtualChildCount;
                    iMax4 = i26;
                    i21 = i41;
                    i16 = mode2;
                } else {
                    if (r(iN)) {
                        this.f745f += this.f752r;
                    }
                    androidx.appcompat.widget.LinearLayoutCompat.LayoutParams layoutParams3 = (androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewQ4.getLayoutParams();
                    float f10 = layoutParams3.f755a;
                    float f11 = f5 + f10;
                    if (mode2 == 1073741824 && ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).height == 0 && f10 > 0.0f) {
                        int i42 = this.f745f;
                        this.f745f = java.lang.Math.max(i42, ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).topMargin + i42 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin);
                        iMax2 = i23;
                        view = viewQ4;
                        i18 = i24;
                        z8 = true;
                        i13 = i41;
                        i14 = i22;
                        i15 = virtualChildCount;
                        i16 = mode2;
                        i17 = i26;
                        i19 = iN;
                    } else {
                        int i43 = i22;
                        if (((android.view.ViewGroup.MarginLayoutParams) layoutParams3).height != 0 || f10 <= 0.0f) {
                            i12 = Integer.MIN_VALUE;
                        } else {
                            ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).height = -2;
                            i12 = 0;
                        }
                        i13 = i41;
                        int i44 = i12;
                        i14 = i43;
                        int i45 = i23;
                        i15 = virtualChildCount;
                        i16 = mode2;
                        i17 = i26;
                        i18 = i24;
                        i19 = iN;
                        u(viewQ4, iN, i5, 0, i6, f11 == 0.0f ? this.f745f : 0);
                        if (i44 != Integer.MIN_VALUE) {
                            ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).height = i44;
                        }
                        int measuredHeight2 = viewQ4.getMeasuredHeight();
                        int i46 = this.f745f;
                        view = viewQ4;
                        this.f745f = java.lang.Math.max(i46, i46 + measuredHeight2 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).topMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin + p(view));
                        iMax2 = z7 ? java.lang.Math.max(measuredHeight2, i45) : i45;
                    }
                    if (i20 >= 0 && i20 == i19 + 1) {
                        this.f742c = this.f745f;
                    }
                    if (i19 < i20 && layoutParams3.f755a > 0.0f) {
                        throw new java.lang.RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                    if (mode == 1073741824 || ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).width != -1) {
                        z6 = false;
                    } else {
                        z6 = true;
                        z9 = true;
                    }
                    int i47 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).rightMargin;
                    int measuredWidth2 = view.getMeasuredWidth() + i47;
                    int iMax8 = java.lang.Math.max(i14, measuredWidth2);
                    int iCombineMeasuredStates2 = android.view.View.combineMeasuredStates(i13, view.getMeasuredState());
                    z10 = z10 && ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).width == -1;
                    if (layoutParams3.f755a > 0.0f) {
                        if (!z6) {
                            i47 = measuredWidth2;
                        }
                        iMax4 = java.lang.Math.max(i17, i47);
                        iMax3 = i18;
                    } else {
                        if (!z6) {
                            i47 = measuredWidth2;
                        }
                        iMax3 = java.lang.Math.max(i18, i47);
                        iMax4 = i17;
                    }
                    int iN3 = n(view, i19) + i19;
                    i23 = iMax2;
                    f5 = f11;
                    i24 = iMax3;
                    i21 = iCombineMeasuredStates2;
                    iN = iN3;
                    i22 = iMax8;
                }
            }
            iN++;
            mode2 = i16;
            virtualChildCount = i15;
        }
    }

    public final void y(android.view.View view, int i5, int i6, int i7, int i8) {
        view.layout(i5, i6, i7 + i5, i8 + i6);
    }

    public LinearLayoutCompat(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.f740a = true;
        this.f741b = -1;
        this.f742c = 0;
        this.f744e = 8388659;
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(context, attributeSet, androidx.appcompat.R.styleable.LinearLayoutCompat, i5, 0);
        int iJ = d0VarT.j(androidx.appcompat.R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (iJ >= 0) {
            setOrientation(iJ);
        }
        int iJ2 = d0VarT.j(androidx.appcompat.R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (iJ2 >= 0) {
            setGravity(iJ2);
        }
        boolean zA = d0VarT.a(androidx.appcompat.R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!zA) {
            setBaselineAligned(zA);
        }
        this.f746g = d0VarT.h(androidx.appcompat.R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f741b = d0VarT.j(androidx.appcompat.R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.f747h = d0VarT.a(androidx.appcompat.R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(d0VarT.f(androidx.appcompat.R.styleable.LinearLayoutCompat_divider));
        this.f753s = d0VarT.j(androidx.appcompat.R.styleable.LinearLayoutCompat_showDividers, 0);
        this.f754t = d0VarT.e(androidx.appcompat.R.styleable.LinearLayoutCompat_dividerPadding, 0);
        d0VarT.u();
    }

    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f755a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f756b;

        public LayoutParams(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f756b = -1;
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.LinearLayoutCompat_Layout);
            this.f755a = typedArrayObtainStyledAttributes.getFloat(androidx.appcompat.R.styleable.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.f756b = typedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i5, int i6) {
            super(i5, i6);
            this.f756b = -1;
            this.f755a = 0.0f;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f756b = -1;
        }
    }
}
