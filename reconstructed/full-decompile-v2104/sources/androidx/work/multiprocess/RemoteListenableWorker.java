package androidx.work.multiprocess;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class RemoteListenableWorker extends androidx.work.c {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final java.lang.String f2788i = q0.n.i("RemoteListenableWorker");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final androidx.work.WorkerParameters f2789e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final androidx.work.multiprocess.c f2790f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public java.lang.String f2791g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public android.content.ComponentName f2792h;

    public class a implements androidx.work.multiprocess.f<androidx.work.multiprocess.IListenableWorkerImpl> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ r0.p0 f2793a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f2794b;

        public a(r0.p0 p0Var, java.lang.String str) {
            this.f2793a = p0Var;
            this.f2794b = str;
        }

        @Override // androidx.work.multiprocess.f
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(androidx.work.multiprocess.IListenableWorkerImpl iListenableWorkerImpl, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
            z0.u uVarF = this.f2793a.u().J().f(this.f2794b);
            androidx.work.multiprocess.RemoteListenableWorker.this.f2791g = uVarF.f7034c;
            iListenableWorkerImpl.startWork(e1.a.a(new androidx.work.multiprocess.parcelable.ParcelableRemoteWorkRequest(uVarF.f7034c, androidx.work.multiprocess.RemoteListenableWorker.this.f2789e)), iWorkManagerImplCallback);
        }
    }

    public class b implements i.a<byte[], androidx.work.c.a> {
        public b() {
        }

        @Override // i.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.work.c.a apply(byte[] bArr) {
            androidx.work.multiprocess.parcelable.ParcelableResult parcelableResult = (androidx.work.multiprocess.parcelable.ParcelableResult) e1.a.b(bArr, androidx.work.multiprocess.parcelable.ParcelableResult.CREATOR);
            q0.n.e().a(androidx.work.multiprocess.RemoteListenableWorker.f2788i, "Cleaning up");
            androidx.work.multiprocess.RemoteListenableWorker.this.f2790f.e();
            return parcelableResult.a();
        }
    }

    public RemoteListenableWorker(android.content.Context context, androidx.work.WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f2789e = workerParameters;
        this.f2790f = new androidx.work.multiprocess.c(context, getBackgroundExecutor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(int i5, androidx.work.multiprocess.IListenableWorkerImpl iListenableWorkerImpl, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws java.lang.Throwable {
        iListenableWorkerImpl.interrupt(e1.a.a(new androidx.work.multiprocess.parcelable.ParcelableInterruptRequest(this.f2789e.d().toString(), i5)), iWorkManagerImplCallback);
    }

    public abstract r2.a<androidx.work.c.a> d();

    @Override // androidx.work.c
    @android.annotation.SuppressLint({"NewApi"})
    public void onStopped() {
        super.onStopped();
        final int stopReason = getStopReason();
        android.content.ComponentName componentName = this.f2792h;
        if (componentName != null) {
            this.f2790f.a(componentName, new androidx.work.multiprocess.f() { // from class: androidx.work.multiprocess.h
                @Override // androidx.work.multiprocess.f
                public final void a(java.lang.Object obj, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws java.lang.Throwable {
                    this.f2867a.c(stopReason, (androidx.work.multiprocess.IListenableWorkerImpl) obj, iWorkManagerImplCallback);
                }
            });
        }
    }

    @Override // androidx.work.c
    public final r2.a<androidx.work.c.a> startWork() {
        b1.c cVarT = b1.c.t();
        androidx.work.b inputData = getInputData();
        java.lang.String string = this.f2789e.d().toString();
        java.lang.String strO = inputData.o("androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME");
        java.lang.String strO2 = inputData.o("androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME");
        if (android.text.TextUtils.isEmpty(strO)) {
            q0.n.e().c(f2788i, "Need to specify a package name for the Remote Service.");
            cVarT.q(new java.lang.IllegalArgumentException("Need to specify a package name for the Remote Service."));
            return cVarT;
        }
        if (android.text.TextUtils.isEmpty(strO2)) {
            q0.n.e().c(f2788i, "Need to specify a class name for the Remote Service.");
            cVarT.q(new java.lang.IllegalArgumentException("Need to specify a class name for the Remote Service."));
            return cVarT;
        }
        this.f2792h = new android.content.ComponentName(strO, strO2);
        return androidx.work.multiprocess.d.a(this.f2790f.a(this.f2792h, new androidx.work.multiprocess.RemoteListenableWorker.a(r0.p0.o(getApplicationContext()), string)), new androidx.work.multiprocess.RemoteListenableWorker.b(), getBackgroundExecutor());
    }
}
