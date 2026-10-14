package a4;

/* JADX INFO: compiled from: CoroutineScheduler.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a implements java.util.concurrent.Executor, java.io.Closeable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a4.a.C0001a f123h = new a4.a.C0001a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicLongFieldUpdater f124i = java.util.concurrent.atomic.AtomicLongFieldUpdater.newUpdater(a4.a.class, "parkedWorkersStack");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicLongFieldUpdater f125o = java.util.concurrent.atomic.AtomicLongFieldUpdater.newUpdater(a4.a.class, "controlState");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicIntegerFieldUpdater f126p = java.util.concurrent.atomic.AtomicIntegerFieldUpdater.newUpdater(a4.a.class, "_isTerminated");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final y3.h0 f127q = new y3.h0("NOT_IN_STACK");
    private volatile int _isTerminated;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f128a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f130c;
    private volatile long controlState;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.String f131d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final a4.d f132e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a4.d f133f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final y3.c0<a4.a.c> f134g;
    private volatile long parkedWorkersStack;

    /* JADX INFO: renamed from: a4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    public static final class C0001a {
        public C0001a() {
        }

        public /* synthetic */ C0001a(m3.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f135a;

        static {
            int[] iArr = new int[a4.a.d.values().length];
            try {
                iArr[a4.a.d.PARKING.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                iArr[a4.a.d.BLOCKING.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                iArr[a4.a.d.CPU_ACQUIRED.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                iArr[a4.a.d.DORMANT.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                iArr[a4.a.d.TERMINATED.ordinal()] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            f135a = iArr;
        }
    }

    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    public enum d {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED
    }

    public a(int i5, int i6, long j5, java.lang.String str) {
        this.f128a = i5;
        this.f129b = i6;
        this.f130c = j5;
        this.f131d = str;
        if (!(i5 >= 1)) {
            throw new java.lang.IllegalArgumentException(("Core pool size " + i5 + " should be at least 1").toString());
        }
        if (!(i6 >= i5)) {
            throw new java.lang.IllegalArgumentException(("Max pool size " + i6 + " should be greater than or equals to core pool size " + i5).toString());
        }
        if (!(i6 <= 2097150)) {
            throw new java.lang.IllegalArgumentException(("Max pool size " + i6 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (!(j5 > 0)) {
            throw new java.lang.IllegalArgumentException(("Idle worker keep alive time " + j5 + " must be positive").toString());
        }
        this.f132e = new a4.d();
        this.f133f = new a4.d();
        this.f134g = new y3.c0<>((i5 + 1) * 2);
        this.controlState = ((long) i5) << 42;
        this._isTerminated = 0;
    }

    public static /* synthetic */ boolean I(a4.a aVar, long j5, int i5, java.lang.Object obj) {
        if ((i5 & 1) != 0) {
            j5 = f125o.get(aVar);
        }
        return aVar.H(j5);
    }

    public static /* synthetic */ void l(a4.a aVar, java.lang.Runnable runnable, a4.i iVar, boolean z4, int i5, java.lang.Object obj) {
        if ((i5 & 2) != 0) {
            iVar = a4.l.f170g;
        }
        if ((i5 & 4) != 0) {
            z4 = false;
        }
        aVar.j(runnable, iVar, z4);
    }

    public final a4.h C(a4.a.c cVar, a4.h hVar, boolean z4) {
        if (cVar == null || cVar.f139c == a4.a.d.TERMINATED) {
            return hVar;
        }
        if (hVar.f161b.a() == 0 && cVar.f139c == a4.a.d.BLOCKING) {
            return hVar;
        }
        cVar.f143g = true;
        return cVar.f137a.a(hVar, z4);
    }

    public final boolean H(long j5) {
        if (p3.m.a(((int) (2097151 & j5)) - ((int) ((j5 & 4398044413952L) >> 21)), 0) < this.f128a) {
            int iF = f();
            if (iF == 1 && this.f128a > 1) {
                f();
            }
            if (iF > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean K() {
        a4.a.c cVarQ;
        do {
            cVarQ = q();
            if (cVarQ == null) {
                return false;
            }
        } while (!a4.a.c.j().compareAndSet(cVarQ, -1, 0));
        java.util.concurrent.locks.LockSupport.unpark(cVarQ);
        return true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.lang.InterruptedException {
        x(10000L);
    }

    public final boolean e(a4.h hVar) {
        return hVar.f161b.a() == 1 ? this.f133f.a(hVar) : this.f132e.a(hVar);
    }

    @Override // java.util.concurrent.Executor
    public void execute(java.lang.Runnable runnable) {
        l(this, runnable, null, false, 6, null);
    }

    public final int f() {
        synchronized (this.f134g) {
            if (n()) {
                return -1;
            }
            java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater = f125o;
            long j5 = atomicLongFieldUpdater.get(this);
            int i5 = (int) (j5 & 2097151);
            int iA = p3.m.a(i5 - ((int) ((j5 & 4398044413952L) >> 21)), 0);
            if (iA >= this.f128a) {
                return 0;
            }
            if (i5 >= this.f129b) {
                return 0;
            }
            int i6 = ((int) (f125o.get(this) & 2097151)) + 1;
            if (!(i6 > 0 && this.f134g.b(i6) == null)) {
                throw new java.lang.IllegalArgumentException("Failed requirement.".toString());
            }
            a4.a.c cVar = new a4.a.c(this, i6);
            this.f134g.c(i6, cVar);
            if (!(i6 == ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this))))) {
                throw new java.lang.IllegalArgumentException("Failed requirement.".toString());
            }
            int i7 = iA + 1;
            cVar.start();
            return i7;
        }
    }

    public final a4.h h(java.lang.Runnable runnable, a4.i iVar) {
        long jA = a4.l.f169f.a();
        if (!(runnable instanceof a4.h)) {
            return new a4.k(runnable, jA, iVar);
        }
        a4.h hVar = (a4.h) runnable;
        hVar.f160a = jA;
        hVar.f161b = iVar;
        return hVar;
    }

    public final a4.a.c i() {
        java.lang.Thread threadCurrentThread = java.lang.Thread.currentThread();
        a4.a.c cVar = threadCurrentThread instanceof a4.a.c ? (a4.a.c) threadCurrentThread : null;
        if (cVar == null || !m3.k.a(a4.a.this, this)) {
            return null;
        }
        return cVar;
    }

    public final void j(java.lang.Runnable runnable, a4.i iVar, boolean z4) {
        t3.c.a();
        a4.h hVarH = h(runnable, iVar);
        boolean z5 = false;
        boolean z6 = hVarH.f161b.a() == 1;
        long jAddAndGet = z6 ? f125o.addAndGet(this, 2097152L) : 0L;
        a4.a.c cVarI = i();
        a4.h hVarC = C(cVarI, hVarH, z4);
        if (hVarC != null && !e(hVarC)) {
            throw new java.util.concurrent.RejectedExecutionException(this.f131d + " was terminated");
        }
        if (z4 && cVarI != null) {
            z5 = true;
        }
        if (z6) {
            y(jAddAndGet, z5);
        } else {
            if (z5) {
                return;
            }
            z();
        }
    }

    public final boolean n() {
        return f126p.get(this) != 0;
    }

    public final int o(a4.a.c cVar) {
        java.lang.Object objI = cVar.i();
        while (objI != f127q) {
            if (objI == null) {
                return 0;
            }
            a4.a.c cVar2 = (a4.a.c) objI;
            int iH = cVar2.h();
            if (iH != 0) {
                return iH;
            }
            objI = cVar2.i();
        }
        return -1;
    }

    public final a4.a.c q() {
        java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater = f124i;
        while (true) {
            long j5 = atomicLongFieldUpdater.get(this);
            a4.a.c cVarB = this.f134g.b((int) (2097151 & j5));
            if (cVarB == null) {
                return null;
            }
            long j6 = (2097152 + j5) & (-2097152);
            int iO = o(cVarB);
            if (iO >= 0 && f124i.compareAndSet(this, j5, ((long) iO) | j6)) {
                cVarB.r(f127q);
                return cVarB;
            }
        }
    }

    public final boolean r(a4.a.c cVar) {
        long j5;
        int iH;
        if (cVar.i() != f127q) {
            return false;
        }
        java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater = f124i;
        do {
            j5 = atomicLongFieldUpdater.get(this);
            iH = cVar.h();
            cVar.r(this.f134g.b((int) (2097151 & j5)));
        } while (!f124i.compareAndSet(this, j5, ((2097152 + j5) & (-2097152)) | ((long) iH)));
        return true;
    }

    public final void s(a4.a.c cVar, int i5, int i6) {
        java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater = f124i;
        while (true) {
            long j5 = atomicLongFieldUpdater.get(this);
            int iO = (int) (2097151 & j5);
            long j6 = (2097152 + j5) & (-2097152);
            if (iO == i5) {
                iO = i6 == 0 ? o(cVar) : i6;
            }
            if (iO >= 0 && f124i.compareAndSet(this, j5, j6 | ((long) iO))) {
                return;
            }
        }
    }

    public java.lang.String toString() {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int iA = this.f134g.a();
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 1; i10 < iA; i10++) {
            a4.a.c cVarB = this.f134g.b(i10);
            if (cVarB != null) {
                int iE = cVarB.f137a.e();
                int i11 = a4.a.b.f135a[cVarB.f139c.ordinal()];
                if (i11 == 1) {
                    i7++;
                } else if (i11 == 2) {
                    i6++;
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    sb.append(iE);
                    sb.append('b');
                    arrayList.add(sb.toString());
                } else if (i11 == 3) {
                    i5++;
                    java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                    sb2.append(iE);
                    sb2.append('c');
                    arrayList.add(sb2.toString());
                } else if (i11 == 4) {
                    i8++;
                    if (iE > 0) {
                        java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
                        sb3.append(iE);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (i11 == 5) {
                    i9++;
                }
            }
        }
        long j5 = f125o.get(this);
        return this.f131d + '@' + t3.i0.b(this) + "[Pool Size {core = " + this.f128a + ", max = " + this.f129b + "}, Worker States {CPU = " + i5 + ", blocking = " + i6 + ", parked = " + i7 + ", dormant = " + i8 + ", terminated = " + i9 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f132e.c() + ", global blocking queue size = " + this.f133f.c() + ", Control State {created workers= " + ((int) (2097151 & j5)) + ", blocking tasks = " + ((int) ((4398044413952L & j5) >> 21)) + ", CPUs acquired = " + (this.f128a - ((int) ((9223367638808264704L & j5) >> 42))) + "}]";
    }

    public final void u(a4.h hVar) {
        try {
            hVar.run();
        } catch (java.lang.Throwable th) {
            try {
                java.lang.Thread threadCurrentThread = java.lang.Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
            } finally {
                t3.c.a();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005b  */
    public final void x(long j5) throws java.lang.InterruptedException {
        int i5;
        a4.h hVarD;
        if (f126p.compareAndSet(this, 0, 1)) {
            a4.a.c cVarI = i();
            synchronized (this.f134g) {
                i5 = (int) (f125o.get(this) & 2097151);
            }
            if (1 <= i5) {
                int i6 = 1;
                while (true) {
                    a4.a.c cVarB = this.f134g.b(i6);
                    m3.k.b(cVarB);
                    a4.a.c cVar = cVarB;
                    if (cVar != cVarI) {
                        while (cVar.isAlive()) {
                            java.util.concurrent.locks.LockSupport.unpark(cVar);
                            cVar.join(j5);
                        }
                        cVar.f137a.f(this.f133f);
                    }
                    if (i6 == i5) {
                        break;
                    } else {
                        i6++;
                    }
                }
            }
            this.f133f.b();
            this.f132e.b();
            while (true) {
                if (cVarI == null) {
                    hVarD = this.f132e.d();
                    if (hVarD == null && (hVarD = this.f133f.d()) == null) {
                        break;
                    }
                } else {
                    hVarD = cVarI.g(true);
                    if (hVarD == null) {
                        hVarD = this.f132e.d();
                        if (hVarD == null) {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
                u(hVarD);
            }
            if (cVarI != null) {
                cVarI.u(a4.a.d.TERMINATED);
            }
            f124i.set(this, 0L);
            f125o.set(this, 0L);
        }
    }

    public final void y(long j5, boolean z4) {
        if (z4 || K() || H(j5)) {
            return;
        }
        K();
    }

    public final void z() {
        if (K() || I(this, 0L, 1, null)) {
            return;
        }
        K();
    }

    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    public final class c extends java.lang.Thread {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final java.util.concurrent.atomic.AtomicIntegerFieldUpdater f136i = java.util.concurrent.atomic.AtomicIntegerFieldUpdater.newUpdater(a4.a.c.class, "workerCtl");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final a4.o f137a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final m3.q<a4.h> f138b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public a4.a.d f139c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f140d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f141e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f142f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f143g;
        private volatile int indexInArray;
        private volatile java.lang.Object nextParkedWorker;
        private volatile int workerCtl;

        public c() {
            setDaemon(true);
            this.f137a = new a4.o();
            this.f138b = new m3.q<>();
            this.f139c = a4.a.d.DORMANT;
            this.nextParkedWorker = a4.a.f127q;
            this.f142f = n3.c.f5257a.c();
        }

        public static final java.util.concurrent.atomic.AtomicIntegerFieldUpdater j() {
            return f136i;
        }

        public final void b(int i5) {
            if (i5 == 0) {
                return;
            }
            a4.a.f125o.addAndGet(a4.a.this, -2097152L);
            if (this.f139c != a4.a.d.TERMINATED) {
                this.f139c = a4.a.d.DORMANT;
            }
        }

        public final void c(int i5) {
            if (i5 != 0 && u(a4.a.d.BLOCKING)) {
                a4.a.this.z();
            }
        }

        public final void d(a4.h hVar) {
            int iA = hVar.f161b.a();
            k(iA);
            c(iA);
            a4.a.this.u(hVar);
            b(iA);
        }

        public final a4.h e(boolean z4) {
            a4.h hVarO;
            a4.h hVarO2;
            if (z4) {
                boolean z5 = m(a4.a.this.f128a * 2) == 0;
                if (z5 && (hVarO2 = o()) != null) {
                    return hVarO2;
                }
                a4.h hVarG = this.f137a.g();
                if (hVarG != null) {
                    return hVarG;
                }
                if (!z5 && (hVarO = o()) != null) {
                    return hVarO;
                }
            } else {
                a4.h hVarO3 = o();
                if (hVarO3 != null) {
                    return hVarO3;
                }
            }
            return v(3);
        }

        public final a4.h f() {
            a4.h hVarH = this.f137a.h();
            if (hVarH != null) {
                return hVarH;
            }
            a4.h hVarD = a4.a.this.f133f.d();
            return hVarD == null ? v(1) : hVarD;
        }

        public final a4.h g(boolean z4) {
            return s() ? e(z4) : f();
        }

        public final int h() {
            return this.indexInArray;
        }

        public final java.lang.Object i() {
            return this.nextParkedWorker;
        }

        public final void k(int i5) {
            this.f140d = 0L;
            if (this.f139c == a4.a.d.PARKING) {
                this.f139c = a4.a.d.BLOCKING;
            }
        }

        public final boolean l() {
            return this.nextParkedWorker != a4.a.f127q;
        }

        public final int m(int i5) {
            int i6 = this.f142f;
            int i7 = i6 ^ (i6 << 13);
            int i8 = i7 ^ (i7 >> 17);
            int i9 = i8 ^ (i8 << 5);
            this.f142f = i9;
            int i10 = i5 - 1;
            return (i10 & i5) == 0 ? i9 & i10 : (i9 & Integer.MAX_VALUE) % i5;
        }

        public final void n() {
            if (this.f140d == 0) {
                this.f140d = java.lang.System.nanoTime() + a4.a.this.f130c;
            }
            java.util.concurrent.locks.LockSupport.parkNanos(a4.a.this.f130c);
            if (java.lang.System.nanoTime() - this.f140d >= 0) {
                this.f140d = 0L;
                w();
            }
        }

        public final a4.h o() {
            if (m(2) == 0) {
                a4.h hVarD = a4.a.this.f132e.d();
                return hVarD != null ? hVarD : a4.a.this.f133f.d();
            }
            a4.h hVarD2 = a4.a.this.f133f.d();
            return hVarD2 != null ? hVarD2 : a4.a.this.f132e.d();
        }

        public final void p() {
            loop0: while (true) {
                boolean z4 = false;
                while (true) {
                    if (a4.a.this.n() || this.f139c == a4.a.d.TERMINATED) {
                        break loop0;
                    }
                    a4.h hVarG = g(this.f143g);
                    if (hVarG != null) {
                        this.f141e = 0L;
                        d(hVarG);
                        break;
                    }
                    this.f143g = false;
                    if (this.f141e == 0) {
                        t();
                    } else {
                        if (z4) {
                            u(a4.a.d.PARKING);
                            java.lang.Thread.interrupted();
                            java.util.concurrent.locks.LockSupport.parkNanos(this.f141e);
                            this.f141e = 0L;
                            break;
                        }
                        z4 = true;
                    }
                }
            }
            u(a4.a.d.TERMINATED);
        }

        public final void q(int i5) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(a4.a.this.f131d);
            sb.append("-worker-");
            sb.append(i5 == 0 ? "TERMINATED" : java.lang.String.valueOf(i5));
            setName(sb.toString());
            this.indexInArray = i5;
        }

        public final void r(java.lang.Object obj) {
            this.nextParkedWorker = obj;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            p();
        }

        public final boolean s() {
            boolean z4;
            if (this.f139c != a4.a.d.CPU_ACQUIRED) {
                a4.a aVar = a4.a.this;
                java.util.concurrent.atomic.AtomicLongFieldUpdater atomicLongFieldUpdater = a4.a.f125o;
                while (true) {
                    long j5 = atomicLongFieldUpdater.get(aVar);
                    if (((int) ((9223367638808264704L & j5) >> 42)) == 0) {
                        z4 = false;
                        break;
                    }
                    if (a4.a.f125o.compareAndSet(aVar, j5, j5 - 4398046511104L)) {
                        z4 = true;
                        break;
                    }
                }
                if (!z4) {
                    return false;
                }
                this.f139c = a4.a.d.CPU_ACQUIRED;
            }
            return true;
        }

        public final void t() {
            if (!l()) {
                a4.a.this.r(this);
                return;
            }
            f136i.set(this, -1);
            while (l() && f136i.get(this) == -1 && !a4.a.this.n() && this.f139c != a4.a.d.TERMINATED) {
                u(a4.a.d.PARKING);
                java.lang.Thread.interrupted();
                n();
            }
        }

        public final boolean u(a4.a.d dVar) {
            a4.a.d dVar2 = this.f139c;
            boolean z4 = dVar2 == a4.a.d.CPU_ACQUIRED;
            if (z4) {
                a4.a.f125o.addAndGet(a4.a.this, 4398046511104L);
            }
            if (dVar2 != dVar) {
                this.f139c = dVar;
            }
            return z4;
        }

        public final a4.h v(int i5) {
            int i6 = (int) (a4.a.f125o.get(a4.a.this) & 2097151);
            if (i6 < 2) {
                return null;
            }
            int iM = m(i6);
            a4.a aVar = a4.a.this;
            long jMin = Long.MAX_VALUE;
            for (int i7 = 0; i7 < i6; i7++) {
                iM++;
                if (iM > i6) {
                    iM = 1;
                }
                a4.a.c cVarB = aVar.f134g.b(iM);
                if (cVarB != null && cVarB != this) {
                    long jN = cVarB.f137a.n(i5, this.f138b);
                    if (jN == -1) {
                        m3.q<a4.h> qVar = this.f138b;
                        a4.h hVar = qVar.f5194a;
                        qVar.f5194a = null;
                        return hVar;
                    }
                    if (jN > 0) {
                        jMin = java.lang.Math.min(jMin, jN);
                    }
                }
            }
            if (jMin == Long.MAX_VALUE) {
                jMin = 0;
            }
            this.f141e = jMin;
            return null;
        }

        public final void w() {
            a4.a aVar = a4.a.this;
            synchronized (aVar.f134g) {
                if (aVar.n()) {
                    return;
                }
                if (((int) (a4.a.f125o.get(aVar) & 2097151)) <= aVar.f128a) {
                    return;
                }
                if (f136i.compareAndSet(this, -1, 1)) {
                    int i5 = this.indexInArray;
                    q(0);
                    aVar.s(this, i5, 0);
                    int andDecrement = (int) (a4.a.f125o.getAndDecrement(aVar) & 2097151);
                    if (andDecrement != i5) {
                        a4.a.c cVarB = aVar.f134g.b(andDecrement);
                        m3.k.b(cVarB);
                        a4.a.c cVar = cVarB;
                        aVar.f134g.c(i5, cVar);
                        cVar.q(i5);
                        aVar.s(cVar, andDecrement, i5);
                    }
                    aVar.f134g.c(andDecrement, null);
                    a3.o oVar = a3.o.f122a;
                    this.f139c = a4.a.d.TERMINATED;
                }
            }
        }

        public c(a4.a aVar, int i5) {
            this();
            q(i5);
        }
    }
}
