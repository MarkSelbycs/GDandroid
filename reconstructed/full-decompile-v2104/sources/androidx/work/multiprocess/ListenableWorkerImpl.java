package androidx.work.multiprocess;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ListenableWorkerImpl extends androidx.work.multiprocess.IListenableWorkerImpl.Stub {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final java.lang.String f2767j = q0.n.i("WM-RemoteWorker ListenableWorkerImpl");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static byte[] f2768k = new byte[0];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final java.lang.Object f2769l = new java.lang.Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final android.content.Context f2770d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final androidx.work.a f2771e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final c1.b f2772f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final q0.u f2773g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final q0.i f2774h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final java.util.Map<java.lang.String, androidx.work.multiprocess.l> f2775i;

    public class a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ r2.a f2776a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ androidx.work.multiprocess.IWorkManagerImplCallback f2777b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f2778c;

        public a(r2.a aVar, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback, java.lang.String str) {
            this.f2776a = aVar;
            this.f2777b = iWorkManagerImplCallback;
            this.f2778c = str;
        }

        /* JADX WARN: Code duplicated, block: B:45:0x006c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    androidx.work.multiprocess.a.RunnableC0026a.b(this.f2777b, e1.a.a(new androidx.work.multiprocess.parcelable.ParcelableResult((androidx.work.c.a) this.f2776a.get())));
                    synchronized (androidx.work.multiprocess.ListenableWorkerImpl.f2769l) {
                        androidx.work.multiprocess.ListenableWorkerImpl.this.f2775i.remove(this.f2778c);
                    }
                } catch (java.lang.InterruptedException e5) {
                    e = e5;
                    androidx.work.multiprocess.a.RunnableC0026a.a(this.f2777b, e);
                    synchronized (androidx.work.multiprocess.ListenableWorkerImpl.f2769l) {
                        androidx.work.multiprocess.ListenableWorkerImpl.this.f2775i.remove(this.f2778c);
                    }
                } catch (java.util.concurrent.CancellationException e6) {
                    q0.n.e().a(androidx.work.multiprocess.ListenableWorkerImpl.f2767j, "Worker (" + this.f2778c + ") was cancelled");
                    androidx.work.multiprocess.a.RunnableC0026a.a(this.f2777b, e6);
                    synchronized (androidx.work.multiprocess.ListenableWorkerImpl.f2769l) {
                        androidx.work.multiprocess.ListenableWorkerImpl.this.f2775i.remove(this.f2778c);
                    }
                } catch (java.util.concurrent.ExecutionException e7) {
                    e = e7;
                    androidx.work.multiprocess.a.RunnableC0026a.a(this.f2777b, e);
                    synchronized (androidx.work.multiprocess.ListenableWorkerImpl.f2769l) {
                        androidx.work.multiprocess.ListenableWorkerImpl.this.f2775i.remove(this.f2778c);
                    }
                }
            } catch (java.lang.Throwable th) {
                synchronized (androidx.work.multiprocess.ListenableWorkerImpl.f2769l) {
                    androidx.work.multiprocess.ListenableWorkerImpl.this.f2775i.remove(this.f2778c);
                    throw th;
                }
            }
        }
    }

    public ListenableWorkerImpl(android.content.Context context) {
        this.f2770d = context.getApplicationContext();
        androidx.work.multiprocess.k kVarC = androidx.work.multiprocess.k.c(context);
        this.f2771e = kVarC.a();
        this.f2772f = kVarC.e();
        this.f2773g = kVarC.d();
        this.f2774h = kVarC.b();
        this.f2775i = new java.util.HashMap();
    }

    private r2.a<androidx.work.c.a> executeWorkRequest(java.lang.String str, java.lang.String str2, androidx.work.WorkerParameters workerParameters) {
        androidx.work.multiprocess.l lVarE = androidx.work.multiprocess.o.e(this.f2770d, this.f2771e, str2, workerParameters, this.f2772f);
        synchronized (f2769l) {
            this.f2775i.put(str, lVarE);
        }
        return lVarE.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$interrupt$0(androidx.work.multiprocess.l lVar, int i5, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) {
        lVar.c(i5);
        androidx.work.multiprocess.a.RunnableC0026a.b(iWorkManagerImplCallback, f2768k);
    }

    @Override // androidx.work.multiprocess.IListenableWorkerImpl
    public void interrupt(byte[] bArr, final androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) {
        final androidx.work.multiprocess.l lVarRemove;
        try {
            androidx.work.multiprocess.parcelable.ParcelableInterruptRequest parcelableInterruptRequest = (androidx.work.multiprocess.parcelable.ParcelableInterruptRequest) e1.a.b(bArr, androidx.work.multiprocess.parcelable.ParcelableInterruptRequest.CREATOR);
            java.lang.String strA = parcelableInterruptRequest.a();
            final int iB = parcelableInterruptRequest.b();
            q0.n.e().a(f2767j, "Interrupting work with id (" + strA + ")");
            synchronized (f2769l) {
                lVarRemove = this.f2775i.remove(strA);
            }
            if (lVarRemove != null) {
                this.f2772f.c().execute(new java.lang.Runnable() { // from class: androidx.work.multiprocess.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        androidx.work.multiprocess.ListenableWorkerImpl.lambda$interrupt$0(lVarRemove, iB, iWorkManagerImplCallback);
                    }
                });
            } else {
                androidx.work.multiprocess.a.RunnableC0026a.b(iWorkManagerImplCallback, f2768k);
            }
        } catch (java.lang.Throwable th) {
            androidx.work.multiprocess.a.RunnableC0026a.a(iWorkManagerImplCallback, th);
        }
    }

    @Override // androidx.work.multiprocess.IListenableWorkerImpl
    public void startWork(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) {
        try {
            androidx.work.multiprocess.parcelable.ParcelableRemoteWorkRequest parcelableRemoteWorkRequest = (androidx.work.multiprocess.parcelable.ParcelableRemoteWorkRequest) e1.a.b(bArr, androidx.work.multiprocess.parcelable.ParcelableRemoteWorkRequest.CREATOR);
            androidx.work.WorkerParameters workerParametersA = parcelableRemoteWorkRequest.a().a(this.f2771e, this.f2772f, this.f2773g, this.f2774h);
            java.lang.String string = workerParametersA.d().toString();
            java.lang.String strB = parcelableRemoteWorkRequest.b();
            q0.n.e().a(f2767j, "Executing work request (" + string + ", " + strB + ")");
            r2.a<androidx.work.c.a> aVarExecuteWorkRequest = executeWorkRequest(string, strB, workerParametersA);
            aVarExecuteWorkRequest.a(new androidx.work.multiprocess.ListenableWorkerImpl.a(aVarExecuteWorkRequest, iWorkManagerImplCallback, string), this.f2772f.c());
        } catch (java.lang.Throwable th) {
            androidx.work.multiprocess.a.RunnableC0026a.a(iWorkManagerImplCallback, th);
        }
    }
}
