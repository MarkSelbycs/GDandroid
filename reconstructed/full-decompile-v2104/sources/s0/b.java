package s0;

/* JADX INFO: compiled from: GreedyScheduler.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b implements r0.w, v0.d, r0.f {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final java.lang.String f6017t = q0.n.i("GreedyScheduler");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f6018a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public s0.a f6020c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6021d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final r0.u f6024g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final r0.n0 f6025h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final androidx.work.a f6026i;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public java.lang.Boolean f6028p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final v0.e f6029q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final c1.b f6030r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final s0.d f6031s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.Map<z0.m, t3.h1> f6019b = new java.util.HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.lang.Object f6022e = new java.lang.Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final r0.b0 f6023f = new r0.b0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final java.util.Map<z0.m, s0.b.C0076b> f6027o = new java.util.HashMap();

    /* JADX INFO: compiled from: GreedyScheduler.java */
    public static /* synthetic */ class a {
    }

    /* JADX INFO: renamed from: s0.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: GreedyScheduler.java */
    public static class C0076b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f6032a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f6033b;

        public /* synthetic */ C0076b(int i5, long j5, s0.b.a aVar) {
            this(i5, j5);
        }

        public C0076b(int i5, long j5) {
            this.f6032a = i5;
            this.f6033b = j5;
        }
    }

    public b(android.content.Context context, androidx.work.a aVar, x0.m mVar, r0.u uVar, r0.n0 n0Var, c1.b bVar) {
        this.f6018a = context;
        q0.v vVarK = aVar.k();
        this.f6020c = new s0.a(this, vVarK, aVar.a());
        this.f6031s = new s0.d(vVarK, n0Var);
        this.f6030r = bVar;
        this.f6029q = new v0.e(mVar);
        this.f6026i = aVar;
        this.f6024g = uVar;
        this.f6025h = n0Var;
    }

    @Override // v0.d
    public void a(z0.u uVar, v0.b bVar) {
        z0.m mVarA = z0.x.a(uVar);
        if (bVar instanceof v0.b.a) {
            if (this.f6023f.a(mVarA)) {
                return;
            }
            q0.n.e().a(f6017t, "Constraints met: Scheduling work ID " + mVarA);
            r0.a0 a0VarD = this.f6023f.d(mVarA);
            this.f6031s.c(a0VarD);
            this.f6025h.e(a0VarD);
            return;
        }
        q0.n.e().a(f6017t, "Constraints not met: Cancelling work ID " + mVarA);
        r0.a0 a0VarC = this.f6023f.c(mVarA);
        if (a0VarC != null) {
            this.f6031s.b(a0VarC);
            this.f6025h.a(a0VarC, ((v0.b.C0089b) bVar).a());
        }
    }

    @Override // r0.w
    public void b(java.lang.String str) {
        if (this.f6028p == null) {
            f();
        }
        if (!this.f6028p.booleanValue()) {
            q0.n.e().f(f6017t, "Ignoring schedule request in non-main process");
            return;
        }
        g();
        q0.n.e().a(f6017t, "Cancelling work ID " + str);
        s0.a aVar = this.f6020c;
        if (aVar != null) {
            aVar.b(str);
        }
        for (r0.a0 a0Var : this.f6023f.b(str)) {
            this.f6031s.b(a0Var);
            this.f6025h.b(a0Var);
        }
    }

    @Override // r0.f
    public void c(z0.m mVar, boolean z4) {
        r0.a0 a0VarC = this.f6023f.c(mVar);
        if (a0VarC != null) {
            this.f6031s.b(a0VarC);
        }
        h(mVar);
        if (z4) {
            return;
        }
        synchronized (this.f6022e) {
            this.f6027o.remove(mVar);
        }
    }

    @Override // r0.w
    public boolean d() {
        return false;
    }

    @Override // r0.w
    public void e(z0.u... uVarArr) {
        if (this.f6028p == null) {
            f();
        }
        if (!this.f6028p.booleanValue()) {
            q0.n.e().f(f6017t, "Ignoring schedule request in a secondary process");
            return;
        }
        g();
        java.util.HashSet<z0.u> hashSet = new java.util.HashSet();
        java.util.HashSet hashSet2 = new java.util.HashSet();
        for (z0.u uVar : uVarArr) {
            if (!this.f6023f.a(z0.x.a(uVar))) {
                long jMax = java.lang.Math.max(uVar.c(), i(uVar));
                long jA = this.f6026i.a().a();
                if (uVar.f7033b == q0.y.c.ENQUEUED) {
                    if (jA < jMax) {
                        s0.a aVar = this.f6020c;
                        if (aVar != null) {
                            aVar.a(uVar, jMax);
                        }
                    } else if (uVar.k()) {
                        if (uVar.f7041j.h()) {
                            q0.n.e().a(f6017t, "Ignoring " + uVar + ". Requires device idle.");
                        } else if (uVar.f7041j.e()) {
                            q0.n.e().a(f6017t, "Ignoring " + uVar + ". Requires ContentUri triggers.");
                        } else {
                            hashSet.add(uVar);
                            hashSet2.add(uVar.f7032a);
                        }
                    } else if (!this.f6023f.a(z0.x.a(uVar))) {
                        q0.n.e().a(f6017t, "Starting work for " + uVar.f7032a);
                        r0.a0 a0VarE = this.f6023f.e(uVar);
                        this.f6031s.c(a0VarE);
                        this.f6025h.e(a0VarE);
                    }
                }
            }
        }
        synchronized (this.f6022e) {
            if (!hashSet.isEmpty()) {
                q0.n.e().a(f6017t, "Starting tracking for " + android.text.TextUtils.join(",", hashSet2));
                for (z0.u uVar2 : hashSet) {
                    z0.m mVarA = z0.x.a(uVar2);
                    if (!this.f6019b.containsKey(mVarA)) {
                        this.f6019b.put(mVarA, v0.f.b(this.f6029q, uVar2, this.f6030r.d(), this));
                    }
                }
            }
        }
    }

    public final void f() {
        this.f6028p = java.lang.Boolean.valueOf(a1.n.b(this.f6018a, this.f6026i));
    }

    public final void g() {
        if (this.f6021d) {
            return;
        }
        this.f6024g.e(this);
        this.f6021d = true;
    }

    public final void h(z0.m mVar) {
        t3.h1 h1VarRemove;
        synchronized (this.f6022e) {
            h1VarRemove = this.f6019b.remove(mVar);
        }
        if (h1VarRemove != null) {
            q0.n.e().a(f6017t, "Stopping tracking for " + mVar);
            h1VarRemove.e(null);
        }
    }

    public final long i(z0.u uVar) {
        long jMax;
        synchronized (this.f6022e) {
            z0.m mVarA = z0.x.a(uVar);
            s0.b.C0076b c0076b = this.f6027o.get(mVarA);
            if (c0076b == null) {
                c0076b = new s0.b.C0076b(uVar.f7042k, this.f6026i.a().a(), null);
                this.f6027o.put(mVarA, c0076b);
            }
            jMax = c0076b.f6033b + (((long) java.lang.Math.max((uVar.f7042k - c0076b.f6032a) - 5, 0)) * 30000);
        }
        return jMax;
    }
}
