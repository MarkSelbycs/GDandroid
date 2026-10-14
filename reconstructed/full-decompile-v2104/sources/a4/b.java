package a4;

/* JADX INFO: compiled from: Dispatcher.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b extends t3.z0 implements java.util.concurrent.Executor {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a4.b f151d = new a4.b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final t3.b0 f152e = a4.m.f172c.o(y3.k0.e("kotlinx.coroutines.io.parallelism", p3.m.a(64, y3.i0.a()), 0, 0, 12, null));

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new java.lang.IllegalStateException("Cannot be invoked on Dispatchers.IO".toString());
    }

    @Override // java.util.concurrent.Executor
    public void execute(java.lang.Runnable runnable) {
        i(d3.h.f3962a, runnable);
    }

    @Override // t3.b0
    public void i(d3.g gVar, java.lang.Runnable runnable) {
        f152e.i(gVar, runnable);
    }

    @Override // t3.b0
    public void l(d3.g gVar, java.lang.Runnable runnable) {
        f152e.l(gVar, runnable);
    }

    @Override // t3.b0
    public java.lang.String toString() {
        return "Dispatchers.IO";
    }
}
