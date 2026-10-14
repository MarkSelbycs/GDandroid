package t3;

/* JADX INFO: compiled from: DefaultExecutor.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class j0 extends t3.u0 implements java.lang.Runnable {
    private static volatile java.lang.Thread _thread;
    private static volatile int debugStatus;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final t3.j0 f6195i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final long f6196o;

    static {
        java.lang.Long l5;
        t3.j0 j0Var = new t3.j0();
        f6195i = j0Var;
        t3.t0.R(j0Var, false, 1, null);
        java.util.concurrent.TimeUnit timeUnit = java.util.concurrent.TimeUnit.MILLISECONDS;
        try {
            l5 = java.lang.Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (java.lang.SecurityException unused) {
            l5 = 1000L;
        }
        f6196o = timeUnit.toNanos(l5.longValue());
    }

    public final synchronized void K0() {
        if (N0()) {
            debugStatus = 3;
            F0();
            m3.k.c(this, "null cannot be cast to non-null type java.lang.Object");
            notifyAll();
        }
    }

    public final synchronized java.lang.Thread L0() {
        java.lang.Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new java.lang.Thread(this, "kotlinx.coroutines.DefaultExecutor");
            _thread = thread;
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    public final boolean M0() {
        return debugStatus == 4;
    }

    public final boolean N0() {
        int i5 = debugStatus;
        return i5 == 2 || i5 == 3;
    }

    public final synchronized boolean O0() {
        if (N0()) {
            return false;
        }
        debugStatus = 1;
        m3.k.c(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
        return true;
    }

    public final void P0() {
        throw new java.util.concurrent.RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // t3.u0, t3.t0
    public void c0() {
        debugStatus = 4;
        super.c0();
    }

    @Override // t3.v0
    public java.lang.Thread r0() {
        java.lang.Thread thread = _thread;
        return thread == null ? L0() : thread;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zC0;
        t3.y1.f6259a.c(this);
        t3.c.a();
        try {
            if (!O0()) {
                if (zC0) {
                    return;
                } else {
                    return;
                }
            }
            long j5 = Long.MAX_VALUE;
            while (true) {
                java.lang.Thread.interrupted();
                long jD0 = D0();
                if (jD0 == Long.MAX_VALUE) {
                    t3.c.a();
                    long jNanoTime = java.lang.System.nanoTime();
                    if (j5 == Long.MAX_VALUE) {
                        j5 = f6196o + jNanoTime;
                    }
                    long j6 = j5 - jNanoTime;
                    if (j6 <= 0) {
                        if (zC0) {
                            return;
                        } else {
                            return;
                        }
                    }
                    jD0 = p3.m.d(jD0, j6);
                } else {
                    j5 = Long.MAX_VALUE;
                }
                if (jD0 > 0) {
                    if (N0()) {
                        if (zC0) {
                            return;
                        } else {
                            return;
                        }
                    } else {
                        t3.c.a();
                        java.util.concurrent.locks.LockSupport.parkNanos(this, jD0);
                    }
                }
            }
        } finally {
            _thread = null;
            K0();
            t3.c.a();
            if (!C0()) {
                r0();
            }
        }
    }

    @Override // t3.v0
    public void u0(long j5, t3.u0.a aVar) {
        P0();
    }

    @Override // t3.u0
    public void z0(java.lang.Runnable runnable) {
        if (M0()) {
            P0();
        }
        super.z0(runnable);
    }
}
