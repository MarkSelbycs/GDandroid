package y3;

/* JADX INFO: compiled from: LimitedDispatcher.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class o extends t3.b0 implements t3.l0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicIntegerFieldUpdater f6920h = java.util.concurrent.atomic.AtomicIntegerFieldUpdater.newUpdater(y3.o.class, "runningWorkers");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final t3.b0 f6921c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f6922d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ t3.l0 f6923e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final y3.t<java.lang.Runnable> f6924f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.lang.Object f6925g;
    private volatile int runningWorkers;

    /* JADX INFO: compiled from: LimitedDispatcher.kt */
    public final class a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.lang.Runnable f6926a;

        public a(java.lang.Runnable runnable) {
            this.f6926a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i5 = 0;
            while (true) {
                try {
                    this.f6926a.run();
                } catch (java.lang.Throwable th) {
                    t3.d0.a(d3.h.f3962a, th);
                }
                java.lang.Runnable runnableZ = y3.o.this.z();
                if (runnableZ == null) {
                    return;
                }
                this.f6926a = runnableZ;
                i5++;
                if (i5 >= 16 && y3.o.this.f6921c.n(y3.o.this)) {
                    y3.o.this.f6921c.i(y3.o.this, this);
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public o(t3.b0 b0Var, int i5) {
        this.f6921c = b0Var;
        this.f6922d = i5;
        t3.l0 l0Var = b0Var instanceof t3.l0 ? (t3.l0) b0Var : null;
        this.f6923e = l0Var == null ? t3.k0.a() : l0Var;
        this.f6924f = new y3.t<>(false);
        this.f6925g = new java.lang.Object();
    }

    public final boolean C() {
        synchronized (this.f6925g) {
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f6920h;
            if (atomicIntegerFieldUpdater.get(this) >= this.f6922d) {
                return false;
            }
            atomicIntegerFieldUpdater.incrementAndGet(this);
            return true;
        }
    }

    @Override // t3.b0
    public void i(d3.g gVar, java.lang.Runnable runnable) {
        java.lang.Runnable runnableZ;
        this.f6924f.a(runnable);
        if (f6920h.get(this) >= this.f6922d || !C() || (runnableZ = z()) == null) {
            return;
        }
        this.f6921c.i(this, new y3.o.a(runnableZ));
    }

    @Override // t3.b0
    public void l(d3.g gVar, java.lang.Runnable runnable) {
        java.lang.Runnable runnableZ;
        this.f6924f.a(runnable);
        if (f6920h.get(this) >= this.f6922d || !C() || (runnableZ = z()) == null) {
            return;
        }
        this.f6921c.l(this, new y3.o.a(runnableZ));
    }

    public final java.lang.Runnable z() {
        while (true) {
            java.lang.Runnable runnableD = this.f6924f.d();
            if (runnableD != null) {
                return runnableD;
            }
            synchronized (this.f6925g) {
                java.util.concurrent.atomic.AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f6920h;
                atomicIntegerFieldUpdater.decrementAndGet(this);
                if (this.f6924f.c() == 0) {
                    return null;
                }
                atomicIntegerFieldUpdater.incrementAndGet(this);
            }
        }
    }
}
