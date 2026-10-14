package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class Toolbar extends android.view.ViewGroup {
    public int A;
    public int B;
    public java.lang.CharSequence C;
    public java.lang.CharSequence D;
    public int E;
    public int F;
    public boolean G;
    public boolean H;
    public final java.util.ArrayList<android.view.View> I;
    public final java.util.ArrayList<android.view.View> J;
    public final int[] K;
    public androidx.appcompat.widget.Toolbar.e L;
    public final androidx.appcompat.widget.ActionMenuView.d M;
    public androidx.appcompat.widget.e0 N;
    public androidx.appcompat.widget.ActionMenuPresenter O;
    public androidx.appcompat.widget.Toolbar.d P;
    public androidx.appcompat.view.menu.i.a Q;
    public androidx.appcompat.view.menu.e.a R;
    public boolean S;
    public final java.lang.Runnable T;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.appcompat.widget.ActionMenuView f859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.widget.TextView f860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.widget.TextView f861c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.widget.ImageButton f862d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public android.widget.ImageView f863e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public android.graphics.drawable.Drawable f864f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public java.lang.CharSequence f865g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public android.widget.ImageButton f866h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public android.view.View f867i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public android.content.Context f868o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f869p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f870q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f871r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f872s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f873t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f874u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f875v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f876w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f877x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public androidx.appcompat.widget.v f878y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f879z;

    public class a implements androidx.appcompat.widget.ActionMenuView.d {
        public a() {
        }

        @Override // androidx.appcompat.widget.ActionMenuView.d
        public boolean onMenuItemClick(android.view.MenuItem menuItem) {
            androidx.appcompat.widget.Toolbar.e eVar = androidx.appcompat.widget.Toolbar.this.L;
            if (eVar != null) {
                return eVar.onMenuItemClick(menuItem);
            }
            return false;
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.appcompat.widget.Toolbar.this.N();
        }
    }

    public class c implements android.view.View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(android.view.View view) {
            androidx.appcompat.widget.Toolbar.this.e();
        }
    }

    public class d implements androidx.appcompat.view.menu.i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public androidx.appcompat.view.menu.e f886a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public androidx.appcompat.view.menu.g f887b;

        public d() {
        }

        @Override // androidx.appcompat.view.menu.i
        public void a(androidx.appcompat.view.menu.e eVar, boolean z4) {
        }

        @Override // androidx.appcompat.view.menu.i
        public boolean c() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.i
        public void d(android.content.Context context, androidx.appcompat.view.menu.e eVar) {
            androidx.appcompat.view.menu.g gVar;
            androidx.appcompat.view.menu.e eVar2 = this.f886a;
            if (eVar2 != null && (gVar = this.f887b) != null) {
                eVar2.f(gVar);
            }
            this.f886a = eVar;
        }

        @Override // androidx.appcompat.view.menu.i
        public boolean e(androidx.appcompat.view.menu.e eVar, androidx.appcompat.view.menu.g gVar) {
            android.view.KeyEvent.Callback callback = androidx.appcompat.widget.Toolbar.this.f867i;
            if (callback instanceof e.c) {
                ((e.c) callback).d();
            }
            androidx.appcompat.widget.Toolbar toolbar = androidx.appcompat.widget.Toolbar.this;
            toolbar.removeView(toolbar.f867i);
            androidx.appcompat.widget.Toolbar toolbar2 = androidx.appcompat.widget.Toolbar.this;
            toolbar2.removeView(toolbar2.f866h);
            androidx.appcompat.widget.Toolbar toolbar3 = androidx.appcompat.widget.Toolbar.this;
            toolbar3.f867i = null;
            toolbar3.a();
            this.f887b = null;
            androidx.appcompat.widget.Toolbar.this.requestLayout();
            gVar.r(false);
            return true;
        }

        @Override // androidx.appcompat.view.menu.i
        public boolean h(androidx.appcompat.view.menu.e eVar, androidx.appcompat.view.menu.g gVar) {
            androidx.appcompat.widget.Toolbar.this.g();
            android.view.ViewParent parent = androidx.appcompat.widget.Toolbar.this.f866h.getParent();
            androidx.appcompat.widget.Toolbar toolbar = androidx.appcompat.widget.Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof android.view.ViewGroup) {
                    ((android.view.ViewGroup) parent).removeView(toolbar.f866h);
                }
                androidx.appcompat.widget.Toolbar toolbar2 = androidx.appcompat.widget.Toolbar.this;
                toolbar2.addView(toolbar2.f866h);
            }
            androidx.appcompat.widget.Toolbar.this.f867i = gVar.getActionView();
            this.f887b = gVar;
            android.view.ViewParent parent2 = androidx.appcompat.widget.Toolbar.this.f867i.getParent();
            androidx.appcompat.widget.Toolbar toolbar3 = androidx.appcompat.widget.Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof android.view.ViewGroup) {
                    ((android.view.ViewGroup) parent2).removeView(toolbar3.f867i);
                }
                androidx.appcompat.widget.Toolbar.LayoutParams layoutParamsGenerateDefaultLayoutParams = androidx.appcompat.widget.Toolbar.this.generateDefaultLayoutParams();
                androidx.appcompat.widget.Toolbar toolbar4 = androidx.appcompat.widget.Toolbar.this;
                layoutParamsGenerateDefaultLayoutParams.f178a = 8388611 | (toolbar4.f872s & 112);
                layoutParamsGenerateDefaultLayoutParams.f880b = 2;
                toolbar4.f867i.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
                androidx.appcompat.widget.Toolbar toolbar5 = androidx.appcompat.widget.Toolbar.this;
                toolbar5.addView(toolbar5.f867i);
            }
            androidx.appcompat.widget.Toolbar.this.F();
            androidx.appcompat.widget.Toolbar.this.requestLayout();
            gVar.r(true);
            android.view.KeyEvent.Callback callback = androidx.appcompat.widget.Toolbar.this.f867i;
            if (callback instanceof e.c) {
                ((e.c) callback).c();
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.i
        public boolean j(androidx.appcompat.view.menu.l lVar) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.i
        public void k(boolean z4) {
            if (this.f887b != null) {
                androidx.appcompat.view.menu.e eVar = this.f886a;
                boolean z5 = false;
                if (eVar != null) {
                    int size = eVar.size();
                    for (int i5 = 0; i5 < size; i5++) {
                        if (this.f886a.getItem(i5) == this.f887b) {
                            z5 = true;
                            break;
                        }
                    }
                }
                if (z5) {
                    return;
                }
                e(this.f886a, this.f887b);
            }
        }
    }

    public interface e {
        boolean onMenuItemClick(android.view.MenuItem menuItem);
    }

    public Toolbar(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.toolbarStyle);
    }

    private android.view.MenuInflater getMenuInflater() {
        return new e.g(getContext());
    }

    public final int A(android.view.View view, int i5, int[] iArr, int i6) {
        androidx.appcompat.widget.Toolbar.LayoutParams layoutParams = (androidx.appcompat.widget.Toolbar.LayoutParams) view.getLayoutParams();
        int i7 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin - iArr[0];
        int iMax = i5 + java.lang.Math.max(0, i7);
        iArr[0] = java.lang.Math.max(0, -i7);
        int iQ = q(view, i6);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iQ, iMax + measuredWidth, view.getMeasuredHeight() + iQ);
        return iMax + measuredWidth + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    public final int B(android.view.View view, int i5, int[] iArr, int i6) {
        androidx.appcompat.widget.Toolbar.LayoutParams layoutParams = (androidx.appcompat.widget.Toolbar.LayoutParams) view.getLayoutParams();
        int i7 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin - iArr[1];
        int iMax = i5 - java.lang.Math.max(0, i7);
        iArr[1] = java.lang.Math.max(0, -i7);
        int iQ = q(view, i6);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iQ, iMax, view.getMeasuredHeight() + iQ);
        return iMax - (measuredWidth + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
    }

    public final int C(android.view.View view, int i5, int i6, int i7, int i8, int[] iArr) {
        android.view.ViewGroup.MarginLayoutParams marginLayoutParams = (android.view.ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i9 = marginLayoutParams.leftMargin - iArr[0];
        int i10 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = java.lang.Math.max(0, i9) + java.lang.Math.max(0, i10);
        iArr[0] = java.lang.Math.max(0, -i9);
        iArr[1] = java.lang.Math.max(0, -i10);
        view.measure(android.view.ViewGroup.getChildMeasureSpec(i5, getPaddingLeft() + getPaddingRight() + iMax + i6, marginLayoutParams.width), android.view.ViewGroup.getChildMeasureSpec(i7, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i8, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    public final void D(android.view.View view, int i5, int i6, int i7, int i8, int i9) {
        android.view.ViewGroup.MarginLayoutParams marginLayoutParams = (android.view.ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = android.view.ViewGroup.getChildMeasureSpec(i5, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i6, marginLayoutParams.width);
        int childMeasureSpec2 = android.view.ViewGroup.getChildMeasureSpec(i7, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i8, marginLayoutParams.height);
        int mode = android.view.View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i9 >= 0) {
            if (mode != 0) {
                i9 = java.lang.Math.min(android.view.View.MeasureSpec.getSize(childMeasureSpec2), i9);
            }
            childMeasureSpec2 = android.view.View.MeasureSpec.makeMeasureSpec(i9, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final void E() {
        removeCallbacks(this.T);
        post(this.T);
    }

    public void F() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            android.view.View childAt = getChildAt(childCount);
            if (((androidx.appcompat.widget.Toolbar.LayoutParams) childAt.getLayoutParams()).f880b != 2 && childAt != this.f859a) {
                removeViewAt(childCount);
                this.J.add(childAt);
            }
        }
    }

    public void G(int i5, int i6) {
        h();
        this.f878y.g(i5, i6);
    }

    public void H(androidx.appcompat.view.menu.e eVar, androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter) {
        if (eVar == null && this.f859a == null) {
            return;
        }
        k();
        androidx.appcompat.view.menu.e eVarL = this.f859a.L();
        if (eVarL == eVar) {
            return;
        }
        if (eVarL != null) {
            eVarL.O(this.O);
            eVarL.O(this.P);
        }
        if (this.P == null) {
            this.P = new androidx.appcompat.widget.Toolbar.d();
        }
        actionMenuPresenter.G(true);
        if (eVar != null) {
            eVar.c(actionMenuPresenter, this.f868o);
            eVar.c(this.P, this.f868o);
        } else {
            actionMenuPresenter.d(this.f868o, null);
            this.P.d(this.f868o, null);
            actionMenuPresenter.k(true);
            this.P.k(true);
        }
        this.f859a.setPopupTheme(this.f869p);
        this.f859a.setPresenter(actionMenuPresenter);
        this.O = actionMenuPresenter;
    }

    public void I(androidx.appcompat.view.menu.i.a aVar, androidx.appcompat.view.menu.e.a aVar2) {
        this.Q = aVar;
        this.R = aVar2;
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.f859a;
        if (actionMenuView != null) {
            actionMenuView.M(aVar, aVar2);
        }
    }

    public void J(android.content.Context context, int i5) {
        this.f871r = i5;
        android.widget.TextView textView = this.f861c;
        if (textView != null) {
            textView.setTextAppearance(context, i5);
        }
    }

    public void K(android.content.Context context, int i5) {
        this.f870q = i5;
        android.widget.TextView textView = this.f860b;
        if (textView != null) {
            textView.setTextAppearance(context, i5);
        }
    }

    public final boolean L() {
        if (!this.S) {
            return false;
        }
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            if (M(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    public final boolean M(android.view.View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public boolean N() {
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.f859a;
        return actionMenuView != null && actionMenuView.N();
    }

    public void a() {
        for (int size = this.J.size() - 1; size >= 0; size--) {
            addView(this.J.get(size));
        }
        this.J.clear();
    }

    public final void b(java.util.List<android.view.View> list, int i5) {
        boolean z4 = w.q.p(this) == 1;
        int childCount = getChildCount();
        int iB = w.d.b(i5, w.q.p(this));
        list.clear();
        if (!z4) {
            for (int i6 = 0; i6 < childCount; i6++) {
                android.view.View childAt = getChildAt(i6);
                androidx.appcompat.widget.Toolbar.LayoutParams layoutParams = (androidx.appcompat.widget.Toolbar.LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f880b == 0 && M(childAt) && p(layoutParams.f178a) == iB) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i7 = childCount - 1; i7 >= 0; i7--) {
            android.view.View childAt2 = getChildAt(i7);
            androidx.appcompat.widget.Toolbar.LayoutParams layoutParams2 = (androidx.appcompat.widget.Toolbar.LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.f880b == 0 && M(childAt2) && p(layoutParams2.f178a) == iB) {
                list.add(childAt2);
            }
        }
    }

    public final void c(android.view.View view, boolean z4) {
        androidx.appcompat.widget.Toolbar.LayoutParams layoutParamsGenerateLayoutParams;
        android.view.ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParamsGenerateLayoutParams = generateDefaultLayoutParams();
        } else {
            layoutParamsGenerateLayoutParams = !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (androidx.appcompat.widget.Toolbar.LayoutParams) layoutParams;
        }
        layoutParamsGenerateLayoutParams.f880b = 1;
        if (!z4 || this.f867i == null) {
            addView(view, layoutParamsGenerateLayoutParams);
        } else {
            view.setLayoutParams(layoutParamsGenerateLayoutParams);
            this.J.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof androidx.appcompat.widget.Toolbar.LayoutParams);
    }

    public boolean d() {
        androidx.appcompat.widget.ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f859a) != null && actionMenuView.I();
    }

    public void e() {
        androidx.appcompat.widget.Toolbar.d dVar = this.P;
        androidx.appcompat.view.menu.g gVar = dVar == null ? null : dVar.f887b;
        if (gVar != null) {
            gVar.collapseActionView();
        }
    }

    public void f() {
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.f859a;
        if (actionMenuView != null) {
            actionMenuView.z();
        }
    }

    public void g() {
        if (this.f866h == null) {
            androidx.appcompat.widget.AppCompatImageButton appCompatImageButton = new androidx.appcompat.widget.AppCompatImageButton(getContext(), null, androidx.appcompat.R.attr.toolbarNavigationButtonStyle);
            this.f866h = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.f864f);
            this.f866h.setContentDescription(this.f865g);
            androidx.appcompat.widget.Toolbar.LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            layoutParamsGenerateDefaultLayoutParams.f178a = 8388611 | (this.f872s & 112);
            layoutParamsGenerateDefaultLayoutParams.f880b = 2;
            this.f866h.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
            this.f866h.setOnClickListener(new androidx.appcompat.widget.Toolbar.c());
        }
    }

    public int getContentInsetEnd() {
        androidx.appcompat.widget.v vVar = this.f878y;
        if (vVar != null) {
            return vVar.a();
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i5 = this.A;
        return i5 != Integer.MIN_VALUE ? i5 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        androidx.appcompat.widget.v vVar = this.f878y;
        if (vVar != null) {
            return vVar.b();
        }
        return 0;
    }

    public int getContentInsetRight() {
        androidx.appcompat.widget.v vVar = this.f878y;
        if (vVar != null) {
            return vVar.c();
        }
        return 0;
    }

    public int getContentInsetStart() {
        androidx.appcompat.widget.v vVar = this.f878y;
        if (vVar != null) {
            return vVar.d();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i5 = this.f879z;
        return i5 != Integer.MIN_VALUE ? i5 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        androidx.appcompat.view.menu.e eVarL;
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.f859a;
        return actionMenuView != null && (eVarL = actionMenuView.L()) != null && eVarL.hasVisibleItems() ? java.lang.Math.max(getContentInsetEnd(), java.lang.Math.max(this.A, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        return w.q.p(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return w.q.p(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? java.lang.Math.max(getContentInsetStart(), java.lang.Math.max(this.f879z, 0)) : getContentInsetStart();
    }

    public android.graphics.drawable.Drawable getLogo() {
        android.widget.ImageView imageView = this.f863e;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public java.lang.CharSequence getLogoDescription() {
        android.widget.ImageView imageView = this.f863e;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public android.view.Menu getMenu() {
        j();
        return this.f859a.getMenu();
    }

    public java.lang.CharSequence getNavigationContentDescription() {
        android.widget.ImageButton imageButton = this.f862d;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public android.graphics.drawable.Drawable getNavigationIcon() {
        android.widget.ImageButton imageButton = this.f862d;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public androidx.appcompat.widget.ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.O;
    }

    public android.graphics.drawable.Drawable getOverflowIcon() {
        j();
        return this.f859a.getOverflowIcon();
    }

    public android.content.Context getPopupContext() {
        return this.f868o;
    }

    public int getPopupTheme() {
        return this.f869p;
    }

    public java.lang.CharSequence getSubtitle() {
        return this.D;
    }

    public java.lang.CharSequence getTitle() {
        return this.C;
    }

    public int getTitleMarginBottom() {
        return this.f877x;
    }

    public int getTitleMarginEnd() {
        return this.f875v;
    }

    public int getTitleMarginStart() {
        return this.f874u;
    }

    public int getTitleMarginTop() {
        return this.f876w;
    }

    public androidx.appcompat.widget.n getWrapper() {
        if (this.N == null) {
            this.N = new androidx.appcompat.widget.e0(this, true);
        }
        return this.N;
    }

    public final void h() {
        if (this.f878y == null) {
            this.f878y = new androidx.appcompat.widget.v();
        }
    }

    public final void i() {
        if (this.f863e == null) {
            this.f863e = new androidx.appcompat.widget.AppCompatImageView(getContext());
        }
    }

    public final void j() {
        k();
        if (this.f859a.L() == null) {
            androidx.appcompat.view.menu.e eVar = (androidx.appcompat.view.menu.e) this.f859a.getMenu();
            if (this.P == null) {
                this.P = new androidx.appcompat.widget.Toolbar.d();
            }
            this.f859a.setExpandedActionViewsExclusive(true);
            eVar.c(this.P, this.f868o);
        }
    }

    public final void k() {
        if (this.f859a == null) {
            androidx.appcompat.widget.ActionMenuView actionMenuView = new androidx.appcompat.widget.ActionMenuView(getContext());
            this.f859a = actionMenuView;
            actionMenuView.setPopupTheme(this.f869p);
            this.f859a.setOnMenuItemClickListener(this.M);
            this.f859a.M(this.Q, this.R);
            androidx.appcompat.widget.Toolbar.LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            layoutParamsGenerateDefaultLayoutParams.f178a = 8388613 | (this.f872s & 112);
            this.f859a.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
            c(this.f859a, false);
        }
    }

    public final void l() {
        if (this.f862d == null) {
            this.f862d = new androidx.appcompat.widget.AppCompatImageButton(getContext(), null, androidx.appcompat.R.attr.toolbarNavigationButtonStyle);
            androidx.appcompat.widget.Toolbar.LayoutParams layoutParamsGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            layoutParamsGenerateDefaultLayoutParams.f178a = 8388611 | (this.f872s & 112);
            this.f862d.setLayoutParams(layoutParamsGenerateDefaultLayoutParams);
        }
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public androidx.appcompat.widget.Toolbar.LayoutParams generateDefaultLayoutParams() {
        return new androidx.appcompat.widget.Toolbar.LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public androidx.appcompat.widget.Toolbar.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.Toolbar.LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public androidx.appcompat.widget.Toolbar.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof androidx.appcompat.widget.Toolbar.LayoutParams) {
            return new androidx.appcompat.widget.Toolbar.LayoutParams((androidx.appcompat.widget.Toolbar.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof androidx.appcompat.app.ActionBar.LayoutParams) {
            return new androidx.appcompat.widget.Toolbar.LayoutParams((androidx.appcompat.app.ActionBar.LayoutParams) layoutParams);
        }
        return layoutParams instanceof android.view.ViewGroup.MarginLayoutParams ? new androidx.appcompat.widget.Toolbar.LayoutParams((android.view.ViewGroup.MarginLayoutParams) layoutParams) : new androidx.appcompat.widget.Toolbar.LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.T);
    }

    @Override // android.view.View
    public boolean onHoverEvent(android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.H = false;
        }
        if (!this.H) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.H = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.H = false;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0289  */
    /* JADX WARN: Code duplicated, block: B:102:0x028c  */
    /* JADX WARN: Code duplicated, block: B:105:0x029f A[LOOP:0: B:104:0x029d->B:105:0x029f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:108:0x02c1 A[LOOP:1: B:107:0x02bf->B:108:0x02c1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:112:0x02eb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:113:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:114:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:117:0x02fa A[LOOP:2: B:116:0x02f8->B:117:0x02fa, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:19:0x005f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x0061  */
    /* JADX WARN: Code duplicated, block: B:21:0x0068  */
    /* JADX WARN: Code duplicated, block: B:24:0x0076 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x0078  */
    /* JADX WARN: Code duplicated, block: B:26:0x007f  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:31:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ca A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:39:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:40:0x0100  */
    /* JADX WARN: Code duplicated, block: B:42:0x0105  */
    /* JADX WARN: Code duplicated, block: B:43:0x011d  */
    /* JADX WARN: Code duplicated, block: B:49:0x012b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:50:0x012d  */
    /* JADX WARN: Code duplicated, block: B:51:0x0130  */
    /* JADX WARN: Code duplicated, block: B:53:0x0134  */
    /* JADX WARN: Code duplicated, block: B:54:0x0137  */
    /* JADX WARN: Code duplicated, block: B:57:0x0147  */
    /* JADX WARN: Code duplicated, block: B:59:0x014f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:66:0x0168  */
    /* JADX WARN: Code duplicated, block: B:68:0x016c  */
    /* JADX WARN: Code duplicated, block: B:70:0x017e  */
    /* JADX WARN: Code duplicated, block: B:71:0x0181  */
    /* JADX WARN: Code duplicated, block: B:73:0x018c  */
    /* JADX WARN: Code duplicated, block: B:75:0x0198  */
    /* JADX WARN: Code duplicated, block: B:76:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:78:0x01b7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:80:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:83:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:84:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:86:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:87:0x021b  */
    /* JADX WARN: Code duplicated, block: B:89:0x021e  */
    /* JADX WARN: Code duplicated, block: B:91:0x0227 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x0229  */
    /* JADX WARN: Code duplicated, block: B:93:0x022d  */
    /* JADX WARN: Code duplicated, block: B:96:0x0241  */
    /* JADX WARN: Code duplicated, block: B:97:0x0264  */
    /* JADX WARN: Code duplicated, block: B:99:0x0267  */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int iA;
        int iB;
        int iMax;
        int iMin;
        boolean zM;
        boolean zM2;
        int measuredHeight;
        android.widget.TextView textView;
        android.widget.TextView textView2;
        androidx.appcompat.widget.Toolbar.LayoutParams layoutParams;
        androidx.appcompat.widget.Toolbar.LayoutParams layoutParams2;
        boolean z5;
        int i9;
        int i10;
        int paddingTop;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int iMax2;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int size;
        int i23;
        int i24;
        int size2;
        int i25;
        int i26;
        int i27;
        int size3;
        boolean z6 = w.q.p(this) == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i28 = width - paddingRight;
        int[] iArr = this.K;
        iArr[1] = 0;
        iArr[0] = 0;
        int iQ = w.q.q(this);
        int iMin2 = iQ >= 0 ? java.lang.Math.min(iQ, i8 - i6) : 0;
        if (M(this.f862d)) {
            if (z6) {
                iB = B(this.f862d, i28, iArr, iMin2);
                iA = paddingLeft;
            } else {
                iA = A(this.f862d, paddingLeft, iArr, iMin2);
            }
            if (M(this.f866h)) {
                if (z6) {
                    iB = B(this.f866h, iB, iArr, iMin2);
                } else {
                    iA = A(this.f866h, iA, iArr, iMin2);
                }
            }
            if (M(this.f859a)) {
                if (z6) {
                    iA = A(this.f859a, iA, iArr, iMin2);
                } else {
                    iB = B(this.f859a, iB, iArr, iMin2);
                }
            }
            int currentContentInsetLeft = getCurrentContentInsetLeft();
            int currentContentInsetRight = getCurrentContentInsetRight();
            iArr[0] = java.lang.Math.max(0, currentContentInsetLeft - iA);
            iArr[1] = java.lang.Math.max(0, currentContentInsetRight - (i28 - iB));
            iMax = java.lang.Math.max(iA, currentContentInsetLeft);
            iMin = java.lang.Math.min(iB, i28 - currentContentInsetRight);
            if (M(this.f867i)) {
                if (z6) {
                    iMin = B(this.f867i, iMin, iArr, iMin2);
                } else {
                    iMax = A(this.f867i, iMax, iArr, iMin2);
                }
            }
            if (M(this.f863e)) {
                if (z6) {
                    iMin = B(this.f863e, iMin, iArr, iMin2);
                } else {
                    iMax = A(this.f863e, iMax, iArr, iMin2);
                }
            }
            zM = M(this.f860b);
            zM2 = M(this.f861c);
            if (zM) {
                androidx.appcompat.widget.Toolbar.LayoutParams layoutParams3 = (androidx.appcompat.widget.Toolbar.LayoutParams) this.f860b.getLayoutParams();
                measuredHeight = ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).topMargin + this.f860b.getMeasuredHeight() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin + 0;
            } else {
                measuredHeight = 0;
            }
            if (zM2) {
                androidx.appcompat.widget.Toolbar.LayoutParams layoutParams4 = (androidx.appcompat.widget.Toolbar.LayoutParams) this.f861c.getLayoutParams();
                measuredHeight += ((android.view.ViewGroup.MarginLayoutParams) layoutParams4).topMargin + this.f861c.getMeasuredHeight() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin;
            }
            if (!zM || zM2) {
                if (zM) {
                    textView = this.f860b;
                } else {
                    textView = this.f861c;
                }
                if (zM2) {
                    textView2 = this.f861c;
                } else {
                    textView2 = this.f860b;
                }
                layoutParams = (androidx.appcompat.widget.Toolbar.LayoutParams) textView.getLayoutParams();
                layoutParams2 = (androidx.appcompat.widget.Toolbar.LayoutParams) textView2.getLayoutParams();
                z5 = (!zM && this.f860b.getMeasuredWidth() > 0) || (zM2 && this.f861c.getMeasuredWidth() > 0);
                i9 = this.B & 112;
                i10 = paddingLeft;
                if (i9 == 48) {
                    paddingTop = getPaddingTop() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + this.f876w;
                } else if (i9 != 80) {
                    iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                    i18 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    i19 = this.f876w;
                    if (iMax2 < i18 + i19) {
                        iMax2 = i18 + i19;
                    } else {
                        i20 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                        i21 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        i22 = this.f877x;
                        if (i20 < i21 + i22) {
                            iMax2 = java.lang.Math.max(0, iMax2 - ((((android.view.ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + i22) - i20));
                        }
                    }
                    paddingTop = paddingTop2 + iMax2;
                } else {
                    paddingTop = (((height - paddingBottom) - ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin) - this.f877x) - measuredHeight;
                }
                if (z6) {
                    if (z5) {
                        i15 = this.f874u;
                    } else {
                        i15 = 0;
                    }
                    int i29 = i15 - iArr[1];
                    iMin -= java.lang.Math.max(0, i29);
                    iArr[1] = java.lang.Math.max(0, -i29);
                    if (zM) {
                        androidx.appcompat.widget.Toolbar.LayoutParams layoutParams5 = (androidx.appcompat.widget.Toolbar.LayoutParams) this.f860b.getLayoutParams();
                        int measuredWidth = iMin - this.f860b.getMeasuredWidth();
                        int measuredHeight2 = this.f860b.getMeasuredHeight() + paddingTop;
                        this.f860b.layout(measuredWidth, paddingTop, iMin, measuredHeight2);
                        i16 = measuredWidth - this.f875v;
                        paddingTop = measuredHeight2 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams5).bottomMargin;
                    } else {
                        i16 = iMin;
                    }
                    if (zM2) {
                        int i30 = paddingTop + ((android.view.ViewGroup.MarginLayoutParams) ((androidx.appcompat.widget.Toolbar.LayoutParams) this.f861c.getLayoutParams())).topMargin;
                        this.f861c.layout(iMin - this.f861c.getMeasuredWidth(), i30, iMin, this.f861c.getMeasuredHeight() + i30);
                        i17 = iMin - this.f875v;
                    } else {
                        i17 = iMin;
                    }
                    if (z5) {
                        iMin = java.lang.Math.min(i16, i17);
                    }
                    iMax = iMax;
                } else {
                    if (z5) {
                        i12 = this.f874u;
                        i11 = 0;
                    } else {
                        i11 = 0;
                        i12 = 0;
                    }
                    int i31 = i12 - iArr[i11];
                    iMax += java.lang.Math.max(i11, i31);
                    iArr[i11] = java.lang.Math.max(i11, -i31);
                    if (zM) {
                        androidx.appcompat.widget.Toolbar.LayoutParams layoutParams6 = (androidx.appcompat.widget.Toolbar.LayoutParams) this.f860b.getLayoutParams();
                        int measuredWidth2 = this.f860b.getMeasuredWidth() + iMax;
                        int measuredHeight3 = this.f860b.getMeasuredHeight() + paddingTop;
                        this.f860b.layout(iMax, paddingTop, measuredWidth2, measuredHeight3);
                        i13 = measuredWidth2 + this.f875v;
                        paddingTop = measuredHeight3 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams6).bottomMargin;
                    } else {
                        i13 = iMax;
                    }
                    if (zM2) {
                        int i32 = paddingTop + ((android.view.ViewGroup.MarginLayoutParams) ((androidx.appcompat.widget.Toolbar.LayoutParams) this.f861c.getLayoutParams())).topMargin;
                        int measuredWidth3 = this.f861c.getMeasuredWidth() + iMax;
                        this.f861c.layout(iMax, i32, measuredWidth3, this.f861c.getMeasuredHeight() + i32);
                        i14 = measuredWidth3 + this.f875v;
                    } else {
                        i14 = iMax;
                    }
                    if (z5) {
                        iMax = java.lang.Math.max(i13, i14);
                    }
                }
                b(this.I, 3);
                size = this.I.size();
                for (i23 = i11; i23 < size; i23++) {
                    iMax = A(this.I.get(i23), iMax, iArr, iMin2);
                }
                i24 = iMin2;
                b(this.I, 5);
                size2 = this.I.size();
                for (i25 = i11; i25 < size2; i25++) {
                    iMin = B(this.I.get(i25), iMin, iArr, i24);
                }
                b(this.I, 1);
                int iU = u(this.I, iArr);
                i26 = (i10 + (((width - i10) - paddingRight) / 2)) - (iU / 2);
                i27 = iU + i26;
                if (i26 >= iMax) {
                    if (i27 > iMin) {
                        iMax = i26 - (i27 - iMin);
                    } else {
                        iMax = i26;
                    }
                }
                size3 = this.I.size();
                while (i11 < size3) {
                    iMax = A(this.I.get(i11), iMax, iArr, i24);
                    i11++;
                }
                this.I.clear();
            }
            i10 = paddingLeft;
            iMin2 = iMin2;
            i11 = 0;
            b(this.I, 3);
            size = this.I.size();
            while (i23 < size) {
                iMax = A(this.I.get(i23), iMax, iArr, iMin2);
            }
            i24 = iMin2;
            b(this.I, 5);
            size2 = this.I.size();
            while (i25 < size2) {
                iMin = B(this.I.get(i25), iMin, iArr, i24);
            }
            b(this.I, 1);
            int iU2 = u(this.I, iArr);
            i26 = (i10 + (((width - i10) - paddingRight) / 2)) - (iU2 / 2);
            i27 = iU2 + i26;
            if (i26 >= iMax) {
                if (i27 > iMin) {
                    iMax = i26 - (i27 - iMin);
                } else {
                    iMax = i26;
                }
            }
            size3 = this.I.size();
            while (i11 < size3) {
                iMax = A(this.I.get(i11), iMax, iArr, i24);
                i11++;
            }
            this.I.clear();
        }
        iA = paddingLeft;
        iB = i28;
        if (M(this.f866h)) {
            if (z6) {
                iB = B(this.f866h, iB, iArr, iMin2);
            } else {
                iA = A(this.f866h, iA, iArr, iMin2);
            }
        }
        if (M(this.f859a)) {
            if (z6) {
                iA = A(this.f859a, iA, iArr, iMin2);
            } else {
                iB = B(this.f859a, iB, iArr, iMin2);
            }
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = java.lang.Math.max(0, currentContentInsetLeft2 - iA);
        iArr[1] = java.lang.Math.max(0, currentContentInsetRight2 - (i28 - iB));
        iMax = java.lang.Math.max(iA, currentContentInsetLeft2);
        iMin = java.lang.Math.min(iB, i28 - currentContentInsetRight2);
        if (M(this.f867i)) {
            if (z6) {
                iMin = B(this.f867i, iMin, iArr, iMin2);
            } else {
                iMax = A(this.f867i, iMax, iArr, iMin2);
            }
        }
        if (M(this.f863e)) {
            if (z6) {
                iMin = B(this.f863e, iMin, iArr, iMin2);
            } else {
                iMax = A(this.f863e, iMax, iArr, iMin2);
            }
        }
        zM = M(this.f860b);
        zM2 = M(this.f861c);
        if (zM) {
            androidx.appcompat.widget.Toolbar.LayoutParams layoutParams7 = (androidx.appcompat.widget.Toolbar.LayoutParams) this.f860b.getLayoutParams();
            measuredHeight = ((android.view.ViewGroup.MarginLayoutParams) layoutParams7).topMargin + this.f860b.getMeasuredHeight() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams7).bottomMargin + 0;
        } else {
            measuredHeight = 0;
        }
        if (zM2) {
            androidx.appcompat.widget.Toolbar.LayoutParams layoutParams8 = (androidx.appcompat.widget.Toolbar.LayoutParams) this.f861c.getLayoutParams();
            measuredHeight += ((android.view.ViewGroup.MarginLayoutParams) layoutParams8).topMargin + this.f861c.getMeasuredHeight() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams8).bottomMargin;
        }
        if (zM) {
            if (zM) {
                textView = this.f860b;
            } else {
                textView = this.f861c;
            }
            if (zM2) {
                textView2 = this.f861c;
            } else {
                textView2 = this.f860b;
            }
            layoutParams = (androidx.appcompat.widget.Toolbar.LayoutParams) textView.getLayoutParams();
            layoutParams2 = (androidx.appcompat.widget.Toolbar.LayoutParams) textView2.getLayoutParams();
            if (zM) {
            }
            i9 = this.B & 112;
            i10 = paddingLeft;
            if (i9 == 48) {
                paddingTop = getPaddingTop() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + this.f876w;
            } else if (i9 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                i18 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                i19 = this.f876w;
                if (iMax2 < i18 + i19) {
                    iMax2 = i18 + i19;
                } else {
                    i20 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                    i21 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    i22 = this.f877x;
                    if (i20 < i21 + i22) {
                        iMax2 = java.lang.Math.max(0, iMax2 - ((((android.view.ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + i22) - i20));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin) - this.f877x) - measuredHeight;
            }
            if (z6) {
                if (z5) {
                    i15 = this.f874u;
                } else {
                    i15 = 0;
                }
                int i210 = i15 - iArr[1];
                iMin -= java.lang.Math.max(0, i210);
                iArr[1] = java.lang.Math.max(0, -i210);
                if (zM) {
                    androidx.appcompat.widget.Toolbar.LayoutParams layoutParams9 = (androidx.appcompat.widget.Toolbar.LayoutParams) this.f860b.getLayoutParams();
                    int measuredWidth4 = iMin - this.f860b.getMeasuredWidth();
                    int measuredHeight4 = this.f860b.getMeasuredHeight() + paddingTop;
                    this.f860b.layout(measuredWidth4, paddingTop, iMin, measuredHeight4);
                    i16 = measuredWidth4 - this.f875v;
                    paddingTop = measuredHeight4 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams9).bottomMargin;
                } else {
                    i16 = iMin;
                }
                if (zM2) {
                    int i33 = paddingTop + ((android.view.ViewGroup.MarginLayoutParams) ((androidx.appcompat.widget.Toolbar.LayoutParams) this.f861c.getLayoutParams())).topMargin;
                    this.f861c.layout(iMin - this.f861c.getMeasuredWidth(), i33, iMin, this.f861c.getMeasuredHeight() + i33);
                    i17 = iMin - this.f875v;
                } else {
                    i17 = iMin;
                }
                if (z5) {
                    iMin = java.lang.Math.min(i16, i17);
                }
                iMax = iMax;
                i11 = 0;
            } else {
                if (z5) {
                    i12 = this.f874u;
                    i11 = 0;
                } else {
                    i11 = 0;
                    i12 = 0;
                }
                int i34 = i12 - iArr[i11];
                iMax += java.lang.Math.max(i11, i34);
                iArr[i11] = java.lang.Math.max(i11, -i34);
                if (zM) {
                    androidx.appcompat.widget.Toolbar.LayoutParams layoutParams10 = (androidx.appcompat.widget.Toolbar.LayoutParams) this.f860b.getLayoutParams();
                    int measuredWidth5 = this.f860b.getMeasuredWidth() + iMax;
                    int measuredHeight5 = this.f860b.getMeasuredHeight() + paddingTop;
                    this.f860b.layout(iMax, paddingTop, measuredWidth5, measuredHeight5);
                    i13 = measuredWidth5 + this.f875v;
                    paddingTop = measuredHeight5 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams10).bottomMargin;
                } else {
                    i13 = iMax;
                }
                if (zM2) {
                    int i35 = paddingTop + ((android.view.ViewGroup.MarginLayoutParams) ((androidx.appcompat.widget.Toolbar.LayoutParams) this.f861c.getLayoutParams())).topMargin;
                    int measuredWidth6 = this.f861c.getMeasuredWidth() + iMax;
                    this.f861c.layout(iMax, i35, measuredWidth6, this.f861c.getMeasuredHeight() + i35);
                    i14 = measuredWidth6 + this.f875v;
                } else {
                    i14 = iMax;
                }
                if (z5) {
                    iMax = java.lang.Math.max(i13, i14);
                }
            }
        } else {
            if (zM) {
                textView = this.f860b;
            } else {
                textView = this.f861c;
            }
            if (zM2) {
                textView2 = this.f861c;
            } else {
                textView2 = this.f860b;
            }
            layoutParams = (androidx.appcompat.widget.Toolbar.LayoutParams) textView.getLayoutParams();
            layoutParams2 = (androidx.appcompat.widget.Toolbar.LayoutParams) textView2.getLayoutParams();
            if (zM) {
            }
            i9 = this.B & 112;
            i10 = paddingLeft;
            if (i9 == 48) {
                paddingTop = getPaddingTop() + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + this.f876w;
            } else if (i9 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                i18 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                i19 = this.f876w;
                if (iMax2 < i18 + i19) {
                    iMax2 = i18 + i19;
                } else {
                    i20 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                    i21 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    i22 = this.f877x;
                    if (i20 < i21 + i22) {
                        iMax2 = java.lang.Math.max(0, iMax2 - ((((android.view.ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin + i22) - i20));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((android.view.ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin) - this.f877x) - measuredHeight;
            }
            if (z6) {
                if (z5) {
                    i15 = this.f874u;
                } else {
                    i15 = 0;
                }
                int i211 = i15 - iArr[1];
                iMin -= java.lang.Math.max(0, i211);
                iArr[1] = java.lang.Math.max(0, -i211);
                if (zM) {
                    androidx.appcompat.widget.Toolbar.LayoutParams layoutParams11 = (androidx.appcompat.widget.Toolbar.LayoutParams) this.f860b.getLayoutParams();
                    int measuredWidth7 = iMin - this.f860b.getMeasuredWidth();
                    int measuredHeight6 = this.f860b.getMeasuredHeight() + paddingTop;
                    this.f860b.layout(measuredWidth7, paddingTop, iMin, measuredHeight6);
                    i16 = measuredWidth7 - this.f875v;
                    paddingTop = measuredHeight6 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams11).bottomMargin;
                } else {
                    i16 = iMin;
                }
                if (zM2) {
                    int i36 = paddingTop + ((android.view.ViewGroup.MarginLayoutParams) ((androidx.appcompat.widget.Toolbar.LayoutParams) this.f861c.getLayoutParams())).topMargin;
                    this.f861c.layout(iMin - this.f861c.getMeasuredWidth(), i36, iMin, this.f861c.getMeasuredHeight() + i36);
                    i17 = iMin - this.f875v;
                } else {
                    i17 = iMin;
                }
                if (z5) {
                    iMin = java.lang.Math.min(i16, i17);
                }
                iMax = iMax;
                i11 = 0;
            } else {
                if (z5) {
                    i12 = this.f874u;
                    i11 = 0;
                } else {
                    i11 = 0;
                    i12 = 0;
                }
                int i37 = i12 - iArr[i11];
                iMax += java.lang.Math.max(i11, i37);
                iArr[i11] = java.lang.Math.max(i11, -i37);
                if (zM) {
                    androidx.appcompat.widget.Toolbar.LayoutParams layoutParams12 = (androidx.appcompat.widget.Toolbar.LayoutParams) this.f860b.getLayoutParams();
                    int measuredWidth8 = this.f860b.getMeasuredWidth() + iMax;
                    int measuredHeight7 = this.f860b.getMeasuredHeight() + paddingTop;
                    this.f860b.layout(iMax, paddingTop, measuredWidth8, measuredHeight7);
                    i13 = measuredWidth8 + this.f875v;
                    paddingTop = measuredHeight7 + ((android.view.ViewGroup.MarginLayoutParams) layoutParams12).bottomMargin;
                } else {
                    i13 = iMax;
                }
                if (zM2) {
                    int i38 = paddingTop + ((android.view.ViewGroup.MarginLayoutParams) ((androidx.appcompat.widget.Toolbar.LayoutParams) this.f861c.getLayoutParams())).topMargin;
                    int measuredWidth9 = this.f861c.getMeasuredWidth() + iMax;
                    this.f861c.layout(iMax, i38, measuredWidth9, this.f861c.getMeasuredHeight() + i38);
                    i14 = measuredWidth9 + this.f875v;
                } else {
                    i14 = iMax;
                }
                if (z5) {
                    iMax = java.lang.Math.max(i13, i14);
                }
            }
        }
        b(this.I, 3);
        size = this.I.size();
        while (i23 < size) {
            iMax = A(this.I.get(i23), iMax, iArr, iMin2);
        }
        i24 = iMin2;
        b(this.I, 5);
        size2 = this.I.size();
        while (i25 < size2) {
            iMin = B(this.I.get(i25), iMin, iArr, i24);
        }
        b(this.I, 1);
        int iU3 = u(this.I, iArr);
        i26 = (i10 + (((width - i10) - paddingRight) / 2)) - (iU3 / 2);
        i27 = iU3 + i26;
        if (i26 >= iMax) {
            if (i27 > iMin) {
                iMax = i26 - (i27 - iMin);
            } else {
                iMax = i26;
            }
        }
        size3 = this.I.size();
        while (i11 < size3) {
            iMax = A(this.I.get(i11), iMax, iArr, i24);
            i11++;
        }
        this.I.clear();
    }

    @Override // android.view.View
    public void onMeasure(int i5, int i6) {
        int measuredWidth;
        int iMax;
        int iCombineMeasuredStates;
        int measuredWidth2;
        int measuredHeight;
        int iCombineMeasuredStates2;
        int iMax2;
        int[] iArr = this.K;
        boolean zB = androidx.appcompat.widget.h0.b(this);
        int i7 = !zB ? 1 : 0;
        if (M(this.f862d)) {
            D(this.f862d, i5, 0, i6, 0, this.f873t);
            measuredWidth = this.f862d.getMeasuredWidth() + s(this.f862d);
            iMax = java.lang.Math.max(0, this.f862d.getMeasuredHeight() + t(this.f862d));
            iCombineMeasuredStates = android.view.View.combineMeasuredStates(0, this.f862d.getMeasuredState());
        } else {
            measuredWidth = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (M(this.f866h)) {
            D(this.f866h, i5, 0, i6, 0, this.f873t);
            measuredWidth = this.f866h.getMeasuredWidth() + s(this.f866h);
            iMax = java.lang.Math.max(iMax, this.f866h.getMeasuredHeight() + t(this.f866h));
            iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, this.f866h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = 0 + java.lang.Math.max(currentContentInsetStart, measuredWidth);
        iArr[zB ? 1 : 0] = java.lang.Math.max(0, currentContentInsetStart - measuredWidth);
        if (M(this.f859a)) {
            D(this.f859a, i5, iMax3, i6, 0, this.f873t);
            measuredWidth2 = this.f859a.getMeasuredWidth() + s(this.f859a);
            iMax = java.lang.Math.max(iMax, this.f859a.getMeasuredHeight() + t(this.f859a));
            iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, this.f859a.getMeasuredState());
        } else {
            measuredWidth2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax4 = iMax3 + java.lang.Math.max(currentContentInsetEnd, measuredWidth2);
        iArr[i7] = java.lang.Math.max(0, currentContentInsetEnd - measuredWidth2);
        if (M(this.f867i)) {
            iMax4 += C(this.f867i, i5, iMax4, i6, 0, iArr);
            iMax = java.lang.Math.max(iMax, this.f867i.getMeasuredHeight() + t(this.f867i));
            iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, this.f867i.getMeasuredState());
        }
        if (M(this.f863e)) {
            iMax4 += C(this.f863e, i5, iMax4, i6, 0, iArr);
            iMax = java.lang.Math.max(iMax, this.f863e.getMeasuredHeight() + t(this.f863e));
            iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, this.f863e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            android.view.View childAt = getChildAt(i8);
            if (((androidx.appcompat.widget.Toolbar.LayoutParams) childAt.getLayoutParams()).f880b == 0 && M(childAt)) {
                iMax4 += C(childAt, i5, iMax4, i6, 0, iArr);
                iMax = java.lang.Math.max(iMax, childAt.getMeasuredHeight() + t(childAt));
                iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        int i9 = this.f876w + this.f877x;
        int i10 = this.f874u + this.f875v;
        if (M(this.f860b)) {
            C(this.f860b, i5, iMax4 + i10, i6, i9, iArr);
            int measuredWidth3 = this.f860b.getMeasuredWidth() + s(this.f860b);
            measuredHeight = this.f860b.getMeasuredHeight() + t(this.f860b);
            iCombineMeasuredStates2 = android.view.View.combineMeasuredStates(iCombineMeasuredStates, this.f860b.getMeasuredState());
            iMax2 = measuredWidth3;
        } else {
            measuredHeight = 0;
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
        }
        if (M(this.f861c)) {
            iMax2 = java.lang.Math.max(iMax2, C(this.f861c, i5, iMax4 + i10, i6, measuredHeight + i9, iArr));
            measuredHeight += this.f861c.getMeasuredHeight() + t(this.f861c);
            iCombineMeasuredStates2 = android.view.View.combineMeasuredStates(iCombineMeasuredStates2, this.f861c.getMeasuredState());
        }
        setMeasuredDimension(android.view.View.resolveSizeAndState(java.lang.Math.max(iMax4 + iMax2 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i5, (-16777216) & iCombineMeasuredStates2), L() ? 0 : android.view.View.resolveSizeAndState(java.lang.Math.max(java.lang.Math.max(iMax, measuredHeight) + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i6, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        android.view.MenuItem menuItemFindItem;
        if (!(parcelable instanceof androidx.appcompat.widget.Toolbar.SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        androidx.appcompat.widget.Toolbar.SavedState savedState = (androidx.appcompat.widget.Toolbar.SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.f859a;
        androidx.appcompat.view.menu.e eVarL = actionMenuView != null ? actionMenuView.L() : null;
        int i5 = savedState.f881a;
        if (i5 != 0 && this.P != null && eVarL != null && (menuItemFindItem = eVarL.findItem(i5)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (savedState.f882b) {
            E();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i5) {
        super.onRtlPropertiesChanged(i5);
        h();
        this.f878y.f(i5 == 1);
    }

    @Override // android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        androidx.appcompat.view.menu.g gVar;
        androidx.appcompat.widget.Toolbar.SavedState savedState = new androidx.appcompat.widget.Toolbar.SavedState(super.onSaveInstanceState());
        androidx.appcompat.widget.Toolbar.d dVar = this.P;
        if (dVar != null && (gVar = dVar.f887b) != null) {
            savedState.f881a = gVar.getItemId();
        }
        savedState.f882b = z();
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.G = false;
        }
        if (!this.G) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.G = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.G = false;
        }
        return true;
    }

    public final int p(int i5) {
        int iP = w.q.p(this);
        int iB = w.d.b(i5, iP) & 7;
        if (iB == 1 || iB == 3 || iB == 5) {
            return iB;
        }
        return iP == 1 ? 5 : 3;
    }

    public final int q(android.view.View view, int i5) {
        androidx.appcompat.widget.Toolbar.LayoutParams layoutParams = (androidx.appcompat.widget.Toolbar.LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i6 = i5 > 0 ? (measuredHeight - i5) / 2 : 0;
        int iR = r(layoutParams.f178a);
        if (iR == 48) {
            return getPaddingTop() - i6;
        }
        if (iR == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - i6;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i7 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        if (iMax < i7) {
            iMax = i7;
        } else {
            int i8 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i9 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            if (i8 < i9) {
                iMax = java.lang.Math.max(0, iMax - (i9 - i8));
            }
        }
        return paddingTop + iMax;
    }

    public final int r(int i5) {
        int i6 = i5 & 112;
        return (i6 == 16 || i6 == 48 || i6 == 80) ? i6 : this.B & 112;
    }

    public final int s(android.view.View view) {
        android.view.ViewGroup.MarginLayoutParams marginLayoutParams = (android.view.ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return w.g.b(marginLayoutParams) + w.g.a(marginLayoutParams);
    }

    public void setCollapsible(boolean z4) {
        this.S = z4;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i5) {
        if (i5 < 0) {
            i5 = Integer.MIN_VALUE;
        }
        if (i5 != this.A) {
            this.A = i5;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i5) {
        if (i5 < 0) {
            i5 = Integer.MIN_VALUE;
        }
        if (i5 != this.f879z) {
            this.f879z = i5;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i5) {
        setLogo(b.a.b(getContext(), i5));
    }

    public void setLogoDescription(int i5) {
        setLogoDescription(getContext().getText(i5));
    }

    public void setNavigationContentDescription(int i5) {
        setNavigationContentDescription(i5 != 0 ? getContext().getText(i5) : null);
    }

    public void setNavigationIcon(int i5) {
        setNavigationIcon(b.a.b(getContext(), i5));
    }

    public void setNavigationOnClickListener(android.view.View.OnClickListener onClickListener) {
        l();
        this.f862d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(androidx.appcompat.widget.Toolbar.e eVar) {
        this.L = eVar;
    }

    public void setOverflowIcon(android.graphics.drawable.Drawable drawable) {
        j();
        this.f859a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i5) {
        if (this.f869p != i5) {
            this.f869p = i5;
            if (i5 == 0) {
                this.f868o = getContext();
            } else {
                this.f868o = new android.view.ContextThemeWrapper(getContext(), i5);
            }
        }
    }

    public void setSubtitle(int i5) {
        setSubtitle(getContext().getText(i5));
    }

    public void setSubtitleTextColor(int i5) {
        this.F = i5;
        android.widget.TextView textView = this.f861c;
        if (textView != null) {
            textView.setTextColor(i5);
        }
    }

    public void setTitle(int i5) {
        setTitle(getContext().getText(i5));
    }

    public void setTitleMarginBottom(int i5) {
        this.f877x = i5;
        requestLayout();
    }

    public void setTitleMarginEnd(int i5) {
        this.f875v = i5;
        requestLayout();
    }

    public void setTitleMarginStart(int i5) {
        this.f874u = i5;
        requestLayout();
    }

    public void setTitleMarginTop(int i5) {
        this.f876w = i5;
        requestLayout();
    }

    public void setTitleTextColor(int i5) {
        this.E = i5;
        android.widget.TextView textView = this.f860b;
        if (textView != null) {
            textView.setTextColor(i5);
        }
    }

    public final int t(android.view.View view) {
        android.view.ViewGroup.MarginLayoutParams marginLayoutParams = (android.view.ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final int u(java.util.List<android.view.View> list, int[] iArr) {
        int i5 = iArr[0];
        int i6 = iArr[1];
        int size = list.size();
        int i7 = 0;
        int measuredWidth = 0;
        while (i7 < size) {
            android.view.View view = list.get(i7);
            androidx.appcompat.widget.Toolbar.LayoutParams layoutParams = (androidx.appcompat.widget.Toolbar.LayoutParams) view.getLayoutParams();
            int i8 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin - i5;
            int i9 = ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin - i6;
            int iMax = java.lang.Math.max(0, i8);
            int iMax2 = java.lang.Math.max(0, i9);
            int iMax3 = java.lang.Math.max(0, -i8);
            int iMax4 = java.lang.Math.max(0, -i9);
            measuredWidth += iMax + view.getMeasuredWidth() + iMax2;
            i7++;
            i6 = iMax4;
            i5 = iMax3;
        }
        return measuredWidth;
    }

    public boolean v() {
        androidx.appcompat.widget.Toolbar.d dVar = this.P;
        return (dVar == null || dVar.f887b == null) ? false : true;
    }

    public boolean w() {
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.f859a;
        return actionMenuView != null && actionMenuView.F();
    }

    public final boolean x(android.view.View view) {
        return view.getParent() == this || this.J.contains(view);
    }

    public boolean y() {
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.f859a;
        return actionMenuView != null && actionMenuView.G();
    }

    public boolean z() {
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.f859a;
        return actionMenuView != null && actionMenuView.H();
    }

    public static class LayoutParams extends androidx.appcompat.app.ActionBar.LayoutParams {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f880b;

        public LayoutParams(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f880b = 0;
        }

        public void a(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            ((android.view.ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((android.view.ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((android.view.ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((android.view.ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public LayoutParams(int i5, int i6) {
            super(i5, i6);
            this.f880b = 0;
            this.f178a = 8388627;
        }

        public LayoutParams(androidx.appcompat.widget.Toolbar.LayoutParams layoutParams) {
            super((androidx.appcompat.app.ActionBar.LayoutParams) layoutParams);
            this.f880b = 0;
            this.f880b = layoutParams.f880b;
        }

        public LayoutParams(androidx.appcompat.app.ActionBar.LayoutParams layoutParams) {
            super(layoutParams);
            this.f880b = 0;
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f880b = 0;
            a(marginLayoutParams);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f880b = 0;
        }
    }

    public Toolbar(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.B = 8388627;
        this.I = new java.util.ArrayList<>();
        this.J = new java.util.ArrayList<>();
        this.K = new int[2];
        this.M = new androidx.appcompat.widget.Toolbar.a();
        this.T = new androidx.appcompat.widget.Toolbar.b();
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(getContext(), attributeSet, androidx.appcompat.R.styleable.Toolbar, i5, 0);
        this.f870q = d0VarT.m(androidx.appcompat.R.styleable.Toolbar_titleTextAppearance, 0);
        this.f871r = d0VarT.m(androidx.appcompat.R.styleable.Toolbar_subtitleTextAppearance, 0);
        this.B = d0VarT.k(androidx.appcompat.R.styleable.Toolbar_android_gravity, this.B);
        this.f872s = d0VarT.k(androidx.appcompat.R.styleable.Toolbar_buttonGravity, 48);
        int iD = d0VarT.d(androidx.appcompat.R.styleable.Toolbar_titleMargin, 0);
        int i6 = androidx.appcompat.R.styleable.Toolbar_titleMargins;
        iD = d0VarT.q(i6) ? d0VarT.d(i6, iD) : iD;
        this.f877x = iD;
        this.f876w = iD;
        this.f875v = iD;
        this.f874u = iD;
        int iD2 = d0VarT.d(androidx.appcompat.R.styleable.Toolbar_titleMarginStart, -1);
        if (iD2 >= 0) {
            this.f874u = iD2;
        }
        int iD3 = d0VarT.d(androidx.appcompat.R.styleable.Toolbar_titleMarginEnd, -1);
        if (iD3 >= 0) {
            this.f875v = iD3;
        }
        int iD4 = d0VarT.d(androidx.appcompat.R.styleable.Toolbar_titleMarginTop, -1);
        if (iD4 >= 0) {
            this.f876w = iD4;
        }
        int iD5 = d0VarT.d(androidx.appcompat.R.styleable.Toolbar_titleMarginBottom, -1);
        if (iD5 >= 0) {
            this.f877x = iD5;
        }
        this.f873t = d0VarT.e(androidx.appcompat.R.styleable.Toolbar_maxButtonHeight, -1);
        int iD6 = d0VarT.d(androidx.appcompat.R.styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int iD7 = d0VarT.d(androidx.appcompat.R.styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int iE = d0VarT.e(androidx.appcompat.R.styleable.Toolbar_contentInsetLeft, 0);
        int iE2 = d0VarT.e(androidx.appcompat.R.styleable.Toolbar_contentInsetRight, 0);
        h();
        this.f878y.e(iE, iE2);
        if (iD6 != Integer.MIN_VALUE || iD7 != Integer.MIN_VALUE) {
            this.f878y.g(iD6, iD7);
        }
        this.f879z = d0VarT.d(androidx.appcompat.R.styleable.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.A = d0VarT.d(androidx.appcompat.R.styleable.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.f864f = d0VarT.f(androidx.appcompat.R.styleable.Toolbar_collapseIcon);
        this.f865g = d0VarT.o(androidx.appcompat.R.styleable.Toolbar_collapseContentDescription);
        java.lang.CharSequence charSequenceO = d0VarT.o(androidx.appcompat.R.styleable.Toolbar_title);
        if (!android.text.TextUtils.isEmpty(charSequenceO)) {
            setTitle(charSequenceO);
        }
        java.lang.CharSequence charSequenceO2 = d0VarT.o(androidx.appcompat.R.styleable.Toolbar_subtitle);
        if (!android.text.TextUtils.isEmpty(charSequenceO2)) {
            setSubtitle(charSequenceO2);
        }
        this.f868o = getContext();
        setPopupTheme(d0VarT.m(androidx.appcompat.R.styleable.Toolbar_popupTheme, 0));
        android.graphics.drawable.Drawable drawableF = d0VarT.f(androidx.appcompat.R.styleable.Toolbar_navigationIcon);
        if (drawableF != null) {
            setNavigationIcon(drawableF);
        }
        java.lang.CharSequence charSequenceO3 = d0VarT.o(androidx.appcompat.R.styleable.Toolbar_navigationContentDescription);
        if (!android.text.TextUtils.isEmpty(charSequenceO3)) {
            setNavigationContentDescription(charSequenceO3);
        }
        android.graphics.drawable.Drawable drawableF2 = d0VarT.f(androidx.appcompat.R.styleable.Toolbar_logo);
        if (drawableF2 != null) {
            setLogo(drawableF2);
        }
        java.lang.CharSequence charSequenceO4 = d0VarT.o(androidx.appcompat.R.styleable.Toolbar_logoDescription);
        if (!android.text.TextUtils.isEmpty(charSequenceO4)) {
            setLogoDescription(charSequenceO4);
        }
        int i7 = androidx.appcompat.R.styleable.Toolbar_titleTextColor;
        if (d0VarT.q(i7)) {
            setTitleTextColor(d0VarT.b(i7, -1));
        }
        int i8 = androidx.appcompat.R.styleable.Toolbar_subtitleTextColor;
        if (d0VarT.q(i8)) {
            setSubtitleTextColor(d0VarT.b(i8, -1));
        }
        d0VarT.u();
    }

    public void setLogo(android.graphics.drawable.Drawable drawable) {
        if (drawable != null) {
            i();
            if (!x(this.f863e)) {
                c(this.f863e, true);
            }
        } else {
            android.widget.ImageView imageView = this.f863e;
            if (imageView != null && x(imageView)) {
                removeView(this.f863e);
                this.J.remove(this.f863e);
            }
        }
        android.widget.ImageView imageView2 = this.f863e;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(java.lang.CharSequence charSequence) {
        if (!android.text.TextUtils.isEmpty(charSequence)) {
            i();
        }
        android.widget.ImageView imageView = this.f863e;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(java.lang.CharSequence charSequence) {
        if (!android.text.TextUtils.isEmpty(charSequence)) {
            l();
        }
        android.widget.ImageButton imageButton = this.f862d;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(android.graphics.drawable.Drawable drawable) {
        if (drawable != null) {
            l();
            if (!x(this.f862d)) {
                c(this.f862d, true);
            }
        } else {
            android.widget.ImageButton imageButton = this.f862d;
            if (imageButton != null && x(imageButton)) {
                removeView(this.f862d);
                this.J.remove(this.f862d);
            }
        }
        android.widget.ImageButton imageButton2 = this.f862d;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(java.lang.CharSequence charSequence) {
        if (android.text.TextUtils.isEmpty(charSequence)) {
            android.widget.TextView textView = this.f861c;
            if (textView != null && x(textView)) {
                removeView(this.f861c);
                this.J.remove(this.f861c);
            }
        } else {
            if (this.f861c == null) {
                android.content.Context context = getContext();
                androidx.appcompat.widget.AppCompatTextView appCompatTextView = new androidx.appcompat.widget.AppCompatTextView(context);
                this.f861c = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f861c.setEllipsize(android.text.TextUtils.TruncateAt.END);
                int i5 = this.f871r;
                if (i5 != 0) {
                    this.f861c.setTextAppearance(context, i5);
                }
                int i6 = this.F;
                if (i6 != 0) {
                    this.f861c.setTextColor(i6);
                }
            }
            if (!x(this.f861c)) {
                c(this.f861c, true);
            }
        }
        android.widget.TextView textView2 = this.f861c;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.D = charSequence;
    }

    public void setTitle(java.lang.CharSequence charSequence) {
        if (android.text.TextUtils.isEmpty(charSequence)) {
            android.widget.TextView textView = this.f860b;
            if (textView != null && x(textView)) {
                removeView(this.f860b);
                this.J.remove(this.f860b);
            }
        } else {
            if (this.f860b == null) {
                android.content.Context context = getContext();
                androidx.appcompat.widget.AppCompatTextView appCompatTextView = new androidx.appcompat.widget.AppCompatTextView(context);
                this.f860b = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f860b.setEllipsize(android.text.TextUtils.TruncateAt.END);
                int i5 = this.f870q;
                if (i5 != 0) {
                    this.f860b.setTextAppearance(context, i5);
                }
                int i6 = this.E;
                if (i6 != 0) {
                    this.f860b.setTextColor(i6);
                }
            }
            if (!x(this.f860b)) {
                c(this.f860b, true);
            }
        }
        android.widget.TextView textView2 = this.f860b;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.C = charSequence;
    }

    public static class SavedState extends androidx.customview.view.AbsSavedState {
        public static final android.os.Parcelable.Creator<androidx.appcompat.widget.Toolbar.SavedState> CREATOR = new androidx.appcompat.widget.Toolbar.SavedState.a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f881a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f882b;

        public static class a implements android.os.Parcelable.ClassLoaderCreator<androidx.appcompat.widget.Toolbar.SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public androidx.appcompat.widget.Toolbar.SavedState createFromParcel(android.os.Parcel parcel) {
                return new androidx.appcompat.widget.Toolbar.SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public androidx.appcompat.widget.Toolbar.SavedState createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                return new androidx.appcompat.widget.Toolbar.SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public androidx.appcompat.widget.Toolbar.SavedState[] newArray(int i5) {
                return new androidx.appcompat.widget.Toolbar.SavedState[i5];
            }
        }

        public SavedState(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f881a = parcel.readInt();
            this.f882b = parcel.readInt() != 0;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i5) {
            super.writeToParcel(parcel, i5);
            parcel.writeInt(this.f881a);
            parcel.writeInt(this.f882b ? 1 : 0);
        }

        public SavedState(android.os.Parcelable parcelable) {
            super(parcelable);
        }
    }
}
