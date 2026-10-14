package g;

/* JADX INFO: compiled from: ArchTaskExecutor.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends g.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile g.a f4280c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final java.util.concurrent.Executor f4281d = new g.a.ExecutorC0051a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.util.concurrent.Executor f4282e = new g.a.b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public g.c f4283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public g.c f4284b;

    /* JADX INFO: renamed from: g.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ArchTaskExecutor.java */
    public static class ExecutorC0051a implements java.util.concurrent.Executor {
        @Override // java.util.concurrent.Executor
        public void execute(java.lang.Runnable runnable) {
            g.a.e().c(runnable);
        }
    }

    /* JADX INFO: compiled from: ArchTaskExecutor.java */
    public static class b implements java.util.concurrent.Executor {
        @Override // java.util.concurrent.Executor
        public void execute(java.lang.Runnable runnable) {
            g.a.e().a(runnable);
        }
    }

    public a() {
        g.b bVar = new g.b();
        this.f4284b = bVar;
        this.f4283a = bVar;
    }

    public static java.util.concurrent.Executor d() {
        return f4282e;
    }

    public static g.a e() {
        if (f4280c != null) {
            return f4280c;
        }
        synchronized (g.a.class) {
            if (f4280c == null) {
                f4280c = new g.a();
            }
        }
        return f4280c;
    }

    @Override // g.c
    public void a(java.lang.Runnable runnable) {
        this.f4283a.a(runnable);
    }

    @Override // g.c
    public boolean b() {
        return this.f4283a.b();
    }

    @Override // g.c
    public void c(java.lang.Runnable runnable) {
        this.f4283a.c(runnable);
    }
}
