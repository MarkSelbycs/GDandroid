package androidx.work.impl.workers;

/* JADX INFO: compiled from: ConstraintTrackingWorker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class ConstraintTrackingWorker extends androidx.work.c implements v0.d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final androidx.work.WorkerParameters f2756e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final java.lang.Object f2757f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile boolean f2758g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b1.c<androidx.work.c.a> f2759h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public androidx.work.c f2760i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker(android.content.Context context, androidx.work.WorkerParameters workerParameters) {
        super(context, workerParameters);
        m3.k.e(context, "appContext");
        m3.k.e(workerParameters, "workerParameters");
        this.f2756e = workerParameters;
        this.f2757f = new java.lang.Object();
        this.f2759h = b1.c.t();
    }

    public static final void f(t3.h1 h1Var) {
        m3.k.e(h1Var, "$job");
        h1Var.e(null);
    }

    public static final void g(androidx.work.impl.workers.ConstraintTrackingWorker constraintTrackingWorker, r2.a aVar) {
        m3.k.e(constraintTrackingWorker, "this$0");
        m3.k.e(aVar, "$innerFuture");
        synchronized (constraintTrackingWorker.f2757f) {
            if (constraintTrackingWorker.f2758g) {
                b1.c<androidx.work.c.a> cVar = constraintTrackingWorker.f2759h;
                m3.k.d(cVar, "future");
                d1.d.e(cVar);
            } else {
                constraintTrackingWorker.f2759h.r(aVar);
            }
            a3.o oVar = a3.o.f122a;
        }
    }

    public static final void h(androidx.work.impl.workers.ConstraintTrackingWorker constraintTrackingWorker) {
        m3.k.e(constraintTrackingWorker, "this$0");
        constraintTrackingWorker.e();
    }

    @Override // v0.d
    public void a(z0.u uVar, v0.b bVar) {
        m3.k.e(uVar, "workSpec");
        m3.k.e(bVar, "state");
        q0.n.e().a(d1.d.f3945a, "Constraints changed for " + uVar);
        if (bVar instanceof v0.b.C0089b) {
            synchronized (this.f2757f) {
                this.f2758g = true;
                a3.o oVar = a3.o.f122a;
            }
        }
    }

    public final void e() {
        if (this.f2759h.isCancelled()) {
            return;
        }
        java.lang.String strO = getInputData().o("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
        q0.n nVarE = q0.n.e();
        m3.k.d(nVarE, "get()");
        if (strO == null || strO.length() == 0) {
            nVarE.c(d1.d.f3945a, "No worker to delegate to.");
            b1.c<androidx.work.c.a> cVar = this.f2759h;
            m3.k.d(cVar, "future");
            d1.d.d(cVar);
            return;
        }
        androidx.work.c cVarB = getWorkerFactory().b(getApplicationContext(), strO, this.f2756e);
        this.f2760i = cVarB;
        if (cVarB == null) {
            nVarE.a(d1.d.f3945a, "No worker to delegate to.");
            b1.c<androidx.work.c.a> cVar2 = this.f2759h;
            m3.k.d(cVar2, "future");
            d1.d.d(cVar2);
            return;
        }
        r0.p0 p0VarO = r0.p0.o(getApplicationContext());
        m3.k.d(p0VarO, "getInstance(applicationContext)");
        z0.v vVarJ = p0VarO.u().J();
        java.lang.String string = getId().toString();
        m3.k.d(string, "id.toString()");
        z0.u uVarF = vVarJ.f(string);
        if (uVarF == null) {
            b1.c<androidx.work.c.a> cVar3 = this.f2759h;
            m3.k.d(cVar3, "future");
            d1.d.d(cVar3);
            return;
        }
        x0.m mVarT = p0VarO.t();
        m3.k.d(mVarT, "workManagerImpl.trackers");
        v0.e eVar = new v0.e(mVarT);
        t3.b0 b0VarD = p0VarO.w().d();
        m3.k.d(b0VarD, "workManagerImpl.workTask…r.taskCoroutineDispatcher");
        final t3.h1 h1VarB = v0.f.b(eVar, uVarF, b0VarD, this);
        this.f2759h.a(new java.lang.Runnable() { // from class: d1.c
            @Override // java.lang.Runnable
            public final void run() {
                androidx.work.impl.workers.ConstraintTrackingWorker.f(h1VarB);
            }
        }, new a1.t());
        if (!eVar.a(uVarF)) {
            nVarE.a(d1.d.f3945a, "Constraints not met for delegate " + strO + ". Requesting retry.");
            b1.c<androidx.work.c.a> cVar4 = this.f2759h;
            m3.k.d(cVar4, "future");
            d1.d.e(cVar4);
            return;
        }
        nVarE.a(d1.d.f3945a, "Constraints met for delegate " + strO);
        try {
            androidx.work.c cVar5 = this.f2760i;
            m3.k.b(cVar5);
            final r2.a<androidx.work.c.a> aVarStartWork = cVar5.startWork();
            m3.k.d(aVarStartWork, "delegate!!.startWork()");
            aVarStartWork.a(new java.lang.Runnable() { // from class: d1.b
                @Override // java.lang.Runnable
                public final void run() {
                    androidx.work.impl.workers.ConstraintTrackingWorker.g(this.f3942a, aVarStartWork);
                }
            }, getBackgroundExecutor());
        } catch (java.lang.Throwable th) {
            nVarE.b(d1.d.f3945a, "Delegated worker " + strO + " threw exception in startWork.", th);
            synchronized (this.f2757f) {
                if (!this.f2758g) {
                    b1.c<androidx.work.c.a> cVar6 = this.f2759h;
                    m3.k.d(cVar6, "future");
                    d1.d.d(cVar6);
                } else {
                    nVarE.a(d1.d.f3945a, "Constraints were unmet, Retrying.");
                    b1.c<androidx.work.c.a> cVar7 = this.f2759h;
                    m3.k.d(cVar7, "future");
                    d1.d.e(cVar7);
                }
            }
        }
    }

    @Override // androidx.work.c
    public void onStopped() {
        super.onStopped();
        androidx.work.c cVar = this.f2760i;
        if (cVar == null || cVar.isStopped()) {
            return;
        }
        cVar.stop(android.os.Build.VERSION.SDK_INT >= 31 ? getStopReason() : 0);
    }

    @Override // androidx.work.c
    public r2.a<androidx.work.c.a> startWork() {
        getBackgroundExecutor().execute(new java.lang.Runnable() { // from class: d1.a
            @Override // java.lang.Runnable
            public final void run() {
                androidx.work.impl.workers.ConstraintTrackingWorker.h(this.f3941a);
            }
        });
        b1.c<androidx.work.c.a> cVar = this.f2759h;
        m3.k.d(cVar, "future");
        return cVar;
    }
}
