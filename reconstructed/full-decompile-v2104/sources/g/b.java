package g;

/* JADX INFO: compiled from: DefaultTaskExecutor.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends g.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Object f4285a = new java.lang.Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.concurrent.ExecutorService f4286b = java.util.concurrent.Executors.newFixedThreadPool(4, new g.b.a());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile android.os.Handler f4287c;

    /* JADX INFO: compiled from: DefaultTaskExecutor.java */
    public class a implements java.util.concurrent.ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.concurrent.atomic.AtomicInteger f4288a = new java.util.concurrent.atomic.AtomicInteger(0);

        public a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public java.lang.Thread newThread(java.lang.Runnable runnable) {
            java.lang.Thread thread = new java.lang.Thread(runnable);
            thread.setName(java.lang.String.format("arch_disk_io_%d", java.lang.Integer.valueOf(this.f4288a.getAndIncrement())));
            return thread;
        }
    }

    public static android.os.Handler d(android.os.Looper looper) {
        return android.os.Handler.createAsync(looper);
    }

    @Override // g.c
    public void a(java.lang.Runnable runnable) {
        this.f4286b.execute(runnable);
    }

    @Override // g.c
    public boolean b() {
        return android.os.Looper.getMainLooper().getThread() == java.lang.Thread.currentThread();
    }

    @Override // g.c
    public void c(java.lang.Runnable runnable) {
        if (this.f4287c == null) {
            synchronized (this.f4285a) {
                if (this.f4287c == null) {
                    this.f4287c = d(android.os.Looper.getMainLooper());
                }
            }
        }
        this.f4287c.post(runnable);
    }
}
