package t3;

/* JADX INFO: compiled from: Builders.common.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class m0<T> extends y3.d0<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicIntegerFieldUpdater f6206e = java.util.concurrent.atomic.AtomicIntegerFieldUpdater.newUpdater(t3.m0.class, "_decision");
    private volatile int _decision;

    @Override // y3.d0, t3.a
    public void J0(java.lang.Object obj) {
        if (N0()) {
            return;
        }
        y3.k.c(e3.b.b(this.f6889d), t3.y.a(obj, this.f6889d), null, 2, null);
    }

    public final boolean N0() {
        java.util.concurrent.atomic.AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f6206e;
        do {
            int i5 = atomicIntegerFieldUpdater.get(this);
            if (i5 != 0) {
                if (i5 == 1) {
                    return false;
                }
                throw new java.lang.IllegalStateException("Already resumed".toString());
            }
        } while (!f6206e.compareAndSet(this, 0, 2));
        return true;
    }

    @Override // y3.d0, t3.o1
    public void v(java.lang.Object obj) {
        J0(obj);
    }
}
