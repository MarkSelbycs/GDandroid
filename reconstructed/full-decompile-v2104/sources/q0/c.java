package q0;

/* JADX INFO: compiled from: Configuration.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f5660a = 8;

    /* JADX INFO: compiled from: Configuration.kt */
    public static final class a implements java.util.concurrent.ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.concurrent.atomic.AtomicInteger f5661a = new java.util.concurrent.atomic.AtomicInteger(0);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean f5662b;

        public a(boolean z4) {
            this.f5662b = z4;
        }

        @Override // java.util.concurrent.ThreadFactory
        public java.lang.Thread newThread(java.lang.Runnable runnable) {
            m3.k.e(runnable, "runnable");
            return new java.lang.Thread(runnable, (this.f5662b ? "WM.task-" : "androidx.work-") + this.f5661a.incrementAndGet());
        }
    }

    public static final java.util.concurrent.Executor b(boolean z4) {
        java.util.concurrent.ExecutorService executorServiceNewFixedThreadPool = java.util.concurrent.Executors.newFixedThreadPool(java.lang.Math.max(2, java.lang.Math.min(java.lang.Runtime.getRuntime().availableProcessors() - 1, 4)), new q0.c.a(z4));
        m3.k.d(executorServiceNewFixedThreadPool, "newFixedThreadPool(\n    …)),\n        factory\n    )");
        return executorServiceNewFixedThreadPool;
    }

    public static final int c() {
        return f5660a;
    }
}
