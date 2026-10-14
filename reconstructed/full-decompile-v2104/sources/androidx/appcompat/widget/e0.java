package androidx.appcompat.widget;

/* JADX INFO: compiled from: ToolbarWidgetWrapper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e0 implements androidx.appcompat.widget.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.appcompat.widget.Toolbar f930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f931b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.view.View f932c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.view.View f933d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public android.graphics.drawable.Drawable f934e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public android.graphics.drawable.Drawable f935f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public android.graphics.drawable.Drawable f936g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f937h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public java.lang.CharSequence f938i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public java.lang.CharSequence f939j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public java.lang.CharSequence f940k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public android.view.Window.Callback f941l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f942m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public androidx.appcompat.widget.ActionMenuPresenter f943n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f944o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f945p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public android.graphics.drawable.Drawable f946q;

    /* JADX INFO: compiled from: ToolbarWidgetWrapper.java */
    public class a implements android.view.View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final f.a f947a;

        public a() {
            this.f947a = new f.a(androidx.appcompat.widget.e0.this.f930a.getContext(), 0, android.R.id.home, 0, 0, androidx.appcompat.widget.e0.this.f938i);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(android.view.View view) {
            androidx.appcompat.widget.e0 e0Var = androidx.appcompat.widget.e0.this;
            android.view.Window.Callback callback = e0Var.f941l;
            if (callback == null || !e0Var.f942m) {
                return;
            }
            callback.onMenuItemSelected(0, this.f947a);
        }
    }

    /* JADX INFO: compiled from: ToolbarWidgetWrapper.java */
    public class b extends w.y {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f949a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f950b;

        public b(int i5) {
            this.f950b = i5;
        }

        @Override // w.x
        public void a(android.view.View view) {
            if (this.f949a) {
                return;
            }
            androidx.appcompat.widget.e0.this.f930a.setVisibility(this.f950b);
        }

        @Override // w.y, w.x
        public void b(android.view.View view) {
            androidx.appcompat.widget.e0.this.f930a.setVisibility(0);
        }

        @Override // w.y, w.x
        public void c(android.view.View view) {
            this.f949a = true;
        }
    }

    public e0(androidx.appcompat.widget.Toolbar toolbar, boolean z4) {
        this(toolbar, z4, androidx.appcompat.R.string.abc_action_bar_up_description, androidx.appcompat.R.drawable.abc_ic_ab_back_material);
    }

    public void A(int i5) {
        if (i5 == this.f945p) {
            return;
        }
        this.f945p = i5;
        if (android.text.TextUtils.isEmpty(this.f930a.getNavigationContentDescription())) {
            C(this.f945p);
        }
    }

    public void B(android.graphics.drawable.Drawable drawable) {
        this.f935f = drawable;
        K();
    }

    public void C(int i5) {
        D(i5 == 0 ? null : b().getString(i5));
    }

    public void D(java.lang.CharSequence charSequence) {
        this.f940k = charSequence;
        I();
    }

    public void E(android.graphics.drawable.Drawable drawable) {
        this.f936g = drawable;
        J();
    }

    public void F(java.lang.CharSequence charSequence) {
        this.f939j = charSequence;
        if ((this.f931b & 8) != 0) {
            this.f930a.setSubtitle(charSequence);
        }
    }

    public void G(java.lang.CharSequence charSequence) {
        this.f937h = true;
        H(charSequence);
    }

    public final void H(java.lang.CharSequence charSequence) {
        this.f938i = charSequence;
        if ((this.f931b & 8) != 0) {
            this.f930a.setTitle(charSequence);
        }
    }

    public final void I() {
        if ((this.f931b & 4) != 0) {
            if (android.text.TextUtils.isEmpty(this.f940k)) {
                this.f930a.setNavigationContentDescription(this.f945p);
            } else {
                this.f930a.setNavigationContentDescription(this.f940k);
            }
        }
    }

    public final void J() {
        if ((this.f931b & 4) == 0) {
            this.f930a.setNavigationIcon((android.graphics.drawable.Drawable) null);
            return;
        }
        androidx.appcompat.widget.Toolbar toolbar = this.f930a;
        android.graphics.drawable.Drawable drawable = this.f936g;
        if (drawable == null) {
            drawable = this.f946q;
        }
        toolbar.setNavigationIcon(drawable);
    }

    public final void K() {
        android.graphics.drawable.Drawable drawable;
        int i5 = this.f931b;
        if ((i5 & 2) == 0) {
            drawable = null;
        } else if ((i5 & 1) == 0 || (drawable = this.f935f) == null) {
            drawable = this.f934e;
        }
        this.f930a.setLogo(drawable);
    }

    @Override // androidx.appcompat.widget.n
    public void a(android.view.Menu menu, androidx.appcompat.view.menu.i.a aVar) {
        if (this.f943n == null) {
            androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter = new androidx.appcompat.widget.ActionMenuPresenter(this.f930a.getContext());
            this.f943n = actionMenuPresenter;
            actionMenuPresenter.q(androidx.appcompat.R.id.action_menu_presenter);
        }
        this.f943n.i(aVar);
        this.f930a.H((androidx.appcompat.view.menu.e) menu, this.f943n);
    }

    @Override // androidx.appcompat.widget.n
    public android.content.Context b() {
        return this.f930a.getContext();
    }

    @Override // androidx.appcompat.widget.n
    public boolean c() {
        return this.f930a.y();
    }

    @Override // androidx.appcompat.widget.n
    public void collapseActionView() {
        this.f930a.e();
    }

    @Override // androidx.appcompat.widget.n
    public boolean d() {
        return this.f930a.z();
    }

    @Override // androidx.appcompat.widget.n
    public boolean e() {
        return this.f930a.w();
    }

    @Override // androidx.appcompat.widget.n
    public boolean f() {
        return this.f930a.N();
    }

    @Override // androidx.appcompat.widget.n
    public void g() {
        this.f942m = true;
    }

    @Override // androidx.appcompat.widget.n
    public java.lang.CharSequence getTitle() {
        return this.f930a.getTitle();
    }

    @Override // androidx.appcompat.widget.n
    public boolean h() {
        return this.f930a.d();
    }

    @Override // androidx.appcompat.widget.n
    public void i() {
        this.f930a.f();
    }

    @Override // androidx.appcompat.widget.n
    public void j(androidx.appcompat.view.menu.i.a aVar, androidx.appcompat.view.menu.e.a aVar2) {
        this.f930a.I(aVar, aVar2);
    }

    @Override // androidx.appcompat.widget.n
    public int k() {
        return this.f931b;
    }

    @Override // androidx.appcompat.widget.n
    public void l(int i5) {
        this.f930a.setVisibility(i5);
    }

    @Override // androidx.appcompat.widget.n
    public android.view.Menu m() {
        return this.f930a.getMenu();
    }

    @Override // androidx.appcompat.widget.n
    public void n(int i5) {
        B(i5 != 0 ? b.a.b(b(), i5) : null);
    }

    @Override // androidx.appcompat.widget.n
    public void o(androidx.appcompat.widget.w wVar) {
        android.view.View view = this.f932c;
        if (view != null) {
            android.view.ViewParent parent = view.getParent();
            androidx.appcompat.widget.Toolbar toolbar = this.f930a;
            if (parent == toolbar) {
                toolbar.removeView(this.f932c);
            }
        }
        this.f932c = wVar;
        if (wVar == null || this.f944o != 2) {
            return;
        }
        this.f930a.addView(wVar, 0);
        androidx.appcompat.widget.Toolbar.LayoutParams layoutParams = (androidx.appcompat.widget.Toolbar.LayoutParams) this.f932c.getLayoutParams();
        ((android.view.ViewGroup.MarginLayoutParams) layoutParams).width = -2;
        ((android.view.ViewGroup.MarginLayoutParams) layoutParams).height = -2;
        layoutParams.f178a = 8388691;
        wVar.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.n
    public android.view.ViewGroup p() {
        return this.f930a;
    }

    @Override // androidx.appcompat.widget.n
    public void q(boolean z4) {
    }

    @Override // androidx.appcompat.widget.n
    public int r() {
        return this.f944o;
    }

    @Override // androidx.appcompat.widget.n
    public w.w s(int i5, long j5) {
        return w.q.b(this.f930a).b(i5 == 0 ? 1.0f : 0.0f).f(j5).h(new androidx.appcompat.widget.e0.b(i5));
    }

    @Override // androidx.appcompat.widget.n
    public void setIcon(int i5) {
        setIcon(i5 != 0 ? b.a.b(b(), i5) : null);
    }

    @Override // androidx.appcompat.widget.n
    public void setWindowCallback(android.view.Window.Callback callback) {
        this.f941l = callback;
    }

    @Override // androidx.appcompat.widget.n
    public void setWindowTitle(java.lang.CharSequence charSequence) {
        if (this.f937h) {
            return;
        }
        H(charSequence);
    }

    @Override // androidx.appcompat.widget.n
    public void t() {
        android.util.Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.n
    public boolean u() {
        return this.f930a.v();
    }

    @Override // androidx.appcompat.widget.n
    public void v() {
        android.util.Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.n
    public void w(boolean z4) {
        this.f930a.setCollapsible(z4);
    }

    @Override // androidx.appcompat.widget.n
    public void x(int i5) {
        android.view.View view;
        int i6 = this.f931b ^ i5;
        this.f931b = i5;
        if (i6 != 0) {
            if ((i6 & 4) != 0) {
                if ((i5 & 4) != 0) {
                    I();
                }
                J();
            }
            if ((i6 & 3) != 0) {
                K();
            }
            if ((i6 & 8) != 0) {
                if ((i5 & 8) != 0) {
                    this.f930a.setTitle(this.f938i);
                    this.f930a.setSubtitle(this.f939j);
                } else {
                    this.f930a.setTitle((java.lang.CharSequence) null);
                    this.f930a.setSubtitle((java.lang.CharSequence) null);
                }
            }
            if ((i6 & 16) == 0 || (view = this.f933d) == null) {
                return;
            }
            if ((i5 & 16) != 0) {
                this.f930a.addView(view);
            } else {
                this.f930a.removeView(view);
            }
        }
    }

    public final int y() {
        if (this.f930a.getNavigationIcon() == null) {
            return 11;
        }
        this.f946q = this.f930a.getNavigationIcon();
        return 15;
    }

    public void z(android.view.View view) {
        android.view.View view2 = this.f933d;
        if (view2 != null && (this.f931b & 16) != 0) {
            this.f930a.removeView(view2);
        }
        this.f933d = view;
        if (view == null || (this.f931b & 16) == 0) {
            return;
        }
        this.f930a.addView(view);
    }

    public e0(androidx.appcompat.widget.Toolbar toolbar, boolean z4, int i5, int i6) {
        android.graphics.drawable.Drawable drawable;
        this.f944o = 0;
        this.f945p = 0;
        this.f930a = toolbar;
        this.f938i = toolbar.getTitle();
        this.f939j = toolbar.getSubtitle();
        this.f937h = this.f938i != null;
        this.f936g = toolbar.getNavigationIcon();
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(toolbar.getContext(), null, androidx.appcompat.R.styleable.ActionBar, androidx.appcompat.R.attr.actionBarStyle, 0);
        this.f946q = d0VarT.f(androidx.appcompat.R.styleable.ActionBar_homeAsUpIndicator);
        if (z4) {
            java.lang.CharSequence charSequenceO = d0VarT.o(androidx.appcompat.R.styleable.ActionBar_title);
            if (!android.text.TextUtils.isEmpty(charSequenceO)) {
                G(charSequenceO);
            }
            java.lang.CharSequence charSequenceO2 = d0VarT.o(androidx.appcompat.R.styleable.ActionBar_subtitle);
            if (!android.text.TextUtils.isEmpty(charSequenceO2)) {
                F(charSequenceO2);
            }
            android.graphics.drawable.Drawable drawableF = d0VarT.f(androidx.appcompat.R.styleable.ActionBar_logo);
            if (drawableF != null) {
                B(drawableF);
            }
            android.graphics.drawable.Drawable drawableF2 = d0VarT.f(androidx.appcompat.R.styleable.ActionBar_icon);
            if (drawableF2 != null) {
                setIcon(drawableF2);
            }
            if (this.f936g == null && (drawable = this.f946q) != null) {
                E(drawable);
            }
            x(d0VarT.j(androidx.appcompat.R.styleable.ActionBar_displayOptions, 0));
            int iM = d0VarT.m(androidx.appcompat.R.styleable.ActionBar_customNavigationLayout, 0);
            if (iM != 0) {
                z(android.view.LayoutInflater.from(this.f930a.getContext()).inflate(iM, (android.view.ViewGroup) this.f930a, false));
                x(this.f931b | 16);
            }
            int iL = d0VarT.l(androidx.appcompat.R.styleable.ActionBar_height, 0);
            if (iL > 0) {
                android.view.ViewGroup.LayoutParams layoutParams = this.f930a.getLayoutParams();
                layoutParams.height = iL;
                this.f930a.setLayoutParams(layoutParams);
            }
            int iD = d0VarT.d(androidx.appcompat.R.styleable.ActionBar_contentInsetStart, -1);
            int iD2 = d0VarT.d(androidx.appcompat.R.styleable.ActionBar_contentInsetEnd, -1);
            if (iD >= 0 || iD2 >= 0) {
                this.f930a.G(java.lang.Math.max(iD, 0), java.lang.Math.max(iD2, 0));
            }
            int iM2 = d0VarT.m(androidx.appcompat.R.styleable.ActionBar_titleTextStyle, 0);
            if (iM2 != 0) {
                androidx.appcompat.widget.Toolbar toolbar2 = this.f930a;
                toolbar2.K(toolbar2.getContext(), iM2);
            }
            int iM3 = d0VarT.m(androidx.appcompat.R.styleable.ActionBar_subtitleTextStyle, 0);
            if (iM3 != 0) {
                androidx.appcompat.widget.Toolbar toolbar3 = this.f930a;
                toolbar3.J(toolbar3.getContext(), iM3);
            }
            int iM4 = d0VarT.m(androidx.appcompat.R.styleable.ActionBar_popupTheme, 0);
            if (iM4 != 0) {
                this.f930a.setPopupTheme(iM4);
            }
        } else {
            this.f931b = y();
        }
        d0VarT.u();
        A(i5);
        this.f940k = this.f930a.getNavigationContentDescription();
        this.f930a.setNavigationOnClickListener(new androidx.appcompat.widget.e0.a());
    }

    @Override // androidx.appcompat.widget.n
    public void setIcon(android.graphics.drawable.Drawable drawable) {
        this.f934e = drawable;
        K();
    }
}
