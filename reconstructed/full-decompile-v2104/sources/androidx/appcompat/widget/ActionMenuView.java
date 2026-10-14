package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ActionMenuView extends androidx.appcompat.widget.LinearLayoutCompat implements androidx.appcompat.view.menu.e.b, androidx.appcompat.view.menu.j {
    public androidx.appcompat.view.menu.e.a A;
    public boolean B;
    public int C;
    public int D;
    public int E;
    public androidx.appcompat.widget.ActionMenuView.d F;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public androidx.appcompat.view.menu.e f640u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public android.content.Context f641v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f642w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f643x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public androidx.appcompat.widget.ActionMenuPresenter f644y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public androidx.appcompat.view.menu.i.a f645z;

    public static class LayoutParams extends androidx.appcompat.widget.LinearLayoutCompat.LayoutParams {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @android.view.ViewDebug.ExportedProperty
        public boolean f646c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @android.view.ViewDebug.ExportedProperty
        public int f647d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @android.view.ViewDebug.ExportedProperty
        public int f648e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @android.view.ViewDebug.ExportedProperty
        public boolean f649f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @android.view.ViewDebug.ExportedProperty
        public boolean f650g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f651h;

        public LayoutParams(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(androidx.appcompat.widget.ActionMenuView.LayoutParams layoutParams) {
            super(layoutParams);
            this.f646c = layoutParams.f646c;
        }

        public LayoutParams(int i5, int i6) {
            super(i5, i6);
            this.f646c = false;
        }
    }

    public interface a {
        boolean a();

        boolean b();
    }

    public static class b implements androidx.appcompat.view.menu.i.a {
        @Override // androidx.appcompat.view.menu.i.a
        public void a(androidx.appcompat.view.menu.e eVar, boolean z4) {
        }

        @Override // androidx.appcompat.view.menu.i.a
        public boolean b(androidx.appcompat.view.menu.e eVar) {
            return false;
        }
    }

    public class c implements androidx.appcompat.view.menu.e.a {
        public c() {
        }

        @Override // androidx.appcompat.view.menu.e.a
        public boolean a(androidx.appcompat.view.menu.e eVar, android.view.MenuItem menuItem) {
            androidx.appcompat.widget.ActionMenuView.d dVar = androidx.appcompat.widget.ActionMenuView.this.F;
            return dVar != null && dVar.onMenuItemClick(menuItem);
        }

        @Override // androidx.appcompat.view.menu.e.a
        public void b(androidx.appcompat.view.menu.e eVar) {
            androidx.appcompat.view.menu.e.a aVar = androidx.appcompat.widget.ActionMenuView.this.A;
            if (aVar != null) {
                aVar.b(eVar);
            }
        }
    }

    public interface d {
        boolean onMenuItemClick(android.view.MenuItem menuItem);
    }

    public ActionMenuView(android.content.Context context) {
        this(context, null);
    }

    public static int J(android.view.View view, int i5, int i6, int i7, int i8) {
        androidx.appcompat.widget.ActionMenuView.LayoutParams layoutParams = (androidx.appcompat.widget.ActionMenuView.LayoutParams) view.getLayoutParams();
        int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(android.view.View.MeasureSpec.getSize(i7) - i8, android.view.View.MeasureSpec.getMode(i7));
        androidx.appcompat.view.menu.ActionMenuItemView actionMenuItemView = view instanceof androidx.appcompat.view.menu.ActionMenuItemView ? (androidx.appcompat.view.menu.ActionMenuItemView) view : null;
        boolean z4 = actionMenuItemView != null && actionMenuItemView.f();
        int i9 = 2;
        if (i6 <= 0 || (z4 && i6 < 2)) {
            i9 = 0;
        } else {
            view.measure(android.view.View.MeasureSpec.makeMeasureSpec(i6 * i5, Integer.MIN_VALUE), iMakeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i10 = measuredWidth / i5;
            if (measuredWidth % i5 != 0) {
                i10++;
            }
            if (!z4 || i10 >= 2) {
                i9 = i10;
            }
        }
        layoutParams.f649f = !layoutParams.f646c && z4;
        layoutParams.f647d = i9;
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(i5 * i9, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), iMakeMeasureSpec);
        return i9;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public androidx.appcompat.widget.ActionMenuView.LayoutParams generateDefaultLayoutParams() {
        androidx.appcompat.widget.ActionMenuView.LayoutParams layoutParams = new androidx.appcompat.widget.ActionMenuView.LayoutParams(-2, -2);
        layoutParams.f756b = 16;
        return layoutParams;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public androidx.appcompat.widget.ActionMenuView.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.ActionMenuView.LayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public androidx.appcompat.widget.ActionMenuView.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        androidx.appcompat.widget.ActionMenuView.LayoutParams layoutParams2 = layoutParams instanceof androidx.appcompat.widget.ActionMenuView.LayoutParams ? new androidx.appcompat.widget.ActionMenuView.LayoutParams((androidx.appcompat.widget.ActionMenuView.LayoutParams) layoutParams) : new androidx.appcompat.widget.ActionMenuView.LayoutParams(layoutParams);
        if (layoutParams2.f756b <= 0) {
            layoutParams2.f756b = 16;
        }
        return layoutParams2;
    }

    public androidx.appcompat.widget.ActionMenuView.LayoutParams D() {
        androidx.appcompat.widget.ActionMenuView.LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        layoutParamsGenerateDefaultLayoutParams.f646c = true;
        return layoutParamsGenerateDefaultLayoutParams;
    }

    public boolean E(int i5) {
        boolean zA = false;
        if (i5 == 0) {
            return false;
        }
        android.view.KeyEvent.Callback childAt = getChildAt(i5 - 1);
        android.view.KeyEvent.Callback childAt2 = getChildAt(i5);
        if (i5 < getChildCount() && (childAt instanceof androidx.appcompat.widget.ActionMenuView.a)) {
            zA = false | ((androidx.appcompat.widget.ActionMenuView.a) childAt).a();
        }
        return (i5 <= 0 || !(childAt2 instanceof androidx.appcompat.widget.ActionMenuView.a)) ? zA : zA | ((androidx.appcompat.widget.ActionMenuView.a) childAt2).b();
    }

    public boolean F() {
        androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter = this.f644y;
        return actionMenuPresenter != null && actionMenuPresenter.B();
    }

    public boolean G() {
        androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter = this.f644y;
        return actionMenuPresenter != null && actionMenuPresenter.D();
    }

    public boolean H() {
        androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter = this.f644y;
        return actionMenuPresenter != null && actionMenuPresenter.E();
    }

    public boolean I() {
        return this.f643x;
    }

    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r14v14 */
    public final void K(int i5, int i6) {
        boolean z4;
        int i7;
        int i8;
        boolean z5;
        ?? r14;
        int mode = android.view.View.MeasureSpec.getMode(i6);
        int size = android.view.View.MeasureSpec.getSize(i5);
        int size2 = android.view.View.MeasureSpec.getSize(i6);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = android.view.ViewGroup.getChildMeasureSpec(i6, paddingTop, -2);
        int i9 = size - paddingLeft;
        int i10 = this.D;
        int i11 = i9 / i10;
        int i12 = i9 % i10;
        if (i11 == 0) {
            setMeasuredDimension(i9, 0);
            return;
        }
        int i13 = i10 + (i12 / i11);
        int childCount = getChildCount();
        int iMax = 0;
        int i14 = 0;
        boolean z6 = false;
        int i15 = 0;
        int iMax2 = 0;
        int i16 = 0;
        long j5 = 0;
        while (i14 < childCount) {
            android.view.View childAt = getChildAt(i14);
            int i17 = size2;
            if (childAt.getVisibility() != 8) {
                boolean z7 = childAt instanceof androidx.appcompat.view.menu.ActionMenuItemView;
                int i18 = i15 + 1;
                if (z7) {
                    int i19 = this.E;
                    r14 = 0;
                    childAt.setPadding(i19, 0, i19, 0);
                } else {
                    r14 = 0;
                }
                androidx.appcompat.widget.ActionMenuView.LayoutParams layoutParams = (androidx.appcompat.widget.ActionMenuView.LayoutParams) childAt.getLayoutParams();
                layoutParams.f651h = r14;
                layoutParams.f648e = r14;
                layoutParams.f647d = r14;
                layoutParams.f649f = r14;
                ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin = r14;
                ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin = r14;
                layoutParams.f650g = z7 && ((androidx.appcompat.view.menu.ActionMenuItemView) childAt).f();
                int iJ = J(childAt, i13, layoutParams.f646c ? 1 : i11, childMeasureSpec, paddingTop);
                iMax2 = java.lang.Math.max(iMax2, iJ);
                if (layoutParams.f649f) {
                    i16++;
                }
                if (layoutParams.f646c) {
                    z6 = true;
                }
                i11 -= iJ;
                iMax = java.lang.Math.max(iMax, childAt.getMeasuredHeight());
                if (iJ == 1) {
                    j5 |= (long) (1 << i14);
                    iMax = iMax;
                }
                i15 = i18;
            }
            i14++;
            size2 = i17;
        }
        int i20 = size2;
        boolean z8 = z6 && i15 == 2;
        boolean z9 = false;
        while (true) {
            if (i16 <= 0 || i11 <= 0) {
                z4 = z9;
                i7 = iMax;
                break;
            }
            int i21 = Integer.MAX_VALUE;
            int i22 = 0;
            int i23 = 0;
            long j6 = 0;
            while (i23 < childCount) {
                boolean z10 = z9;
                androidx.appcompat.widget.ActionMenuView.LayoutParams layoutParams2 = (androidx.appcompat.widget.ActionMenuView.LayoutParams) getChildAt(i23).getLayoutParams();
                int i24 = iMax;
                if (layoutParams2.f649f) {
                    int i25 = layoutParams2.f647d;
                    if (i25 < i21) {
                        j6 = 1 << i23;
                        i21 = i25;
                        i22 = 1;
                    } else if (i25 == i21) {
                        i22++;
                        j6 |= 1 << i23;
                    }
                }
                i23++;
                iMax = i24;
                z9 = z10;
            }
            z4 = z9;
            i7 = iMax;
            j5 |= j6;
            if (i22 > i11) {
                break;
            }
            int i26 = i21 + 1;
            int i27 = 0;
            while (i27 < childCount) {
                android.view.View childAt2 = getChildAt(i27);
                androidx.appcompat.widget.ActionMenuView.LayoutParams layoutParams3 = (androidx.appcompat.widget.ActionMenuView.LayoutParams) childAt2.getLayoutParams();
                int i28 = i9;
                int i29 = mode;
                long j7 = 1 << i27;
                if ((j6 & j7) == 0) {
                    if (layoutParams3.f647d == i26) {
                        j5 |= j7;
                    }
                    z8 = z8;
                } else {
                    if (z8 && layoutParams3.f650g && i11 == 1) {
                        int i30 = this.E;
                        childAt2.setPadding(i30 + i13, 0, i30, 0);
                    }
                    layoutParams3.f647d++;
                    layoutParams3.f651h = true;
                    i11--;
                }
                i27++;
                mode = i29;
                i9 = i28;
                z8 = z8;
            }
            iMax = i7;
            z9 = true;
        }
        boolean z11 = !z6 && i15 == 1;
        if (i11 <= 0 || j5 == 0 || (i11 >= i15 - 1 && !z11 && iMax2 <= 1)) {
            i8 = 0;
            z5 = z4;
        } else {
            float fBitCount = java.lang.Long.bitCount(j5);
            if (z11) {
                i8 = 0;
            } else {
                i8 = 0;
                if ((j5 & 1) != 0 && !((androidx.appcompat.widget.ActionMenuView.LayoutParams) getChildAt(0).getLayoutParams()).f650g) {
                    fBitCount -= 0.5f;
                }
                int i31 = childCount - 1;
                if ((j5 & ((long) (1 << i31))) != 0 && !((androidx.appcompat.widget.ActionMenuView.LayoutParams) getChildAt(i31).getLayoutParams()).f650g) {
                    fBitCount -= 0.5f;
                }
            }
            int i32 = fBitCount > 0.0f ? (int) ((i11 * i13) / fBitCount) : i8;
            z5 = z4;
            for (int i33 = i8; i33 < childCount; i33++) {
                if ((j5 & ((long) (1 << i33))) != 0) {
                    android.view.View childAt3 = getChildAt(i33);
                    androidx.appcompat.widget.ActionMenuView.LayoutParams layoutParams4 = (androidx.appcompat.widget.ActionMenuView.LayoutParams) childAt3.getLayoutParams();
                    if (childAt3 instanceof androidx.appcompat.view.menu.ActionMenuItemView) {
                        layoutParams4.f648e = i32;
                        layoutParams4.f651h = true;
                        if (i33 == 0 && !layoutParams4.f650g) {
                            ((android.view.ViewGroup.MarginLayoutParams) layoutParams4).leftMargin = (-i32) / 2;
                        }
                        z5 = true;
                    } else if (layoutParams4.f646c) {
                        layoutParams4.f648e = i32;
                        layoutParams4.f651h = true;
                        ((android.view.ViewGroup.MarginLayoutParams) layoutParams4).rightMargin = (-i32) / 2;
                        z5 = true;
                    } else {
                        if (i33 != 0) {
                            ((android.view.ViewGroup.MarginLayoutParams) layoutParams4).leftMargin = i32 / 2;
                        }
                        if (i33 != childCount - 1) {
                            ((android.view.ViewGroup.MarginLayoutParams) layoutParams4).rightMargin = i32 / 2;
                        }
                    }
                }
            }
        }
        if (z5) {
            for (int i34 = i8; i34 < childCount; i34++) {
                android.view.View childAt4 = getChildAt(i34);
                androidx.appcompat.widget.ActionMenuView.LayoutParams layoutParams5 = (androidx.appcompat.widget.ActionMenuView.LayoutParams) childAt4.getLayoutParams();
                if (layoutParams5.f651h) {
                    childAt4.measure(android.view.View.MeasureSpec.makeMeasureSpec((layoutParams5.f647d * i13) + layoutParams5.f648e, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i9, mode != 1073741824 ? i7 : i20);
    }

    public androidx.appcompat.view.menu.e L() {
        return this.f640u;
    }

    public void M(androidx.appcompat.view.menu.i.a aVar, androidx.appcompat.view.menu.e.a aVar2) {
        this.f645z = aVar;
        this.A = aVar2;
    }

    public boolean N() {
        androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter = this.f644y;
        return actionMenuPresenter != null && actionMenuPresenter.K();
    }

    @Override // androidx.appcompat.view.menu.e.b
    public boolean a(androidx.appcompat.view.menu.g gVar) {
        return this.f640u.L(gVar, 0);
    }

    @Override // androidx.appcompat.view.menu.j
    public void b(androidx.appcompat.view.menu.e eVar) {
        this.f640u = eVar;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams != null && (layoutParams instanceof androidx.appcompat.widget.ActionMenuView.LayoutParams);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public android.view.Menu getMenu() {
        if (this.f640u == null) {
            android.content.Context context = getContext();
            androidx.appcompat.view.menu.e eVar = new androidx.appcompat.view.menu.e(context);
            this.f640u = eVar;
            eVar.R(new androidx.appcompat.widget.ActionMenuView.c());
            androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter = new androidx.appcompat.widget.ActionMenuPresenter(context);
            this.f644y = actionMenuPresenter;
            actionMenuPresenter.J(true);
            androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter2 = this.f644y;
            androidx.appcompat.view.menu.i.a bVar = this.f645z;
            if (bVar == null) {
                bVar = new androidx.appcompat.widget.ActionMenuView.b();
            }
            actionMenuPresenter2.i(bVar);
            this.f640u.c(this.f644y, this.f641v);
            this.f644y.H(this);
        }
        return this.f640u;
    }

    public android.graphics.drawable.Drawable getOverflowIcon() {
        getMenu();
        return this.f644y.A();
    }

    public int getPopupTheme() {
        return this.f642w;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.view.View
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter = this.f644y;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.k(false);
            if (this.f644y.E()) {
                this.f644y.B();
                this.f644y.K();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        z();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int width;
        int paddingLeft;
        if (!this.B) {
            super.onLayout(z4, i5, i6, i7, i8);
            return;
        }
        int childCount = getChildCount();
        int i9 = (i8 - i6) / 2;
        int dividerWidth = getDividerWidth();
        int i10 = i7 - i5;
        int paddingRight = (i10 - getPaddingRight()) - getPaddingLeft();
        boolean zB = androidx.appcompat.widget.h0.b(this);
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            android.view.View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                androidx.appcompat.widget.ActionMenuView.LayoutParams layoutParams = (androidx.appcompat.widget.ActionMenuView.LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f646c) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (E(i13)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zB) {
                        paddingLeft = getPaddingLeft() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i14 = i9 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i14, width, measuredHeight + i14);
                    paddingRight -= measuredWidth;
                    i11 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin) + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    E(i13);
                    i12++;
                }
            }
        }
        if (childCount == 1 && i11 == 0) {
            android.view.View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i15 = (i10 / 2) - (measuredWidth2 / 2);
            int i16 = i9 - (measuredHeight2 / 2);
            childAt2.layout(i15, i16, measuredWidth2 + i15, measuredHeight2 + i16);
            return;
        }
        int i17 = i12 - (i11 ^ 1);
        int iMax = java.lang.Math.max(0, i17 > 0 ? paddingRight / i17 : 0);
        if (zB) {
            int width2 = getWidth() - getPaddingRight();
            for (int i18 = 0; i18 < childCount; i18++) {
                android.view.View childAt3 = getChildAt(i18);
                androidx.appcompat.widget.ActionMenuView.LayoutParams layoutParams2 = (androidx.appcompat.widget.ActionMenuView.LayoutParams) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !layoutParams2.f646c) {
                    int i19 = width2 - ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i20 = i9 - (measuredHeight3 / 2);
                    childAt3.layout(i19 - measuredWidth3, i20, i19, measuredHeight3 + i20);
                    width2 = i19 - ((measuredWidth3 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i21 = 0; i21 < childCount; i21++) {
            android.view.View childAt4 = getChildAt(i21);
            androidx.appcompat.widget.ActionMenuView.LayoutParams layoutParams3 = (androidx.appcompat.widget.ActionMenuView.LayoutParams) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !layoutParams3.f646c) {
                int i22 = paddingLeft2 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i23 = i9 - (measuredHeight4 / 2);
                childAt4.layout(i22, i23, i22 + measuredWidth4, measuredHeight4 + i23);
                paddingLeft2 = i22 + measuredWidth4 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).rightMargin + iMax;
            }
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i5, int i6) {
        androidx.appcompat.view.menu.e eVar;
        boolean z4 = this.B;
        boolean z5 = android.view.View.MeasureSpec.getMode(i5) == 1073741824;
        this.B = z5;
        if (z4 != z5) {
            this.C = 0;
        }
        int size = android.view.View.MeasureSpec.getSize(i5);
        if (this.B && (eVar = this.f640u) != null && size != this.C) {
            this.C = size;
            eVar.K(true);
        }
        int childCount = getChildCount();
        if (this.B && childCount > 0) {
            K(i5, i6);
            return;
        }
        for (int i7 = 0; i7 < childCount; i7++) {
            androidx.appcompat.widget.ActionMenuView.LayoutParams layoutParams = (androidx.appcompat.widget.ActionMenuView.LayoutParams) getChildAt(i7).getLayoutParams();
            ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin = 0;
            ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin = 0;
        }
        super.onMeasure(i5, i6);
    }

    public void setExpandedActionViewsExclusive(boolean z4) {
        this.f644y.G(z4);
    }

    public void setOnMenuItemClickListener(androidx.appcompat.widget.ActionMenuView.d dVar) {
        this.F = dVar;
    }

    public void setOverflowIcon(android.graphics.drawable.Drawable drawable) {
        getMenu();
        this.f644y.I(drawable);
    }

    public void setOverflowReserved(boolean z4) {
        this.f643x = z4;
    }

    public void setPopupTheme(int i5) {
        if (this.f642w != i5) {
            this.f642w = i5;
            if (i5 == 0) {
                this.f641v = getContext();
            } else {
                this.f641v = new android.view.ContextThemeWrapper(getContext(), i5);
            }
        }
    }

    public void setPresenter(androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter) {
        this.f644y = actionMenuPresenter;
        actionMenuPresenter.H(this);
    }

    public void z() {
        androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter = this.f644y;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.y();
        }
    }

    public ActionMenuView(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f5 = context.getResources().getDisplayMetrics().density;
        this.D = (int) (56.0f * f5);
        this.E = (int) (f5 * 4.0f);
        this.f641v = context;
        this.f642w = 0;
    }
}
