package t3;

/* JADX INFO: compiled from: CancellableContinuationImpl.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class k<T> extends t3.n0<T> implements t3.j<T>, f3.e, t3.c2 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicIntegerFieldUpdater f6197f = java.util.concurrent.atomic.AtomicIntegerFieldUpdater.newUpdater(t3.k.class, "_decisionAndIndex");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6198g = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(t3.k.class, java.lang.Object.class, "_state");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6199h = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(t3.k.class, java.lang.Object.class, "_parentHandle");
    private volatile int _decisionAndIndex;
    private volatile java.lang.Object _parentHandle;
    private volatile java.lang.Object _state;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d3.d<T> f6200d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final d3.g f6201e;

    /* JADX WARN: Multi-variable type inference failed */
    public k(d3.d<? super T> dVar, int i5) {
        super(i5);
        this.f6200d = dVar;
        this.f6201e = dVar.b();
        this._decisionAndIndex = 536870911;
        this._state = t3.d.f6178a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void K(t3.k kVar, java.lang.Object obj, int i5, l3.l lVar, int i6, java.lang.Object obj2) {
        if (obj2 != null) {
            throw new java.lang.UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i6 & 4) != 0) {
            lVar = null;
        }
        kVar.J(obj, i5, lVar);
    }

    public final boolean A() {
        if (t3.o0.c(this.f6208c)) {
            d3.d<T> dVar = this.f6200d;
            m3.k.c(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (((y3.j) dVar).m()) {
                return true;
            }
        }
        return false;
    }

    public final void B(java.lang.Object obj, java.lang.Object obj2) {
        throw new java.lang.IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    public java.lang.String C() {
        return "CancellableContinuation";
    }

    @Override // f3.e
    public f3.e D() {
        d3.d<T> dVar = this.f6200d;
        if (dVar instanceof f3.e) {
            return (f3.e) dVar;
        }
        return null;
    }

    public final void E(java.lang.Throwable th) {
        if (n(th)) {
            return;
        }
        m(th);
        p();
    }

    @Override // d3.d
    public void F(java.lang.Object obj) {
        K(this, t3.y.c(obj, this), this.f6208c, null, 4, null);
    }

    public final void G() {
        java.lang.Throwable thP;
        d3.d<T> dVar = this.f6200d;
        y3.j jVar = dVar instanceof y3.j ? (y3.j) dVar : null;
        if (jVar == null || (thP = jVar.p(this)) == null) {
            return;
        }
        o();
        m(thP);
    }

    public final boolean H() {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6198g;
        java.lang.Object obj = atomicReferenceFieldUpdater.get(this);
        if ((obj instanceof t3.t) && ((t3.t) obj).f6241d != null) {
            o();
            return false;
        }
        f6197f.set(this, 536870911);
        atomicReferenceFieldUpdater.set(this, t3.d.f6178a);
        return true;
    }

    public void I(T t5, l3.l<? super java.lang.Throwable, a3.o> lVar) {
        J(t5, this.f6208c, lVar);
    }

    public final void J(java.lang.Object obj, int i5, l3.l<? super java.lang.Throwable, a3.o> lVar) {
        java.lang.Object obj2;
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6198g;
        do {
            obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof t3.u1)) {
                if (obj2 instanceof t3.n) {
                    t3.n nVar = (t3.n) obj2;
                    if (nVar.c()) {
                        if (lVar != null) {
                            k(lVar, nVar.f6248a);
                            return;
                        }
                        return;
                    }
                }
                i(obj);
                throw new a3.c();
            }
        } while (!a4.n.a(f6198g, this, obj2, L((t3.u1) obj2, obj, i5, lVar, null)));
        p();
        q(i5);
    }

    public final java.lang.Object L(t3.u1 u1Var, java.lang.Object obj, int i5, l3.l<? super java.lang.Throwable, a3.o> lVar, java.lang.Object obj2) {
        if (obj instanceof t3.u) {
            return obj;
        }
        if (!t3.o0.b(i5) && obj2 == null) {
            return obj;
        }
        if (lVar == null && !(u1Var instanceof t3.h) && obj2 == null) {
            return obj;
        }
        return new t3.t(obj, u1Var instanceof t3.h ? (t3.h) u1Var : null, lVar, obj2, null, 16, null);
    }

    public final boolean M() {
        int i5;
        java.util.concurrent.atomic.AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f6197f;
        do {
            i5 = atomicIntegerFieldUpdater.get(this);
            int i6 = i5 >> 29;
            if (i6 != 0) {
                if (i6 == 1) {
                    return false;
                }
                throw new java.lang.IllegalStateException("Already resumed".toString());
            }
        } while (!f6197f.compareAndSet(this, i5, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY + (536870911 & i5)));
        return true;
    }

    public final y3.h0 N(java.lang.Object obj, java.lang.Object obj2, l3.l<? super java.lang.Throwable, a3.o> lVar) {
        java.lang.Object obj3;
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6198g;
        do {
            obj3 = atomicReferenceFieldUpdater.get(this);
            if (!(obj3 instanceof t3.u1)) {
                if ((obj3 instanceof t3.t) && obj2 != null && ((t3.t) obj3).f6241d == obj2) {
                    return t3.l.f6205a;
                }
                return null;
            }
        } while (!a4.n.a(f6198g, this, obj3, L((t3.u1) obj3, obj, this.f6208c, lVar, obj2)));
        p();
        return t3.l.f6205a;
    }

    public final boolean O() {
        int i5;
        java.util.concurrent.atomic.AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f6197f;
        do {
            i5 = atomicIntegerFieldUpdater.get(this);
            int i6 = i5 >> 29;
            if (i6 != 0) {
                if (i6 == 2) {
                    return false;
                }
                throw new java.lang.IllegalStateException("Already suspended".toString());
            }
        } while (!f6197f.compareAndSet(this, i5, com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_WIDE + (536870911 & i5)));
        return true;
    }

    @Override // t3.j
    public void T(java.lang.Object obj) {
        q(this.f6208c);
    }

    @Override // t3.j
    public java.lang.Object U(T t5, java.lang.Object obj, l3.l<? super java.lang.Throwable, a3.o> lVar) {
        return N(t5, obj, lVar);
    }

    @Override // t3.n0
    public void a(java.lang.Object obj, java.lang.Throwable th) {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6198g;
        while (true) {
            java.lang.Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof t3.u1) {
                throw new java.lang.IllegalStateException("Not completed".toString());
            }
            if (obj2 instanceof t3.u) {
                return;
            }
            if (obj2 instanceof t3.t) {
                t3.t tVar = (t3.t) obj2;
                if (!(!tVar.c())) {
                    throw new java.lang.IllegalStateException("Must be called at most once".toString());
                }
                if (a4.n.a(f6198g, this, obj2, t3.t.b(tVar, null, null, null, null, th, 15, null))) {
                    tVar.d(this, th);
                    return;
                }
            } else if (a4.n.a(f6198g, this, obj2, new t3.t(obj2, null, null, null, th, 14, null))) {
                return;
            }
        }
    }

    @Override // d3.d
    public d3.g b() {
        return this.f6201e;
    }

    @Override // t3.n0
    public final d3.d<T> c() {
        return this.f6200d;
    }

    @Override // t3.c2
    public void d(y3.e0<?> e0Var, int i5) {
        int i6;
        java.util.concurrent.atomic.AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f6197f;
        do {
            i6 = atomicIntegerFieldUpdater.get(this);
            if (!((i6 & 536870911) == 536870911)) {
                throw new java.lang.IllegalStateException("invokeOnCancellation should be called at most once".toString());
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i6, ((i6 >> 29) << 29) + i5));
        y(e0Var);
    }

    @Override // t3.n0
    public java.lang.Throwable e(java.lang.Object obj) {
        java.lang.Throwable thE = super.e(obj);
        if (thE != null) {
            return thE;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // t3.n0
    public <T> T f(java.lang.Object obj) {
        return obj instanceof t3.t ? (T) ((t3.t) obj).f6238a : obj;
    }

    @Override // t3.n0
    public java.lang.Object h() {
        return u();
    }

    public final java.lang.Void i(java.lang.Object obj) {
        throw new java.lang.IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    public final void j(t3.h hVar, java.lang.Throwable th) {
        try {
            hVar.f(th);
        } catch (java.lang.Throwable th2) {
            t3.d0.a(b(), new t3.x("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void k(l3.l<? super java.lang.Throwable, a3.o> lVar, java.lang.Throwable th) {
        try {
            lVar.x(th);
        } catch (java.lang.Throwable th2) {
            t3.d0.a(b(), new t3.x("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    public final void l(y3.e0<?> e0Var, java.lang.Throwable th) {
        int i5 = f6197f.get(this) & 536870911;
        if (!(i5 != 536870911)) {
            throw new java.lang.IllegalStateException("The index for Segment.onCancellation(..) is broken".toString());
        }
        try {
            e0Var.o(i5, th, b());
        } catch (java.lang.Throwable th2) {
            t3.d0.a(b(), new t3.x("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public boolean m(java.lang.Throwable th) {
        java.lang.Object obj;
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6198g;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof t3.u1)) {
                return false;
            }
        } while (!a4.n.a(f6198g, this, obj, new t3.n(this, th, (obj instanceof t3.h) || (obj instanceof y3.e0))));
        t3.u1 u1Var = (t3.u1) obj;
        if (u1Var instanceof t3.h) {
            j((t3.h) obj, th);
        } else if (u1Var instanceof y3.e0) {
            l((y3.e0) obj, th);
        }
        p();
        q(this.f6208c);
        return true;
    }

    public final boolean n(java.lang.Throwable th) {
        if (!A()) {
            return false;
        }
        d3.d<T> dVar = this.f6200d;
        m3.k.c(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        return ((y3.j) dVar).n(th);
    }

    public final void o() {
        t3.r0 r0VarS = s();
        if (r0VarS == null) {
            return;
        }
        r0VarS.d();
        f6199h.set(this, t3.t1.f6246a);
    }

    public final void p() {
        if (A()) {
            return;
        }
        o();
    }

    public final void q(int i5) {
        if (M()) {
            return;
        }
        t3.o0.a(this, i5);
    }

    public java.lang.Throwable r(t3.h1 h1Var) {
        return h1Var.y();
    }

    public final t3.r0 s() {
        return (t3.r0) f6199h.get(this);
    }

    public final java.lang.Object t() throws java.lang.Throwable {
        t3.h1 h1Var;
        boolean zA = A();
        if (O()) {
            if (s() == null) {
                x();
            }
            if (zA) {
                G();
            }
            return e3.c.c();
        }
        if (zA) {
            G();
        }
        java.lang.Object objU = u();
        if (objU instanceof t3.u) {
            throw ((t3.u) objU).f6248a;
        }
        if (!t3.o0.b(this.f6208c) || (h1Var = (t3.h1) b().c(t3.h1.f6192m)) == null || h1Var.f()) {
            return f(objU);
        }
        java.util.concurrent.CancellationException cancellationExceptionY = h1Var.y();
        a(objU, cancellationExceptionY);
        throw cancellationExceptionY;
    }

    public java.lang.String toString() {
        return C() + '(' + t3.i0.c(this.f6200d) + "){" + v() + "}@" + t3.i0.b(this);
    }

    public final java.lang.Object u() {
        return f6198g.get(this);
    }

    public final java.lang.String v() {
        java.lang.Object objU = u();
        if (objU instanceof t3.u1) {
            return "Active";
        }
        return objU instanceof t3.n ? "Cancelled" : "Completed";
    }

    public void w() {
        t3.r0 r0VarX = x();
        if (r0VarX != null && z()) {
            r0VarX.d();
            f6199h.set(this, t3.t1.f6246a);
        }
    }

    public final t3.r0 x() {
        t3.h1 h1Var = (t3.h1) b().c(t3.h1.f6192m);
        if (h1Var == null) {
            return null;
        }
        t3.r0 r0VarD = t3.h1.a.d(h1Var, true, false, new t3.o(this), 2, null);
        a4.n.a(f6199h, this, null, r0VarD);
        return r0VarD;
    }

    public final void y(java.lang.Object obj) {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6198g;
        while (true) {
            java.lang.Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof t3.d)) {
                if (obj2 instanceof t3.h ? true : obj2 instanceof y3.e0) {
                    B(obj, obj2);
                } else {
                    boolean z4 = obj2 instanceof t3.u;
                    if (z4) {
                        t3.u uVar = (t3.u) obj2;
                        if (!uVar.b()) {
                            B(obj, obj2);
                        }
                        if (obj2 instanceof t3.n) {
                            if (!z4) {
                                uVar = null;
                            }
                            java.lang.Throwable th = uVar != null ? uVar.f6248a : null;
                            if (obj instanceof t3.h) {
                                j((t3.h) obj, th);
                                return;
                            } else {
                                m3.k.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                                l((y3.e0) obj, th);
                                return;
                            }
                        }
                        return;
                    }
                    if (obj2 instanceof t3.t) {
                        t3.t tVar = (t3.t) obj2;
                        if (tVar.f6239b != null) {
                            B(obj, obj2);
                        }
                        if (obj instanceof y3.e0) {
                            return;
                        }
                        m3.k.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                        t3.h hVar = (t3.h) obj;
                        if (tVar.c()) {
                            j(hVar, tVar.f6242e);
                            return;
                        } else {
                            if (a4.n.a(f6198g, this, obj2, t3.t.b(tVar, null, hVar, null, null, null, 29, null))) {
                                return;
                            }
                        }
                    } else {
                        if (obj instanceof y3.e0) {
                            return;
                        }
                        m3.k.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                        if (a4.n.a(f6198g, this, obj2, new t3.t(obj2, (t3.h) obj, null, null, null, 28, null))) {
                            return;
                        }
                    }
                }
            } else if (a4.n.a(f6198g, this, obj2, obj)) {
                return;
            }
        }
    }

    public boolean z() {
        return !(u() instanceof t3.u1);
    }
}
