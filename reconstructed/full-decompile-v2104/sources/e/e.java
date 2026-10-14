package e;

/* JADX INFO: compiled from: StandaloneActionMode.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e extends e.b implements androidx.appcompat.view.menu.e.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.content.Context f3980c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public androidx.appcompat.widget.ActionBarContextView f3981d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public e.b.a f3982e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.lang.ref.WeakReference<android.view.View> f3983f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3984g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3985h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public androidx.appcompat.view.menu.e f3986i;

    public e(android.content.Context context, androidx.appcompat.widget.ActionBarContextView actionBarContextView, e.b.a aVar, boolean z4) {
        this.f3980c = context;
        this.f3981d = actionBarContextView;
        this.f3982e = aVar;
        androidx.appcompat.view.menu.e eVarS = new androidx.appcompat.view.menu.e(actionBarContextView.getContext()).S(1);
        this.f3986i = eVarS;
        eVarS.R(this);
        this.f3985h = z4;
    }

    @Override // androidx.appcompat.view.menu.e.a
    public boolean a(androidx.appcompat.view.menu.e eVar, android.view.MenuItem menuItem) {
        return this.f3982e.d(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.e.a
    public void b(androidx.appcompat.view.menu.e eVar) {
        k();
        this.f3981d.l();
    }

    @Override // e.b
    public void c() {
        if (this.f3984g) {
            return;
        }
        this.f3984g = true;
        this.f3981d.sendAccessibilityEvent(32);
        this.f3982e.c(this);
    }

    @Override // e.b
    public android.view.View d() {
        java.lang.ref.WeakReference<android.view.View> weakReference = this.f3983f;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // e.b
    public android.view.Menu e() {
        return this.f3986i;
    }

    @Override // e.b
    public android.view.MenuInflater f() {
        return new e.g(this.f3981d.getContext());
    }

    @Override // e.b
    public java.lang.CharSequence g() {
        return this.f3981d.getSubtitle();
    }

    @Override // e.b
    public java.lang.CharSequence i() {
        return this.f3981d.getTitle();
    }

    @Override // e.b
    public void k() {
        this.f3982e.a(this, this.f3986i);
    }

    @Override // e.b
    public boolean l() {
        return this.f3981d.j();
    }

    @Override // e.b
    public void m(android.view.View view) {
        this.f3981d.setCustomView(view);
        this.f3983f = view != null ? new java.lang.ref.WeakReference<>(view) : null;
    }

    @Override // e.b
    public void n(int i5) {
        o(this.f3980c.getString(i5));
    }

    @Override // e.b
    public void o(java.lang.CharSequence charSequence) {
        this.f3981d.setSubtitle(charSequence);
    }

    @Override // e.b
    public void q(int i5) {
        r(this.f3980c.getString(i5));
    }

    @Override // e.b
    public void r(java.lang.CharSequence charSequence) {
        this.f3981d.setTitle(charSequence);
    }

    @Override // e.b
    public void s(boolean z4) {
        super.s(z4);
        this.f3981d.setTitleOptional(z4);
    }
}
