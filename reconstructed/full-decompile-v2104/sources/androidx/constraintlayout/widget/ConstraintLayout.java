package androidx.constraintlayout.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ConstraintLayout extends android.view.ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.util.SparseArray<android.view.View> f1104a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.util.ArrayList<androidx.constraintlayout.widget.ConstraintHelper> f1105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.ArrayList<l.f> f1106c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public l.g f1107d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1108e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1109f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1110g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1111h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1112i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1113o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public androidx.constraintlayout.widget.a f1114p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1115q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public java.util.HashMap<java.lang.String, java.lang.Integer> f1116r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1117s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1118t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f1119u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1120v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f1121w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f1122x;

    public ConstraintLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1104a = new android.util.SparseArray<>();
        this.f1105b = new java.util.ArrayList<>(4);
        this.f1106c = new java.util.ArrayList<>(100);
        this.f1107d = new l.g();
        this.f1108e = 0;
        this.f1109f = 0;
        this.f1110g = Integer.MAX_VALUE;
        this.f1111h = Integer.MAX_VALUE;
        this.f1112i = true;
        this.f1113o = 7;
        this.f1114p = null;
        this.f1115q = -1;
        this.f1116r = new java.util.HashMap<>();
        this.f1117s = -1;
        this.f1118t = -1;
        this.f1119u = -1;
        this.f1120v = -1;
        this.f1121w = 0;
        this.f1122x = 0;
        g(attributeSet);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public androidx.constraintlayout.widget.ConstraintLayout.LayoutParams generateDefaultLayoutParams() {
        return new androidx.constraintlayout.widget.ConstraintLayout.LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public void addView(android.view.View view, int i5, android.view.ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i5, layoutParams);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public androidx.constraintlayout.widget.ConstraintLayout.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new androidx.constraintlayout.widget.ConstraintLayout.LayoutParams(getContext(), attributeSet);
    }

    public java.lang.Object c(int i5, java.lang.Object obj) {
        if (i5 != 0 || !(obj instanceof java.lang.String)) {
            return null;
        }
        java.lang.String str = (java.lang.String) obj;
        java.util.HashMap<java.lang.String, java.lang.Integer> map = this.f1116r;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.f1116r.get(str);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof androidx.constraintlayout.widget.ConstraintLayout.LayoutParams;
    }

    public final l.f d(int i5) {
        if (i5 == 0) {
            return this.f1107d;
        }
        android.view.View viewFindViewById = this.f1104a.get(i5);
        if (viewFindViewById == null && (viewFindViewById = findViewById(i5)) != null && viewFindViewById != this && viewFindViewById.getParent() == this) {
            onViewAdded(viewFindViewById);
        }
        if (viewFindViewById == this) {
            return this.f1107d;
        }
        if (viewFindViewById == null) {
            return null;
        }
        return ((androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) viewFindViewById.getLayoutParams()).f1146l0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(android.graphics.Canvas canvas) {
        java.lang.Object tag;
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i5 = 0; i5 < childCount; i5++) {
                android.view.View childAt = getChildAt(i5);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof java.lang.String)) {
                    java.lang.String[] strArrSplit = ((java.lang.String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i6 = java.lang.Integer.parseInt(strArrSplit[0]);
                        int i7 = java.lang.Integer.parseInt(strArrSplit[1]);
                        int i8 = java.lang.Integer.parseInt(strArrSplit[2]);
                        int i9 = (int) ((i6 / 1080.0f) * width);
                        int i10 = (int) ((i7 / 1920.0f) * height);
                        int i11 = (int) ((java.lang.Integer.parseInt(strArrSplit[3]) / 1920.0f) * height);
                        android.graphics.Paint paint = new android.graphics.Paint();
                        paint.setColor(-65536);
                        float f5 = i9;
                        float f6 = i10;
                        float f7 = i9 + ((int) ((i8 / 1080.0f) * width));
                        canvas.drawLine(f5, f6, f7, f6, paint);
                        float f8 = i10 + i11;
                        canvas.drawLine(f7, f6, f7, f8, paint);
                        canvas.drawLine(f7, f8, f5, f8, paint);
                        canvas.drawLine(f5, f8, f5, f6, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f5, f6, f7, f8, paint);
                        canvas.drawLine(f5, f8, f7, f6, paint);
                    }
                }
            }
        }
    }

    public android.view.View e(int i5) {
        return this.f1104a.get(i5);
    }

    public final l.f f(android.view.View view) {
        if (view == this) {
            return this.f1107d;
        }
        if (view == null) {
            return null;
        }
        return ((androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) view.getLayoutParams()).f1146l0;
    }

    public final void g(android.util.AttributeSet attributeSet) {
        this.f1107d.W(this);
        this.f1104a.put(getId(), this);
        this.f1114p = null;
        if (attributeSet != null) {
            android.content.res.TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i5 = 0; i5 < indexCount; i5++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i5);
                if (index == androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.f1108e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1108e);
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.f1109f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1109f);
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.f1110g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1110g);
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.f1111h = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1111h);
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.f1113o = typedArrayObtainStyledAttributes.getInt(index, this.f1113o);
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        androidx.constraintlayout.widget.a aVar = new androidx.constraintlayout.widget.a();
                        this.f1114p = aVar;
                        aVar.e(getContext(), resourceId);
                    } catch (android.content.res.Resources.NotFoundException unused) {
                        this.f1114p = null;
                    }
                    this.f1115q = resourceId;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f1107d.c1(this.f1113o);
    }

    public int getMaxHeight() {
        return this.f1111h;
    }

    public int getMaxWidth() {
        return this.f1110g;
    }

    public int getMinHeight() {
        return this.f1109f;
    }

    public int getMinWidth() {
        return this.f1108e;
    }

    public int getOptimizationLevel() {
        return this.f1107d.R0();
    }

    public final void h(int i5, int i6) {
        boolean z4;
        boolean z5;
        int baseline;
        int childMeasureSpec;
        int childMeasureSpec2;
        boolean z6;
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            android.view.View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams = (androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                l.f fVar = layoutParams.f1146l0;
                if (!layoutParams.Y && !layoutParams.Z) {
                    fVar.x0(childAt.getVisibility());
                    int measuredWidth = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width;
                    int measuredHeight = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height;
                    boolean z7 = layoutParams.V;
                    if (z7 || (z6 = layoutParams.W) || (!z7 && layoutParams.I == 1) || measuredWidth == -1 || (!z6 && (layoutParams.J == 1 || measuredHeight == -1))) {
                        if (measuredWidth == 0) {
                            childMeasureSpec = android.view.ViewGroup.getChildMeasureSpec(i5, paddingLeft, -2);
                            z4 = true;
                        } else if (measuredWidth == -1) {
                            childMeasureSpec = android.view.ViewGroup.getChildMeasureSpec(i5, paddingLeft, -1);
                            z4 = false;
                        } else {
                            z4 = measuredWidth == -2;
                            childMeasureSpec = android.view.ViewGroup.getChildMeasureSpec(i5, paddingLeft, measuredWidth);
                        }
                        if (measuredHeight == 0) {
                            z5 = true;
                            childMeasureSpec2 = android.view.ViewGroup.getChildMeasureSpec(i6, paddingTop, -2);
                        } else if (measuredHeight == -1) {
                            childMeasureSpec2 = android.view.ViewGroup.getChildMeasureSpec(i6, paddingTop, -1);
                            z5 = false;
                        } else {
                            z5 = measuredHeight == -2;
                            childMeasureSpec2 = android.view.ViewGroup.getChildMeasureSpec(i6, paddingTop, measuredHeight);
                        }
                        childAt.measure(childMeasureSpec, childMeasureSpec2);
                        fVar.z0(measuredWidth == -2);
                        fVar.c0(measuredHeight == -2);
                        measuredWidth = childAt.getMeasuredWidth();
                        measuredHeight = childAt.getMeasuredHeight();
                    } else {
                        z4 = false;
                        z5 = false;
                    }
                    fVar.y0(measuredWidth);
                    fVar.b0(measuredHeight);
                    if (z4) {
                        fVar.B0(measuredWidth);
                    }
                    if (z5) {
                        fVar.A0(measuredHeight);
                    }
                    if (layoutParams.X && (baseline = childAt.getBaseline()) != -1) {
                        fVar.V(baseline);
                    }
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:155:0x029d  */
    public final void i(int i5, int i6) {
        int i7;
        byte b5;
        int i8;
        int i9;
        byte b6;
        int i10;
        boolean z4;
        int childMeasureSpec;
        boolean z5;
        int i11;
        int childMeasureSpec2;
        int baseline;
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int childCount = getChildCount();
        int i12 = 0;
        while (true) {
            i7 = 8;
            b5 = -1;
            i8 = -2;
            if (i12 >= childCount) {
                break;
            }
            android.view.View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams = (androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                l.f fVar = layoutParams.f1146l0;
                if (!layoutParams.Y && !layoutParams.Z) {
                    fVar.x0(childAt.getVisibility());
                    int i13 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width;
                    int i14 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height;
                    if (i13 == 0 || i14 == 0) {
                        fVar.x().c();
                        fVar.w().c();
                    } else {
                        boolean z6 = i13 == -2;
                        int childMeasureSpec3 = android.view.ViewGroup.getChildMeasureSpec(i5, paddingLeft, i13);
                        boolean z7 = i14 == -2;
                        childAt.measure(childMeasureSpec3, android.view.ViewGroup.getChildMeasureSpec(i6, paddingTop, i14));
                        fVar.z0(i13 == -2);
                        fVar.c0(i14 == -2);
                        int measuredWidth = childAt.getMeasuredWidth();
                        int measuredHeight = childAt.getMeasuredHeight();
                        fVar.y0(measuredWidth);
                        fVar.b0(measuredHeight);
                        if (z6) {
                            fVar.B0(measuredWidth);
                        }
                        if (z7) {
                            fVar.A0(measuredHeight);
                        }
                        if (layoutParams.X && (baseline = childAt.getBaseline()) != -1) {
                            fVar.V(baseline);
                        }
                        if (layoutParams.V && layoutParams.W) {
                            fVar.x().h(measuredWidth);
                            fVar.w().h(measuredHeight);
                        }
                    }
                }
            }
            i12++;
        }
        this.f1107d.e1();
        int i15 = 0;
        while (i15 < childCount) {
            android.view.View childAt2 = getChildAt(i15);
            if (childAt2.getVisibility() == i7) {
                i9 = childCount;
                b6 = b5;
                i10 = i8;
            } else {
                androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams2 = (androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) childAt2.getLayoutParams();
                l.f fVar2 = layoutParams2.f1146l0;
                if (layoutParams2.Y || layoutParams2.Z) {
                    i9 = childCount;
                    b6 = b5;
                    i10 = i8;
                } else {
                    fVar2.x0(childAt2.getVisibility());
                    int iK = ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).width;
                    int i16 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).height;
                    if (iK == 0 || i16 == 0) {
                        l.e.d dVar = l.e.d.LEFT;
                        l.m mVarF = fVar2.h(dVar).f();
                        l.e.d dVar2 = l.e.d.RIGHT;
                        l.m mVarF2 = fVar2.h(dVar2).f();
                        boolean z8 = (fVar2.h(dVar).i() == null || fVar2.h(dVar2).i() == null) ? false : true;
                        l.e.d dVar3 = l.e.d.TOP;
                        l.m mVarF3 = fVar2.h(dVar3).f();
                        l.e.d dVar4 = l.e.d.BOTTOM;
                        l.m mVarF4 = fVar2.h(dVar4).f();
                        boolean z9 = (fVar2.h(dVar3).i() == null || fVar2.h(dVar4).i() == null) ? false : true;
                        if (iK == 0 && i16 == 0 && z8 && z9) {
                            i9 = childCount;
                            i10 = i8;
                        } else {
                            l.f.b bVarS = this.f1107d.s();
                            l.f.b bVar = l.f.b.WRAP_CONTENT;
                            i9 = childCount;
                            boolean z10 = bVarS != bVar;
                            boolean z11 = this.f1107d.B() != bVar;
                            if (!z10) {
                                fVar2.x().c();
                            }
                            if (!z11) {
                                fVar2.w().c();
                            }
                            if (iK == 0) {
                                if (z10 && fVar2.P() && z8 && mVarF.d() && mVarF2.d()) {
                                    iK = (int) (mVarF2.k() - mVarF.k());
                                    fVar2.x().h(iK);
                                    childMeasureSpec = android.view.ViewGroup.getChildMeasureSpec(i5, paddingLeft, iK);
                                    z4 = false;
                                } else {
                                    childMeasureSpec = android.view.ViewGroup.getChildMeasureSpec(i5, paddingLeft, -2);
                                    z4 = true;
                                    z10 = false;
                                }
                            } else if (iK == -1) {
                                childMeasureSpec = android.view.ViewGroup.getChildMeasureSpec(i5, paddingLeft, -1);
                                z4 = false;
                            } else {
                                z4 = iK == -2;
                                childMeasureSpec = android.view.ViewGroup.getChildMeasureSpec(i5, paddingLeft, iK);
                            }
                            if (i16 == 0) {
                                if (z11 && fVar2.O() && z9 && mVarF3.d() && mVarF4.d()) {
                                    int iK2 = (int) (mVarF4.k() - mVarF3.k());
                                    fVar2.w().h(iK2);
                                    i11 = iK2;
                                    z5 = false;
                                    childMeasureSpec2 = android.view.ViewGroup.getChildMeasureSpec(i6, paddingTop, iK2);
                                    i10 = -2;
                                } else {
                                    i10 = -2;
                                    i11 = i16;
                                    z5 = true;
                                    childMeasureSpec2 = android.view.ViewGroup.getChildMeasureSpec(i6, paddingTop, -2);
                                    z11 = false;
                                }
                            } else if (i16 == -1) {
                                i11 = i16;
                                childMeasureSpec2 = android.view.ViewGroup.getChildMeasureSpec(i6, paddingTop, -1);
                                i10 = -2;
                                z5 = false;
                            } else {
                                i10 = -2;
                                z5 = i16 == -2;
                                i11 = i16;
                                childMeasureSpec2 = android.view.ViewGroup.getChildMeasureSpec(i6, paddingTop, i16);
                            }
                            childAt2.measure(childMeasureSpec, childMeasureSpec2);
                            fVar2.z0(iK == i10);
                            fVar2.c0(i11 == i10);
                            int measuredWidth2 = childAt2.getMeasuredWidth();
                            int measuredHeight2 = childAt2.getMeasuredHeight();
                            fVar2.y0(measuredWidth2);
                            fVar2.b0(measuredHeight2);
                            if (z4) {
                                fVar2.B0(measuredWidth2);
                            }
                            if (z5) {
                                fVar2.A0(measuredHeight2);
                            }
                            if (z10) {
                                fVar2.x().h(measuredWidth2);
                            } else {
                                fVar2.x().g();
                            }
                            if (z11) {
                                fVar2.w().h(measuredHeight2);
                            } else {
                                fVar2.w().g();
                            }
                            if (layoutParams2.X) {
                                int baseline2 = childAt2.getBaseline();
                                b6 = -1;
                                if (baseline2 != -1) {
                                    fVar2.V(baseline2);
                                }
                            }
                        }
                        b6 = -1;
                    } else {
                        i9 = childCount;
                        b6 = b5;
                        i10 = i8;
                    }
                }
            }
            i15++;
            i8 = i10;
            childCount = i9;
            i7 = 8;
            b5 = b6;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r25v0, types: [android.view.ViewGroup, androidx.constraintlayout.widget.ConstraintLayout] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v32 */
    public final void j() {
        float f5;
        int i5;
        int i6;
        l.f fVarD;
        l.f fVarD2;
        l.f fVarD3;
        l.f fVarD4;
        int i7;
        boolean zIsInEditMode = isInEditMode();
        int childCount = getChildCount();
        ?? r5 = 0;
        if (zIsInEditMode) {
            for (int i8 = 0; i8 < childCount; i8++) {
                android.view.View childAt = getChildAt(i8);
                try {
                    java.lang.String resourceName = getResources().getResourceName(childAt.getId());
                    k(0, resourceName, java.lang.Integer.valueOf(childAt.getId()));
                    int iIndexOf = resourceName.indexOf(47);
                    if (iIndexOf != -1) {
                        resourceName = resourceName.substring(iIndexOf + 1);
                    }
                    d(childAt.getId()).X(resourceName);
                } catch (android.content.res.Resources.NotFoundException unused) {
                }
            }
        }
        for (int i9 = 0; i9 < childCount; i9++) {
            l.f fVarF = f(getChildAt(i9));
            if (fVarF != null) {
                fVarF.Q();
            }
        }
        if (this.f1115q != -1) {
            for (int i10 = 0; i10 < childCount; i10++) {
                android.view.View childAt2 = getChildAt(i10);
                if (childAt2.getId() == this.f1115q && (childAt2 instanceof androidx.constraintlayout.widget.Constraints)) {
                    this.f1114p = ((androidx.constraintlayout.widget.Constraints) childAt2).getConstraintSet();
                }
            }
        }
        androidx.constraintlayout.widget.a aVar = this.f1114p;
        if (aVar != null) {
            aVar.a(this);
        }
        this.f1107d.M0();
        int size = this.f1105b.size();
        if (size > 0) {
            for (int i11 = 0; i11 < size; i11++) {
                this.f1105b.get(i11).e(this);
            }
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            android.view.View childAt3 = getChildAt(i12);
            if (childAt3 instanceof androidx.constraintlayout.widget.Placeholder) {
                ((androidx.constraintlayout.widget.Placeholder) childAt3).c(this);
            }
        }
        int i13 = 0;
        while (i13 < childCount) {
            android.view.View childAt4 = getChildAt(i13);
            l.f fVarF2 = f(childAt4);
            if (fVarF2 != null) {
                androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams = (androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) childAt4.getLayoutParams();
                layoutParams.a();
                if (layoutParams.f1148m0) {
                    layoutParams.f1148m0 = r5;
                } else if (zIsInEditMode) {
                    try {
                        java.lang.String resourceName2 = getResources().getResourceName(childAt4.getId());
                        k(r5, resourceName2, java.lang.Integer.valueOf(childAt4.getId()));
                        d(childAt4.getId()).X(resourceName2.substring(resourceName2.indexOf("id/") + 3));
                    } catch (android.content.res.Resources.NotFoundException unused2) {
                    }
                }
                fVarF2.x0(childAt4.getVisibility());
                if (layoutParams.f1124a0) {
                    fVarF2.x0(8);
                }
                fVarF2.W(childAt4);
                this.f1107d.I0(fVarF2);
                if (!layoutParams.W || !layoutParams.V) {
                    this.f1106c.add(fVarF2);
                }
                if (layoutParams.Y) {
                    l.i iVar = (l.i) fVarF2;
                    int i14 = layoutParams.f1140i0;
                    int i15 = layoutParams.f1142j0;
                    float f6 = layoutParams.f1144k0;
                    if (f6 != -1.0f) {
                        iVar.L0(f6);
                    } else if (i14 != -1) {
                        iVar.J0(i14);
                    } else if (i15 != -1) {
                        iVar.K0(i15);
                    }
                } else if (layoutParams.f1129d != -1 || layoutParams.f1131e != -1 || layoutParams.f1133f != -1 || layoutParams.f1135g != -1 || layoutParams.f1152q != -1 || layoutParams.f1151p != -1 || layoutParams.f1153r != -1 || layoutParams.f1154s != -1 || layoutParams.f1137h != -1 || layoutParams.f1139i != -1 || layoutParams.f1141j != -1 || layoutParams.f1143k != -1 || layoutParams.f1145l != -1 || layoutParams.Q != -1 || layoutParams.R != -1 || layoutParams.f1147m != -1 || ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width == -1 || ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                    int i16 = layoutParams.f1126b0;
                    int i17 = layoutParams.f1128c0;
                    int i18 = layoutParams.f1130d0;
                    int i19 = layoutParams.f1132e0;
                    int i20 = layoutParams.f1134f0;
                    int i21 = layoutParams.f1136g0;
                    float f7 = layoutParams.f1138h0;
                    int i22 = layoutParams.f1147m;
                    if (i22 != -1) {
                        l.f fVarD5 = d(i22);
                        if (fVarD5 != null) {
                            fVarF2.f(fVarD5, layoutParams.f1150o, layoutParams.f1149n);
                        }
                    } else {
                        if (i16 != -1) {
                            l.f fVarD6 = d(i16);
                            if (fVarD6 != null) {
                                l.e.d dVar = l.e.d.LEFT;
                                f5 = f7;
                                i5 = i21;
                                i6 = i19;
                                fVarF2.J(dVar, fVarD6, dVar, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i20);
                            } else {
                                f5 = f7;
                                i5 = i21;
                                i6 = i19;
                            }
                        } else {
                            f5 = f7;
                            i5 = i21;
                            i6 = i19;
                            if (i17 != -1 && (fVarD = d(i17)) != null) {
                                fVarF2.J(l.e.d.LEFT, fVarD, l.e.d.RIGHT, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i20);
                            }
                        }
                        if (i18 != -1) {
                            l.f fVarD7 = d(i18);
                            if (fVarD7 != null) {
                                fVarF2.J(l.e.d.RIGHT, fVarD7, l.e.d.LEFT, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin, i5);
                            }
                        } else {
                            int i23 = i6;
                            if (i23 != -1 && (fVarD2 = d(i23)) != null) {
                                l.e.d dVar2 = l.e.d.RIGHT;
                                fVarF2.J(dVar2, fVarD2, dVar2, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin, i5);
                            }
                        }
                        int i24 = layoutParams.f1137h;
                        if (i24 != -1) {
                            l.f fVarD8 = d(i24);
                            if (fVarD8 != null) {
                                l.e.d dVar3 = l.e.d.TOP;
                                fVarF2.J(dVar3, fVarD8, dVar3, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin, layoutParams.f1156u);
                            }
                        } else {
                            int i25 = layoutParams.f1139i;
                            if (i25 != -1 && (fVarD3 = d(i25)) != null) {
                                fVarF2.J(l.e.d.TOP, fVarD3, l.e.d.BOTTOM, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin, layoutParams.f1156u);
                            }
                        }
                        int i26 = layoutParams.f1141j;
                        if (i26 != -1) {
                            l.f fVarD9 = d(i26);
                            if (fVarD9 != null) {
                                fVarF2.J(l.e.d.BOTTOM, fVarD9, l.e.d.TOP, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, layoutParams.f1158w);
                            }
                        } else {
                            int i27 = layoutParams.f1143k;
                            if (i27 != -1 && (fVarD4 = d(i27)) != null) {
                                l.e.d dVar4 = l.e.d.BOTTOM;
                                fVarF2.J(dVar4, fVarD4, dVar4, ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, layoutParams.f1158w);
                            }
                        }
                        int i28 = layoutParams.f1145l;
                        if (i28 != -1) {
                            android.view.View view = this.f1104a.get(i28);
                            l.f fVarD10 = d(layoutParams.f1145l);
                            if (fVarD10 != null && view != null && (view.getLayoutParams() instanceof androidx.constraintlayout.widget.ConstraintLayout.LayoutParams)) {
                                androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams2 = (androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) view.getLayoutParams();
                                layoutParams.X = true;
                                layoutParams2.X = true;
                                l.e.d dVar5 = l.e.d.BASELINE;
                                fVarF2.h(dVar5).a(fVarD10.h(dVar5), 0, -1, l.e.c.STRONG, 0, true);
                                fVarF2.h(l.e.d.TOP).m();
                                fVarF2.h(l.e.d.BOTTOM).m();
                            }
                        }
                        if (f5 >= 0.0f && f5 != 0.5f) {
                            fVarF2.d0(f5);
                        }
                        float f8 = layoutParams.A;
                        if (f8 >= 0.0f && f8 != 0.5f) {
                            fVarF2.r0(f8);
                        }
                    }
                    if (zIsInEditMode && ((i7 = layoutParams.Q) != -1 || layoutParams.R != -1)) {
                        fVarF2.o0(i7, layoutParams.R);
                    }
                    if (layoutParams.V) {
                        fVarF2.g0(l.f.b.FIXED);
                        fVarF2.y0(((android.view.ViewGroup.MarginLayoutParams) layoutParams).width);
                    } else if (((android.view.ViewGroup.MarginLayoutParams) layoutParams).width == -1) {
                        fVarF2.g0(l.f.b.MATCH_PARENT);
                        fVarF2.h(l.e.d.LEFT).f4991e = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                        fVarF2.h(l.e.d.RIGHT).f4991e = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    } else {
                        fVarF2.g0(l.f.b.MATCH_CONSTRAINT);
                        fVarF2.y0(0);
                    }
                    if (layoutParams.W) {
                        r5 = 0;
                        fVarF2.u0(l.f.b.FIXED);
                        fVarF2.b0(((android.view.ViewGroup.MarginLayoutParams) layoutParams).height);
                    } else if (((android.view.ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                        fVarF2.u0(l.f.b.MATCH_PARENT);
                        fVarF2.h(l.e.d.TOP).f4991e = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        fVarF2.h(l.e.d.BOTTOM).f4991e = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        r5 = 0;
                    } else {
                        fVarF2.u0(l.f.b.MATCH_CONSTRAINT);
                        r5 = 0;
                        fVarF2.b0(0);
                    }
                    java.lang.String str = layoutParams.B;
                    if (str != null) {
                        fVarF2.Y(str);
                    }
                    fVarF2.i0(layoutParams.E);
                    fVarF2.w0(layoutParams.F);
                    fVarF2.e0(layoutParams.G);
                    fVarF2.s0(layoutParams.H);
                    fVarF2.h0(layoutParams.I, layoutParams.K, layoutParams.M, layoutParams.O);
                    fVarF2.v0(layoutParams.J, layoutParams.L, layoutParams.N, layoutParams.P);
                }
            }
            i13++;
            r5 = r5;
        }
    }

    public void k(int i5, java.lang.Object obj, java.lang.Object obj2) {
        if (i5 == 0 && (obj instanceof java.lang.String) && (obj2 instanceof java.lang.Integer)) {
            if (this.f1116r == null) {
                this.f1116r = new java.util.HashMap<>();
            }
            java.lang.String strSubstring = (java.lang.String) obj;
            int iIndexOf = strSubstring.indexOf("/");
            if (iIndexOf != -1) {
                strSubstring = strSubstring.substring(iIndexOf + 1);
            }
            this.f1116r.put(strSubstring, java.lang.Integer.valueOf(((java.lang.Integer) obj2).intValue()));
        }
    }

    public final void l(int i5, int i6) {
        int iMin;
        l.f.b bVar;
        int mode = android.view.View.MeasureSpec.getMode(i5);
        int size = android.view.View.MeasureSpec.getSize(i5);
        int mode2 = android.view.View.MeasureSpec.getMode(i6);
        int size2 = android.view.View.MeasureSpec.getSize(i6);
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        l.f.b bVar2 = l.f.b.FIXED;
        getLayoutParams();
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                bVar = l.f.b.WRAP_CONTENT;
            } else if (mode != 1073741824) {
                bVar = bVar2;
            } else {
                iMin = java.lang.Math.min(this.f1110g, size) - paddingLeft;
                bVar = bVar2;
            }
            iMin = 0;
        } else {
            iMin = size;
            bVar = l.f.b.WRAP_CONTENT;
        }
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 == 0) {
                bVar2 = l.f.b.WRAP_CONTENT;
            } else if (mode2 == 1073741824) {
                size2 = java.lang.Math.min(this.f1111h, size2) - paddingTop;
            }
            size2 = 0;
        } else {
            bVar2 = l.f.b.WRAP_CONTENT;
        }
        this.f1107d.m0(0);
        this.f1107d.l0(0);
        this.f1107d.g0(bVar);
        this.f1107d.y0(iMin);
        this.f1107d.u0(bVar2);
        this.f1107d.b0(size2);
        this.f1107d.m0((this.f1108e - getPaddingLeft()) - getPaddingRight());
        this.f1107d.l0((this.f1109f - getPaddingTop()) - getPaddingBottom());
    }

    public void m(java.lang.String str) {
        this.f1107d.K0();
    }

    public final void n() {
        int childCount = getChildCount();
        boolean z4 = false;
        for (int i5 = 0; i5 < childCount; i5++) {
            if (getChildAt(i5).isLayoutRequested()) {
                z4 = true;
                break;
            }
        }
        if (z4) {
            this.f1106c.clear();
            j();
        }
    }

    public final void o() {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            if (childAt instanceof androidx.constraintlayout.widget.Placeholder) {
                ((androidx.constraintlayout.widget.Placeholder) childAt).b(this);
            }
        }
        int size = this.f1105b.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.f1105b.get(i6).d(this);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        android.view.View content;
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i9 = 0; i9 < childCount; i9++) {
            android.view.View childAt = getChildAt(i9);
            androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams = (androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            l.f fVar = layoutParams.f1146l0;
            if ((childAt.getVisibility() != 8 || layoutParams.Y || layoutParams.Z || zIsInEditMode) && !layoutParams.f1124a0) {
                int iP = fVar.p();
                int iQ = fVar.q();
                int iD = fVar.D() + iP;
                int iR = fVar.r() + iQ;
                childAt.layout(iP, iQ, iD, iR);
                if ((childAt instanceof androidx.constraintlayout.widget.Placeholder) && (content = ((androidx.constraintlayout.widget.Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(iP, iQ, iD, iR);
                }
            }
        }
        int size = this.f1105b.size();
        if (size > 0) {
            for (int i10 = 0; i10 < size; i10++) {
                this.f1105b.get(i10).c(this);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:58:0x0117 A[PHI: r11
  0x0117: PHI (r11v1 int) = (r11v0 int), (r11v10 int), (r11v10 int) binds: [B:38:0x00ca, B:54:0x010a, B:56:0x010e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    public void onMeasure(int i5, int i6) {
        boolean z4;
        int i7;
        boolean z5;
        boolean z6;
        int i8;
        int i9;
        int baseline;
        int i10;
        androidx.constraintlayout.widget.ConstraintLayout constraintLayout = this;
        java.lang.System.currentTimeMillis();
        int mode = android.view.View.MeasureSpec.getMode(i5);
        int size = android.view.View.MeasureSpec.getSize(i5);
        int mode2 = android.view.View.MeasureSpec.getMode(i6);
        int size2 = android.view.View.MeasureSpec.getSize(i6);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        constraintLayout.f1107d.C0(paddingLeft);
        constraintLayout.f1107d.D0(paddingTop);
        constraintLayout.f1107d.k0(constraintLayout.f1110g);
        constraintLayout.f1107d.j0(constraintLayout.f1111h);
        int iCombineMeasuredStates = 0;
        constraintLayout.f1107d.d1(getLayoutDirection() == 1);
        l(i5, i6);
        int iD = constraintLayout.f1107d.D();
        int iR = constraintLayout.f1107d.r();
        if (constraintLayout.f1112i) {
            constraintLayout.f1112i = false;
            n();
            z4 = true;
        } else {
            z4 = false;
        }
        boolean z7 = (constraintLayout.f1113o & 8) == 8;
        if (z7) {
            constraintLayout.f1107d.a1();
            constraintLayout.f1107d.Y0(iD, iR);
            i(i5, i6);
        } else {
            h(i5, i6);
        }
        o();
        if (getChildCount() > 0 && z4) {
            l.a.a(constraintLayout.f1107d);
        }
        l.g gVar = constraintLayout.f1107d;
        if (gVar.I0) {
            if (gVar.J0 && mode == Integer.MIN_VALUE) {
                int i11 = gVar.L0;
                if (i11 < size) {
                    gVar.y0(i11);
                }
                constraintLayout.f1107d.g0(l.f.b.FIXED);
            }
            l.g gVar2 = constraintLayout.f1107d;
            if (gVar2.K0 && mode2 == Integer.MIN_VALUE) {
                int i12 = gVar2.M0;
                if (i12 < size2) {
                    gVar2.b0(i12);
                }
                constraintLayout.f1107d.u0(l.f.b.FIXED);
            }
        }
        if ((constraintLayout.f1113o & 32) == 32) {
            int iD2 = constraintLayout.f1107d.D();
            int iR2 = constraintLayout.f1107d.r();
            if (constraintLayout.f1117s != iD2 && mode == 1073741824) {
                l.a.i(constraintLayout.f1107d.H0, 0, iD2);
            }
            if (constraintLayout.f1118t != iR2 && mode2 == 1073741824) {
                l.a.i(constraintLayout.f1107d.H0, 1, iR2);
            }
            l.g gVar3 = constraintLayout.f1107d;
            if (!gVar3.J0 || gVar3.L0 <= size) {
                iCombineMeasuredStates = 0;
            } else {
                iCombineMeasuredStates = 0;
                l.a.i(gVar3.H0, 0, size);
            }
            l.g gVar4 = constraintLayout.f1107d;
            if (!gVar4.K0 || gVar4.M0 <= size2) {
                i7 = 1;
            } else {
                i7 = 1;
                l.a.i(gVar4.H0, 1, size2);
            }
        } else {
            i7 = 1;
        }
        if (getChildCount() > 0) {
            constraintLayout.m("First pass");
        }
        int size3 = constraintLayout.f1106c.size();
        int paddingBottom = paddingTop + getPaddingBottom();
        int paddingRight = paddingLeft + getPaddingRight();
        if (size3 > 0) {
            l.f.b bVarS = constraintLayout.f1107d.s();
            l.f.b bVar = l.f.b.WRAP_CONTENT;
            int i13 = bVarS == bVar ? i7 : iCombineMeasuredStates;
            int i14 = constraintLayout.f1107d.B() == bVar ? i7 : iCombineMeasuredStates;
            int iMax = java.lang.Math.max(constraintLayout.f1107d.D(), constraintLayout.f1108e);
            int iMax2 = java.lang.Math.max(constraintLayout.f1107d.r(), constraintLayout.f1109f);
            int i15 = iCombineMeasuredStates;
            int iMax3 = iMax;
            int i16 = i15;
            while (i16 < size3) {
                l.f fVar = constraintLayout.f1106c.get(i16);
                int i17 = size3;
                android.view.View view = (android.view.View) fVar.m();
                if (view == null) {
                    i9 = iD;
                    i8 = iR;
                } else {
                    i8 = iR;
                    androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams = (androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) view.getLayoutParams();
                    i9 = iD;
                    if (!layoutParams.Z && !layoutParams.Y && view.getVisibility() != 8 && (!z7 || !fVar.x().d() || !fVar.w().d())) {
                        int i18 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width;
                        int childMeasureSpec = (i18 == -2 && layoutParams.V) ? android.view.ViewGroup.getChildMeasureSpec(i5, paddingRight, i18) : android.view.View.MeasureSpec.makeMeasureSpec(fVar.D(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
                        int i19 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height;
                        view.measure(childMeasureSpec, (i19 == -2 && layoutParams.W) ? android.view.ViewGroup.getChildMeasureSpec(i6, paddingBottom, i19) : android.view.View.MeasureSpec.makeMeasureSpec(fVar.r(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY));
                        int measuredWidth = view.getMeasuredWidth();
                        int measuredHeight = view.getMeasuredHeight();
                        if (measuredWidth != fVar.D()) {
                            fVar.y0(measuredWidth);
                            if (z7) {
                                fVar.x().h(measuredWidth);
                            }
                            if (i13 != 0) {
                                i10 = iMax3;
                                if (fVar.y() > i10) {
                                    iMax3 = java.lang.Math.max(i10, fVar.y() + fVar.h(l.e.d.RIGHT).d());
                                }
                                i15 = 1;
                            } else {
                                i10 = iMax3;
                            }
                            iMax3 = i10;
                            i15 = 1;
                        }
                        if (measuredHeight != fVar.r()) {
                            fVar.b0(measuredHeight);
                            if (z7) {
                                fVar.w().h(measuredHeight);
                            }
                            if (i14 != 0 && fVar.l() > iMax2) {
                                iMax2 = java.lang.Math.max(iMax2, fVar.l() + fVar.h(l.e.d.BOTTOM).d());
                            }
                            i15 = 1;
                        }
                        if (layoutParams.X && (baseline = view.getBaseline()) != -1 && baseline != fVar.j()) {
                            fVar.V(baseline);
                            i15 = 1;
                        }
                        iCombineMeasuredStates = android.view.ViewGroup.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    }
                    i16++;
                    constraintLayout = this;
                    iD = i9;
                    size3 = i17;
                    iR = i8;
                }
                iMax3 = iMax3;
                i16++;
                constraintLayout = this;
                iD = i9;
                size3 = i17;
                iR = i8;
            }
            int i20 = size3;
            int i21 = iD;
            int i22 = iR;
            int i23 = iMax3;
            constraintLayout = this;
            if (i15 != 0) {
                constraintLayout.f1107d.y0(i21);
                constraintLayout.f1107d.b0(i22);
                if (z7) {
                    constraintLayout.f1107d.e1();
                }
                constraintLayout.m("2nd pass");
                if (constraintLayout.f1107d.D() < i23) {
                    constraintLayout.f1107d.y0(i23);
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (constraintLayout.f1107d.r() < iMax2) {
                    constraintLayout.f1107d.b0(iMax2);
                    z6 = true;
                } else {
                    z6 = z5;
                }
                if (z6) {
                    constraintLayout.m("3rd pass");
                }
            }
            for (int i24 = 0; i24 < i20; i24++) {
                l.f fVar2 = constraintLayout.f1106c.get(i24);
                android.view.View view2 = (android.view.View) fVar2.m();
                if (view2 != null && (view2.getMeasuredWidth() != fVar2.D() || view2.getMeasuredHeight() != fVar2.r())) {
                    if (fVar2.C() != 8) {
                        view2.measure(android.view.View.MeasureSpec.makeMeasureSpec(fVar2.D(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), android.view.View.MeasureSpec.makeMeasureSpec(fVar2.r(), com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY));
                    }
                }
            }
        } else {
            iCombineMeasuredStates = 0;
        }
        int iD3 = constraintLayout.f1107d.D() + paddingRight;
        int iR3 = constraintLayout.f1107d.r() + paddingBottom;
        int iResolveSizeAndState = android.view.ViewGroup.resolveSizeAndState(iD3, i5, iCombineMeasuredStates);
        int iResolveSizeAndState2 = android.view.ViewGroup.resolveSizeAndState(iR3, i6, iCombineMeasuredStates << 16) & 16777215;
        int iMin = java.lang.Math.min(constraintLayout.f1110g, iResolveSizeAndState & 16777215);
        int iMin2 = java.lang.Math.min(constraintLayout.f1111h, iResolveSizeAndState2);
        if (constraintLayout.f1107d.V0()) {
            iMin |= 16777216;
        }
        if (constraintLayout.f1107d.T0()) {
            iMin2 |= 16777216;
        }
        constraintLayout.setMeasuredDimension(iMin, iMin2);
        constraintLayout.f1117s = iMin;
        constraintLayout.f1118t = iMin2;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(android.view.View view) {
        super.onViewAdded(view);
        l.f fVarF = f(view);
        if ((view instanceof androidx.constraintlayout.widget.Guideline) && !(fVarF instanceof l.i)) {
            androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams = (androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) view.getLayoutParams();
            l.i iVar = new l.i();
            layoutParams.f1146l0 = iVar;
            layoutParams.Y = true;
            iVar.M0(layoutParams.S);
        }
        if (view instanceof androidx.constraintlayout.widget.ConstraintHelper) {
            androidx.constraintlayout.widget.ConstraintHelper constraintHelper = (androidx.constraintlayout.widget.ConstraintHelper) view;
            constraintHelper.f();
            ((androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) view.getLayoutParams()).Z = true;
            if (!this.f1105b.contains(constraintHelper)) {
                this.f1105b.add(constraintHelper);
            }
        }
        this.f1104a.put(view.getId(), view);
        this.f1112i = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(android.view.View view) {
        super.onViewRemoved(view);
        this.f1104a.remove(view.getId());
        l.f fVarF = f(view);
        this.f1107d.L0(fVarF);
        this.f1105b.remove(view);
        this.f1106c.remove(fVarF);
        this.f1112i = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(android.view.View view) {
        super.removeView(view);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        this.f1112i = true;
        this.f1117s = -1;
        this.f1118t = -1;
        this.f1119u = -1;
        this.f1120v = -1;
        this.f1121w = 0;
        this.f1122x = 0;
    }

    public void setConstraintSet(androidx.constraintlayout.widget.a aVar) {
        this.f1114p = aVar;
    }

    @Override // android.view.View
    public void setId(int i5) {
        this.f1104a.remove(getId());
        super.setId(i5);
        this.f1104a.put(getId(), this);
    }

    public void setMaxHeight(int i5) {
        if (i5 == this.f1111h) {
            return;
        }
        this.f1111h = i5;
        requestLayout();
    }

    public void setMaxWidth(int i5) {
        if (i5 == this.f1110g) {
            return;
        }
        this.f1110g = i5;
        requestLayout();
    }

    public void setMinHeight(int i5) {
        if (i5 == this.f1109f) {
            return;
        }
        this.f1109f = i5;
        requestLayout();
    }

    public void setMinWidth(int i5) {
        if (i5 == this.f1108e) {
            return;
        }
        this.f1108e = i5;
        requestLayout();
    }

    public void setOptimizationLevel(int i5) {
        this.f1107d.c1(i5);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new androidx.constraintlayout.widget.ConstraintLayout.LayoutParams(layoutParams);
    }

    public ConstraintLayout(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.f1104a = new android.util.SparseArray<>();
        this.f1105b = new java.util.ArrayList<>(4);
        this.f1106c = new java.util.ArrayList<>(100);
        this.f1107d = new l.g();
        this.f1108e = 0;
        this.f1109f = 0;
        this.f1110g = Integer.MAX_VALUE;
        this.f1111h = Integer.MAX_VALUE;
        this.f1112i = true;
        this.f1113o = 7;
        this.f1114p = null;
        this.f1115q = -1;
        this.f1116r = new java.util.HashMap<>();
        this.f1117s = -1;
        this.f1118t = -1;
        this.f1119u = -1;
        this.f1120v = -1;
        this.f1121w = 0;
        this.f1122x = 0;
        g(attributeSet);
    }

    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams {
        public float A;
        public java.lang.String B;
        public float C;
        public int D;
        public float E;
        public float F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public int N;
        public float O;
        public float P;
        public int Q;
        public int R;
        public int S;
        public boolean T;
        public boolean U;
        public boolean V;
        public boolean W;
        public boolean X;
        public boolean Y;
        public boolean Z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1123a;

        /* JADX INFO: renamed from: a0, reason: collision with root package name */
        public boolean f1124a0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1125b;

        /* JADX INFO: renamed from: b0, reason: collision with root package name */
        public int f1126b0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f1127c;

        /* JADX INFO: renamed from: c0, reason: collision with root package name */
        public int f1128c0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1129d;

        /* JADX INFO: renamed from: d0, reason: collision with root package name */
        public int f1130d0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1131e;

        /* JADX INFO: renamed from: e0, reason: collision with root package name */
        public int f1132e0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1133f;

        /* JADX INFO: renamed from: f0, reason: collision with root package name */
        public int f1134f0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f1135g;

        /* JADX INFO: renamed from: g0, reason: collision with root package name */
        public int f1136g0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f1137h;

        /* JADX INFO: renamed from: h0, reason: collision with root package name */
        public float f1138h0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f1139i;

        /* JADX INFO: renamed from: i0, reason: collision with root package name */
        public int f1140i0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f1141j;

        /* JADX INFO: renamed from: j0, reason: collision with root package name */
        public int f1142j0;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f1143k;

        /* JADX INFO: renamed from: k0, reason: collision with root package name */
        public float f1144k0;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f1145l;

        /* JADX INFO: renamed from: l0, reason: collision with root package name */
        public l.f f1146l0;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f1147m;

        /* JADX INFO: renamed from: m0, reason: collision with root package name */
        public boolean f1148m0;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f1149n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public float f1150o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f1151p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f1152q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f1153r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public int f1154s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f1155t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f1156u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f1157v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f1158w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f1159x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f1160y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public float f1161z;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final android.util.SparseIntArray f1162a;

            static {
                android.util.SparseIntArray sparseIntArray = new android.util.SparseIntArray();
                f1162a = sparseIntArray;
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_android_orientation, 1);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                sparseIntArray.append(androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
            }
        }

        public LayoutParams(android.content.Context context, android.util.AttributeSet attributeSet) {
            int i5;
            super(context, attributeSet);
            this.f1123a = -1;
            this.f1125b = -1;
            this.f1127c = -1.0f;
            this.f1129d = -1;
            this.f1131e = -1;
            this.f1133f = -1;
            this.f1135g = -1;
            this.f1137h = -1;
            this.f1139i = -1;
            this.f1141j = -1;
            this.f1143k = -1;
            this.f1145l = -1;
            this.f1147m = -1;
            this.f1149n = 0;
            this.f1150o = 0.0f;
            this.f1151p = -1;
            this.f1152q = -1;
            this.f1153r = -1;
            this.f1154s = -1;
            this.f1155t = -1;
            this.f1156u = -1;
            this.f1157v = -1;
            this.f1158w = -1;
            this.f1159x = -1;
            this.f1160y = -1;
            this.f1161z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 0.0f;
            this.D = 1;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 1.0f;
            this.P = 1.0f;
            this.Q = -1;
            this.R = -1;
            this.S = -1;
            this.T = false;
            this.U = false;
            this.V = true;
            this.W = true;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.f1124a0 = false;
            this.f1126b0 = -1;
            this.f1128c0 = -1;
            this.f1130d0 = -1;
            this.f1132e0 = -1;
            this.f1134f0 = -1;
            this.f1136g0 = -1;
            this.f1138h0 = 0.5f;
            this.f1146l0 = new l.f();
            this.f1148m0 = false;
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i6);
                int i7 = androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.a.f1162a.get(index);
                switch (i7) {
                    case 1:
                        this.S = typedArrayObtainStyledAttributes.getInt(index, this.S);
                        break;
                    case 2:
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f1147m);
                        this.f1147m = resourceId;
                        if (resourceId == -1) {
                            this.f1147m = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 3:
                        this.f1149n = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1149n);
                        break;
                    case 4:
                        float f5 = typedArrayObtainStyledAttributes.getFloat(index, this.f1150o) % 360.0f;
                        this.f1150o = f5;
                        if (f5 < 0.0f) {
                            this.f1150o = (360.0f - f5) % 360.0f;
                        }
                        break;
                    case 5:
                        this.f1123a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1123a);
                        break;
                    case 6:
                        this.f1125b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1125b);
                        break;
                    case 7:
                        this.f1127c = typedArrayObtainStyledAttributes.getFloat(index, this.f1127c);
                        break;
                    case 8:
                        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1129d);
                        this.f1129d = resourceId2;
                        if (resourceId2 == -1) {
                            this.f1129d = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 9:
                        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1131e);
                        this.f1131e = resourceId3;
                        if (resourceId3 == -1) {
                            this.f1131e = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 10:
                        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1133f);
                        this.f1133f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f1133f = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 11:
                        int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1135g);
                        this.f1135g = resourceId5;
                        if (resourceId5 == -1) {
                            this.f1135g = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 12:
                        int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1137h);
                        this.f1137h = resourceId6;
                        if (resourceId6 == -1) {
                            this.f1137h = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 13:
                        int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1139i);
                        this.f1139i = resourceId7;
                        if (resourceId7 == -1) {
                            this.f1139i = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 14:
                        int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1141j);
                        this.f1141j = resourceId8;
                        if (resourceId8 == -1) {
                            this.f1141j = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 15:
                        int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1143k);
                        this.f1143k = resourceId9;
                        if (resourceId9 == -1) {
                            this.f1143k = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 16:
                        int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1145l);
                        this.f1145l = resourceId10;
                        if (resourceId10 == -1) {
                            this.f1145l = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 17:
                        int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1151p);
                        this.f1151p = resourceId11;
                        if (resourceId11 == -1) {
                            this.f1151p = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 18:
                        int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1152q);
                        this.f1152q = resourceId12;
                        if (resourceId12 == -1) {
                            this.f1152q = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 19:
                        int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1153r);
                        this.f1153r = resourceId13;
                        if (resourceId13 == -1) {
                            this.f1153r = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 20:
                        int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1154s);
                        this.f1154s = resourceId14;
                        if (resourceId14 == -1) {
                            this.f1154s = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 21:
                        this.f1155t = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1155t);
                        break;
                    case 22:
                        this.f1156u = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1156u);
                        break;
                    case 23:
                        this.f1157v = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1157v);
                        break;
                    case 24:
                        this.f1158w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1158w);
                        break;
                    case 25:
                        this.f1159x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1159x);
                        break;
                    case 26:
                        this.f1160y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1160y);
                        break;
                    case 27:
                        this.T = typedArrayObtainStyledAttributes.getBoolean(index, this.T);
                        break;
                    case 28:
                        this.U = typedArrayObtainStyledAttributes.getBoolean(index, this.U);
                        break;
                    case 29:
                        this.f1161z = typedArrayObtainStyledAttributes.getFloat(index, this.f1161z);
                        break;
                    case 30:
                        this.A = typedArrayObtainStyledAttributes.getFloat(index, this.A);
                        break;
                    case 31:
                        int i8 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.I = i8;
                        if (i8 == 1) {
                            android.util.Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                        }
                        break;
                    case 32:
                        int i9 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.J = i9;
                        if (i9 == 1) {
                            android.util.Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                        }
                        break;
                    case 33:
                        try {
                            this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                        } catch (java.lang.Exception unused) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.K) == -2) {
                                this.K = -2;
                            }
                        }
                        break;
                    case 34:
                        try {
                            this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                        } catch (java.lang.Exception unused2) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.M) == -2) {
                                this.M = -2;
                            }
                        }
                        break;
                    case 35:
                        this.O = java.lang.Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.O));
                        break;
                    case 36:
                        try {
                            this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                        } catch (java.lang.Exception unused3) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.L) == -2) {
                                this.L = -2;
                            }
                        }
                        break;
                    case 37:
                        try {
                            this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.N);
                        } catch (java.lang.Exception unused4) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.N) == -2) {
                                this.N = -2;
                            }
                        }
                        break;
                    case 38:
                        this.P = java.lang.Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.P));
                        break;
                    default:
                        switch (i7) {
                            case 44:
                                java.lang.String string = typedArrayObtainStyledAttributes.getString(index);
                                this.B = string;
                                this.C = Float.NaN;
                                this.D = -1;
                                if (string != null) {
                                    int length = string.length();
                                    int iIndexOf = this.B.indexOf(44);
                                    if (iIndexOf <= 0 || iIndexOf >= length - 1) {
                                        i5 = 0;
                                    } else {
                                        java.lang.String strSubstring = this.B.substring(0, iIndexOf);
                                        if (strSubstring.equalsIgnoreCase("W")) {
                                            this.D = 0;
                                        } else if (strSubstring.equalsIgnoreCase("H")) {
                                            this.D = 1;
                                        }
                                        i5 = iIndexOf + 1;
                                    }
                                    int iIndexOf2 = this.B.indexOf(58);
                                    if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                                        java.lang.String strSubstring2 = this.B.substring(i5);
                                        if (strSubstring2.length() > 0) {
                                            this.C = java.lang.Float.parseFloat(strSubstring2);
                                        }
                                    } else {
                                        java.lang.String strSubstring3 = this.B.substring(i5, iIndexOf2);
                                        java.lang.String strSubstring4 = this.B.substring(iIndexOf2 + 1);
                                        if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                                            try {
                                                float f6 = java.lang.Float.parseFloat(strSubstring3);
                                                float f7 = java.lang.Float.parseFloat(strSubstring4);
                                                if (f6 > 0.0f && f7 > 0.0f) {
                                                    if (this.D == 1) {
                                                        this.C = java.lang.Math.abs(f7 / f6);
                                                    } else {
                                                        this.C = java.lang.Math.abs(f6 / f7);
                                                    }
                                                }
                                            } catch (java.lang.NumberFormatException unused5) {
                                            }
                                        }
                                    }
                                }
                                break;
                            case 45:
                                this.E = typedArrayObtainStyledAttributes.getFloat(index, this.E);
                                break;
                            case 46:
                                this.F = typedArrayObtainStyledAttributes.getFloat(index, this.F);
                                break;
                            case 47:
                                this.G = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 48:
                                this.H = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 49:
                                this.Q = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.Q);
                                break;
                            case 50:
                                this.R = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.R);
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            a();
        }

        public void a() {
            this.Y = false;
            this.V = true;
            this.W = true;
            int i5 = ((android.view.ViewGroup.MarginLayoutParams) this).width;
            if (i5 == -2 && this.T) {
                this.V = false;
                this.I = 1;
            }
            int i6 = ((android.view.ViewGroup.MarginLayoutParams) this).height;
            if (i6 == -2 && this.U) {
                this.W = false;
                this.J = 1;
            }
            if (i5 == 0 || i5 == -1) {
                this.V = false;
                if (i5 == 0 && this.I == 1) {
                    ((android.view.ViewGroup.MarginLayoutParams) this).width = -2;
                    this.T = true;
                }
            }
            if (i6 == 0 || i6 == -1) {
                this.W = false;
                if (i6 == 0 && this.J == 1) {
                    ((android.view.ViewGroup.MarginLayoutParams) this).height = -2;
                    this.U = true;
                }
            }
            if (this.f1127c == -1.0f && this.f1123a == -1 && this.f1125b == -1) {
                return;
            }
            this.Y = true;
            this.V = true;
            this.W = true;
            if (!(this.f1146l0 instanceof l.i)) {
                this.f1146l0 = new l.i();
            }
            ((l.i) this.f1146l0).M0(this.S);
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0048  */
        /* JADX WARN: Code duplicated, block: B:19:0x004f  */
        /* JADX WARN: Code duplicated, block: B:22:0x0056  */
        /* JADX WARN: Code duplicated, block: B:25:0x005c  */
        /* JADX WARN: Code duplicated, block: B:28:0x0062  */
        /* JADX WARN: Code duplicated, block: B:35:0x0078  */
        /* JADX WARN: Code duplicated, block: B:36:0x0080  */
        /* JADX WARN: Code duplicated, block: B:38:0x0084  */
        /* JADX WARN: Code duplicated, block: B:39:0x008b  */
        /* JADX WARN: Code duplicated, block: B:41:0x008f  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @android.annotation.TargetApi(17)
        public void resolveLayoutDirection(int i5) {
            int i6;
            int i7;
            int i8;
            int i9;
            float f5;
            int i10;
            int i11;
            int i12 = ((android.view.ViewGroup.MarginLayoutParams) this).leftMargin;
            int i13 = ((android.view.ViewGroup.MarginLayoutParams) this).rightMargin;
            super.resolveLayoutDirection(i5);
            this.f1130d0 = -1;
            this.f1132e0 = -1;
            this.f1126b0 = -1;
            this.f1128c0 = -1;
            this.f1134f0 = this.f1155t;
            this.f1136g0 = this.f1157v;
            this.f1138h0 = this.f1161z;
            this.f1140i0 = this.f1123a;
            this.f1142j0 = this.f1125b;
            this.f1144k0 = this.f1127c;
            boolean z4 = false;
            if (1 == getLayoutDirection()) {
                int i14 = this.f1151p;
                if (i14 != -1) {
                    this.f1130d0 = i14;
                } else {
                    int i15 = this.f1152q;
                    if (i15 != -1) {
                        this.f1132e0 = i15;
                    } else {
                        i6 = this.f1153r;
                        if (i6 != -1) {
                            this.f1128c0 = i6;
                            z4 = true;
                        }
                        i7 = this.f1154s;
                        if (i7 != -1) {
                            this.f1126b0 = i7;
                            z4 = true;
                        }
                        i8 = this.f1159x;
                        if (i8 != -1) {
                            this.f1136g0 = i8;
                        }
                        i9 = this.f1160y;
                        if (i9 != -1) {
                            this.f1134f0 = i9;
                        }
                        if (z4) {
                            this.f1138h0 = 1.0f - this.f1161z;
                        }
                        if (this.Y && this.S == 1) {
                            f5 = this.f1127c;
                            if (f5 != -1.0f) {
                                this.f1144k0 = 1.0f - f5;
                                this.f1140i0 = -1;
                                this.f1142j0 = -1;
                            } else {
                                i10 = this.f1123a;
                                if (i10 != -1) {
                                    this.f1142j0 = i10;
                                    this.f1140i0 = -1;
                                    this.f1144k0 = -1.0f;
                                } else {
                                    i11 = this.f1125b;
                                    if (i11 != -1) {
                                        this.f1140i0 = i11;
                                        this.f1142j0 = -1;
                                        this.f1144k0 = -1.0f;
                                    }
                                }
                            }
                        }
                    }
                }
                z4 = true;
                i6 = this.f1153r;
                if (i6 != -1) {
                    this.f1128c0 = i6;
                    z4 = true;
                }
                i7 = this.f1154s;
                if (i7 != -1) {
                    this.f1126b0 = i7;
                    z4 = true;
                }
                i8 = this.f1159x;
                if (i8 != -1) {
                    this.f1136g0 = i8;
                }
                i9 = this.f1160y;
                if (i9 != -1) {
                    this.f1134f0 = i9;
                }
                if (z4) {
                    this.f1138h0 = 1.0f - this.f1161z;
                }
                if (this.Y) {
                    f5 = this.f1127c;
                    if (f5 != -1.0f) {
                        this.f1144k0 = 1.0f - f5;
                        this.f1140i0 = -1;
                        this.f1142j0 = -1;
                    } else {
                        i10 = this.f1123a;
                        if (i10 != -1) {
                            this.f1142j0 = i10;
                            this.f1140i0 = -1;
                            this.f1144k0 = -1.0f;
                        } else {
                            i11 = this.f1125b;
                            if (i11 != -1) {
                                this.f1140i0 = i11;
                                this.f1142j0 = -1;
                                this.f1144k0 = -1.0f;
                            }
                        }
                    }
                }
            } else {
                int i16 = this.f1151p;
                if (i16 != -1) {
                    this.f1128c0 = i16;
                }
                int i17 = this.f1152q;
                if (i17 != -1) {
                    this.f1126b0 = i17;
                }
                int i18 = this.f1153r;
                if (i18 != -1) {
                    this.f1130d0 = i18;
                }
                int i19 = this.f1154s;
                if (i19 != -1) {
                    this.f1132e0 = i19;
                }
                int i20 = this.f1159x;
                if (i20 != -1) {
                    this.f1134f0 = i20;
                }
                int i21 = this.f1160y;
                if (i21 != -1) {
                    this.f1136g0 = i21;
                }
            }
            if (this.f1153r == -1 && this.f1154s == -1 && this.f1152q == -1 && this.f1151p == -1) {
                int i22 = this.f1133f;
                if (i22 != -1) {
                    this.f1130d0 = i22;
                    if (((android.view.ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i13 > 0) {
                        ((android.view.ViewGroup.MarginLayoutParams) this).rightMargin = i13;
                    }
                } else {
                    int i23 = this.f1135g;
                    if (i23 != -1) {
                        this.f1132e0 = i23;
                        if (((android.view.ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i13 > 0) {
                            ((android.view.ViewGroup.MarginLayoutParams) this).rightMargin = i13;
                        }
                    }
                }
                int i24 = this.f1129d;
                if (i24 != -1) {
                    this.f1126b0 = i24;
                    if (((android.view.ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i12 <= 0) {
                        return;
                    }
                    ((android.view.ViewGroup.MarginLayoutParams) this).leftMargin = i12;
                    return;
                }
                int i25 = this.f1131e;
                if (i25 != -1) {
                    this.f1128c0 = i25;
                    if (((android.view.ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i12 <= 0) {
                        return;
                    }
                    ((android.view.ViewGroup.MarginLayoutParams) this).leftMargin = i12;
                }
            }
        }

        public LayoutParams(int i5, int i6) {
            super(i5, i6);
            this.f1123a = -1;
            this.f1125b = -1;
            this.f1127c = -1.0f;
            this.f1129d = -1;
            this.f1131e = -1;
            this.f1133f = -1;
            this.f1135g = -1;
            this.f1137h = -1;
            this.f1139i = -1;
            this.f1141j = -1;
            this.f1143k = -1;
            this.f1145l = -1;
            this.f1147m = -1;
            this.f1149n = 0;
            this.f1150o = 0.0f;
            this.f1151p = -1;
            this.f1152q = -1;
            this.f1153r = -1;
            this.f1154s = -1;
            this.f1155t = -1;
            this.f1156u = -1;
            this.f1157v = -1;
            this.f1158w = -1;
            this.f1159x = -1;
            this.f1160y = -1;
            this.f1161z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 0.0f;
            this.D = 1;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 1.0f;
            this.P = 1.0f;
            this.Q = -1;
            this.R = -1;
            this.S = -1;
            this.T = false;
            this.U = false;
            this.V = true;
            this.W = true;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.f1124a0 = false;
            this.f1126b0 = -1;
            this.f1128c0 = -1;
            this.f1130d0 = -1;
            this.f1132e0 = -1;
            this.f1134f0 = -1;
            this.f1136g0 = -1;
            this.f1138h0 = 0.5f;
            this.f1146l0 = new l.f();
            this.f1148m0 = false;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1123a = -1;
            this.f1125b = -1;
            this.f1127c = -1.0f;
            this.f1129d = -1;
            this.f1131e = -1;
            this.f1133f = -1;
            this.f1135g = -1;
            this.f1137h = -1;
            this.f1139i = -1;
            this.f1141j = -1;
            this.f1143k = -1;
            this.f1145l = -1;
            this.f1147m = -1;
            this.f1149n = 0;
            this.f1150o = 0.0f;
            this.f1151p = -1;
            this.f1152q = -1;
            this.f1153r = -1;
            this.f1154s = -1;
            this.f1155t = -1;
            this.f1156u = -1;
            this.f1157v = -1;
            this.f1158w = -1;
            this.f1159x = -1;
            this.f1160y = -1;
            this.f1161z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 0.0f;
            this.D = 1;
            this.E = -1.0f;
            this.F = -1.0f;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 1.0f;
            this.P = 1.0f;
            this.Q = -1;
            this.R = -1;
            this.S = -1;
            this.T = false;
            this.U = false;
            this.V = true;
            this.W = true;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.f1124a0 = false;
            this.f1126b0 = -1;
            this.f1128c0 = -1;
            this.f1130d0 = -1;
            this.f1132e0 = -1;
            this.f1134f0 = -1;
            this.f1136g0 = -1;
            this.f1138h0 = 0.5f;
            this.f1146l0 = new l.f();
            this.f1148m0 = false;
        }
    }
}
