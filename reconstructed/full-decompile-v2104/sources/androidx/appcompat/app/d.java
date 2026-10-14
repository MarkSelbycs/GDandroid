package androidx.appcompat.app;

/* JADX INFO: compiled from: AppCompatDelegate.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f324a = -1;

    public static androidx.appcompat.app.d e(android.app.Activity activity, androidx.appcompat.app.c cVar) {
        return new androidx.appcompat.app.AppCompatDelegateImpl(activity, activity.getWindow(), cVar);
    }

    public static androidx.appcompat.app.d f(android.app.Dialog dialog, androidx.appcompat.app.c cVar) {
        return new androidx.appcompat.app.AppCompatDelegateImpl(dialog.getContext(), dialog.getWindow(), cVar);
    }

    public static int h() {
        return f324a;
    }

    public abstract void A(java.lang.CharSequence charSequence);

    public abstract e.b B(e.b.a aVar);

    public abstract void c(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams);

    public abstract boolean d();

    public abstract <T extends android.view.View> T g(int i5);

    public abstract androidx.appcompat.app.a i();

    public abstract android.view.MenuInflater j();

    public abstract androidx.appcompat.app.ActionBar k();

    public abstract void l();

    public abstract void m();

    public abstract void n(android.content.res.Configuration configuration);

    public abstract void o(android.os.Bundle bundle);

    public abstract void p();

    public abstract void q(android.os.Bundle bundle);

    public abstract void r();

    public abstract void s(android.os.Bundle bundle);

    public abstract void t();

    public abstract void u();

    public abstract boolean v(int i5);

    public abstract void w(int i5);

    public abstract void x(android.view.View view);

    public abstract void y(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams);

    public abstract void z(androidx.appcompat.widget.Toolbar toolbar);
}
