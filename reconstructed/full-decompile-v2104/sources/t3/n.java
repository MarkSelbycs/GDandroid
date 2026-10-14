package t3;

/* JADX INFO: compiled from: CompletionState.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class n extends t3.u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicIntegerFieldUpdater f6207c = java.util.concurrent.atomic.AtomicIntegerFieldUpdater.newUpdater(t3.n.class, "_resumed");
    private volatile int _resumed;

    public n(d3.d<?> dVar, java.lang.Throwable th, boolean z4) {
        if (th == null) {
            th = new java.util.concurrent.CancellationException("Continuation " + dVar + " was cancelled normally");
        }
        super(th, z4);
        this._resumed = 0;
    }

    public final boolean c() {
        return f6207c.compareAndSet(this, 0, 1);
    }
}
