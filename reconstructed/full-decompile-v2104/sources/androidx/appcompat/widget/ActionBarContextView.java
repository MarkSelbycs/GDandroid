package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ActionBarContextView extends androidx.appcompat.widget.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public java.lang.CharSequence f582i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public java.lang.CharSequence f583o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public android.view.View f584p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public android.view.View f585q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public android.widget.LinearLayout f586r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public android.widget.TextView f587s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public android.widget.TextView f588t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f589u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f590v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f591w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f592x;

    public class a implements android.view.View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ e.b f593a;

        public a(e.b bVar) {
            this.f593a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(android.view.View view) {
            this.f593a.c();
        }
    }

    public ActionBarContextView(android.content.Context context) {
        this(context, null);
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ w.w f(int i5, long j5) {
        return super.f(i5, j5);
    }

    public void g() {
        if (this.f584p == null) {
            k();
        }
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new android.view.ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new android.view.ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public java.lang.CharSequence getSubtitle() {
        return this.f583o;
    }

    public java.lang.CharSequence getTitle() {
        return this.f582i;
    }

    public void h(e.b bVar) {
        android.view.View view = this.f584p;
        if (view == null) {
            android.view.View viewInflate = android.view.LayoutInflater.from(getContext()).inflate(this.f592x, (android.view.ViewGroup) this, false);
            this.f584p = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.f584p);
        }
        this.f584p.findViewById(androidx.appcompat.R.id.action_mode_close_button).setOnClickListener(new androidx.appcompat.widget.ActionBarContextView.a(bVar));
        androidx.appcompat.view.menu.e eVar = (androidx.appcompat.view.menu.e) bVar.e();
        androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter = this.f897d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.y();
        }
        androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter2 = new androidx.appcompat.widget.ActionMenuPresenter(getContext());
        this.f897d = actionMenuPresenter2;
        actionMenuPresenter2.J(true);
        android.view.ViewGroup.LayoutParams layoutParams = new android.view.ViewGroup.LayoutParams(-2, -1);
        eVar.c(this.f897d, this.f895b);
        androidx.appcompat.widget.ActionMenuView actionMenuView = (androidx.appcompat.widget.ActionMenuView) this.f897d.p(this);
        this.f896c = actionMenuView;
        w.q.R(actionMenuView, null);
        addView(this.f896c, layoutParams);
    }

    public final void i() {
        if (this.f586r == null) {
            android.view.LayoutInflater.from(getContext()).inflate(androidx.appcompat.R.layout.abc_action_bar_title_item, this);
            android.widget.LinearLayout linearLayout = (android.widget.LinearLayout) getChildAt(getChildCount() - 1);
            this.f586r = linearLayout;
            this.f587s = (android.widget.TextView) linearLayout.findViewById(androidx.appcompat.R.id.action_bar_title);
            this.f588t = (android.widget.TextView) this.f586r.findViewById(androidx.appcompat.R.id.action_bar_subtitle);
            if (this.f589u != 0) {
                this.f587s.setTextAppearance(getContext(), this.f589u);
            }
            if (this.f590v != 0) {
                this.f588t.setTextAppearance(getContext(), this.f590v);
            }
        }
        this.f587s.setText(this.f582i);
        this.f588t.setText(this.f583o);
        boolean z4 = !android.text.TextUtils.isEmpty(this.f582i);
        boolean z5 = !android.text.TextUtils.isEmpty(this.f583o);
        int i5 = 0;
        this.f588t.setVisibility(z5 ? 0 : 8);
        android.widget.LinearLayout linearLayout2 = this.f586r;
        if (!z4 && !z5) {
            i5 = 8;
        }
        linearLayout2.setVisibility(i5);
        if (this.f586r.getParent() == null) {
            addView(this.f586r);
        }
    }

    public boolean j() {
        return this.f591w;
    }

    public void k() {
        removeAllViews();
        this.f585q = null;
        this.f896c = null;
    }

    public boolean l() {
        androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter = this.f897d;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.K();
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter = this.f897d;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.B();
            this.f897d.C();
        }
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ boolean onHoverEvent(android.view.MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() != 32) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            return;
        }
        accessibilityEvent.setSource(this);
        accessibilityEvent.setClassName(getClass().getName());
        accessibilityEvent.setPackageName(getContext().getPackageName());
        accessibilityEvent.setContentDescription(this.f582i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        boolean zB = androidx.appcompat.widget.h0.b(this);
        int paddingRight = zB ? (i7 - i5) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i8 - i6) - getPaddingTop()) - getPaddingBottom();
        android.view.View view = this.f584p;
        if (view != null && view.getVisibility() != 8) {
            android.view.ViewGroup.MarginLayoutParams marginLayoutParams = (android.view.ViewGroup.MarginLayoutParams) this.f584p.getLayoutParams();
            int i9 = zB ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i10 = zB ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int iD = androidx.appcompat.widget.a.d(paddingRight, i9, zB);
            paddingRight = androidx.appcompat.widget.a.d(iD + e(this.f584p, iD, paddingTop, paddingTop2, zB), i10, zB);
        }
        int iE = paddingRight;
        android.widget.LinearLayout linearLayout = this.f586r;
        if (linearLayout != null && this.f585q == null && linearLayout.getVisibility() != 8) {
            iE += e(this.f586r, iE, paddingTop, paddingTop2, zB);
        }
        int i11 = iE;
        android.view.View view2 = this.f585q;
        if (view2 != null) {
            e(view2, i11, paddingTop, paddingTop2, zB);
        }
        int paddingLeft = zB ? getPaddingLeft() : (i7 - i5) - getPaddingRight();
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.f896c;
        if (actionMenuView != null) {
            e(actionMenuView, paddingLeft, paddingTop, paddingTop2, !zB);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i5, int i6) {
        int mode = android.view.View.MeasureSpec.getMode(i5);
        int i7 = com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY;
        if (mode != 1073741824) {
            throw new java.lang.IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (android.view.View.MeasureSpec.getMode(i6) == 0) {
            throw new java.lang.IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = android.view.View.MeasureSpec.getSize(i5);
        int size2 = this.f898e;
        if (size2 <= 0) {
            size2 = android.view.View.MeasureSpec.getSize(i6);
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingTop;
        int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        android.view.View view = this.f584p;
        if (view != null) {
            int iC = c(view, paddingLeft, iMakeMeasureSpec, 0);
            android.view.ViewGroup.MarginLayoutParams marginLayoutParams = (android.view.ViewGroup.MarginLayoutParams) this.f584p.getLayoutParams();
            paddingLeft = iC - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.f896c;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = c(this.f896c, paddingLeft, iMakeMeasureSpec, 0);
        }
        android.widget.LinearLayout linearLayout = this.f586r;
        if (linearLayout != null && this.f585q == null) {
            if (this.f591w) {
                this.f586r.measure(android.view.View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.f586r.getMeasuredWidth();
                boolean z4 = measuredWidth <= paddingLeft;
                if (z4) {
                    paddingLeft -= measuredWidth;
                }
                this.f586r.setVisibility(z4 ? 0 : 8);
            } else {
                paddingLeft = c(linearLayout, paddingLeft, iMakeMeasureSpec, 0);
            }
        }
        android.view.View view2 = this.f585q;
        if (view2 != null) {
            android.view.ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i8 = layoutParams.width;
            int i9 = i8 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i8 >= 0) {
                paddingLeft = java.lang.Math.min(i8, paddingLeft);
            }
            int i10 = layoutParams.height;
            if (i10 == -2) {
                i7 = Integer.MIN_VALUE;
            }
            if (i10 >= 0) {
                iMin = java.lang.Math.min(i10, iMin);
            }
            this.f585q.measure(android.view.View.MeasureSpec.makeMeasureSpec(paddingLeft, i9), android.view.View.MeasureSpec.makeMeasureSpec(iMin, i7));
        }
        if (this.f898e > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            int measuredHeight = getChildAt(i12).getMeasuredHeight() + paddingTop;
            if (measuredHeight > i11) {
                i11 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i11);
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.a
    public void setContentHeight(int i5) {
        this.f898e = i5;
    }

    public void setCustomView(android.view.View view) {
        android.widget.LinearLayout linearLayout;
        android.view.View view2 = this.f585q;
        if (view2 != null) {
            removeView(view2);
        }
        this.f585q = view;
        if (view != null && (linearLayout = this.f586r) != null) {
            removeView(linearLayout);
            this.f586r = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(java.lang.CharSequence charSequence) {
        this.f583o = charSequence;
        i();
    }

    public void setTitle(java.lang.CharSequence charSequence) {
        this.f582i = charSequence;
        i();
    }

    public void setTitleOptional(boolean z4) {
        if (z4 != this.f591w) {
            requestLayout();
        }
        this.f591w = z4;
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i5) {
        super.setVisibility(i5);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarContextView(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.actionModeStyle);
    }

    public ActionBarContextView(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(context, attributeSet, androidx.appcompat.R.styleable.ActionMode, i5, 0);
        w.q.R(this, d0VarT.f(androidx.appcompat.R.styleable.ActionMode_background));
        this.f589u = d0VarT.m(androidx.appcompat.R.styleable.ActionMode_titleTextStyle, 0);
        this.f590v = d0VarT.m(androidx.appcompat.R.styleable.ActionMode_subtitleTextStyle, 0);
        this.f898e = d0VarT.l(androidx.appcompat.R.styleable.ActionMode_height, 0);
        this.f592x = d0VarT.m(androidx.appcompat.R.styleable.ActionMode_closeItemLayout, androidx.appcompat.R.layout.abc_action_mode_close_item_material);
        d0VarT.u();
    }
}
