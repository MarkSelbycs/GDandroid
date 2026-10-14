package androidx.work;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class Worker extends androidx.work.c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b1.c<androidx.work.c.a> f2590e;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                androidx.work.Worker.this.f2590e.p(androidx.work.Worker.this.doWork());
            } catch (java.lang.Throwable th) {
                androidx.work.Worker.this.f2590e.q(th);
            }
        }
    }

    public class b implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ b1.c f2592a;

        public b(b1.c cVar) {
            this.f2592a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f2592a.p(androidx.work.Worker.this.getForegroundInfo());
            } catch (java.lang.Throwable th) {
                this.f2592a.q(th);
            }
        }
    }

    public Worker(android.content.Context context, androidx.work.WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public abstract androidx.work.c.a doWork();

    public q0.h getForegroundInfo() {
        throw new java.lang.IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for \n `getForegroundInfo()`");
    }

    @Override // androidx.work.c
    public r2.a<q0.h> getForegroundInfoAsync() {
        b1.c cVarT = b1.c.t();
        getBackgroundExecutor().execute(new androidx.work.Worker.b(cVarT));
        return cVarT;
    }

    @Override // androidx.work.c
    public final r2.a<androidx.work.c.a> startWork() {
        this.f2590e = b1.c.t();
        getBackgroundExecutor().execute(new androidx.work.Worker.a());
        return this.f2590e;
    }
}
