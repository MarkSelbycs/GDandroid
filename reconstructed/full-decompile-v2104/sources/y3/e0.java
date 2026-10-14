package y3;

/* JADX INFO: compiled from: ConcurrentLinkedList.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class e0<S extends y3.e0<S>> extends y3.e<S> implements t3.u1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicIntegerFieldUpdater f6892d = java.util.concurrent.atomic.AtomicIntegerFieldUpdater.newUpdater(y3.e0.class, "cleanedAndPointers");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f6893c;
    private volatile int cleanedAndPointers;

    public e0(long j5, S s5, int i5) {
        super(s5);
        this.f6893c = j5;
        this.cleanedAndPointers = i5 << 16;
    }

    @Override // y3.e
    public boolean h() {
        return f6892d.get(this) == n() && !i();
    }

    public final boolean m() {
        return f6892d.addAndGet(this, -65536) == n() && !i();
    }

    public abstract int n();

    public abstract void o(int i5, java.lang.Throwable th, d3.g gVar);

    public final void p() {
        if (f6892d.incrementAndGet(this) == n()) {
            k();
        }
    }

    public final boolean q() {
        int i5;
        java.util.concurrent.atomic.AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f6892d;
        do {
            i5 = atomicIntegerFieldUpdater.get(this);
            if (!(i5 != n() || i())) {
                return false;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i5, 65536 + i5));
        return true;
    }
}
