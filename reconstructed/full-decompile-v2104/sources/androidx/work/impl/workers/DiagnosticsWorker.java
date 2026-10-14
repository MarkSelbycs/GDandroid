package androidx.work.impl.workers;

/* JADX INFO: compiled from: DiagnosticsWorker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class DiagnosticsWorker extends androidx.work.Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiagnosticsWorker(android.content.Context context, androidx.work.WorkerParameters workerParameters) {
        super(context, workerParameters);
        m3.k.e(context, "context");
        m3.k.e(workerParameters, "parameters");
    }

    @Override // androidx.work.Worker
    public androidx.work.c.a doWork() {
        r0.p0 p0VarO = r0.p0.o(getApplicationContext());
        m3.k.d(p0VarO, "getInstance(applicationContext)");
        androidx.work.impl.WorkDatabase workDatabaseU = p0VarO.u();
        m3.k.d(workDatabaseU, "workManager.workDatabase");
        z0.v vVarJ = workDatabaseU.J();
        z0.o oVarH = workDatabaseU.H();
        z0.z zVarK = workDatabaseU.K();
        z0.j jVarG = workDatabaseU.G();
        java.util.List<z0.u> listC = vVarJ.C(p0VarO.m().a().a() - java.util.concurrent.TimeUnit.DAYS.toMillis(1L));
        java.util.List<z0.u> listJ = vVarJ.j();
        java.util.List<z0.u> listW = vVarJ.w(200);
        if (!listC.isEmpty()) {
            q0.n.e().f(d1.e.f3946a, "Recently completed work:\n\n");
            q0.n.e().f(d1.e.f3946a, d1.e.d(oVarH, zVarK, jVarG, listC));
        }
        if (!listJ.isEmpty()) {
            q0.n.e().f(d1.e.f3946a, "Running work:\n\n");
            q0.n.e().f(d1.e.f3946a, d1.e.d(oVarH, zVarK, jVarG, listJ));
        }
        if (!listW.isEmpty()) {
            q0.n.e().f(d1.e.f3946a, "Enqueued work:\n\n");
            q0.n.e().f(d1.e.f3946a, d1.e.d(oVarH, zVarK, jVarG, listW));
        }
        androidx.work.c.a aVarE = androidx.work.c.a.e();
        m3.k.d(aVarE, "success()");
        return aVarE;
    }
}
