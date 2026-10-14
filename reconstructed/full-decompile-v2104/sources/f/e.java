package f;

/* JADX INFO: compiled from: MenuItemWrapperJB.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e extends f.d {

    /* JADX INFO: compiled from: MenuItemWrapperJB.java */
    public class a extends f.d.a implements android.view.ActionProvider.VisibilityListener {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public w.b.InterfaceC0096b f4169f;

        public a(android.content.Context context, android.view.ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // w.b
        public boolean b() {
            return this.f4164d.isVisible();
        }

        @Override // w.b
        public android.view.View d(android.view.MenuItem menuItem) {
            return this.f4164d.onCreateActionView(menuItem);
        }

        @Override // w.b
        public boolean g() {
            return this.f4164d.overridesItemVisibility();
        }

        @Override // w.b
        public void j(w.b.InterfaceC0096b interfaceC0096b) {
            this.f4169f = interfaceC0096b;
            this.f4164d.setVisibilityListener(interfaceC0096b != null ? this : null);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z4) {
            w.b.InterfaceC0096b interfaceC0096b = this.f4169f;
            if (interfaceC0096b != null) {
                interfaceC0096b.onActionProviderVisibilityChanged(z4);
            }
        }
    }

    public e(android.content.Context context, q.b bVar) {
        super(context, bVar);
    }

    @Override // f.d
    public f.d.a h(android.view.ActionProvider actionProvider) {
        return new f.e.a(this.f4159b, actionProvider);
    }
}
