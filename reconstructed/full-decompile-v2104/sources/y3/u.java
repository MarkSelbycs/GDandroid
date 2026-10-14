package y3;

/* JADX INFO: compiled from: LockFreeTaskQueue.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class u<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final y3.u.a f6939e = new y3.u.a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6940f = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(y3.u.class, java.lang.Object.class, "_next");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicLongFieldUpdater f6941g = java.util.concurrent.atomic.AtomicLongFieldUpdater.newUpdater(y3.u.class, "_state");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final y3.h0 f6942h = new y3.h0("REMOVE_FROZEN");
    private volatile java.lang.Object _next;
    private volatile long _state;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6943a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f6944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6945c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.concurrent.atomic.AtomicReferenceArray f6946d;

    /* JADX INFO: compiled from: LockFreeTaskQueue.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }

        public final int a(long j5) {
            return (j5 & 2305843009213693952L) != 0 ? 2 : 1;
        }

        public final long b(long j5, int i5) {
            return d(j5, 1073741823L) | (((long) i5) << 0);
        }

        public final long c(long j5, int i5) {
            return d(j5, 1152921503533105152L) | (((long) i5) << 30);
        }

        public final long d(long j5, long j6) {
            return j5 & (~j6);
        }
    }

    /* JADX INFO: compiled from: LockFreeTaskQueue.kt */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f6947a;

        public b(int i5) {
            this.f6947a = i5;
        }
    }

    public u(int i5, boolean z4) {
        this.f6943a = i5;
        this.f6944b = z4;
        int i6 = i5 - 1;
        this.f6945c = i6;
        this.f6946d = new java.util.concurrent.atomic.AtomicReferenceArray(i5);
        if (!(i6 <= 1073741823)) {
            throw new java.lang.IllegalStateException("Check failed.".toString());
        }
        if (!((i5 & i6) == 0)) {
            throw new java.lang.IllegalStateException("Check failed.".toString());
        }
    }

    public final int a(E e5) {
        java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater = f6941g;
        while (true) {
            long j5 = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j5) != 0) {
                return f6939e.a(j5);
            }
            y3.u.a aVar = f6939e;
            int i5 = (int) ((1073741823 & j5) >> 0);
            int i6 = (int) ((1152921503533105152L & j5) >> 30);
            int i7 = this.f6945c;
            if (((i6 + 2) & i7) == (i5 & i7)) {
                return 1;
            }
            if (!this.f6944b && this.f6946d.get(i6 & i7) != null) {
                int i8 = this.f6943a;
                if (i8 < 1024 || ((i6 - i5) & 1073741823) > (i8 >> 1)) {
                    return 1;
                }
            } else if (f6941g.compareAndSet(this, j5, aVar.c(j5, (i6 + 1) & 1073741823))) {
                this.f6946d.set(i6 & i7, e5);
                y3.u<E> uVarE = this;
                while ((f6941g.get(uVarE) & 1152921504606846976L) != 0 && (uVarE = uVarE.i().e(i6, e5)) != null) {
                }
                return 0;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final y3.u<E> b(long j5) {
        y3.u<E> uVar = new y3.u<>(this.f6943a * 2, this.f6944b);
        int i5 = (int) ((1073741823 & j5) >> 0);
        int i6 = (int) ((1152921503533105152L & j5) >> 30);
        while (true) {
            int i7 = this.f6945c;
            if ((i5 & i7) == (i6 & i7)) {
                f6941g.set(uVar, f6939e.d(j5, 1152921504606846976L));
                return uVar;
            }
            java.lang.Object bVar = this.f6946d.get(i7 & i5);
            if (bVar == null) {
                bVar = new y3.u.b(i5);
            }
            uVar.f6946d.set(uVar.f6945c & i5, bVar);
            i5++;
        }
    }

    public final y3.u<E> c(long j5) {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6940f;
        while (true) {
            y3.u<E> uVar = (y3.u) atomicReferenceFieldUpdater.get(this);
            if (uVar != null) {
                return uVar;
            }
            a4.n.a(f6940f, this, null, b(j5));
        }
    }

    public final boolean d() {
        long j5;
        java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater = f6941g;
        do {
            j5 = atomicLongFieldUpdater.get(this);
            if ((j5 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j5) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j5, j5 | 2305843009213693952L));
        return true;
    }

    public final y3.u<E> e(int i5, E e5) {
        java.lang.Object obj = this.f6946d.get(this.f6945c & i5);
        if (!(obj instanceof y3.u.b) || ((y3.u.b) obj).f6947a != i5) {
            return null;
        }
        this.f6946d.set(i5 & this.f6945c, e5);
        return this;
    }

    public final int f() {
        long j5 = f6941g.get(this);
        return (((int) ((j5 & 1152921503533105152L) >> 30)) - ((int) ((1073741823 & j5) >> 0))) & 1073741823;
    }

    public final boolean g() {
        long j5 = f6941g.get(this);
        return ((int) ((1073741823 & j5) >> 0)) == ((int) ((j5 & 1152921503533105152L) >> 30));
    }

    public final long h() {
        long j5;
        long j6;
        java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater = f6941g;
        do {
            j5 = atomicLongFieldUpdater.get(this);
            if ((j5 & 1152921504606846976L) != 0) {
                return j5;
            }
            j6 = j5 | 1152921504606846976L;
        } while (!atomicLongFieldUpdater.compareAndSet(this, j5, j6));
        return j6;
    }

    public final y3.u<E> i() {
        return c(h());
    }

    public final java.lang.Object j() {
        java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater = f6941g;
        while (true) {
            long j5 = atomicLongFieldUpdater.get(this);
            if ((1152921504606846976L & j5) != 0) {
                return f6942h;
            }
            y3.u.a aVar = f6939e;
            int i5 = (int) ((1073741823 & j5) >> 0);
            int i6 = (int) ((1152921503533105152L & j5) >> 30);
            int i7 = this.f6945c;
            if ((i6 & i7) == (i5 & i7)) {
                return null;
            }
            java.lang.Object obj = this.f6946d.get(i7 & i5);
            if (obj == null) {
                if (this.f6944b) {
                    return null;
                }
            } else {
                if (obj instanceof y3.u.b) {
                    return null;
                }
                int i8 = (i5 + 1) & 1073741823;
                if (f6941g.compareAndSet(this, j5, aVar.b(j5, i8))) {
                    this.f6946d.set(this.f6945c & i5, null);
                    return obj;
                }
                if (this.f6944b) {
                    y3.u<E> uVarK = this;
                    do {
                        uVarK = uVarK.k(i5, i8);
                    } while (uVarK != null);
                    return obj;
                }
            }
        }
    }

    public final y3.u<E> k(int i5, int i6) {
        long j5;
        y3.u.a aVar;
        int i7;
        java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater = f6941g;
        do {
            j5 = atomicLongFieldUpdater.get(this);
            aVar = f6939e;
            i7 = (int) ((1073741823 & j5) >> 0);
            if ((1152921504606846976L & j5) != 0) {
                return i();
            }
        } while (!f6941g.compareAndSet(this, j5, aVar.b(j5, i6)));
        this.f6946d.set(this.f6945c & i7, null);
        return null;
    }
}
