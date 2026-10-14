package t3;

/* JADX INFO: compiled from: Executors.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a1 extends t3.z0 implements t3.l0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.concurrent.Executor f6170d;

    public a1(java.util.concurrent.Executor executor) {
        this.f6170d = executor;
        y3.c.a(s());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        java.util.concurrent.Executor executorS = s();
        java.util.concurrent.ExecutorService executorService = executorS instanceof java.util.concurrent.ExecutorService ? (java.util.concurrent.ExecutorService) executorS : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof t3.a1) && ((t3.a1) obj).s() == s();
    }

    public int hashCode() {
        return java.lang.System.identityHashCode(s());
    }

    @Override // t3.b0
    public void i(d3.g gVar, java.lang.Runnable runnable) {
        try {
            java.util.concurrent.Executor executorS = s();
            t3.c.a();
            executorS.execute(runnable);
        } catch (java.util.concurrent.RejectedExecutionException e5) {
            t3.c.a();
            r(gVar, e5);
            t3.q0.b().i(gVar, runnable);
        }
    }

    public final void r(d3.g gVar, java.util.concurrent.RejectedExecutionException rejectedExecutionException) {
        t3.l1.c(gVar, t3.y0.a("The task was rejected", rejectedExecutionException));
    }

    public java.util.concurrent.Executor s() {
        return this.f6170d;
    }

    @Override // t3.b0
    public java.lang.String toString() {
        return s().toString();
    }
}
