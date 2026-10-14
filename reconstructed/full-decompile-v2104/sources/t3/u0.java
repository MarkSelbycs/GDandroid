package t3;

/* JADX INFO: compiled from: EventLoop.common.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class u0 extends t3.v0 implements t3.l0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6249f = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(t3.u0.class, java.lang.Object.class, "_queue");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6250g = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(t3.u0.class, java.lang.Object.class, "_delayed");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicIntegerFieldUpdater f6251h = java.util.concurrent.atomic.AtomicIntegerFieldUpdater.newUpdater(t3.u0.class, "_isCompleted");
    private volatile java.lang.Object _delayed;
    private volatile int _isCompleted = 0;
    private volatile java.lang.Object _queue;

    /* JADX INFO: compiled from: EventLoop.common.kt */
    public static abstract class a implements java.lang.Runnable, java.lang.Comparable<t3.u0.a>, t3.r0, y3.o0 {
        private volatile java.lang.Object _heap;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f6252a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f6253b;

        @Override // y3.o0
        public void a(y3.n0<?> n0Var) {
            if (!(this._heap != t3.x0.f6257a)) {
                throw new java.lang.IllegalArgumentException("Failed requirement.".toString());
            }
            this._heap = n0Var;
        }

        @Override // y3.o0
        public void b(int i5) {
            this.f6253b = i5;
        }

        @Override // t3.r0
        public final void d() {
            synchronized (this) {
                java.lang.Object obj = this._heap;
                if (obj == t3.x0.f6257a) {
                    return;
                }
                t3.u0.b bVar = obj instanceof t3.u0.b ? (t3.u0.b) obj : null;
                if (bVar != null) {
                    bVar.g(this);
                }
                this._heap = t3.x0.f6257a;
                a3.o oVar = a3.o.f122a;
            }
        }

        @Override // y3.o0
        public y3.n0<?> e() {
            java.lang.Object obj = this._heap;
            if (obj instanceof y3.n0) {
                return (y3.n0) obj;
            }
            return null;
        }

        @Override // y3.o0
        public int f() {
            return this.f6253b;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public int compareTo(t3.u0.a aVar) {
            long j5 = this.f6252a - aVar.f6252a;
            if (j5 > 0) {
                return 1;
            }
            return j5 < 0 ? -1 : 0;
        }

        public final int i(long j5, t3.u0.b bVar, t3.u0 u0Var) {
            synchronized (this) {
                if (this._heap == t3.x0.f6257a) {
                    return 2;
                }
                synchronized (bVar) {
                    t3.u0.a aVarB = bVar.b();
                    if (u0Var.B0()) {
                        return 1;
                    }
                    if (aVarB == null) {
                        bVar.f6254c = j5;
                    } else {
                        long j6 = aVarB.f6252a;
                        if (j6 - j5 < 0) {
                            j5 = j6;
                        }
                        if (j5 - bVar.f6254c > 0) {
                            bVar.f6254c = j5;
                        }
                    }
                    long j7 = this.f6252a;
                    long j8 = bVar.f6254c;
                    if (j7 - j8 < 0) {
                        this.f6252a = j8;
                    }
                    bVar.a(this);
                    return 0;
                }
            }
        }

        public final boolean j(long j5) {
            return j5 - this.f6252a >= 0;
        }

        public java.lang.String toString() {
            return "Delayed[nanos=" + this.f6252a + ']';
        }
    }

    /* JADX INFO: compiled from: EventLoop.common.kt */
    public static final class b extends y3.n0<t3.u0.a> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f6254c;

        public b(long j5) {
            this.f6254c = j5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean B0() {
        return f6251h.get(this) != 0;
    }

    public final boolean A0(java.lang.Runnable runnable) {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6249f;
        while (true) {
            java.lang.Object obj = atomicReferenceFieldUpdater.get(this);
            if (B0()) {
                return false;
            }
            if (obj == null) {
                if (a4.n.a(f6249f, this, null, runnable)) {
                    return true;
                }
            } else if (obj instanceof y3.u) {
                m3.k.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }");
                y3.u uVar = (y3.u) obj;
                int iA = uVar.a(runnable);
                if (iA == 0) {
                    return true;
                }
                if (iA == 1) {
                    a4.n.a(f6249f, this, obj, uVar.i());
                } else if (iA == 2) {
                    return false;
                }
            } else {
                if (obj == t3.x0.f6258b) {
                    return false;
                }
                y3.u uVar2 = new y3.u(8, true);
                m3.k.c(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                uVar2.a((java.lang.Runnable) obj);
                uVar2.a(runnable);
                if (a4.n.a(f6249f, this, obj, uVar2)) {
                    return true;
                }
            }
        }
    }

    @Override // t3.t0
    public long C() {
        t3.u0.a aVarE;
        if (super.C() == 0) {
            return 0L;
        }
        java.lang.Object obj = f6249f.get(this);
        if (obj != null) {
            if (!(obj instanceof y3.u)) {
                return obj == t3.x0.f6258b ? Long.MAX_VALUE : 0L;
            }
            if (!((y3.u) obj).g()) {
                return 0L;
            }
        }
        t3.u0.b bVar = (t3.u0.b) f6250g.get(this);
        if (bVar == null || (aVarE = bVar.e()) == null) {
            return Long.MAX_VALUE;
        }
        long j5 = aVarE.f6252a;
        t3.c.a();
        return p3.m.b(j5 - java.lang.System.nanoTime(), 0L);
    }

    public boolean C0() {
        if (!Z()) {
            return false;
        }
        t3.u0.b bVar = (t3.u0.b) f6250g.get(this);
        if (bVar != null && !bVar.d()) {
            return false;
        }
        java.lang.Object obj = f6249f.get(this);
        if (obj != null) {
            if (obj instanceof y3.u) {
                return ((y3.u) obj).g();
            }
            if (obj != t3.x0.f6258b) {
                return false;
            }
        }
        return true;
    }

    public long D0() {
        t3.u0.a aVarH;
        if (b0()) {
            return 0L;
        }
        t3.u0.b bVar = (t3.u0.b) f6250g.get(this);
        if (bVar != null && !bVar.d()) {
            t3.c.a();
            long jNanoTime = java.lang.System.nanoTime();
            do {
                synchronized (bVar) {
                    t3.u0.a aVarB = bVar.b();
                    aVarH = null;
                    if (aVarB != null) {
                        t3.u0.a aVar = aVarB;
                        aVarH = aVar.j(jNanoTime) ? A0(aVar) : false ? bVar.h(0) : null;
                    }
                }
            } while (aVarH != null);
        }
        java.lang.Runnable runnableY0 = y0();
        if (runnableY0 == null) {
            return C();
        }
        runnableY0.run();
        return 0L;
    }

    public final void E0() {
        t3.u0.a aVarI;
        t3.c.a();
        long jNanoTime = java.lang.System.nanoTime();
        while (true) {
            t3.u0.b bVar = (t3.u0.b) f6250g.get(this);
            if (bVar == null || (aVarI = bVar.i()) == null) {
                return;
            } else {
                u0(jNanoTime, aVarI);
            }
        }
    }

    public final void F0() {
        f6249f.set(this, null);
        f6250g.set(this, null);
    }

    public final void G0(long j5, t3.u0.a aVar) {
        int iH0 = H0(j5, aVar);
        if (iH0 == 0) {
            if (J0(aVar)) {
                v0();
            }
        } else if (iH0 == 1) {
            u0(j5, aVar);
        } else if (iH0 != 2) {
            throw new java.lang.IllegalStateException("unexpected result".toString());
        }
    }

    public final int H0(long j5, t3.u0.a aVar) {
        if (B0()) {
            return 1;
        }
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6250g;
        t3.u0.b bVar = (t3.u0.b) atomicReferenceFieldUpdater.get(this);
        if (bVar == null) {
            a4.n.a(atomicReferenceFieldUpdater, this, null, new t3.u0.b(j5));
            java.lang.Object obj = atomicReferenceFieldUpdater.get(this);
            m3.k.b(obj);
            bVar = (t3.u0.b) obj;
        }
        return aVar.i(j5, bVar, this);
    }

    public final void I0(boolean z4) {
        f6251h.set(this, z4 ? 1 : 0);
    }

    public final boolean J0(t3.u0.a aVar) {
        t3.u0.b bVar = (t3.u0.b) f6250g.get(this);
        return (bVar != null ? bVar.e() : null) == aVar;
    }

    @Override // t3.t0
    public void c0() {
        t3.y1.f6259a.b();
        I0(true);
        x0();
        while (D0() <= 0) {
        }
        E0();
    }

    @Override // t3.b0
    public final void i(d3.g gVar, java.lang.Runnable runnable) {
        z0(runnable);
    }

    public final void x0() {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6249f;
        while (true) {
            java.lang.Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                if (a4.n.a(f6249f, this, null, t3.x0.f6258b)) {
                    return;
                }
            } else if (obj instanceof y3.u) {
                ((y3.u) obj).d();
                return;
            } else {
                if (obj == t3.x0.f6258b) {
                    return;
                }
                y3.u uVar = new y3.u(8, true);
                m3.k.c(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                uVar.a((java.lang.Runnable) obj);
                if (a4.n.a(f6249f, this, obj, uVar)) {
                    return;
                }
            }
        }
    }

    public final java.lang.Runnable y0() {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6249f;
        while (true) {
            java.lang.Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                return null;
            }
            if (obj instanceof y3.u) {
                m3.k.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }");
                y3.u uVar = (y3.u) obj;
                java.lang.Object objJ = uVar.j();
                if (objJ != y3.u.f6942h) {
                    return (java.lang.Runnable) objJ;
                }
                a4.n.a(f6249f, this, obj, uVar.i());
            } else {
                if (obj == t3.x0.f6258b) {
                    return null;
                }
                if (a4.n.a(f6249f, this, obj, null)) {
                    m3.k.c(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                    return (java.lang.Runnable) obj;
                }
            }
        }
    }

    public void z0(java.lang.Runnable runnable) {
        if (A0(runnable)) {
            v0();
        } else {
            t3.j0.f6195i.z0(runnable);
        }
    }
}
