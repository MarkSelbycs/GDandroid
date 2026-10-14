package androidx.fragment.app;

/* JADX INFO: compiled from: FragmentHostCallback.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class d<E> extends androidx.fragment.app.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.app.Activity f1618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.content.Context f1619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.os.Handler f1620c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1621d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final androidx.fragment.app.f f1622e;

    public d(androidx.fragment.app.FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, fragmentActivity.f1545c, 0);
    }

    public android.app.Activity d() {
        return this.f1618a;
    }

    public android.content.Context e() {
        return this.f1619b;
    }

    public androidx.fragment.app.f f() {
        return this.f1622e;
    }

    public android.os.Handler g() {
        return this.f1620c;
    }

    public abstract void h(androidx.fragment.app.Fragment fragment);

    public abstract void i(java.lang.String str, java.io.FileDescriptor fileDescriptor, java.io.PrintWriter printWriter, java.lang.String[] strArr);

    public abstract android.view.LayoutInflater j();

    public abstract int k();

    public abstract boolean l();

    public abstract boolean m(androidx.fragment.app.Fragment fragment);

    public abstract void n();

    public d(android.app.Activity activity, android.content.Context context, android.os.Handler handler, int i5) {
        this.f1622e = new androidx.fragment.app.f();
        this.f1618a = activity;
        this.f1619b = (android.content.Context) v.h.c(context, "context == null");
        this.f1620c = (android.os.Handler) v.h.c(handler, "handler == null");
        this.f1621d = i5;
    }
}
