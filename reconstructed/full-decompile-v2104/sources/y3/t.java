package y3;

/* JADX INFO: compiled from: LockFreeTaskQueue.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class t<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6938a = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(y3.t.class, java.lang.Object.class, "_cur");
    private volatile java.lang.Object _cur;

    public t(boolean z4) {
        this._cur = new y3.u(8, z4);
    }

    public final boolean a(E e5) {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6938a;
        while (true) {
            y3.u uVar = (y3.u) atomicReferenceFieldUpdater.get(this);
            int iA = uVar.a(e5);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                a4.n.a(f6938a, this, uVar, uVar.i());
            } else if (iA == 2) {
                return false;
            }
        }
    }

    public final void b() {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6938a;
        while (true) {
            y3.u uVar = (y3.u) atomicReferenceFieldUpdater.get(this);
            if (uVar.d()) {
                return;
            } else {
                a4.n.a(f6938a, this, uVar, uVar.i());
            }
        }
    }

    public final int c() {
        return ((y3.u) f6938a.get(this)).f();
    }

    public final E d() {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6938a;
        while (true) {
            y3.u uVar = (y3.u) atomicReferenceFieldUpdater.get(this);
            E e5 = (E) uVar.j();
            if (e5 != y3.u.f6942h) {
                return e5;
            }
            a4.n.a(f6938a, this, uVar, uVar.i());
        }
    }
}
