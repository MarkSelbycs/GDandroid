package androidx.work.impl.workers;

/* JADX INFO: compiled from: CombineContinuationsWorker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class CombineContinuationsWorker extends androidx.work.Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineContinuationsWorker(android.content.Context context, androidx.work.WorkerParameters workerParameters) {
        super(context, workerParameters);
        m3.k.e(context, "context");
        m3.k.e(workerParameters, "workerParams");
    }

    @Override // androidx.work.Worker
    public androidx.work.c.a doWork() {
        androidx.work.c.a aVarF = androidx.work.c.a.f(getInputData());
        m3.k.d(aVarF, "success(inputData)");
        return aVarF;
    }
}
