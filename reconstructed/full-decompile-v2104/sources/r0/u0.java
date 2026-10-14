package r0;

/* JADX INFO: compiled from: WorkerUpdater.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class u0 {

    /* JADX INFO: compiled from: WorkerUpdater.kt */
    public static final class a extends m3.l implements l3.a<a3.o> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ q0.b0 f5918b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ r0.p0 f5919c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f5920d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ r0.q f5921e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(q0.b0 b0Var, r0.p0 p0Var, java.lang.String str, r0.q qVar) {
            super(0);
            this.f5918b = b0Var;
            this.f5919c = p0Var;
            this.f5920d = str;
            this.f5921e = qVar;
        }

        public final void b() {
            new a1.c(new r0.c0(this.f5919c, this.f5920d, q0.g.KEEP, b3.n.d(this.f5918b)), this.f5921e).run();
        }

        @Override // l3.a
        public /* bridge */ /* synthetic */ a3.o c() {
            b();
            return a3.o.f122a;
        }
    }

    /* JADX INFO: compiled from: WorkerUpdater.kt */
    public static final class b extends m3.l implements l3.l<z0.u, java.lang.String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final r0.u0.b f5922b = new r0.u0.b();

        public b() {
            super(1);
        }

        @Override // l3.l
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final java.lang.String x(z0.u uVar) {
            m3.k.e(uVar, "spec");
            return uVar.m() ? "Periodic" : "OneTime";
        }
    }

    public static final q0.r c(final r0.p0 p0Var, final java.lang.String str, final q0.b0 b0Var) {
        m3.k.e(p0Var, "<this>");
        m3.k.e(str, "name");
        m3.k.e(b0Var, "workRequest");
        final r0.q qVar = new r0.q();
        final r0.u0.a aVar = new r0.u0.a(b0Var, p0Var, str, qVar);
        p0Var.w().c().execute(new java.lang.Runnable() { // from class: r0.t0
            @Override // java.lang.Runnable
            public final void run() {
                r0.u0.d(p0Var, str, qVar, aVar, b0Var);
            }
        });
        return qVar;
    }

    public static final void d(r0.p0 p0Var, java.lang.String str, r0.q qVar, l3.a aVar, q0.b0 b0Var) {
        m3.k.e(p0Var, "$this_enqueueUniquelyNamedPeriodic");
        m3.k.e(str, "$name");
        m3.k.e(qVar, "$operation");
        m3.k.e(aVar, "$enqueueNew");
        m3.k.e(b0Var, "$workRequest");
        z0.v vVarJ = p0Var.u().J();
        java.util.List<z0.u.b> listA = vVarJ.A(str);
        if (listA.size() > 1) {
            e(qVar, "Can't apply UPDATE policy to the chains of work.");
            return;
        }
        z0.u.b bVar = (z0.u.b) b3.w.p(listA);
        if (bVar == null) {
            aVar.c();
            return;
        }
        z0.u uVarF = vVarJ.f(bVar.f7055a);
        if (uVarF == null) {
            qVar.b(new q0.r.b.a(new java.lang.IllegalStateException("WorkSpec with " + bVar.f7055a + ", that matches a name \"" + str + "\", wasn't found")));
            return;
        }
        if (!uVarF.m()) {
            e(qVar, "Can't update OneTimeWorker to Periodic Worker. Update operation must preserve worker's type.");
            return;
        }
        if (bVar.f7056b == q0.y.c.CANCELLED) {
            vVarJ.a(bVar.f7055a);
            aVar.c();
            return;
        }
        z0.u uVarE = z0.u.e(b0Var.d(), bVar.f7055a, null, null, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, 8388606, null);
        try {
            r0.u uVarQ = p0Var.q();
            m3.k.d(uVarQ, "processor");
            androidx.work.impl.WorkDatabase workDatabaseU = p0Var.u();
            m3.k.d(workDatabaseU, "workDatabase");
            androidx.work.a aVarM = p0Var.m();
            m3.k.d(aVarM, "configuration");
            java.util.List<r0.w> listS = p0Var.s();
            m3.k.d(listS, "schedulers");
            f(uVarQ, workDatabaseU, aVarM, listS, uVarE, b0Var.c());
            qVar.b(q0.r.f5715a);
        } catch (java.lang.Throwable th) {
            qVar.b(new q0.r.b.a(th));
        }
    }

    public static final void e(r0.q qVar, java.lang.String str) {
        qVar.b(new q0.r.b.a(new java.lang.UnsupportedOperationException(str)));
    }

    public static final q0.z.a f(r0.u uVar, final androidx.work.impl.WorkDatabase workDatabase, androidx.work.a aVar, final java.util.List<? extends r0.w> list, final z0.u uVar2, final java.util.Set<java.lang.String> set) {
        final java.lang.String str = uVar2.f7032a;
        final z0.u uVarF = workDatabase.J().f(str);
        if (uVarF == null) {
            throw new java.lang.IllegalArgumentException("Worker with " + str + " doesn't exist");
        }
        if (uVarF.f7033b.e()) {
            return q0.z.a.NOT_APPLIED;
        }
        if (uVarF.m() ^ uVar2.m()) {
            r0.u0.b bVar = r0.u0.b.f5922b;
            throw new java.lang.UnsupportedOperationException("Can't update " + bVar.x(uVarF) + " Worker to " + bVar.x(uVar2) + " Worker. Update operation must preserve worker's type.");
        }
        final boolean zK = uVar.k(str);
        if (!zK) {
            java.util.Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                ((r0.w) it.next()).b(str);
            }
        }
        workDatabase.A(new java.lang.Runnable() { // from class: r0.s0
            @Override // java.lang.Runnable
            public final void run() {
                r0.u0.g(workDatabase, uVarF, uVar2, list, str, set, zK);
            }
        });
        if (!zK) {
            r0.z.h(aVar, workDatabase, list);
        }
        return zK ? q0.z.a.APPLIED_FOR_NEXT_RUN : q0.z.a.APPLIED_IMMEDIATELY;
    }

    public static final void g(androidx.work.impl.WorkDatabase workDatabase, z0.u uVar, z0.u uVar2, java.util.List list, java.lang.String str, java.util.Set set, boolean z4) {
        m3.k.e(workDatabase, "$workDatabase");
        m3.k.e(uVar, "$oldWorkSpec");
        m3.k.e(uVar2, "$newWorkSpec");
        m3.k.e(list, "$schedulers");
        m3.k.e(str, "$workSpecId");
        m3.k.e(set, "$tags");
        z0.v vVarJ = workDatabase.J();
        z0.z zVarK = workDatabase.K();
        z0.u uVarE = z0.u.e(uVar2, null, uVar.f7033b, null, null, null, null, 0L, 0L, 0L, null, uVar.f7042k, null, 0L, uVar.f7045n, 0L, 0L, false, null, uVar.i(), uVar.f() + 1, uVar.g(), uVar.h(), 0, 4447229, null);
        if (uVar2.h() == 1) {
            uVarE.n(uVar2.g());
            uVarE.o(uVarE.h() + 1);
        }
        vVarJ.q(a1.d.b(list, uVarE));
        zVarK.a(str);
        zVarK.d(str, set);
        if (z4) {
            return;
        }
        vVarJ.t(str, -1L);
        workDatabase.I().a(str);
    }
}
