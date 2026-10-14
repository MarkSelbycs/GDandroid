package t3;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class o1 implements t3.h1, t3.r, t3.v1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6211a = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(t3.o1.class, java.lang.Object.class, "_state");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6212b = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(t3.o1.class, java.lang.Object.class, "_parentHandle");
    private volatile java.lang.Object _parentHandle;
    private volatile java.lang.Object _state;

    /* JADX INFO: compiled from: JobSupport.kt */
    public static final class a extends t3.n1 {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final t3.o1 f6213e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final t3.o1.b f6214f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final t3.q f6215g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final java.lang.Object f6216h;

        public a(t3.o1 o1Var, t3.o1.b bVar, t3.q qVar, java.lang.Object obj) {
            this.f6213e = o1Var;
            this.f6214f = bVar;
            this.f6215g = qVar;
            this.f6216h = obj;
        }

        @Override // l3.l
        public /* bridge */ /* synthetic */ a3.o x(java.lang.Throwable th) {
            z(th);
            return a3.o.f122a;
        }

        @Override // t3.w
        public void z(java.lang.Throwable th) {
            this.f6213e.K(this.f6214f, this.f6215g, this.f6216h);
        }
    }

    /* JADX INFO: compiled from: JobSupport.kt */
    public static final class b implements t3.d1 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final java.util.concurrent.atomic.AtomicIntegerFieldUpdater f6217b = java.util.concurrent.atomic.AtomicIntegerFieldUpdater.newUpdater(t3.o1.b.class, "_isCompleting");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6218c = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(t3.o1.b.class, java.lang.Object.class, "_rootCause");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6219d = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(t3.o1.b.class, java.lang.Object.class, "_exceptionsHolder");
        private volatile java.lang.Object _exceptionsHolder;
        private volatile int _isCompleting;
        private volatile java.lang.Object _rootCause;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final t3.s1 f6220a;

        public b(t3.s1 s1Var, boolean z4, java.lang.Throwable th) {
            this.f6220a = s1Var;
            this._isCompleting = z4 ? 1 : 0;
            this._rootCause = th;
        }

        public final void a(java.lang.Throwable th) {
            java.lang.Throwable thD = d();
            if (thD == null) {
                m(th);
                return;
            }
            if (th == thD) {
                return;
            }
            java.lang.Object objC = c();
            if (objC == null) {
                l(th);
                return;
            }
            if (objC instanceof java.lang.Throwable) {
                if (th == objC) {
                    return;
                }
                java.util.ArrayList<java.lang.Throwable> arrayListB = b();
                arrayListB.add(objC);
                arrayListB.add(th);
                l(arrayListB);
                return;
            }
            if (objC instanceof java.util.ArrayList) {
                ((java.util.ArrayList) objC).add(th);
                return;
            }
            throw new java.lang.IllegalStateException(("State is " + objC).toString());
        }

        public final java.util.ArrayList<java.lang.Throwable> b() {
            return new java.util.ArrayList<>(4);
        }

        public final java.lang.Object c() {
            return f6219d.get(this);
        }

        public final java.lang.Throwable d() {
            return (java.lang.Throwable) f6218c.get(this);
        }

        public final boolean e() {
            return d() != null;
        }

        @Override // t3.d1
        public boolean f() {
            return d() == null;
        }

        public final boolean g() {
            return f6217b.get(this) != 0;
        }

        public final boolean h() {
            return c() == t3.p1.f6228e;
        }

        @Override // t3.d1
        public t3.s1 i() {
            return this.f6220a;
        }

        public final java.util.List<java.lang.Throwable> j(java.lang.Throwable th) {
            java.util.ArrayList<java.lang.Throwable> arrayListB;
            java.lang.Object objC = c();
            if (objC == null) {
                arrayListB = b();
            } else if (objC instanceof java.lang.Throwable) {
                java.util.ArrayList<java.lang.Throwable> arrayListB2 = b();
                arrayListB2.add(objC);
                arrayListB = arrayListB2;
            } else {
                if (!(objC instanceof java.util.ArrayList)) {
                    throw new java.lang.IllegalStateException(("State is " + objC).toString());
                }
                arrayListB = (java.util.ArrayList) objC;
            }
            java.lang.Throwable thD = d();
            if (thD != null) {
                arrayListB.add(0, thD);
            }
            if (th != null && !m3.k.a(th, thD)) {
                arrayListB.add(th);
            }
            l(t3.p1.f6228e);
            return arrayListB;
        }

        public final void k(boolean z4) {
            f6217b.set(this, z4 ? 1 : 0);
        }

        public final void l(java.lang.Object obj) {
            f6219d.set(this, obj);
        }

        public final void m(java.lang.Throwable th) {
            f6218c.set(this, th);
        }

        public java.lang.String toString() {
            return "Finishing[cancelling=" + e() + ", completing=" + g() + ", rootCause=" + d() + ", exceptions=" + c() + ", list=" + i() + ']';
        }
    }

    /* JADX INFO: compiled from: LockFreeLinkedList.kt */
    public static final class c extends y3.s.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ t3.o1 f6221d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ java.lang.Object f6222e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(y3.s sVar, t3.o1 o1Var, java.lang.Object obj) {
            super(sVar);
            this.f6221d = o1Var;
            this.f6222e = obj;
        }

        @Override // y3.b
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public java.lang.Object d(y3.s sVar) {
            if (this.f6221d.a0() == this.f6222e) {
                return null;
            }
            return y3.r.a();
        }
    }

    public o1(boolean z4) {
        this._state = z4 ? t3.p1.f6230g : t3.p1.f6229f;
    }

    public static /* synthetic */ java.util.concurrent.CancellationException C0(t3.o1 o1Var, java.lang.Throwable th, java.lang.String str, int i5, java.lang.Object obj) {
        if (obj != null) {
            throw new java.lang.UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i5 & 1) != 0) {
            str = null;
        }
        return o1Var.B0(th, str);
    }

    public void A(java.lang.Throwable th) throws java.lang.Throwable {
        z(th);
    }

    public final java.lang.String A0(java.lang.Object obj) {
        if (!(obj instanceof t3.o1.b)) {
            if (obj instanceof t3.d1) {
                return ((t3.d1) obj).f() ? "Active" : "New";
            }
            return obj instanceof t3.u ? "Cancelled" : "Completed";
        }
        t3.o1.b bVar = (t3.o1.b) obj;
        if (bVar.e()) {
            return "Cancelling";
        }
        return bVar.g() ? "Completing" : "Active";
    }

    public final java.lang.Object B(java.lang.Object obj) {
        java.lang.Object objG0;
        do {
            java.lang.Object objA0 = a0();
            if (!(objA0 instanceof t3.d1) || ((objA0 instanceof t3.o1.b) && ((t3.o1.b) objA0).g())) {
                return t3.p1.f6224a;
            }
            objG0 = G0(objA0, new t3.u(L(obj), false, 2, null));
        } while (objG0 == t3.p1.f6226c);
        return objG0;
    }

    public final java.util.concurrent.CancellationException B0(java.lang.Throwable th, java.lang.String str) {
        java.util.concurrent.CancellationException i1Var = th instanceof java.util.concurrent.CancellationException ? (java.util.concurrent.CancellationException) th : null;
        if (i1Var == null) {
            if (str == null) {
                str = E();
            }
            i1Var = new t3.i1(str, th, this);
        }
        return i1Var;
    }

    public final boolean C(java.lang.Throwable th) {
        if (g0()) {
            return true;
        }
        boolean z4 = th instanceof java.util.concurrent.CancellationException;
        t3.p pVarZ = Z();
        if (pVarZ == null || pVarZ == t3.t1.f6246a) {
            return z4;
        }
        return pVarZ.g(th) || z4;
    }

    public final java.lang.String D0() {
        return o0() + '{' + A0(a0()) + '}';
    }

    public java.lang.String E() {
        return "Job was cancelled";
    }

    public final boolean E0(t3.d1 d1Var, java.lang.Object obj) throws java.lang.Throwable {
        if (!a4.n.a(f6211a, this, d1Var, t3.p1.g(obj))) {
            return false;
        }
        s0(null);
        t0(obj);
        J(d1Var, obj);
        return true;
    }

    public final boolean F0(t3.d1 d1Var, java.lang.Throwable th) throws java.lang.Throwable {
        t3.s1 s1VarY = Y(d1Var);
        if (s1VarY == null) {
            return false;
        }
        if (!a4.n.a(f6211a, this, d1Var, new t3.o1.b(s1VarY, false, th))) {
            return false;
        }
        q0(s1VarY, th);
        return true;
    }

    public boolean G(java.lang.Throwable th) {
        if (th instanceof java.util.concurrent.CancellationException) {
            return true;
        }
        return z(th) && S();
    }

    public final java.lang.Object G0(java.lang.Object obj, java.lang.Object obj2) {
        if (!(obj instanceof t3.d1)) {
            return t3.p1.f6224a;
        }
        if ((!(obj instanceof t3.s0) && !(obj instanceof t3.n1)) || (obj instanceof t3.q) || (obj2 instanceof t3.u)) {
            return H0((t3.d1) obj, obj2);
        }
        return E0((t3.d1) obj, obj2) ? obj2 : t3.p1.f6226c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.Object, t3.o1] */
    public final java.lang.Object H0(t3.d1 d1Var, java.lang.Object obj) throws java.lang.Throwable {
        t3.s1 s1VarY = Y(d1Var);
        if (s1VarY == null) {
            return t3.p1.f6226c;
        }
        t3.o1.b bVar = d1Var instanceof t3.o1.b ? (t3.o1.b) d1Var : null;
        if (bVar == null) {
            bVar = new t3.o1.b(s1VarY, false, null);
        }
        m3.q qVar = new m3.q();
        synchronized (bVar) {
            if (bVar.g()) {
                return t3.p1.f6224a;
            }
            bVar.k(true);
            if (bVar != d1Var && !a4.n.a(f6211a, this, d1Var, bVar)) {
                return t3.p1.f6226c;
            }
            boolean zE = bVar.e();
            t3.u uVar = obj instanceof t3.u ? (t3.u) obj : null;
            if (uVar != null) {
                bVar.a(uVar.f6248a);
            }
            ?? D = java.lang.Boolean.valueOf(zE ? false : true).booleanValue() ? bVar.d() : 0;
            qVar.f5194a = D;
            a3.o oVar = a3.o.f122a;
            if (D != 0) {
                q0(s1VarY, D);
            }
            t3.q qVarO = O(d1Var);
            return (qVarO == null || !I0(bVar, qVarO, obj)) ? N(bVar, obj) : t3.p1.f6225b;
        }
    }

    public final boolean I0(t3.o1.b bVar, t3.q qVar, java.lang.Object obj) {
        while (t3.h1.a.d(qVar.f6231e, false, false, new t3.o1.a(this, bVar, qVar, obj), 1, null) == t3.t1.f6246a) {
            qVar = p0(qVar);
            if (qVar == null) {
                return false;
            }
        }
        return true;
    }

    public final void J(t3.d1 d1Var, java.lang.Object obj) throws java.lang.Throwable {
        t3.p pVarZ = Z();
        if (pVarZ != null) {
            pVarZ.d();
            y0(t3.t1.f6246a);
        }
        t3.u uVar = obj instanceof t3.u ? (t3.u) obj : null;
        java.lang.Throwable th = uVar != null ? uVar.f6248a : null;
        if (!(d1Var instanceof t3.n1)) {
            t3.s1 s1VarI = d1Var.i();
            if (s1VarI != null) {
                r0(s1VarI, th);
                return;
            }
            return;
        }
        try {
            ((t3.n1) d1Var).z(th);
        } catch (java.lang.Throwable th2) {
            c0(new t3.x("Exception in completion handler " + d1Var + " for " + this, th2));
        }
    }

    public final void K(t3.o1.b bVar, t3.q qVar, java.lang.Object obj) {
        t3.q qVarP0 = p0(qVar);
        if (qVarP0 == null || !I0(bVar, qVarP0, obj)) {
            v(N(bVar, obj));
        }
    }

    public final java.lang.Throwable L(java.lang.Object obj) {
        if (obj == null ? true : obj instanceof java.lang.Throwable) {
            java.lang.Throwable th = (java.lang.Throwable) obj;
            return th == null ? new t3.i1(E(), null, this) : th;
        }
        m3.k.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((t3.v1) obj).q();
    }

    public final java.lang.Object N(t3.o1.b bVar, java.lang.Object obj) throws java.lang.Throwable {
        boolean zE;
        java.lang.Throwable thR;
        t3.u uVar = obj instanceof t3.u ? (t3.u) obj : null;
        java.lang.Throwable th = uVar != null ? uVar.f6248a : null;
        synchronized (bVar) {
            zE = bVar.e();
            java.util.List<java.lang.Throwable> listJ = bVar.j(th);
            thR = R(bVar, listJ);
            if (thR != null) {
                t(thR, listJ);
            }
        }
        if (thR != null && thR != th) {
            obj = new t3.u(thR, false, 2, null);
        }
        if (thR != null) {
            if (C(thR) || b0(thR)) {
                m3.k.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                ((t3.u) obj).b();
            }
        }
        if (!zE) {
            s0(thR);
        }
        t0(obj);
        a4.n.a(f6211a, this, bVar, t3.p1.g(obj));
        J(bVar, obj);
        return obj;
    }

    public final t3.q O(t3.d1 d1Var) {
        t3.q qVar = d1Var instanceof t3.q ? (t3.q) d1Var : null;
        if (qVar != null) {
            return qVar;
        }
        t3.s1 s1VarI = d1Var.i();
        if (s1VarI != null) {
            return p0(s1VarI);
        }
        return null;
    }

    @Override // t3.h1
    public final t3.r0 P(boolean z4, boolean z5, l3.l<? super java.lang.Throwable, a3.o> lVar) {
        t3.n1 n1VarN0 = n0(lVar, z4);
        while (true) {
            java.lang.Object objA0 = a0();
            if (objA0 instanceof t3.s0) {
                t3.s0 s0Var = (t3.s0) objA0;
                if (!s0Var.f()) {
                    v0(s0Var);
                } else if (a4.n.a(f6211a, this, objA0, n1VarN0)) {
                    return n1VarN0;
                }
            } else {
                java.lang.Throwable thD = null;
                if (!(objA0 instanceof t3.d1)) {
                    if (z5) {
                        t3.u uVar = objA0 instanceof t3.u ? (t3.u) objA0 : null;
                        lVar.x(uVar != null ? uVar.f6248a : null);
                    }
                    return t3.t1.f6246a;
                }
                t3.s1 s1VarI = ((t3.d1) objA0).i();
                if (s1VarI == null) {
                    m3.k.c(objA0, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    w0((t3.n1) objA0);
                } else {
                    t3.r0 r0Var = t3.t1.f6246a;
                    if (z4 && (objA0 instanceof t3.o1.b)) {
                        synchronized (objA0) {
                            thD = ((t3.o1.b) objA0).d();
                            if (thD == null || ((lVar instanceof t3.q) && !((t3.o1.b) objA0).g())) {
                                if (s(objA0, s1VarI, n1VarN0)) {
                                    if (thD == null) {
                                        return n1VarN0;
                                    }
                                    r0Var = n1VarN0;
                                }
                            }
                            a3.o oVar = a3.o.f122a;
                        }
                    }
                    if (thD != null) {
                        if (z5) {
                            lVar.x(thD);
                        }
                        return r0Var;
                    }
                    if (s(objA0, s1VarI, n1VarN0)) {
                        return n1VarN0;
                    }
                }
            }
        }
    }

    public final java.lang.Throwable Q(java.lang.Object obj) {
        t3.u uVar = obj instanceof t3.u ? (t3.u) obj : null;
        if (uVar != null) {
            return uVar.f6248a;
        }
        return null;
    }

    public final java.lang.Throwable R(t3.o1.b bVar, java.util.List<? extends java.lang.Throwable> list) {
        java.lang.Object obj = null;
        if (list.isEmpty()) {
            if (bVar.e()) {
                return new t3.i1(E(), null, this);
            }
            return null;
        }
        for (java.lang.Object obj2 : list) {
            if (!(((java.lang.Throwable) obj2) instanceof java.util.concurrent.CancellationException)) {
                obj = obj2;
                break;
            }
        }
        java.lang.Throwable th = (java.lang.Throwable) obj;
        return th != null ? th : list.get(0);
    }

    public boolean S() {
        return true;
    }

    public boolean W() {
        return false;
    }

    @Override // t3.h1
    public final t3.r0 X(l3.l<? super java.lang.Throwable, a3.o> lVar) {
        return P(false, true, lVar);
    }

    public final t3.s1 Y(t3.d1 d1Var) {
        t3.s1 s1VarI = d1Var.i();
        if (s1VarI != null) {
            return s1VarI;
        }
        if (d1Var instanceof t3.s0) {
            return new t3.s1();
        }
        if (d1Var instanceof t3.n1) {
            w0((t3.n1) d1Var);
            return null;
        }
        throw new java.lang.IllegalStateException(("State should have list: " + d1Var).toString());
    }

    public final t3.p Z() {
        return (t3.p) f6212b.get(this);
    }

    public final java.lang.Object a0() {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6211a;
        while (true) {
            java.lang.Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof y3.a0)) {
                return obj;
            }
            ((y3.a0) obj).a(this);
        }
    }

    public boolean b0(java.lang.Throwable th) {
        return false;
    }

    @Override // d3.g.b, d3.g
    public <E extends d3.g.b> E c(d3.g.c<E> cVar) {
        return (E) t3.h1.a.c(this, cVar);
    }

    public void c0(java.lang.Throwable th) throws java.lang.Throwable {
        throw th;
    }

    public final void d0(t3.h1 h1Var) {
        if (h1Var == null) {
            y0(t3.t1.f6246a);
            return;
        }
        h1Var.start();
        t3.p pVarH = h1Var.h(this);
        y0(pVarH);
        if (f0()) {
            pVarH.d();
            y0(t3.t1.f6246a);
        }
    }

    @Override // t3.h1
    public void e(java.util.concurrent.CancellationException cancellationException) throws java.lang.Throwable {
        if (cancellationException == null) {
            cancellationException = new t3.i1(E(), null, this);
        }
        A(cancellationException);
    }

    public final boolean e0() {
        java.lang.Object objA0 = a0();
        return (objA0 instanceof t3.u) || ((objA0 instanceof t3.o1.b) && ((t3.o1.b) objA0).e());
    }

    @Override // t3.h1
    public boolean f() {
        java.lang.Object objA0 = a0();
        return (objA0 instanceof t3.d1) && ((t3.d1) objA0).f();
    }

    public final boolean f0() {
        return !(a0() instanceof t3.d1);
    }

    public boolean g0() {
        return false;
    }

    @Override // d3.g.b
    public final d3.g.c<?> getKey() {
        return t3.h1.f6192m;
    }

    @Override // t3.h1
    public final t3.p h(t3.r rVar) {
        t3.r0 r0VarD = t3.h1.a.d(this, true, false, new t3.q(rVar), 2, null);
        m3.k.c(r0VarD, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle");
        return (t3.p) r0VarD;
    }

    @Override // t3.r
    public final void h0(t3.v1 v1Var) throws java.lang.Throwable {
        z(v1Var);
    }

    @Override // d3.g
    public d3.g j(d3.g.c<?> cVar) {
        return t3.h1.a.e(this, cVar);
    }

    public final java.lang.Object k0(java.lang.Object obj) throws java.lang.Throwable {
        java.lang.Throwable thL = null;
        while (true) {
            java.lang.Object objA0 = a0();
            if (objA0 instanceof t3.o1.b) {
                synchronized (objA0) {
                    if (((t3.o1.b) objA0).h()) {
                        return t3.p1.f6227d;
                    }
                    boolean zE = ((t3.o1.b) objA0).e();
                    if (obj != null || !zE) {
                        if (thL == null) {
                            thL = L(obj);
                        }
                        ((t3.o1.b) objA0).a(thL);
                    }
                    java.lang.Throwable thD = zE ^ true ? ((t3.o1.b) objA0).d() : null;
                    if (thD != null) {
                        q0(((t3.o1.b) objA0).i(), thD);
                    }
                    return t3.p1.f6224a;
                }
            }
            if (!(objA0 instanceof t3.d1)) {
                return t3.p1.f6227d;
            }
            if (thL == null) {
                thL = L(obj);
            }
            t3.d1 d1Var = (t3.d1) objA0;
            if (!d1Var.f()) {
                java.lang.Object objG0 = G0(objA0, new t3.u(thL, false, 2, null));
                if (objG0 == t3.p1.f6224a) {
                    throw new java.lang.IllegalStateException(("Cannot happen in " + objA0).toString());
                }
                if (objG0 != t3.p1.f6226c) {
                    return objG0;
                }
            } else if (F0(d1Var, thL)) {
                return t3.p1.f6224a;
            }
        }
    }

    public final java.lang.Object l0(java.lang.Object obj) {
        java.lang.Object objG0;
        do {
            objG0 = G0(a0(), obj);
            if (objG0 == t3.p1.f6224a) {
                throw new java.lang.IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, Q(obj));
            }
        } while (objG0 == t3.p1.f6226c);
        return objG0;
    }

    @Override // d3.g
    public <R> R m0(R r5, l3.p<? super R, ? super d3.g.b, ? extends R> pVar) {
        return (R) t3.h1.a.b(this, r5, pVar);
    }

    public final t3.n1 n0(l3.l<? super java.lang.Throwable, a3.o> lVar, boolean z4) {
        t3.n1 g1Var;
        if (z4) {
            g1Var = lVar instanceof t3.j1 ? (t3.j1) lVar : null;
            if (g1Var == null) {
                g1Var = new t3.f1(lVar);
            }
        } else {
            g1Var = lVar instanceof t3.n1 ? (t3.n1) lVar : null;
            if (g1Var == null) {
                g1Var = new t3.g1(lVar);
            }
        }
        g1Var.B(this);
        return g1Var;
    }

    public java.lang.String o0() {
        return t3.i0.a(this);
    }

    public final t3.q p0(y3.s sVar) {
        while (sVar.s()) {
            sVar = sVar.r();
        }
        while (true) {
            sVar = sVar.p();
            if (!sVar.s()) {
                if (sVar instanceof t3.q) {
                    return (t3.q) sVar;
                }
                if (sVar instanceof t3.s1) {
                    return null;
                }
            }
        }
    }

    @Override // t3.v1
    public java.util.concurrent.CancellationException q() {
        java.lang.Throwable thD;
        java.lang.Object objA0 = a0();
        if (objA0 instanceof t3.o1.b) {
            thD = ((t3.o1.b) objA0).d();
        } else if (objA0 instanceof t3.u) {
            thD = ((t3.u) objA0).f6248a;
        } else {
            if (objA0 instanceof t3.d1) {
                throw new java.lang.IllegalStateException(("Cannot be cancelling child in this state: " + objA0).toString());
            }
            thD = null;
        }
        java.util.concurrent.CancellationException cancellationException = thD instanceof java.util.concurrent.CancellationException ? (java.util.concurrent.CancellationException) thD : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        return new t3.i1("Parent job is " + A0(objA0), thD, this);
    }

    public final void q0(t3.s1 s1Var, java.lang.Throwable th) throws java.lang.Throwable {
        s0(th);
        java.lang.Object objO = s1Var.o();
        m3.k.c(objO, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        t3.x xVar = null;
        for (y3.s sVarP = (y3.s) objO; !m3.k.a(sVarP, s1Var); sVarP = sVarP.p()) {
            if (sVarP instanceof t3.j1) {
                t3.n1 n1Var = (t3.n1) sVarP;
                try {
                    n1Var.z(th);
                } catch (java.lang.Throwable th2) {
                    if (xVar != null) {
                        a3.a.a(xVar, th2);
                    } else {
                        xVar = new t3.x("Exception in completion handler " + n1Var + " for " + this, th2);
                        a3.o oVar = a3.o.f122a;
                    }
                }
            }
        }
        if (xVar != null) {
            c0(xVar);
        }
        C(th);
    }

    public final void r0(t3.s1 s1Var, java.lang.Throwable th) throws java.lang.Throwable {
        java.lang.Object objO = s1Var.o();
        m3.k.c(objO, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        t3.x xVar = null;
        for (y3.s sVarP = (y3.s) objO; !m3.k.a(sVarP, s1Var); sVarP = sVarP.p()) {
            if (sVarP instanceof t3.n1) {
                t3.n1 n1Var = (t3.n1) sVarP;
                try {
                    n1Var.z(th);
                } catch (java.lang.Throwable th2) {
                    if (xVar != null) {
                        a3.a.a(xVar, th2);
                    } else {
                        xVar = new t3.x("Exception in completion handler " + n1Var + " for " + this, th2);
                        a3.o oVar = a3.o.f122a;
                    }
                }
            }
        }
        if (xVar != null) {
            c0(xVar);
        }
    }

    public final boolean s(java.lang.Object obj, t3.s1 s1Var, t3.n1 n1Var) {
        int iY;
        t3.o1.c cVar = new t3.o1.c(n1Var, this, obj);
        do {
            iY = s1Var.r().y(n1Var, s1Var, cVar);
            if (iY == 1) {
                return true;
            }
        } while (iY != 2);
        return false;
    }

    public void s0(java.lang.Throwable th) {
    }

    @Override // t3.h1
    public final boolean start() {
        int iZ0;
        do {
            iZ0 = z0(a0());
            if (iZ0 == 0) {
                return false;
            }
        } while (iZ0 != 1);
        return true;
    }

    public final void t(java.lang.Throwable th, java.util.List<? extends java.lang.Throwable> list) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        if (list.size() <= 1) {
            return;
        }
        java.util.Set setNewSetFromMap = java.util.Collections.newSetFromMap(new java.util.IdentityHashMap(list.size()));
        for (java.lang.Throwable th2 : list) {
            if (th2 != th && th2 != th && !(th2 instanceof java.util.concurrent.CancellationException) && setNewSetFromMap.add(th2)) {
                a3.a.a(th, th2);
            }
        }
    }

    public void t0(java.lang.Object obj) {
    }

    public java.lang.String toString() {
        return D0() + '@' + t3.i0.b(this);
    }

    public void u0() {
    }

    public void v(java.lang.Object obj) {
    }

    public final void v0(t3.s0 s0Var) {
        t3.s1 s1Var = new t3.s1();
        java.lang.Object c1Var = s1Var;
        if (!s0Var.f()) {
            c1Var = new t3.c1(s1Var);
        }
        a4.n.a(f6211a, this, s0Var, c1Var);
    }

    public final boolean w(java.lang.Throwable th) {
        return z(th);
    }

    public final void w0(t3.n1 n1Var) {
        n1Var.k(new t3.s1());
        a4.n.a(f6211a, this, n1Var, n1Var.p());
    }

    @Override // d3.g
    public d3.g x(d3.g gVar) {
        return t3.h1.a.f(this, gVar);
    }

    public final void x0(t3.n1 n1Var) {
        java.lang.Object objA0;
        do {
            objA0 = a0();
            if (!(objA0 instanceof t3.n1)) {
                if (!(objA0 instanceof t3.d1) || ((t3.d1) objA0).i() == null) {
                    return;
                }
                n1Var.t();
                return;
            }
            if (objA0 != n1Var) {
                return;
            }
        } while (!a4.n.a(f6211a, this, objA0, t3.p1.f6230g));
    }

    @Override // t3.h1
    public final java.util.concurrent.CancellationException y() {
        java.lang.Object objA0 = a0();
        if (!(objA0 instanceof t3.o1.b)) {
            if (objA0 instanceof t3.d1) {
                throw new java.lang.IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (objA0 instanceof t3.u) {
                return C0(this, ((t3.u) objA0).f6248a, null, 1, null);
            }
            return new t3.i1(t3.i0.a(this) + " has completed normally", null, this);
        }
        java.lang.Throwable thD = ((t3.o1.b) objA0).d();
        if (thD != null) {
            java.util.concurrent.CancellationException cancellationExceptionB0 = B0(thD, t3.i0.a(this) + " is cancelling");
            if (cancellationExceptionB0 != null) {
                return cancellationExceptionB0;
            }
        }
        throw new java.lang.IllegalStateException(("Job is still new or active: " + this).toString());
    }

    public final void y0(t3.p pVar) {
        f6212b.set(this, pVar);
    }

    public final boolean z(java.lang.Object obj) throws java.lang.Throwable {
        java.lang.Object objK0 = t3.p1.f6224a;
        if (W() && (objK0 = B(obj)) == t3.p1.f6225b) {
            return true;
        }
        if (objK0 == t3.p1.f6224a) {
            objK0 = k0(obj);
        }
        if (objK0 == t3.p1.f6224a || objK0 == t3.p1.f6225b) {
            return true;
        }
        if (objK0 == t3.p1.f6227d) {
            return false;
        }
        v(objK0);
        return true;
    }

    public final int z0(java.lang.Object obj) {
        if (obj instanceof t3.s0) {
            if (((t3.s0) obj).f()) {
                return 0;
            }
            if (!a4.n.a(f6211a, this, obj, t3.p1.f6230g)) {
                return -1;
            }
            u0();
            return 1;
        }
        if (!(obj instanceof t3.c1)) {
            return 0;
        }
        if (!a4.n.a(f6211a, this, obj, ((t3.c1) obj).i())) {
            return -1;
        }
        u0();
        return 1;
    }
}
