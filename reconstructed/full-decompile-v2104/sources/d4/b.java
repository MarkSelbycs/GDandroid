package d4;

/* JADX INFO: compiled from: NamedRunnable.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class b implements java.lang.Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f3964a;

    public b(java.lang.String str, java.lang.Object... objArr) {
        this.f3964a = d4.c.l(str, objArr);
    }

    public abstract void c();

    @Override // java.lang.Runnable
    public final void run() {
        java.lang.String name = java.lang.Thread.currentThread().getName();
        java.lang.Thread.currentThread().setName(this.f3964a);
        try {
            c();
        } finally {
            java.lang.Thread.currentThread().setName(name);
        }
    }
}
