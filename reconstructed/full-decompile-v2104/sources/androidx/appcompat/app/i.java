package androidx.appcompat.app;

/* JADX INFO: compiled from: WindowDecorActionBar.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i extends androidx.appcompat.app.ActionBar implements androidx.appcompat.widget.ActionBarOverlayLayout.d {
    public static final android.view.animation.Interpolator F = new android.view.animation.AccelerateInterpolator();
    public static final android.view.animation.Interpolator G = new android.view.animation.DecelerateInterpolator();
    public boolean A;
    public boolean B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.content.Context f356a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.content.Context f357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.app.Activity f358c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.app.Dialog f359d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.appcompat.widget.ActionBarOverlayLayout f360e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public androidx.appcompat.widget.ActionBarContainer f361f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public androidx.appcompat.widget.n f362g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public androidx.appcompat.widget.ActionBarContextView f363h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public android.view.View f364i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public androidx.appcompat.widget.w f365j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f368m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public androidx.appcompat.app.i.d f369n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public e.b f370o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public e.b.a f371p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f372q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f374s;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f377v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f378w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f379x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public e.h f381z;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public java.util.ArrayList<java.lang.Object> f366k = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f367l = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public java.util.ArrayList<androidx.appcompat.app.ActionBar.a> f373r = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f375t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f376u = true;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f380y = true;
    public final w.x C = new androidx.appcompat.app.i.a();
    public final w.x D = new androidx.appcompat.app.i.b();
    public final w.z E = new androidx.appcompat.app.i.c();

    /* JADX INFO: compiled from: WindowDecorActionBar.java */
    public class a extends w.y {
        public a() {
        }

        @Override // w.x
        public void a(android.view.View view) {
            android.view.View view2;
            androidx.appcompat.app.i iVar = androidx.appcompat.app.i.this;
            if (iVar.f376u && (view2 = iVar.f364i) != null) {
                view2.setTranslationY(0.0f);
                androidx.appcompat.app.i.this.f361f.setTranslationY(0.0f);
            }
            androidx.appcompat.app.i.this.f361f.setVisibility(8);
            androidx.appcompat.app.i.this.f361f.setTransitioning(false);
            androidx.appcompat.app.i iVar2 = androidx.appcompat.app.i.this;
            iVar2.f381z = null;
            iVar2.y();
            androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = androidx.appcompat.app.i.this.f360e;
            if (actionBarOverlayLayout != null) {
                w.q.N(actionBarOverlayLayout);
            }
        }
    }

    /* JADX INFO: compiled from: WindowDecorActionBar.java */
    public class b extends w.y {
        public b() {
        }

        @Override // w.x
        public void a(android.view.View view) {
            androidx.appcompat.app.i iVar = androidx.appcompat.app.i.this;
            iVar.f381z = null;
            iVar.f361f.requestLayout();
        }
    }

    /* JADX INFO: compiled from: WindowDecorActionBar.java */
    public class c implements w.z {
        public c() {
        }

        @Override // w.z
        public void a(android.view.View view) {
            ((android.view.View) androidx.appcompat.app.i.this.f361f.getParent()).invalidate();
        }
    }

    /* JADX INFO: compiled from: WindowDecorActionBar.java */
    public class d extends e.b implements androidx.appcompat.view.menu.e.a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final android.content.Context f385c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final androidx.appcompat.view.menu.e f386d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public e.b.a f387e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public java.lang.ref.WeakReference<android.view.View> f388f;

        public d(android.content.Context context, e.b.a aVar) {
            this.f385c = context;
            this.f387e = aVar;
            androidx.appcompat.view.menu.e eVarS = new androidx.appcompat.view.menu.e(context).S(1);
            this.f386d = eVarS;
            eVarS.R(this);
        }

        @Override // androidx.appcompat.view.menu.e.a
        public boolean a(androidx.appcompat.view.menu.e eVar, android.view.MenuItem menuItem) {
            e.b.a aVar = this.f387e;
            if (aVar != null) {
                return aVar.d(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.e.a
        public void b(androidx.appcompat.view.menu.e eVar) {
            if (this.f387e == null) {
                return;
            }
            k();
            androidx.appcompat.app.i.this.f363h.l();
        }

        @Override // e.b
        public void c() {
            androidx.appcompat.app.i iVar = androidx.appcompat.app.i.this;
            if (iVar.f369n != this) {
                return;
            }
            if (androidx.appcompat.app.i.x(iVar.f377v, iVar.f378w, false)) {
                this.f387e.c(this);
            } else {
                androidx.appcompat.app.i iVar2 = androidx.appcompat.app.i.this;
                iVar2.f370o = this;
                iVar2.f371p = this.f387e;
            }
            this.f387e = null;
            androidx.appcompat.app.i.this.w(false);
            androidx.appcompat.app.i.this.f363h.g();
            androidx.appcompat.app.i.this.f362g.p().sendAccessibilityEvent(32);
            androidx.appcompat.app.i iVar3 = androidx.appcompat.app.i.this;
            iVar3.f360e.setHideOnContentScrollEnabled(iVar3.B);
            androidx.appcompat.app.i.this.f369n = null;
        }

        @Override // e.b
        public android.view.View d() {
            java.lang.ref.WeakReference<android.view.View> weakReference = this.f388f;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // e.b
        public android.view.Menu e() {
            return this.f386d;
        }

        @Override // e.b
        public android.view.MenuInflater f() {
            return new e.g(this.f385c);
        }

        @Override // e.b
        public java.lang.CharSequence g() {
            return androidx.appcompat.app.i.this.f363h.getSubtitle();
        }

        @Override // e.b
        public java.lang.CharSequence i() {
            return androidx.appcompat.app.i.this.f363h.getTitle();
        }

        @Override // e.b
        public void k() {
            if (androidx.appcompat.app.i.this.f369n != this) {
                return;
            }
            this.f386d.d0();
            try {
                this.f387e.a(this, this.f386d);
            } finally {
                this.f386d.c0();
            }
        }

        @Override // e.b
        public boolean l() {
            return androidx.appcompat.app.i.this.f363h.j();
        }

        @Override // e.b
        public void m(android.view.View view) {
            androidx.appcompat.app.i.this.f363h.setCustomView(view);
            this.f388f = new java.lang.ref.WeakReference<>(view);
        }

        @Override // e.b
        public void n(int i5) {
            o(androidx.appcompat.app.i.this.f356a.getResources().getString(i5));
        }

        @Override // e.b
        public void o(java.lang.CharSequence charSequence) {
            androidx.appcompat.app.i.this.f363h.setSubtitle(charSequence);
        }

        @Override // e.b
        public void q(int i5) {
            r(androidx.appcompat.app.i.this.f356a.getResources().getString(i5));
        }

        @Override // e.b
        public void r(java.lang.CharSequence charSequence) {
            androidx.appcompat.app.i.this.f363h.setTitle(charSequence);
        }

        @Override // e.b
        public void s(boolean z4) {
            super.s(z4);
            androidx.appcompat.app.i.this.f363h.setTitleOptional(z4);
        }

        public boolean t() {
            this.f386d.d0();
            try {
                return this.f387e.b(this, this.f386d);
            } finally {
                this.f386d.c0();
            }
        }
    }

    public i(android.app.Activity activity, boolean z4) {
        this.f358c = activity;
        android.view.View decorView = activity.getWindow().getDecorView();
        E(decorView);
        if (z4) {
            return;
        }
        this.f364i = decorView.findViewById(android.R.id.content);
    }

    public static boolean x(boolean z4, boolean z5, boolean z6) {
        if (z6) {
            return true;
        }
        return (z4 || z5) ? false : true;
    }

    public void A(boolean z4) {
        android.view.View view;
        android.view.View view2;
        e.h hVar = this.f381z;
        if (hVar != null) {
            hVar.a();
        }
        this.f361f.setVisibility(0);
        if (this.f375t == 0 && (this.A || z4)) {
            this.f361f.setTranslationY(0.0f);
            float f5 = -this.f361f.getHeight();
            if (z4) {
                int[] iArr = {0, 0};
                this.f361f.getLocationInWindow(iArr);
                f5 -= iArr[1];
            }
            this.f361f.setTranslationY(f5);
            e.h hVar2 = new e.h();
            w.w wVarM = w.q.b(this.f361f).m(0.0f);
            wVarM.k(this.E);
            hVar2.c(wVarM);
            if (this.f376u && (view2 = this.f364i) != null) {
                view2.setTranslationY(f5);
                hVar2.c(w.q.b(this.f364i).m(0.0f));
            }
            hVar2.f(G);
            hVar2.e(250L);
            hVar2.g(this.D);
            this.f381z = hVar2;
            hVar2.h();
        } else {
            this.f361f.setAlpha(1.0f);
            this.f361f.setTranslationY(0.0f);
            if (this.f376u && (view = this.f364i) != null) {
                view.setTranslationY(0.0f);
            }
            this.D.a(null);
        }
        androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = this.f360e;
        if (actionBarOverlayLayout != null) {
            w.q.N(actionBarOverlayLayout);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final androidx.appcompat.widget.n B(android.view.View view) {
        if (view instanceof androidx.appcompat.widget.n) {
            return (androidx.appcompat.widget.n) view;
        }
        if (view instanceof androidx.appcompat.widget.Toolbar) {
            return ((androidx.appcompat.widget.Toolbar) view).getWrapper();
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != 0 ? view.getClass().getSimpleName() : "null");
        throw new java.lang.IllegalStateException(sb.toString());
    }

    public int C() {
        return this.f362g.r();
    }

    public final void D() {
        if (this.f379x) {
            this.f379x = false;
            androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = this.f360e;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            N(false);
        }
    }

    public final void E(android.view.View view) {
        androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = (androidx.appcompat.widget.ActionBarOverlayLayout) view.findViewById(androidx.appcompat.R.id.decor_content_parent);
        this.f360e = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f362g = B(view.findViewById(androidx.appcompat.R.id.action_bar));
        this.f363h = (androidx.appcompat.widget.ActionBarContextView) view.findViewById(androidx.appcompat.R.id.action_context_bar);
        androidx.appcompat.widget.ActionBarContainer actionBarContainer = (androidx.appcompat.widget.ActionBarContainer) view.findViewById(androidx.appcompat.R.id.action_bar_container);
        this.f361f = actionBarContainer;
        androidx.appcompat.widget.n nVar = this.f362g;
        if (nVar == null || this.f363h == null || actionBarContainer == null) {
            throw new java.lang.IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f356a = nVar.b();
        boolean z4 = (this.f362g.k() & 4) != 0;
        if (z4) {
            this.f368m = true;
        }
        e.a aVarB = e.a.b(this.f356a);
        K(aVarB.a() || z4);
        I(aVarB.g());
        android.content.res.TypedArray typedArrayObtainStyledAttributes = this.f356a.obtainStyledAttributes(null, androidx.appcompat.R.styleable.ActionBar, androidx.appcompat.R.attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.ActionBar_hideOnContentScroll, false)) {
            J(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            H(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public void F(boolean z4) {
        G(z4 ? 4 : 0, 4);
    }

    public void G(int i5, int i6) {
        int iK = this.f362g.k();
        if ((i6 & 4) != 0) {
            this.f368m = true;
        }
        this.f362g.x((i5 & i6) | ((~i6) & iK));
    }

    public void H(float f5) {
        w.q.U(this.f361f, f5);
    }

    public final void I(boolean z4) {
        this.f374s = z4;
        if (z4) {
            this.f361f.setTabContainer(null);
            this.f362g.o(this.f365j);
        } else {
            this.f362g.o(null);
            this.f361f.setTabContainer(this.f365j);
        }
        boolean z5 = C() == 2;
        androidx.appcompat.widget.w wVar = this.f365j;
        if (wVar != null) {
            if (z5) {
                wVar.setVisibility(0);
                androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = this.f360e;
                if (actionBarOverlayLayout != null) {
                    w.q.N(actionBarOverlayLayout);
                }
            } else {
                wVar.setVisibility(8);
            }
        }
        this.f362g.w(!this.f374s && z5);
        this.f360e.setHasNonEmbeddedTabs(!this.f374s && z5);
    }

    public void J(boolean z4) {
        if (z4 && !this.f360e.q()) {
            throw new java.lang.IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.B = z4;
        this.f360e.setHideOnContentScrollEnabled(z4);
    }

    public void K(boolean z4) {
        this.f362g.q(z4);
    }

    public final boolean L() {
        return w.q.D(this.f361f);
    }

    public final void M() {
        if (this.f379x) {
            return;
        }
        this.f379x = true;
        androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = this.f360e;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        N(false);
    }

    public final void N(boolean z4) {
        if (x(this.f377v, this.f378w, this.f379x)) {
            if (this.f380y) {
                return;
            }
            this.f380y = true;
            A(z4);
            return;
        }
        if (this.f380y) {
            this.f380y = false;
            z(z4);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void a(boolean z4) {
        this.f376u = z4;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void b() {
        if (this.f378w) {
            this.f378w = false;
            N(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void c() {
        e.h hVar = this.f381z;
        if (hVar != null) {
            hVar.a();
            this.f381z = null;
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void d(int i5) {
        this.f375t = i5;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void e() {
        if (this.f378w) {
            return;
        }
        this.f378w = true;
        N(true);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void f() {
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean h() {
        androidx.appcompat.widget.n nVar = this.f362g;
        if (nVar == null || !nVar.u()) {
            return false;
        }
        this.f362g.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void i(boolean z4) {
        if (z4 == this.f372q) {
            return;
        }
        this.f372q = z4;
        int size = this.f373r.size();
        for (int i5 = 0; i5 < size; i5++) {
            this.f373r.get(i5).a(z4);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public int j() {
        return this.f362g.k();
    }

    @Override // androidx.appcompat.app.ActionBar
    public android.content.Context k() {
        if (this.f357b == null) {
            android.util.TypedValue typedValue = new android.util.TypedValue();
            this.f356a.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
            int i5 = typedValue.resourceId;
            if (i5 != 0) {
                this.f357b = new android.view.ContextThemeWrapper(this.f356a, i5);
            } else {
                this.f357b = this.f356a;
            }
        }
        return this.f357b;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void l() {
        if (this.f377v) {
            return;
        }
        this.f377v = true;
        N(false);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void n(android.content.res.Configuration configuration) {
        I(e.a.b(this.f356a).g());
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean p(int i5, android.view.KeyEvent keyEvent) {
        android.view.Menu menuE;
        androidx.appcompat.app.i.d dVar = this.f369n;
        if (dVar == null || (menuE = dVar.e()) == null) {
            return false;
        }
        menuE.setQwertyMode(android.view.KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuE.performShortcut(i5, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void s(boolean z4) {
        if (this.f368m) {
            return;
        }
        F(z4);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void t(boolean z4) {
        e.h hVar;
        this.A = z4;
        if (z4 || (hVar = this.f381z) == null) {
            return;
        }
        hVar.a();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void u(java.lang.CharSequence charSequence) {
        this.f362g.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public e.b v(e.b.a aVar) {
        androidx.appcompat.app.i.d dVar = this.f369n;
        if (dVar != null) {
            dVar.c();
        }
        this.f360e.setHideOnContentScrollEnabled(false);
        this.f363h.k();
        androidx.appcompat.app.i.d dVar2 = new androidx.appcompat.app.i.d(this.f363h.getContext(), aVar);
        if (!dVar2.t()) {
            return null;
        }
        this.f369n = dVar2;
        dVar2.k();
        this.f363h.h(dVar2);
        w(true);
        this.f363h.sendAccessibilityEvent(32);
        return dVar2;
    }

    public void w(boolean z4) {
        w.w wVarS;
        w.w wVarF;
        if (z4) {
            M();
        } else {
            D();
        }
        if (!L()) {
            if (z4) {
                this.f362g.l(4);
                this.f363h.setVisibility(0);
                return;
            } else {
                this.f362g.l(0);
                this.f363h.setVisibility(8);
                return;
            }
        }
        if (z4) {
            wVarF = this.f362g.s(4, 100L);
            wVarS = this.f363h.f(0, 200L);
        } else {
            wVarS = this.f362g.s(0, 200L);
            wVarF = this.f363h.f(8, 100L);
        }
        e.h hVar = new e.h();
        hVar.d(wVarF, wVarS);
        hVar.h();
    }

    public void y() {
        e.b.a aVar = this.f371p;
        if (aVar != null) {
            aVar.c(this.f370o);
            this.f370o = null;
            this.f371p = null;
        }
    }

    public void z(boolean z4) {
        android.view.View view;
        e.h hVar = this.f381z;
        if (hVar != null) {
            hVar.a();
        }
        if (this.f375t != 0 || (!this.A && !z4)) {
            this.C.a(null);
            return;
        }
        this.f361f.setAlpha(1.0f);
        this.f361f.setTransitioning(true);
        e.h hVar2 = new e.h();
        float f5 = -this.f361f.getHeight();
        if (z4) {
            int[] iArr = {0, 0};
            this.f361f.getLocationInWindow(iArr);
            f5 -= iArr[1];
        }
        w.w wVarM = w.q.b(this.f361f).m(f5);
        wVarM.k(this.E);
        hVar2.c(wVarM);
        if (this.f376u && (view = this.f364i) != null) {
            hVar2.c(w.q.b(view).m(f5));
        }
        hVar2.f(F);
        hVar2.e(250L);
        hVar2.g(this.C);
        this.f381z = hVar2;
        hVar2.h();
    }

    public i(android.app.Dialog dialog) {
        this.f359d = dialog;
        E(dialog.getWindow().getDecorView());
    }
}
