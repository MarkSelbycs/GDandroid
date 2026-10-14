package w;

/* JADX INFO: compiled from: ActionProvider.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f6655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public w.b.a f6656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public w.b.InterfaceC0096b f6657c;

    /* JADX INFO: compiled from: ActionProvider.java */
    public interface a {
        void b(boolean z4);
    }

    /* JADX INFO: renamed from: w.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActionProvider.java */
    public interface InterfaceC0096b {
        void onActionProviderVisibilityChanged(boolean z4);
    }

    public b(android.content.Context context) {
        this.f6655a = context;
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return true;
    }

    public abstract android.view.View c();

    public android.view.View d(android.view.MenuItem menuItem) {
        return c();
    }

    public boolean e() {
        return false;
    }

    public void f(android.view.SubMenu subMenu) {
    }

    public boolean g() {
        return false;
    }

    public void h() {
        this.f6657c = null;
        this.f6656b = null;
    }

    public void i(w.b.a aVar) {
        this.f6656b = aVar;
    }

    public void j(w.b.InterfaceC0096b interfaceC0096b) {
        if (this.f6657c != null && interfaceC0096b != null) {
            android.util.Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.f6657c = interfaceC0096b;
    }

    public void k(boolean z4) {
        w.b.a aVar = this.f6656b;
        if (aVar != null) {
            aVar.b(z4);
        }
    }
}
