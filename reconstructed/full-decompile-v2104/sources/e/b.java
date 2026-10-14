package e;

/* JADX INFO: compiled from: ActionMode.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.lang.Object f3973a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f3974b;

    /* JADX INFO: compiled from: ActionMode.java */
    public interface a {
        boolean a(e.b bVar, android.view.Menu menu);

        boolean b(e.b bVar, android.view.Menu menu);

        void c(e.b bVar);

        boolean d(e.b bVar, android.view.MenuItem menuItem);
    }

    public abstract void c();

    public abstract android.view.View d();

    public abstract android.view.Menu e();

    public abstract android.view.MenuInflater f();

    public abstract java.lang.CharSequence g();

    public java.lang.Object h() {
        return this.f3973a;
    }

    public abstract java.lang.CharSequence i();

    public boolean j() {
        return this.f3974b;
    }

    public abstract void k();

    public abstract boolean l();

    public abstract void m(android.view.View view);

    public abstract void n(int i5);

    public abstract void o(java.lang.CharSequence charSequence);

    public void p(java.lang.Object obj) {
        this.f3973a = obj;
    }

    public abstract void q(int i5);

    public abstract void r(java.lang.CharSequence charSequence);

    public void s(boolean z4) {
        this.f3974b = z4;
    }
}
