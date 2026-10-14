package f4;

/* JADX INFO: compiled from: RouteDatabase.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.Set<c4.c0> f4259a = new java.util.LinkedHashSet();

    public synchronized void a(c4.c0 c0Var) {
        this.f4259a.remove(c0Var);
    }

    public synchronized void b(c4.c0 c0Var) {
        this.f4259a.add(c0Var);
    }

    public synchronized boolean c(c4.c0 c0Var) {
        return this.f4259a.contains(c0Var);
    }
}
