package y3;

/* JADX INFO: compiled from: ConcurrentLinkedList.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class e<N extends y3.e<N>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6890a = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(y3.e.class, java.lang.Object.class, "_next");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6891b = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(y3.e.class, java.lang.Object.class, "_prev");
    private volatile java.lang.Object _next;
    private volatile java.lang.Object _prev;

    public e(N n5) {
        this._prev = n5;
    }

    public final void b() {
        f6891b.lazySet(this, null);
    }

    public final N c() {
        N n5 = (N) g();
        while (n5 != null && n5.h()) {
            n5 = (N) f6891b.get(n5);
        }
        return n5;
    }

    public final N d() {
        y3.e eVarE;
        N n5 = (N) e();
        m3.k.b(n5);
        while (n5.h() && (eVarE = n5.e()) != null) {
            n5 = (N) eVarE;
        }
        return n5;
    }

    public final N e() {
        java.lang.Object objF = f();
        if (objF == y3.d.f6888a) {
            return null;
        }
        return (N) objF;
    }

    public final java.lang.Object f() {
        return f6890a.get(this);
    }

    public final N g() {
        return (N) f6891b.get(this);
    }

    public abstract boolean h();

    public final boolean i() {
        return e() == null;
    }

    public final boolean j() {
        return a4.n.a(f6890a, this, null, y3.d.f6888a);
    }

    public final void k() {
        java.lang.Object obj;
        if (i()) {
            return;
        }
        while (true) {
            y3.e eVarC = c();
            y3.e eVarD = d();
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6891b;
            do {
                obj = atomicReferenceFieldUpdater.get(eVarD);
            } while (!a4.n.a(atomicReferenceFieldUpdater, eVarD, obj, ((y3.e) obj) == null ? null : eVarC));
            if (eVarC != null) {
                f6890a.set(eVarC, eVarD);
            }
            if (!eVarD.h() || eVarD.i()) {
                if (eVarC == null || !eVarC.h()) {
                    return;
                }
            }
        }
    }

    public final boolean l(N n5) {
        return a4.n.a(f6890a, this, null, n5);
    }
}
