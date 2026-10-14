package y3;

/* JADX INFO: compiled from: DispatchedContinuation.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class j<T> extends t3.n0<T> implements f3.e, d3.d<T> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6901h = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(y3.j.class, java.lang.Object.class, "_reusableCancellableContinuation");
    private volatile java.lang.Object _reusableCancellableContinuation;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final t3.b0 f6902d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final d3.d<T> f6903e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.lang.Object f6904f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.lang.Object f6905g;

    /* JADX WARN: Multi-variable type inference failed */
    public j(t3.b0 b0Var, d3.d<? super T> dVar) {
        super(-1);
        this.f6902d = b0Var;
        this.f6903e = dVar;
        this.f6904f = y3.k.f6907a;
        this.f6905g = y3.l0.b(b());
    }

    @Override // f3.e
    public f3.e D() {
        d3.d<T> dVar = this.f6903e;
        if (dVar instanceof f3.e) {
            return (f3.e) dVar;
        }
        return null;
    }

    @Override // d3.d
    public void F(java.lang.Object obj) {
        d3.g gVarB = this.f6903e.b();
        java.lang.Object objD = t3.y.d(obj, null, 1, null);
        if (this.f6902d.n(gVarB)) {
            this.f6904f = objD;
            this.f6208c = 0;
            this.f6902d.i(gVarB, this);
            return;
        }
        t3.t0 t0VarA = t3.y1.f6259a.a();
        if (t0VarA.Y()) {
            this.f6904f = objD;
            this.f6208c = 0;
            t0VarA.z(this);
            return;
        }
        t0VarA.K(true);
        try {
            d3.g gVarB2 = b();
            java.lang.Object objC = y3.l0.c(gVarB2, this.f6905g);
            try {
                this.f6903e.F(obj);
                a3.o oVar = a3.o.f122a;
                y3.l0.a(gVarB2, objC);
                while (t0VarA.b0()) {
                }
            } catch (java.lang.Throwable th) {
                y3.l0.a(gVarB2, objC);
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            try {
                g(th2, null);
            } finally {
                t0VarA.r(true);
            }
        }
    }

    @Override // t3.n0
    public void a(java.lang.Object obj, java.lang.Throwable th) {
        if (obj instanceof t3.v) {
            ((t3.v) obj).f6256b.x(th);
        }
    }

    @Override // d3.d
    public d3.g b() {
        return this.f6903e.b();
    }

    @Override // t3.n0
    public d3.d<T> c() {
        return this;
    }

    @Override // t3.n0
    public java.lang.Object h() {
        java.lang.Object obj = this.f6904f;
        this.f6904f = y3.k.f6907a;
        return obj;
    }

    public final void i() {
        while (f6901h.get(this) == y3.k.f6908b) {
        }
    }

    public final t3.k<T> j() {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6901h;
        while (true) {
            java.lang.Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                f6901h.set(this, y3.k.f6908b);
                return null;
            }
            if (obj instanceof t3.k) {
                if (a4.n.a(f6901h, this, obj, y3.k.f6908b)) {
                    return (t3.k) obj;
                }
            } else if (obj != y3.k.f6908b && !(obj instanceof java.lang.Throwable)) {
                throw new java.lang.IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
    }

    public final void k(d3.g gVar, T t5) {
        this.f6904f = t5;
        this.f6208c = 1;
        this.f6902d.l(gVar, this);
    }

    public final t3.k<?> l() {
        java.lang.Object obj = f6901h.get(this);
        if (obj instanceof t3.k) {
            return (t3.k) obj;
        }
        return null;
    }

    public final boolean m() {
        return f6901h.get(this) != null;
    }

    public final boolean n(java.lang.Throwable th) {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6901h;
        while (true) {
            java.lang.Object obj = atomicReferenceFieldUpdater.get(this);
            y3.h0 h0Var = y3.k.f6908b;
            if (m3.k.a(obj, h0Var)) {
                if (a4.n.a(f6901h, this, h0Var, th)) {
                    return true;
                }
            } else {
                if (obj instanceof java.lang.Throwable) {
                    return true;
                }
                if (a4.n.a(f6901h, this, obj, null)) {
                    return false;
                }
            }
        }
    }

    public final void o() {
        i();
        t3.k<?> kVarL = l();
        if (kVarL != null) {
            kVarL.o();
        }
    }

    public final java.lang.Throwable p(t3.j<?> jVar) {
        y3.h0 h0Var;
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6901h;
        do {
            java.lang.Object obj = atomicReferenceFieldUpdater.get(this);
            h0Var = y3.k.f6908b;
            if (obj != h0Var) {
                if (obj instanceof java.lang.Throwable) {
                    if (a4.n.a(f6901h, this, obj, null)) {
                        return (java.lang.Throwable) obj;
                    }
                    throw new java.lang.IllegalArgumentException("Failed requirement.".toString());
                }
                throw new java.lang.IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!a4.n.a(f6901h, this, h0Var, jVar));
        return null;
    }

    public java.lang.String toString() {
        return "DispatchedContinuation[" + this.f6902d + ", " + t3.i0.c(this.f6903e) + ']';
    }
}
