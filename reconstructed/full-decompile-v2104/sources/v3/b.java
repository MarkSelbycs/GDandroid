package v3;

/* JADX INFO: compiled from: BufferedChannel.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b<E> implements v3.d<E> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicLongFieldUpdater f6548d = java.util.concurrent.atomic.AtomicLongFieldUpdater.newUpdater(v3.b.class, "sendersAndCloseStatus");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicLongFieldUpdater f6549e = java.util.concurrent.atomic.AtomicLongFieldUpdater.newUpdater(v3.b.class, "receivers");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicLongFieldUpdater f6550f = java.util.concurrent.atomic.AtomicLongFieldUpdater.newUpdater(v3.b.class, "bufferEnd");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicLongFieldUpdater f6551g = java.util.concurrent.atomic.AtomicLongFieldUpdater.newUpdater(v3.b.class, "completedExpandBuffersAndPauseFlag");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6552h = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(v3.b.class, java.lang.Object.class, "sendSegment");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6553i = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(v3.b.class, java.lang.Object.class, "receiveSegment");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6554o = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(v3.b.class, java.lang.Object.class, "bufferEndSegment");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6555p = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(v3.b.class, java.lang.Object.class, "_closeCause");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6556q = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(v3.b.class, java.lang.Object.class, "closeHandler");
    private volatile java.lang.Object _closeCause;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6557a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l3.l<E, a3.o> f6558b;
    private volatile long bufferEnd;
    private volatile java.lang.Object bufferEndSegment;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l3.q<b4.b<?>, java.lang.Object, java.lang.Object, l3.l<java.lang.Throwable, a3.o>> f6559c;
    private volatile java.lang.Object closeHandler;
    private volatile long completedExpandBuffersAndPauseFlag;
    private volatile java.lang.Object receiveSegment;
    private volatile long receivers;
    private volatile java.lang.Object sendSegment;
    private volatile long sendersAndCloseStatus;

    /* JADX INFO: compiled from: BufferedChannel.kt */
    public final class a implements v3.f<E>, t3.c2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.lang.Object f6560a = v3.c.f6594p;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public t3.k<? super java.lang.Boolean> f6561b;

        public a() {
        }

        @Override // v3.f
        public java.lang.Object a(d3.d<? super java.lang.Boolean> dVar) {
            v3.i<E> iVar;
            v3.b<E> bVar = v3.b.this;
            v3.i<E> iVar2 = (v3.i) v3.b.f6553i.get(bVar);
            while (!bVar.X()) {
                long andIncrement = v3.b.f6549e.getAndIncrement(bVar);
                int i5 = v3.c.f6580b;
                long j5 = andIncrement / ((long) i5);
                int i6 = (int) (andIncrement % ((long) i5));
                if (iVar2.f6893c != j5) {
                    v3.i<E> iVarJ = bVar.J(j5, iVar2);
                    if (iVarJ == null) {
                        continue;
                    } else {
                        iVar = iVarJ;
                    }
                } else {
                    iVar = iVar2;
                }
                java.lang.Object objC0 = bVar.C0(iVar, i6, andIncrement, null);
                if (objC0 == v3.c.f6591m) {
                    throw new java.lang.IllegalStateException("unreachable".toString());
                }
                if (objC0 != v3.c.f6593o) {
                    if (objC0 == v3.c.f6592n) {
                        return f(iVar, i6, andIncrement, dVar);
                    }
                    iVar.b();
                    this.f6560a = objC0;
                    return f3.b.a(true);
                }
                if (andIncrement < bVar.Q()) {
                    iVar.b();
                }
                iVar2 = iVar;
            }
            return f3.b.a(g());
        }

        @Override // t3.c2
        public void d(y3.e0<?> e0Var, int i5) {
            t3.k<? super java.lang.Boolean> kVar = this.f6561b;
            if (kVar != null) {
                kVar.d(e0Var, i5);
            }
        }

        public final java.lang.Object f(v3.i<E> iVar, int i5, long j5, d3.d<? super java.lang.Boolean> dVar) throws java.lang.Throwable {
            java.lang.Boolean boolA;
            v3.b<E> bVar = v3.b.this;
            t3.k kVarA = t3.m.a(e3.b.b(dVar));
            try {
                this.f6561b = kVarA;
                java.lang.Object objC0 = bVar.C0(iVar, i5, j5, this);
                if (objC0 != v3.c.f6591m) {
                    l3.l<java.lang.Throwable, a3.o> lVarA = null;
                    if (objC0 == v3.c.f6593o) {
                        if (j5 < bVar.Q()) {
                            iVar.b();
                        }
                        v3.i iVar2 = (v3.i) v3.b.f6553i.get(bVar);
                        while (true) {
                            if (bVar.X()) {
                                h();
                                break;
                            }
                            long andIncrement = v3.b.f6549e.getAndIncrement(bVar);
                            int i6 = v3.c.f6580b;
                            long j6 = andIncrement / ((long) i6);
                            int i7 = (int) (andIncrement % ((long) i6));
                            if (iVar2.f6893c != j6) {
                                v3.i iVarJ = bVar.J(j6, iVar2);
                                if (iVarJ != null) {
                                    iVar2 = iVarJ;
                                }
                            }
                            java.lang.Object objC1 = bVar.C0(iVar2, i7, andIncrement, this);
                            if (objC1 == v3.c.f6591m) {
                                bVar.n0(this, iVar2, i7);
                                break;
                            }
                            if (objC1 == v3.c.f6593o) {
                                if (andIncrement < bVar.Q()) {
                                    iVar2.b();
                                }
                            } else {
                                if (objC1 == v3.c.f6592n) {
                                    throw new java.lang.IllegalStateException("unexpected".toString());
                                }
                                iVar2.b();
                                this.f6560a = objC1;
                                this.f6561b = null;
                                boolA = f3.b.a(true);
                                l3.l<E, a3.o> lVar = bVar.f6558b;
                                if (lVar != null) {
                                    lVarA = y3.z.a(lVar, objC1, kVarA.b());
                                }
                            }
                        }
                    } else {
                        iVar.b();
                        this.f6560a = objC0;
                        this.f6561b = null;
                        boolA = f3.b.a(true);
                        l3.l<E, a3.o> lVar2 = bVar.f6558b;
                        if (lVar2 != null) {
                            lVarA = y3.z.a(lVar2, objC0, kVarA.b());
                        }
                    }
                    kVarA.I(boolA, lVarA);
                    break;
                }
                bVar.n0(this, iVar, i5);
                java.lang.Object objT = kVarA.t();
                if (objT == e3.c.c()) {
                    f3.h.c(dVar);
                }
                return objT;
            } catch (java.lang.Throwable th) {
                kVarA.G();
                throw th;
            }
        }

        public final boolean g() throws java.lang.Throwable {
            this.f6560a = v3.c.z();
            java.lang.Throwable thM = v3.b.this.M();
            if (thM == null) {
                return false;
            }
            throw y3.g0.a(thM);
        }

        public final void h() {
            t3.k<? super java.lang.Boolean> kVar = this.f6561b;
            m3.k.b(kVar);
            this.f6561b = null;
            this.f6560a = v3.c.z();
            java.lang.Throwable thM = v3.b.this.M();
            if (thM == null) {
                a3.i.a aVar = a3.i.f116a;
                kVar.F(a3.i.b(java.lang.Boolean.FALSE));
            } else {
                a3.i.a aVar2 = a3.i.f116a;
                kVar.F(a3.i.b(a3.j.a(thM)));
            }
        }

        public final boolean i(E e5) {
            t3.k<? super java.lang.Boolean> kVar = this.f6561b;
            m3.k.b(kVar);
            this.f6561b = null;
            this.f6560a = e5;
            java.lang.Boolean bool = java.lang.Boolean.TRUE;
            l3.l<E, a3.o> lVar = v3.b.this.f6558b;
            return v3.c.B(kVar, bool, lVar != null ? y3.z.a(lVar, e5, kVar.b()) : null);
        }

        public final void j() {
            t3.k<? super java.lang.Boolean> kVar = this.f6561b;
            m3.k.b(kVar);
            this.f6561b = null;
            this.f6560a = v3.c.z();
            java.lang.Throwable thM = v3.b.this.M();
            if (thM == null) {
                a3.i.a aVar = a3.i.f116a;
                kVar.F(a3.i.b(java.lang.Boolean.FALSE));
            } else {
                a3.i.a aVar2 = a3.i.f116a;
                kVar.F(a3.i.b(a3.j.a(thM)));
            }
        }

        @Override // v3.f
        public E next() throws java.lang.Throwable {
            E e5 = (E) this.f6560a;
            if (!(e5 != v3.c.f6594p)) {
                throw new java.lang.IllegalStateException("`hasNext()` has not been invoked".toString());
            }
            this.f6560a = v3.c.f6594p;
            if (e5 != v3.c.z()) {
                return e5;
            }
            throw y3.g0.a(v3.b.this.N());
        }
    }

    /* JADX INFO: renamed from: v3.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BufferedChannel.kt */
    public static final class C0094b implements t3.c2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final t3.j<java.lang.Boolean> f6563a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ t3.k<java.lang.Boolean> f6564b;

        public final t3.j<java.lang.Boolean> a() {
            return this.f6563a;
        }

        @Override // t3.c2
        public void d(y3.e0<?> e0Var, int i5) {
            this.f6564b.d(e0Var, i5);
        }
    }

    /* JADX INFO: compiled from: BufferedChannel.kt */
    public static final class c extends m3.l implements l3.q<b4.b<?>, java.lang.Object, java.lang.Object, l3.l<? super java.lang.Throwable, ? extends a3.o>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ v3.b<E> f6565b;

        /* JADX INFO: compiled from: BufferedChannel.kt */
        public static final class a extends m3.l implements l3.l<java.lang.Throwable, a3.o> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ java.lang.Object f6566b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ v3.b<E> f6567c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public final /* synthetic */ b4.b<?> f6568d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(java.lang.Object obj, v3.b<E> bVar, b4.b<?> bVar2) {
                super(1);
                this.f6566b = obj;
                this.f6567c = bVar;
                this.f6568d = bVar2;
            }

            public final void b(java.lang.Throwable th) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
                if (this.f6566b != v3.c.z()) {
                    y3.z.b(this.f6567c.f6558b, this.f6566b, this.f6568d.b());
                }
            }

            @Override // l3.l
            public /* bridge */ /* synthetic */ a3.o x(java.lang.Throwable th) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
                b(th);
                return a3.o.f122a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(v3.b<E> bVar) {
            super(3);
            this.f6565b = bVar;
        }

        @Override // l3.q
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final l3.l<java.lang.Throwable, a3.o> q(b4.b<?> bVar, java.lang.Object obj, java.lang.Object obj2) {
            return new v3.b.c.a(obj2, this.f6565b, bVar);
        }
    }

    /* JADX INFO: compiled from: BufferedChannel.kt */
    @f3.f(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", l = {739}, m = "receiveCatching-JP2dKIU$suspendImpl")
    public static final class d<E> extends f3.d {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public /* synthetic */ java.lang.Object f6569d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ v3.b<E> f6570e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f6571f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(v3.b<E> bVar, d3.d<? super v3.b.d> dVar) {
            super(dVar);
            this.f6570e = bVar;
        }

        @Override // f3.a
        public final java.lang.Object I(java.lang.Object obj) throws java.lang.Throwable {
            this.f6569d = obj;
            this.f6571f |= Integer.MIN_VALUE;
            java.lang.Object objP0 = v3.b.p0(this.f6570e, this);
            return objP0 == e3.c.c() ? objP0 : v3.h.b(objP0);
        }
    }

    /* JADX INFO: compiled from: BufferedChannel.kt */
    @f3.f(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", l = {3056}, m = "receiveCatchingOnNoWaiterSuspend-GKJJFZk")
    public static final class e extends f3.d {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public java.lang.Object f6572d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public java.lang.Object f6573e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f6574f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f6575g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public /* synthetic */ java.lang.Object f6576h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ v3.b<E> f6577i;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f6578o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(v3.b<E> bVar, d3.d<? super v3.b.e> dVar) {
            super(dVar);
            this.f6577i = bVar;
        }

        @Override // f3.a
        public final java.lang.Object I(java.lang.Object obj) throws java.lang.Throwable {
            this.f6576h = obj;
            this.f6578o |= Integer.MIN_VALUE;
            java.lang.Object objQ0 = this.f6577i.q0(null, 0, 0L, this);
            return objQ0 == e3.c.c() ? objQ0 : v3.h.b(objQ0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(int i5, l3.l<? super E, a3.o> lVar) {
        this.f6557a = i5;
        this.f6558b = lVar;
        if (!(i5 >= 0)) {
            throw new java.lang.IllegalArgumentException(("Invalid channel capacity: " + i5 + ", should be >=0").toString());
        }
        this.bufferEnd = v3.c.A(i5);
        this.completedExpandBuffersAndPauseFlag = L();
        v3.i iVar = new v3.i(0L, null, this, 3);
        this.sendSegment = iVar;
        this.receiveSegment = iVar;
        if (b0()) {
            iVar = v3.c.f6579a;
            m3.k.c(iVar, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
        }
        this.bufferEndSegment = iVar;
        this.f6559c = lVar != 0 ? new v3.b.c(this) : null;
        this._closeCause = v3.c.f6597s;
    }

    public static /* synthetic */ void T(v3.b bVar, long j5, int i5, java.lang.Object obj) {
        if (obj != null) {
            throw new java.lang.UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts");
        }
        if ((i5 & 1) != 0) {
            j5 = 1;
        }
        bVar.S(j5);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ <E> java.lang.Object p0(v3.b<E> bVar, d3.d<? super v3.h<? extends E>> dVar) throws java.lang.Throwable {
        v3.b.d dVar2;
        v3.i<E> iVar;
        if (dVar instanceof v3.b.d) {
            dVar2 = (v3.b.d) dVar;
            int i5 = dVar2.f6571f;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                dVar2.f6571f = i5 - Integer.MIN_VALUE;
            } else {
                dVar2 = new v3.b.d(bVar, dVar);
            }
        } else {
            dVar2 = new v3.b.d(bVar, dVar);
        }
        v3.b.d dVar3 = dVar2;
        java.lang.Object obj = dVar3.f6569d;
        java.lang.Object objC = e3.c.c();
        int i6 = dVar3.f6571f;
        if (i6 != 0) {
            if (i6 != 1) {
                throw new java.lang.IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            a3.j.b(obj);
            return ((v3.h) obj).k();
        }
        a3.j.b(obj);
        v3.i<E> iVar2 = (v3.i) f6553i.get(bVar);
        while (!bVar.X()) {
            long andIncrement = f6549e.getAndIncrement(bVar);
            int i7 = v3.c.f6580b;
            long j5 = andIncrement / ((long) i7);
            int i8 = (int) (andIncrement % ((long) i7));
            if (iVar2.f6893c != j5) {
                v3.i<E> iVarJ = bVar.J(j5, iVar2);
                if (iVarJ == null) {
                    continue;
                } else {
                    iVar = iVarJ;
                }
            } else {
                iVar = iVar2;
            }
            java.lang.Object objC0 = bVar.C0(iVar, i8, andIncrement, null);
            if (objC0 == v3.c.f6591m) {
                throw new java.lang.IllegalStateException("unexpected".toString());
            }
            if (objC0 != v3.c.f6593o) {
                if (objC0 != v3.c.f6592n) {
                    iVar.b();
                    return v3.h.f6603b.c(objC0);
                }
                dVar3.f6571f = 1;
                java.lang.Object objQ0 = bVar.q0(iVar, i8, andIncrement, dVar3);
                return objQ0 == objC ? objC : objQ0;
            }
            if (andIncrement < bVar.Q()) {
                iVar.b();
            }
            iVar2 = iVar;
        }
        return v3.h.f6603b.a(bVar.M());
    }

    public static /* synthetic */ <E> java.lang.Object v0(v3.b<E> bVar, E e5, d3.d<? super a3.o> dVar) throws java.lang.Throwable {
        v3.i<E> iVar = (v3.i) f6552h.get(bVar);
        while (true) {
            long andIncrement = f6548d.getAndIncrement(bVar);
            long j5 = 1152921504606846975L & andIncrement;
            boolean Z = bVar.Z(andIncrement);
            int i5 = v3.c.f6580b;
            long j6 = j5 / ((long) i5);
            int i6 = (int) (j5 % ((long) i5));
            if (iVar.f6893c != j6) {
                v3.i<E> iVarK = bVar.K(j6, iVar);
                if (iVarK != null) {
                    iVar = iVarK;
                } else if (Z) {
                    java.lang.Object objJ0 = bVar.j0(e5, dVar);
                    if (objJ0 != e3.c.c()) {
                        break;
                    }
                    return objJ0;
                }
            }
            int iE0 = bVar.E0(iVar, i6, e5, j5, null, Z);
            if (iE0 == 0) {
                iVar.b();
                break;
            }
            if (iE0 != 1) {
                if (iE0 == 2) {
                    if (!Z) {
                        break;
                    }
                    iVar.p();
                    java.lang.Object objJ1 = bVar.j0(e5, dVar);
                    if (objJ1 != e3.c.c()) {
                        break;
                    }
                    return objJ1;
                }
                if (iE0 == 3) {
                    java.lang.Object objW0 = bVar.w0(iVar, i6, e5, j5, dVar);
                    if (objW0 != e3.c.c()) {
                        break;
                    }
                    return objW0;
                }
                if (iE0 == 4) {
                    if (j5 < bVar.O()) {
                        iVar.b();
                    }
                    java.lang.Object objJ2 = bVar.j0(e5, dVar);
                    if (objJ2 != e3.c.c()) {
                        break;
                    }
                    return objJ2;
                }
                if (iE0 == 5) {
                    iVar.b();
                }
            } else {
                break;
            }
        }
        return a3.o.f122a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void A(v3.i<E> iVar, long j5) {
        java.lang.Object objB = y3.n.b(null, 1, null);
        loop0: while (iVar != null) {
            for (int i5 = v3.c.f6580b - 1; -1 < i5; i5--) {
                if ((iVar.f6893c * ((long) v3.c.f6580b)) + ((long) i5) < j5) {
                    break loop0;
                }
                while (true) {
                    java.lang.Object objW = iVar.w(i5);
                    if (objW != null && objW != v3.c.f6583e) {
                        if (!(objW instanceof v3.u)) {
                            if (!(objW instanceof t3.c2)) {
                                break;
                            }
                            if (iVar.r(i5, objW, v3.c.z())) {
                                objB = y3.n.c(objB, objW);
                                iVar.x(i5, true);
                                break;
                            }
                        } else {
                            if (iVar.r(i5, objW, v3.c.z())) {
                                objB = y3.n.c(objB, ((v3.u) objW).f6617a);
                                iVar.x(i5, true);
                                break;
                            }
                        }
                    } else {
                        if (iVar.r(i5, objW, v3.c.z())) {
                            iVar.p();
                            break;
                        }
                    }
                }
            }
            iVar = (v3.i) iVar.g();
        }
        if (objB != null) {
            if (!(objB instanceof java.util.ArrayList)) {
                s0((t3.c2) objB);
                return;
            }
            m3.k.c(objB, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
            java.util.ArrayList arrayList = (java.util.ArrayList) objB;
            for (int size = arrayList.size() - 1; -1 < size; size--) {
                s0((t3.c2) arrayList.get(size));
            }
        }
    }

    public final boolean A0(v3.i<E> iVar, int i5, long j5) {
        java.lang.Object objW = iVar.w(i5);
        if (!(objW instanceof t3.c2) || j5 < f6549e.get(this) || !iVar.r(i5, objW, v3.c.f6585g)) {
            return B0(iVar, i5, j5);
        }
        if (z0(objW, iVar, i5)) {
            iVar.A(i5, v3.c.f6582d);
            return true;
        }
        iVar.A(i5, v3.c.f6588j);
        iVar.x(i5, false);
        return false;
    }

    public final v3.i<E> B() {
        java.lang.Object obj = f6554o.get(this);
        v3.i iVar = (v3.i) f6552h.get(this);
        if (iVar.f6893c > ((v3.i) obj).f6893c) {
            obj = iVar;
        }
        v3.i iVar2 = (v3.i) f6553i.get(this);
        if (iVar2.f6893c > ((v3.i) obj).f6893c) {
            obj = iVar2;
        }
        return (v3.i) y3.d.b((y3.e) obj);
    }

    public final boolean B0(v3.i<E> iVar, int i5, long j5) {
        while (true) {
            java.lang.Object objW = iVar.w(i5);
            if (objW instanceof t3.c2) {
                if (j5 < f6549e.get(this)) {
                    if (iVar.r(i5, objW, new v3.u((t3.c2) objW))) {
                        return true;
                    }
                } else if (iVar.r(i5, objW, v3.c.f6585g)) {
                    if (z0(objW, iVar, i5)) {
                        iVar.A(i5, v3.c.f6582d);
                        return true;
                    }
                    iVar.A(i5, v3.c.f6588j);
                    iVar.x(i5, false);
                    return false;
                }
            } else {
                if (objW == v3.c.f6588j) {
                    return false;
                }
                if (objW == null) {
                    if (iVar.r(i5, objW, v3.c.f6583e)) {
                        return true;
                    }
                } else {
                    if (objW == v3.c.f6582d || objW == v3.c.f6586h || objW == v3.c.f6587i || objW == v3.c.f6589k || objW == v3.c.z()) {
                        return true;
                    }
                    if (objW != v3.c.f6584f) {
                        throw new java.lang.IllegalStateException(("Unexpected cell state: " + objW).toString());
                    }
                }
            }
        }
    }

    public boolean C(java.lang.Throwable th, boolean z4) {
        if (z4) {
            d0();
        }
        boolean zA = a4.n.a(f6555p, this, v3.c.f6597s, th);
        if (z4) {
            e0();
        } else {
            f0();
        }
        F();
        h0();
        if (zA) {
            U();
        }
        return zA;
    }

    public final java.lang.Object C0(v3.i<E> iVar, int i5, long j5, java.lang.Object obj) {
        java.lang.Object objW = iVar.w(i5);
        if (objW == null) {
            if (j5 >= (f6548d.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return v3.c.f6592n;
                }
                if (iVar.r(i5, objW, obj)) {
                    H();
                    return v3.c.f6591m;
                }
            }
        } else if (objW == v3.c.f6582d && iVar.r(i5, objW, v3.c.f6587i)) {
            H();
            return iVar.y(i5);
        }
        return D0(iVar, i5, j5, obj);
    }

    public final void D(long j5) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        r0(E(j5));
    }

    public final java.lang.Object D0(v3.i<E> iVar, int i5, long j5, java.lang.Object obj) {
        while (true) {
            java.lang.Object objW = iVar.w(i5);
            if (objW == null || objW == v3.c.f6583e) {
                if (j5 < (f6548d.get(this) & 1152921504606846975L)) {
                    if (iVar.r(i5, objW, v3.c.f6586h)) {
                        H();
                        return v3.c.f6593o;
                    }
                } else {
                    if (obj == null) {
                        return v3.c.f6592n;
                    }
                    if (iVar.r(i5, objW, obj)) {
                        H();
                        return v3.c.f6591m;
                    }
                }
            } else {
                if (objW != v3.c.f6582d) {
                    if (objW != v3.c.f6588j && objW != v3.c.f6586h) {
                        if (objW == v3.c.z()) {
                            H();
                            return v3.c.f6593o;
                        }
                        if (objW != v3.c.f6585g && iVar.r(i5, objW, v3.c.f6584f)) {
                            boolean z4 = objW instanceof v3.u;
                            if (z4) {
                                objW = ((v3.u) objW).f6617a;
                            }
                            if (z0(objW, iVar, i5)) {
                                iVar.A(i5, v3.c.f6587i);
                                H();
                                return iVar.y(i5);
                            }
                            iVar.A(i5, v3.c.f6588j);
                            iVar.x(i5, false);
                            if (z4) {
                                H();
                            }
                            return v3.c.f6593o;
                        }
                    }
                    return v3.c.f6593o;
                }
                if (iVar.r(i5, objW, v3.c.f6587i)) {
                    H();
                    return iVar.y(i5);
                }
            }
        }
    }

    public final v3.i<E> E(long j5) {
        v3.i<E> iVarB = B();
        if (a0()) {
            long jC0 = c0(iVarB);
            if (jC0 != -1) {
                G(jC0);
            }
        }
        A(iVarB, j5);
        return iVarB;
    }

    public final int E0(v3.i<E> iVar, int i5, E e5, long j5, java.lang.Object obj, boolean z4) {
        iVar.B(i5, e5);
        if (z4) {
            return F0(iVar, i5, e5, j5, obj, z4);
        }
        java.lang.Object objW = iVar.w(i5);
        if (objW == null) {
            if (y(j5)) {
                if (iVar.r(i5, null, v3.c.f6582d)) {
                    return 1;
                }
            } else {
                if (obj == null) {
                    return 3;
                }
                if (iVar.r(i5, null, obj)) {
                    return 2;
                }
            }
        } else if (objW instanceof t3.c2) {
            iVar.s(i5);
            if (y0(objW, e5)) {
                iVar.A(i5, v3.c.f6587i);
                l0();
                return 0;
            }
            if (iVar.t(i5, v3.c.f6589k) != v3.c.f6589k) {
                iVar.x(i5, true);
            }
            return 5;
        }
        return F0(iVar, i5, e5, j5, obj, z4);
    }

    public final void F() {
        l();
    }

    public final int F0(v3.i<E> iVar, int i5, E e5, long j5, java.lang.Object obj, boolean z4) {
        while (true) {
            java.lang.Object objW = iVar.w(i5);
            if (objW == null) {
                if (!y(j5) || z4) {
                    if (z4) {
                        if (iVar.r(i5, null, v3.c.f6588j)) {
                            iVar.x(i5, false);
                            return 4;
                        }
                    } else {
                        if (obj == null) {
                            return 3;
                        }
                        if (iVar.r(i5, null, obj)) {
                            return 2;
                        }
                    }
                } else if (iVar.r(i5, null, v3.c.f6582d)) {
                    return 1;
                }
            } else {
                if (objW != v3.c.f6583e) {
                    if (objW == v3.c.f6589k) {
                        iVar.s(i5);
                        return 5;
                    }
                    if (objW == v3.c.f6586h) {
                        iVar.s(i5);
                        return 5;
                    }
                    if (objW == v3.c.z()) {
                        iVar.s(i5);
                        F();
                        return 4;
                    }
                    iVar.s(i5);
                    if (objW instanceof v3.u) {
                        objW = ((v3.u) objW).f6617a;
                    }
                    if (y0(objW, e5)) {
                        iVar.A(i5, v3.c.f6587i);
                        l0();
                        return 0;
                    }
                    if (iVar.t(i5, v3.c.f6589k) != v3.c.f6589k) {
                        iVar.x(i5, true);
                    }
                    return 5;
                }
                if (iVar.r(i5, objW, v3.c.f6582d)) {
                    return 1;
                }
            }
        }
    }

    public final void G(long j5) {
        y3.q0 q0VarD;
        v3.i<E> iVar = (v3.i) f6553i.get(this);
        while (true) {
            java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater = f6549e;
            long j6 = atomicLongFieldUpdater.get(this);
            if (j5 < java.lang.Math.max(((long) this.f6557a) + j6, L())) {
                return;
            }
            if (atomicLongFieldUpdater.compareAndSet(this, j6, j6 + 1)) {
                int i5 = v3.c.f6580b;
                long j7 = j6 / ((long) i5);
                int i6 = (int) (j6 % ((long) i5));
                if (iVar.f6893c != j7) {
                    v3.i<E> iVarJ = J(j7, iVar);
                    if (iVarJ == null) {
                        continue;
                    } else {
                        iVar = iVarJ;
                    }
                }
                java.lang.Object objC0 = C0(iVar, i6, j6, null);
                if (objC0 != v3.c.f6593o) {
                    iVar.b();
                    l3.l<E, a3.o> lVar = this.f6558b;
                    if (lVar != null && (q0VarD = y3.z.d(lVar, objC0, null, 2, null)) != null) {
                        throw q0VarD;
                    }
                } else if (j6 < Q()) {
                    iVar.b();
                }
            }
        }
    }

    public final void G0(long j5) {
        long j6;
        java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater = f6549e;
        do {
            j6 = atomicLongFieldUpdater.get(this);
            if (j6 >= j5) {
                return;
            }
        } while (!f6549e.compareAndSet(this, j6, j5));
    }

    public final void H() {
        if (b0()) {
            return;
        }
        v3.i<E> iVar = (v3.i) f6554o.get(this);
        while (true) {
            long andIncrement = f6550f.getAndIncrement(this);
            int i5 = v3.c.f6580b;
            long j5 = andIncrement / ((long) i5);
            if (Q() <= andIncrement) {
                if (iVar.f6893c < j5 && iVar.e() != 0) {
                    g0(j5, iVar);
                }
                T(this, 0L, 1, null);
                return;
            }
            if (iVar.f6893c != j5) {
                v3.i<E> iVarI = I(j5, iVar, andIncrement);
                if (iVarI == null) {
                    continue;
                } else {
                    iVar = iVarI;
                }
            }
            if (A0(iVar, (int) (andIncrement % ((long) i5)), andIncrement)) {
                T(this, 0L, 1, null);
                return;
            }
            T(this, 0L, 1, null);
        }
    }

    public final void H0(long j5) {
        long j6;
        long j7;
        java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater = f6548d;
        do {
            j6 = atomicLongFieldUpdater.get(this);
            j7 = 1152921504606846975L & j6;
            if (j7 >= j5) {
                return;
            }
        } while (!f6548d.compareAndSet(this, j6, v3.c.w(j7, (int) (j6 >> 60))));
    }

    public final v3.i<E> I(long j5, v3.i<E> iVar, long j6) {
        java.lang.Object objC;
        boolean z4;
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6554o;
        l3.p pVar = (l3.p) v3.c.y();
        do {
            objC = y3.d.c(iVar, j5, pVar);
            if (!y3.f0.c(objC)) {
                y3.e0 e0VarB = y3.f0.b(objC);
                while (true) {
                    y3.e0 e0Var = (y3.e0) atomicReferenceFieldUpdater.get(this);
                    if (e0Var.f6893c < e0VarB.f6893c) {
                        if (!e0VarB.q()) {
                            z4 = false;
                            break;
                        }
                        if (a4.n.a(atomicReferenceFieldUpdater, this, e0Var, e0VarB)) {
                            if (e0Var.m()) {
                                e0Var.k();
                            }
                        } else if (e0VarB.m()) {
                            e0VarB.k();
                        }
                    }
                    z4 = true;
                    break;
                }
            } else {
                break;
            }
        } while (!z4);
        if (y3.f0.c(objC)) {
            F();
            g0(j5, iVar);
            T(this, 0L, 1, null);
            return null;
        }
        v3.i<E> iVar2 = (v3.i) y3.f0.b(objC);
        long j7 = iVar2.f6893c;
        if (j7 <= j5) {
            return iVar2;
        }
        int i5 = v3.c.f6580b;
        if (f6550f.compareAndSet(this, j6 + 1, ((long) i5) * j7)) {
            S((iVar2.f6893c * ((long) i5)) - j6);
            return null;
        }
        T(this, 0L, 1, null);
        return null;
    }

    public final void I0(long j5) {
        long j6;
        java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j7;
        if (b0()) {
            return;
        }
        while (L() <= j5) {
        }
        int i5 = v3.c.f6581c;
        for (int i6 = 0; i6 < i5; i6++) {
            long jL = L();
            if (jL == (4611686018427387903L & f6551g.get(this)) && jL == L()) {
                return;
            }
        }
        java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater2 = f6551g;
        do {
            j6 = atomicLongFieldUpdater2.get(this);
        } while (!atomicLongFieldUpdater2.compareAndSet(this, j6, v3.c.v(j6 & 4611686018427387903L, true)));
        while (true) {
            long jL2 = L();
            atomicLongFieldUpdater = f6551g;
            long j8 = atomicLongFieldUpdater.get(this);
            long j9 = j8 & 4611686018427387903L;
            boolean z4 = (4611686018427387904L & j8) != 0;
            if (jL2 == j9 && jL2 == L()) {
                break;
            } else if (!z4) {
                atomicLongFieldUpdater.compareAndSet(this, j8, v3.c.v(j9, true));
            }
        }
        do {
            j7 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j7, v3.c.v(j7 & 4611686018427387903L, false)));
    }

    public final v3.i<E> J(long j5, v3.i<E> iVar) {
        java.lang.Object objC;
        boolean z4;
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6553i;
        l3.p pVar = (l3.p) v3.c.y();
        do {
            objC = y3.d.c(iVar, j5, pVar);
            if (!y3.f0.c(objC)) {
                y3.e0 e0VarB = y3.f0.b(objC);
                while (true) {
                    y3.e0 e0Var = (y3.e0) atomicReferenceFieldUpdater.get(this);
                    z4 = true;
                    if (e0Var.f6893c >= e0VarB.f6893c) {
                        break;
                    }
                    if (!e0VarB.q()) {
                        z4 = false;
                        break;
                    }
                    if (a4.n.a(atomicReferenceFieldUpdater, this, e0Var, e0VarB)) {
                        if (!e0Var.m()) {
                            break;
                        }
                        e0Var.k();
                        break;
                    }
                    if (e0VarB.m()) {
                        e0VarB.k();
                    }
                }
            } else {
                break;
            }
        } while (!z4);
        if (y3.f0.c(objC)) {
            F();
            if (iVar.f6893c * ((long) v3.c.f6580b) >= Q()) {
                return null;
            }
            iVar.b();
            return null;
        }
        v3.i<E> iVar2 = (v3.i) y3.f0.b(objC);
        if (!b0() && j5 <= L() / ((long) v3.c.f6580b)) {
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f6554o;
            while (true) {
                y3.e0 e0Var2 = (y3.e0) atomicReferenceFieldUpdater2.get(this);
                if (e0Var2.f6893c >= iVar2.f6893c || !iVar2.q()) {
                    break;
                }
                if (a4.n.a(atomicReferenceFieldUpdater2, this, e0Var2, iVar2)) {
                    if (!e0Var2.m()) {
                        break;
                    }
                    e0Var2.k();
                    break;
                }
                if (iVar2.m()) {
                    iVar2.k();
                }
            }
        }
        long j6 = iVar2.f6893c;
        if (j6 <= j5) {
            return iVar2;
        }
        int i5 = v3.c.f6580b;
        G0(j6 * ((long) i5));
        if (iVar2.f6893c * ((long) i5) >= Q()) {
            return null;
        }
        iVar2.b();
        return null;
    }

    public final v3.i<E> K(long j5, v3.i<E> iVar) {
        java.lang.Object objC;
        boolean z4;
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6552h;
        l3.p pVar = (l3.p) v3.c.y();
        do {
            objC = y3.d.c(iVar, j5, pVar);
            if (!y3.f0.c(objC)) {
                y3.e0 e0VarB = y3.f0.b(objC);
                while (true) {
                    y3.e0 e0Var = (y3.e0) atomicReferenceFieldUpdater.get(this);
                    z4 = true;
                    if (e0Var.f6893c >= e0VarB.f6893c) {
                        break;
                    }
                    if (!e0VarB.q()) {
                        z4 = false;
                        break;
                    }
                    if (a4.n.a(atomicReferenceFieldUpdater, this, e0Var, e0VarB)) {
                        if (!e0Var.m()) {
                            break;
                        }
                        e0Var.k();
                        break;
                    }
                    if (e0VarB.m()) {
                        e0VarB.k();
                    }
                }
            } else {
                break;
            }
        } while (!z4);
        if (y3.f0.c(objC)) {
            F();
            if (iVar.f6893c * ((long) v3.c.f6580b) >= O()) {
                return null;
            }
            iVar.b();
            return null;
        }
        v3.i<E> iVar2 = (v3.i) y3.f0.b(objC);
        long j6 = iVar2.f6893c;
        if (j6 <= j5) {
            return iVar2;
        }
        int i5 = v3.c.f6580b;
        H0(j6 * ((long) i5));
        if (iVar2.f6893c * ((long) i5) >= O()) {
            return null;
        }
        iVar2.b();
        return null;
    }

    public final long L() {
        return f6550f.get(this);
    }

    public final java.lang.Throwable M() {
        return (java.lang.Throwable) f6555p.get(this);
    }

    public final java.lang.Throwable N() {
        java.lang.Throwable thM = M();
        return thM == null ? new v3.l("Channel was closed") : thM;
    }

    public final long O() {
        return f6549e.get(this);
    }

    public final java.lang.Throwable P() {
        java.lang.Throwable thM = M();
        return thM == null ? new v3.m("Channel was closed") : thM;
    }

    public final long Q() {
        return f6548d.get(this) & 1152921504606846975L;
    }

    public final boolean R() {
        while (true) {
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6553i;
            v3.i<E> iVarJ = (v3.i) atomicReferenceFieldUpdater.get(this);
            long jO = O();
            if (Q() <= jO) {
                return false;
            }
            int i5 = v3.c.f6580b;
            long j5 = jO / ((long) i5);
            if (iVarJ.f6893c == j5 || (iVarJ = J(j5, iVarJ)) != null) {
                iVarJ.b();
                if (V(iVarJ, (int) (jO % ((long) i5)), jO)) {
                    return true;
                }
                f6549e.compareAndSet(this, jO, jO + 1);
            } else if (((v3.i) atomicReferenceFieldUpdater.get(this)).f6893c < j5) {
                return false;
            }
        }
    }

    public final void S(long j5) {
        if ((f6551g.addAndGet(this, j5) & 4611686018427387904L) != 0) {
            do {
            } while ((f6551g.get(this) & 4611686018427387904L) != 0);
        }
    }

    public final void U() {
        java.lang.Object obj;
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6556q;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
        } while (!a4.n.a(atomicReferenceFieldUpdater, this, obj, obj == null ? v3.c.f6595q : v3.c.f6596r));
        if (obj == null) {
            return;
        }
        ((l3.l) obj).x(M());
    }

    public final boolean V(v3.i<E> iVar, int i5, long j5) {
        java.lang.Object objW;
        do {
            objW = iVar.w(i5);
            if (objW != null && objW != v3.c.f6583e) {
                if (objW == v3.c.f6582d) {
                    return true;
                }
                if (objW == v3.c.f6588j || objW == v3.c.z() || objW == v3.c.f6587i || objW == v3.c.f6586h) {
                    return false;
                }
                if (objW == v3.c.f6585g) {
                    return true;
                }
                return objW != v3.c.f6584f && j5 == O();
            }
        } while (!iVar.r(i5, objW, v3.c.f6586h));
        H();
        return false;
    }

    public final boolean W(long j5, boolean z4) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        int i5 = (int) (j5 >> 60);
        if (i5 == 0 || i5 == 1) {
            return false;
        }
        if (i5 == 2) {
            E(j5 & 1152921504606846975L);
            if (z4 && R()) {
                return false;
            }
        } else {
            if (i5 != 3) {
                throw new java.lang.IllegalStateException(("unexpected close status: " + i5).toString());
            }
            D(j5 & 1152921504606846975L);
        }
        return true;
    }

    public boolean X() {
        return Y(f6548d.get(this));
    }

    public final boolean Y(long j5) {
        return W(j5, true);
    }

    public final boolean Z(long j5) {
        return W(j5, false);
    }

    @Override // v3.s
    public java.lang.Object a(d3.d<? super v3.h<? extends E>> dVar) {
        return p0(this, dVar);
    }

    public boolean a0() {
        return false;
    }

    public final boolean b0() {
        long jL = L();
        return jL == 0 || jL == Long.MAX_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long c0(v3.i<E> iVar) {
        do {
            int i5 = v3.c.f6580b;
            while (true) {
                i5--;
                if (-1 < i5) {
                    long j5 = (iVar.f6893c * ((long) v3.c.f6580b)) + ((long) i5);
                    if (j5 >= O()) {
                        while (true) {
                            java.lang.Object objW = iVar.w(i5);
                            if (objW != null && objW != v3.c.f6583e) {
                                if (objW != v3.c.f6582d) {
                                    break;
                                }
                                return j5;
                            }
                            if (iVar.r(i5, objW, v3.c.z())) {
                                iVar.p();
                                break;
                            }
                        }
                    } else {
                        return -1L;
                    }
                }
            }
            iVar = (v3.i) iVar.g();
        } while (iVar != null);
        return -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // v3.s
    public java.lang.Object d() {
        v3.i iVar;
        long j5 = f6549e.get(this);
        long j6 = f6548d.get(this);
        if (Y(j6)) {
            return v3.h.f6603b.a(M());
        }
        if (j5 >= (j6 & 1152921504606846975L)) {
            return v3.h.f6603b.b();
        }
        java.lang.Object obj = v3.c.f6589k;
        v3.i iVar2 = (v3.i) f6553i.get(this);
        while (!X()) {
            long andIncrement = f6549e.getAndIncrement(this);
            int i5 = v3.c.f6580b;
            long j7 = andIncrement / ((long) i5);
            int i6 = (int) (andIncrement % ((long) i5));
            if (iVar2.f6893c != j7) {
                v3.i iVarJ = J(j7, iVar2);
                if (iVarJ == null) {
                    continue;
                } else {
                    iVar = iVarJ;
                }
            } else {
                iVar = iVar2;
            }
            java.lang.Object objC0 = C0(iVar, i6, andIncrement, obj);
            if (objC0 == v3.c.f6591m) {
                t3.c2 c2Var = obj instanceof t3.c2 ? (t3.c2) obj : null;
                if (c2Var != null) {
                    n0(c2Var, iVar, i6);
                }
                I0(andIncrement);
                iVar.p();
                return v3.h.f6603b.b();
            }
            if (objC0 != v3.c.f6593o) {
                if (objC0 == v3.c.f6592n) {
                    throw new java.lang.IllegalStateException("unexpected".toString());
                }
                iVar.b();
                return v3.h.f6603b.c(objC0);
            }
            if (andIncrement < Q()) {
                iVar.b();
            }
            iVar2 = iVar;
        }
        return v3.h.f6603b.a(M());
    }

    public final void d0() {
        long j5;
        java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater = f6548d;
        do {
            j5 = atomicLongFieldUpdater.get(this);
            if (((int) (j5 >> 60)) != 0) {
                return;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j5, v3.c.w(1152921504606846975L & j5, 1)));
    }

    @Override // v3.s
    public final void e(java.util.concurrent.CancellationException cancellationException) {
        z(cancellationException);
    }

    public final void e0() {
        long j5;
        java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater = f6548d;
        do {
            j5 = atomicLongFieldUpdater.get(this);
        } while (!atomicLongFieldUpdater.compareAndSet(this, j5, v3.c.w(1152921504606846975L & j5, 3)));
    }

    public final void f0() {
        long j5;
        long jW;
        java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater = f6548d;
        do {
            j5 = atomicLongFieldUpdater.get(this);
            int i5 = (int) (j5 >> 60);
            if (i5 == 0) {
                jW = v3.c.w(j5 & 1152921504606846975L, 2);
            } else if (i5 != 1) {
                return;
            } else {
                jW = v3.c.w(j5 & 1152921504606846975L, 3);
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j5, jW));
    }

    @Override // v3.t
    public boolean g(java.lang.Throwable th) {
        return C(th, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void g0(long j5, v3.i<E> iVar) {
        boolean z4;
        v3.i<E> iVar2;
        v3.i<E> iVar3;
        while (iVar.f6893c < j5 && (iVar3 = (v3.i) iVar.e()) != null) {
            iVar = iVar3;
        }
        while (true) {
            if (!iVar.h() || (iVar2 = (v3.i) iVar.e()) == null) {
                java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6554o;
                while (true) {
                    y3.e0 e0Var = (y3.e0) atomicReferenceFieldUpdater.get(this);
                    z4 = true;
                    if (e0Var.f6893c >= iVar.f6893c) {
                        break;
                    }
                    if (!iVar.q()) {
                        z4 = false;
                        break;
                    } else if (a4.n.a(atomicReferenceFieldUpdater, this, e0Var, iVar)) {
                        if (!e0Var.m()) {
                            break;
                        }
                        e0Var.k();
                        break;
                    } else if (iVar.m()) {
                        iVar.k();
                    }
                }
                if (z4) {
                    return;
                }
            } else {
                iVar = iVar2;
            }
        }
    }

    public void h0() {
    }

    @Override // v3.t
    public java.lang.Object i(E e5) {
        v3.i iVar;
        if (x0(f6548d.get(this))) {
            return v3.h.f6603b.b();
        }
        java.lang.Object obj = v3.c.f6588j;
        v3.i iVar2 = (v3.i) f6552h.get(this);
        while (true) {
            long andIncrement = f6548d.getAndIncrement(this);
            long j5 = andIncrement & 1152921504606846975L;
            boolean Z = Z(andIncrement);
            int i5 = v3.c.f6580b;
            long j6 = j5 / ((long) i5);
            int i6 = (int) (j5 % ((long) i5));
            if (iVar2.f6893c != j6) {
                v3.i iVarK = K(j6, iVar2);
                if (iVarK != null) {
                    iVar = iVarK;
                } else if (Z) {
                    break;
                }
            } else {
                iVar = iVar2;
            }
            int iE0 = E0(iVar, i6, e5, j5, obj, Z);
            if (iE0 == 0) {
                iVar.b();
            } else if (iE0 != 1) {
                if (iE0 == 2) {
                    if (Z) {
                        iVar.p();
                        break;
                    }
                    t3.c2 c2Var = obj instanceof t3.c2 ? (t3.c2) obj : null;
                    if (c2Var != null) {
                        o0(c2Var, iVar, i6);
                    }
                    iVar.p();
                    return v3.h.f6603b.b();
                }
                if (iE0 == 3) {
                    throw new java.lang.IllegalStateException("unexpected".toString());
                }
                if (iE0 == 4) {
                    if (j5 >= O()) {
                        break;
                    }
                    iVar.b();
                    break;
                }
                if (iE0 == 5) {
                    iVar.b();
                }
                iVar2 = iVar;
            }
            return v3.h.f6603b.c(a3.o.f122a);
        }
        return v3.h.f6603b.a(P());
    }

    public final void i0(t3.j<? super v3.h<? extends E>> jVar) {
        a3.i.a aVar = a3.i.f116a;
        jVar.F(a3.i.b(v3.h.b(v3.h.f6603b.a(M()))));
    }

    @Override // v3.s
    public v3.f<E> iterator() {
        return new v3.b.a();
    }

    public final java.lang.Object j0(E e5, d3.d<? super a3.o> dVar) throws java.lang.Throwable {
        y3.q0 q0VarD;
        t3.k kVar = new t3.k(e3.b.b(dVar), 1);
        kVar.w();
        l3.l<E, a3.o> lVar = this.f6558b;
        if (lVar == null || (q0VarD = y3.z.d(lVar, e5, null, 2, null)) == null) {
            java.lang.Throwable thP = P();
            a3.i.a aVar = a3.i.f116a;
            kVar.F(a3.i.b(a3.j.a(thP)));
        } else {
            a3.a.a(q0VarD, P());
            a3.i.a aVar2 = a3.i.f116a;
            kVar.F(a3.i.b(a3.j.a(q0VarD)));
        }
        java.lang.Object objT = kVar.t();
        if (objT == e3.c.c()) {
            f3.h.c(dVar);
        }
        return objT == e3.c.c() ? objT : a3.o.f122a;
    }

    public final void k0(E e5, t3.j<? super a3.o> jVar) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        l3.l<E, a3.o> lVar = this.f6558b;
        if (lVar != null) {
            y3.z.b(lVar, e5, jVar.b());
        }
        java.lang.Throwable thP = P();
        a3.i.a aVar = a3.i.f116a;
        jVar.F(a3.i.b(a3.j.a(thP)));
    }

    @Override // v3.t
    public boolean l() {
        return Z(f6548d.get(this));
    }

    public void l0() {
    }

    public void m0() {
    }

    @Override // v3.t
    public void n(l3.l<? super java.lang.Throwable, a3.o> lVar) {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6556q;
        if (a4.n.a(atomicReferenceFieldUpdater, this, null, lVar)) {
            return;
        }
        do {
            java.lang.Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != v3.c.f6595q) {
                if (obj == v3.c.f6596r) {
                    throw new java.lang.IllegalStateException("Another handler was already registered and successfully invoked".toString());
                }
                throw new java.lang.IllegalStateException(("Another handler is already registered: " + obj).toString());
            }
        } while (!a4.n.a(f6556q, this, v3.c.f6595q, v3.c.f6596r));
        lVar.x(M());
    }

    public final void n0(t3.c2 c2Var, v3.i<E> iVar, int i5) {
        m0();
        c2Var.d(iVar, i5);
    }

    @Override // v3.t
    public java.lang.Object o(E e5, d3.d<? super a3.o> dVar) {
        return v0(this, e5, dVar);
    }

    public final void o0(t3.c2 c2Var, v3.i<E> iVar, int i5) {
        c2Var.d(iVar, i5 + v3.c.f6580b);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final java.lang.Object q0(v3.i<E> iVar, int i5, long j5, d3.d<? super v3.h<? extends E>> dVar) throws java.lang.Throwable {
        v3.b.e eVar;
        v3.h hVarB;
        if (dVar instanceof v3.b.e) {
            eVar = (v3.b.e) dVar;
            int i6 = eVar.f6578o;
            if ((i6 & Integer.MIN_VALUE) != 0) {
                eVar.f6578o = i6 - Integer.MIN_VALUE;
            } else {
                eVar = new v3.b.e(this, dVar);
            }
        } else {
            eVar = new v3.b.e(this, dVar);
        }
        java.lang.Object objT = eVar.f6576h;
        java.lang.Object objC = e3.c.c();
        int i7 = eVar.f6578o;
        if (i7 == 0) {
            a3.j.b(objT);
            eVar.f6572d = this;
            eVar.f6573e = iVar;
            eVar.f6574f = i5;
            eVar.f6575g = j5;
            eVar.f6578o = 1;
            t3.k kVarA = t3.m.a(e3.b.b(eVar));
            try {
                m3.k.c(kVarA, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlinx.coroutines.channels.ChannelResult<E of kotlinx.coroutines.channels.BufferedChannel.receiveCatchingOnNoWaiterSuspend_GKJJFZk$lambda$35>>");
                v3.r rVar = new v3.r(kVarA);
                java.lang.Object objC0 = C0(iVar, i5, j5, rVar);
                if (objC0 != v3.c.f6591m) {
                    l3.l<java.lang.Throwable, a3.o> lVarA = null;
                    if (objC0 == v3.c.f6593o) {
                        if (j5 < Q()) {
                            iVar.b();
                        }
                        v3.i iVar2 = (v3.i) f6553i.get(this);
                        while (true) {
                            if (X()) {
                                i0(kVarA);
                                break;
                            }
                            long andIncrement = f6549e.getAndIncrement(this);
                            int i8 = v3.c.f6580b;
                            long j6 = andIncrement / ((long) i8);
                            int i9 = (int) (andIncrement % ((long) i8));
                            if (iVar2.f6893c != j6) {
                                v3.i iVarJ = J(j6, iVar2);
                                if (iVarJ != null) {
                                    iVar2 = iVarJ;
                                }
                            }
                            java.lang.Object objC1 = C0(iVar2, i9, andIncrement, rVar);
                            if (objC1 == v3.c.f6591m) {
                                n0(rVar, iVar2, i9);
                                break;
                            }
                            if (objC1 == v3.c.f6593o) {
                                if (andIncrement < Q()) {
                                    iVar2.b();
                                }
                            } else {
                                if (objC1 == v3.c.f6592n) {
                                    throw new java.lang.IllegalStateException("unexpected".toString());
                                }
                                iVar2.b();
                                hVarB = v3.h.b(v3.h.f6603b.c(objC1));
                                l3.l<E, a3.o> lVar = this.f6558b;
                                if (lVar != null) {
                                    lVarA = y3.z.a(lVar, objC1, kVarA.b());
                                }
                            }
                        }
                    } else {
                        iVar.b();
                        hVarB = v3.h.b(v3.h.f6603b.c(objC0));
                        l3.l<E, a3.o> lVar2 = this.f6558b;
                        if (lVar2 != null) {
                            lVarA = y3.z.a(lVar2, objC0, kVarA.b());
                        }
                    }
                    kVarA.I(hVarB, lVarA);
                    break;
                }
                n0(rVar, iVar, i5);
                objT = kVarA.t();
                if (objT == e3.c.c()) {
                    f3.h.c(eVar);
                }
                if (objT == objC) {
                    return objC;
                }
            } catch (java.lang.Throwable th) {
                kVarA.G();
                throw th;
            }
        } else {
            if (i7 != 1) {
                throw new java.lang.IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            a3.j.b(objT);
        }
        return ((v3.h) objT).k();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void r0(v3.i<E> iVar) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        l3.l<E, a3.o> lVar = this.f6558b;
        y3.q0 q0VarC = null;
        java.lang.Object objB = y3.n.b(null, 1, null);
        loop0: do {
            for (int i5 = v3.c.f6580b - 1; -1 < i5; i5--) {
                long j5 = (iVar.f6893c * ((long) v3.c.f6580b)) + ((long) i5);
                while (true) {
                    java.lang.Object objW = iVar.w(i5);
                    if (objW == v3.c.f6587i) {
                        break loop0;
                    }
                    if (objW != v3.c.f6582d) {
                        if (objW != v3.c.f6583e && objW != null) {
                            if (!(objW instanceof t3.c2) && !(objW instanceof v3.u)) {
                                if (objW != v3.c.f6585g && objW != v3.c.f6584f) {
                                    if (objW != v3.c.f6585g) {
                                        break;
                                    }
                                } else {
                                    break loop0;
                                }
                            } else {
                                if (j5 < O()) {
                                    break loop0;
                                }
                                t3.c2 c2Var = objW instanceof v3.u ? ((v3.u) objW).f6617a : (t3.c2) objW;
                                if (iVar.r(i5, objW, v3.c.z())) {
                                    if (lVar != null) {
                                        q0VarC = y3.z.c(lVar, iVar.v(i5), q0VarC);
                                    }
                                    objB = y3.n.c(objB, c2Var);
                                    iVar.s(i5);
                                    iVar.p();
                                    break;
                                }
                            }
                        } else {
                            if (iVar.r(i5, objW, v3.c.z())) {
                                iVar.p();
                                break;
                            }
                        }
                    } else {
                        if (j5 < O()) {
                            break loop0;
                        }
                        if (iVar.r(i5, objW, v3.c.z())) {
                            if (lVar != null) {
                                q0VarC = y3.z.c(lVar, iVar.v(i5), q0VarC);
                            }
                            iVar.s(i5);
                            iVar.p();
                            break;
                        }
                    }
                }
            }
            iVar = (v3.i) iVar.g();
        } while (iVar != null);
        if (objB != null) {
            if (objB instanceof java.util.ArrayList) {
                m3.k.c(objB, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
                java.util.ArrayList arrayList = (java.util.ArrayList) objB;
                for (int size = arrayList.size() - 1; -1 < size; size--) {
                    t0((t3.c2) arrayList.get(size));
                }
            } else {
                t0((t3.c2) objB);
            }
        }
        if (q0VarC != null) {
            throw q0VarC;
        }
    }

    public final void s0(t3.c2 c2Var) {
        u0(c2Var, true);
    }

    public final void t0(t3.c2 c2Var) {
        u0(c2Var, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public java.lang.String toString() {
        java.lang.String string;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        int i5 = (int) (f6548d.get(this) >> 60);
        if (i5 == 2) {
            sb.append("closed,");
        } else if (i5 == 3) {
            sb.append("cancelled,");
        }
        sb.append("capacity=" + this.f6557a + ',');
        sb.append("data=[");
        int i6 = 0;
        java.util.List listG = b3.o.g(f6553i.get(this), f6552h.get(this), f6554o.get(this));
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.Object obj : listG) {
            if (((v3.i) obj) != v3.c.f6579a) {
                arrayList.add(obj);
            }
        }
        java.util.Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            throw new java.util.NoSuchElementException();
        }
        java.lang.Object next = it.next();
        if (it.hasNext()) {
            long j5 = ((v3.i) next).f6893c;
            do {
                java.lang.Object next2 = it.next();
                long j6 = ((v3.i) next2).f6893c;
                if (j5 > j6) {
                    next = next2;
                    j5 = j6;
                }
            } while (it.hasNext());
        }
        v3.i iVar = (v3.i) next;
        long jO = O();
        long jQ = Q();
        loop2: while (true) {
            int i7 = v3.c.f6580b;
            for (int i8 = i6; i8 < i7; i8++) {
                long j7 = (iVar.f6893c * ((long) v3.c.f6580b)) + ((long) i8);
                if (j7 >= jQ && j7 >= jO) {
                    break loop2;
                }
                java.lang.Object objW = iVar.w(i8);
                java.lang.Object objV = iVar.v(i8);
                if (objW instanceof t3.j) {
                    string = (j7 >= jO || j7 < jQ) ? (j7 >= jQ || j7 < jO) ? "cont" : "send" : "receive";
                } else if (objW instanceof b4.b) {
                    string = (j7 >= jO || j7 < jQ) ? (j7 >= jQ || j7 < jO) ? "select" : "onSend" : "onReceive";
                } else if (objW instanceof v3.r) {
                    string = "receiveCatching";
                } else if (objW instanceof v3.b.C0094b) {
                    string = "sendBroadcast";
                } else if (objW instanceof v3.u) {
                    string = "EB(" + objW + ')';
                } else if (m3.k.a(objW, v3.c.f6584f) ? true : m3.k.a(objW, v3.c.f6585g)) {
                    string = "resuming_sender";
                } else {
                    if (!(objW == null ? true : m3.k.a(objW, v3.c.f6583e) ? true : m3.k.a(objW, v3.c.f6587i) ? true : m3.k.a(objW, v3.c.f6586h) ? true : m3.k.a(objW, v3.c.f6589k) ? true : m3.k.a(objW, v3.c.f6588j) ? true : m3.k.a(objW, v3.c.z()))) {
                        string = objW.toString();
                    }
                }
                if (objV != null) {
                    sb.append('(' + string + ',' + objV + "),");
                } else {
                    sb.append(string + ',');
                }
            }
            iVar = (v3.i) iVar.e();
            if (iVar == null) {
                break;
            }
            i6 = 0;
        }
        if (s3.o.b0(sb) == ',') {
            m3.k.d(sb.deleteCharAt(sb.length() - 1), "this.deleteCharAt(index)");
        }
        sb.append("]");
        return sb.toString();
    }

    public final void u0(t3.c2 c2Var, boolean z4) {
        if (c2Var instanceof v3.b.C0094b) {
            t3.j<java.lang.Boolean> jVarA = ((v3.b.C0094b) c2Var).a();
            a3.i.a aVar = a3.i.f116a;
            jVarA.F(a3.i.b(java.lang.Boolean.FALSE));
            return;
        }
        if (c2Var instanceof t3.j) {
            d3.d dVar = (d3.d) c2Var;
            a3.i.a aVar2 = a3.i.f116a;
            dVar.F(a3.i.b(a3.j.a(z4 ? N() : P())));
        } else if (c2Var instanceof v3.r) {
            t3.k<v3.h<? extends E>> kVar = ((v3.r) c2Var).f6616a;
            a3.i.a aVar3 = a3.i.f116a;
            kVar.F(a3.i.b(v3.h.b(v3.h.f6603b.a(M()))));
        } else if (c2Var instanceof v3.b.a) {
            ((v3.b.a) c2Var).j();
        } else {
            if (c2Var instanceof b4.b) {
                ((b4.b) c2Var).a(this, v3.c.z());
                return;
            }
            throw new java.lang.IllegalStateException(("Unexpected waiter: " + c2Var).toString());
        }
    }

    /* JADX WARN: Code duplicated, block: B:60:0x0119  */
    /* JADX WARN: Code duplicated, block: B:63:0x0122 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:64:0x0123  */
    public final java.lang.Object w0(v3.i<E> iVar, int i5, E e5, long j5, d3.d<? super a3.o> dVar) throws java.lang.Throwable {
        java.lang.Object objB;
        java.lang.Object objT;
        v3.i iVar2;
        t3.k kVarA = t3.m.a(e3.b.b(dVar));
        try {
            int iE0 = E0(iVar, i5, e5, j5, kVarA, false);
            if (iE0 == 0) {
                iVar.b();
                a3.i.a aVar = a3.i.f116a;
                objB = a3.i.b(a3.o.f122a);
            } else {
                if (iE0 != 1) {
                    if (iE0 != 2) {
                        if (iE0 != 4) {
                            if (iE0 != 5) {
                                throw new java.lang.IllegalStateException("unexpected".toString());
                            }
                            iVar.b();
                            v3.i iVar3 = (v3.i) f6552h.get(this);
                            while (true) {
                                long andIncrement = f6548d.getAndIncrement(this);
                                long j6 = andIncrement & 1152921504606846975L;
                                boolean Z = Z(andIncrement);
                                int i6 = v3.c.f6580b;
                                long j7 = j6 / ((long) i6);
                                int i7 = (int) (j6 % ((long) i6));
                                if (iVar3.f6893c != j7) {
                                    v3.i iVarK = K(j7, iVar3);
                                    if (iVarK != null) {
                                        iVar2 = iVarK;
                                    } else if (Z) {
                                    }
                                } else {
                                    iVar2 = iVar3;
                                }
                                v3.i iVar4 = iVar2;
                                int iE1 = E0(iVar2, i7, e5, j6, kVarA, Z);
                                if (iE1 == 0) {
                                    iVar4.b();
                                    a3.i.a aVar2 = a3.i.f116a;
                                    objB = a3.i.b(a3.o.f122a);
                                } else if (iE1 == 1) {
                                    a3.i.a aVar3 = a3.i.f116a;
                                    objB = a3.i.b(a3.o.f122a);
                                } else if (iE1 == 2) {
                                    if (!Z) {
                                        t3.k kVar = kVarA instanceof t3.c2 ? kVarA : null;
                                        if (kVar == null) {
                                            break;
                                        }
                                        o0(kVar, iVar4, i7);
                                        break;
                                    }
                                    iVar4.p();
                                } else {
                                    if (iE1 == 3) {
                                        throw new java.lang.IllegalStateException("unexpected".toString());
                                    }
                                    if (iE1 != 4) {
                                        if (iE1 == 5) {
                                            iVar4.b();
                                        }
                                        iVar3 = iVar4;
                                    } else if (j6 < O()) {
                                        iVar4.b();
                                    }
                                }
                            }
                        } else if (j5 < O()) {
                            iVar.b();
                        }
                        k0(e5, kVarA);
                        break;
                    } else {
                        o0(kVarA, iVar, i5);
                    }
                    objT = kVarA.t();
                    if (objT == e3.c.c()) {
                        f3.h.c(dVar);
                    }
                    if (objT == e3.c.c()) {
                        return objT;
                    }
                    return a3.o.f122a;
                }
                a3.i.a aVar4 = a3.i.f116a;
                objB = a3.i.b(a3.o.f122a);
            }
            kVarA.F(objB);
            objT = kVarA.t();
            if (objT == e3.c.c()) {
                f3.h.c(dVar);
            }
            if (objT == e3.c.c()) {
                return objT;
            }
            return a3.o.f122a;
        } catch (java.lang.Throwable th) {
            kVarA.G();
            throw th;
        }
    }

    public final boolean x0(long j5) {
        if (Z(j5)) {
            return false;
        }
        return !y(j5 & 1152921504606846975L);
    }

    public final boolean y(long j5) {
        return j5 < L() || j5 < O() + ((long) this.f6557a);
    }

    public final boolean y0(java.lang.Object obj, E e5) {
        if (obj instanceof b4.b) {
            return ((b4.b) obj).a(this, e5);
        }
        if (obj instanceof v3.r) {
            m3.k.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            v3.r rVar = (v3.r) obj;
            t3.k<v3.h<? extends E>> kVar = rVar.f6616a;
            v3.h hVarB = v3.h.b(v3.h.f6603b.c(e5));
            l3.l<E, a3.o> lVar = this.f6558b;
            return v3.c.B(kVar, hVarB, lVar != null ? y3.z.a(lVar, e5, rVar.f6616a.b()) : null);
        }
        if (obj instanceof v3.b.a) {
            m3.k.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((v3.b.a) obj).i(e5);
        }
        if (obj instanceof t3.j) {
            m3.k.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            t3.j jVar = (t3.j) obj;
            l3.l<E, a3.o> lVar2 = this.f6558b;
            return v3.c.B(jVar, e5, lVar2 != null ? y3.z.a(lVar2, e5, jVar.b()) : null);
        }
        throw new java.lang.IllegalStateException(("Unexpected receiver type: " + obj).toString());
    }

    public boolean z(java.lang.Throwable th) {
        if (th == null) {
            th = new java.util.concurrent.CancellationException("Channel was cancelled");
        }
        return C(th, true);
    }

    public final boolean z0(java.lang.Object obj, v3.i<E> iVar, int i5) {
        if (obj instanceof t3.j) {
            m3.k.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return v3.c.C((t3.j) obj, a3.o.f122a, null, 2, null);
        }
        if (obj instanceof b4.b) {
            m3.k.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
            b4.d dVarI = ((b4.a) obj).i(this, a3.o.f122a);
            if (dVarI == b4.d.REREGISTER) {
                iVar.s(i5);
            }
            return dVarI == b4.d.SUCCESSFUL;
        }
        if (obj instanceof v3.b.C0094b) {
            return v3.c.C(((v3.b.C0094b) obj).a(), java.lang.Boolean.TRUE, null, 2, null);
        }
        throw new java.lang.IllegalStateException(("Unexpected waiter: " + obj).toString());
    }
}
