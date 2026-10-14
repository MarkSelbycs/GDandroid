package androidx.appcompat.app;

/* JADX INFO: compiled from: ToolbarActionBar.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f extends androidx.appcompat.app.ActionBar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.appcompat.widget.n f328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.view.Window.Callback f330c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f331d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f332e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.util.ArrayList<androidx.appcompat.app.ActionBar.a> f333f = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.lang.Runnable f334g = new androidx.appcompat.app.f.a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final androidx.appcompat.widget.Toolbar.e f335h;

    /* JADX INFO: compiled from: ToolbarActionBar.java */
    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.appcompat.app.f.this.y();
        }
    }

    /* JADX INFO: compiled from: ToolbarActionBar.java */
    public class b implements androidx.appcompat.widget.Toolbar.e {
        public b() {
        }

        @Override // androidx.appcompat.widget.Toolbar.e
        public boolean onMenuItemClick(android.view.MenuItem menuItem) {
            return androidx.appcompat.app.f.this.f330c.onMenuItemSelected(0, menuItem);
        }
    }

    /* JADX INFO: compiled from: ToolbarActionBar.java */
    public final class c implements androidx.appcompat.view.menu.i.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f338a;

        public c() {
        }

        @Override // androidx.appcompat.view.menu.i.a
        public void a(androidx.appcompat.view.menu.e eVar, boolean z4) {
            if (this.f338a) {
                return;
            }
            this.f338a = true;
            androidx.appcompat.app.f.this.f328a.i();
            android.view.Window.Callback callback = androidx.appcompat.app.f.this.f330c;
            if (callback != null) {
                callback.onPanelClosed(108, eVar);
            }
            this.f338a = false;
        }

        @Override // androidx.appcompat.view.menu.i.a
        public boolean b(androidx.appcompat.view.menu.e eVar) {
            android.view.Window.Callback callback = androidx.appcompat.app.f.this.f330c;
            if (callback == null) {
                return false;
            }
            callback.onMenuOpened(108, eVar);
            return true;
        }
    }

    /* JADX INFO: compiled from: ToolbarActionBar.java */
    public final class d implements androidx.appcompat.view.menu.e.a {
        public d() {
        }

        @Override // androidx.appcompat.view.menu.e.a
        public boolean a(androidx.appcompat.view.menu.e eVar, android.view.MenuItem menuItem) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.e.a
        public void b(androidx.appcompat.view.menu.e eVar) {
            androidx.appcompat.app.f fVar = androidx.appcompat.app.f.this;
            if (fVar.f330c != null) {
                if (fVar.f328a.d()) {
                    androidx.appcompat.app.f.this.f330c.onPanelClosed(108, eVar);
                } else if (androidx.appcompat.app.f.this.f330c.onPreparePanel(0, null, eVar)) {
                    androidx.appcompat.app.f.this.f330c.onMenuOpened(108, eVar);
                }
            }
        }
    }

    /* JADX INFO: compiled from: ToolbarActionBar.java */
    public class e extends e.i {
        public e(android.view.Window.Callback callback) {
            super(callback);
        }

        @Override // e.i, android.view.Window.Callback
        public android.view.View onCreatePanelView(int i5) {
            return i5 == 0 ? new android.view.View(androidx.appcompat.app.f.this.f328a.b()) : super.onCreatePanelView(i5);
        }

        @Override // e.i, android.view.Window.Callback
        public boolean onPreparePanel(int i5, android.view.View view, android.view.Menu menu) {
            boolean zOnPreparePanel = super.onPreparePanel(i5, view, menu);
            if (zOnPreparePanel) {
                androidx.appcompat.app.f fVar = androidx.appcompat.app.f.this;
                if (!fVar.f329b) {
                    fVar.f328a.g();
                    androidx.appcompat.app.f.this.f329b = true;
                }
            }
            return zOnPreparePanel;
        }
    }

    public f(androidx.appcompat.widget.Toolbar toolbar, java.lang.CharSequence charSequence, android.view.Window.Callback callback) {
        androidx.appcompat.app.f.b bVar = new androidx.appcompat.app.f.b();
        this.f335h = bVar;
        this.f328a = new androidx.appcompat.widget.e0(toolbar, false);
        androidx.appcompat.app.f.e eVar = new androidx.appcompat.app.f.e(callback);
        this.f330c = eVar;
        this.f328a.setWindowCallback(eVar);
        toolbar.setOnMenuItemClickListener(bVar);
        this.f328a.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean g() {
        return this.f328a.e();
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean h() {
        if (!this.f328a.u()) {
            return false;
        }
        this.f328a.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void i(boolean z4) {
        if (z4 == this.f332e) {
            return;
        }
        this.f332e = z4;
        int size = this.f333f.size();
        for (int i5 = 0; i5 < size; i5++) {
            this.f333f.get(i5).a(z4);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public int j() {
        return this.f328a.k();
    }

    @Override // androidx.appcompat.app.ActionBar
    public android.content.Context k() {
        return this.f328a.b();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void l() {
        this.f328a.l(8);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean m() {
        this.f328a.p().removeCallbacks(this.f334g);
        w.q.L(this.f328a.p(), this.f334g);
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void n(android.content.res.Configuration configuration) {
        super.n(configuration);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void o() {
        this.f328a.p().removeCallbacks(this.f334g);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean p(int i5, android.view.KeyEvent keyEvent) {
        android.view.Menu menuW = w();
        if (menuW == null) {
            return false;
        }
        menuW.setQwertyMode(android.view.KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuW.performShortcut(i5, keyEvent, 0);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean q(android.view.KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            r();
        }
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean r() {
        return this.f328a.f();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void s(boolean z4) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void t(boolean z4) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void u(java.lang.CharSequence charSequence) {
        this.f328a.setWindowTitle(charSequence);
    }

    public final android.view.Menu w() {
        if (!this.f331d) {
            this.f328a.j(new androidx.appcompat.app.f.c(), new androidx.appcompat.app.f.d());
            this.f331d = true;
        }
        return this.f328a.m();
    }

    public android.view.Window.Callback x() {
        return this.f330c;
    }

    public void y() {
        android.view.Menu menuW = w();
        androidx.appcompat.view.menu.e eVar = menuW instanceof androidx.appcompat.view.menu.e ? (androidx.appcompat.view.menu.e) menuW : null;
        if (eVar != null) {
            eVar.d0();
        }
        try {
            menuW.clear();
            if (!this.f330c.onCreatePanelMenu(0, menuW) || !this.f330c.onPreparePanel(0, null, menuW)) {
                menuW.clear();
            }
        } finally {
            if (eVar != null) {
                eVar.c0();
            }
        }
    }
}
