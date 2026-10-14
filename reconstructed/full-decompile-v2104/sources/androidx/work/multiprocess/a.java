package androidx.work.multiprocess;

/* JADX INFO: compiled from: ListenableCallback.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a<I> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.concurrent.Executor f2841a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.work.multiprocess.IWorkManagerImplCallback f2842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final r2.a<I> f2843c;

    /* JADX INFO: renamed from: androidx.work.multiprocess.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ListenableCallback.java */
    public static class RunnableC0026a<I> implements java.lang.Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final java.lang.String f2844b = q0.n.i("ListenableCallbackRbl");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.work.multiprocess.a<I> f2845a;

        public RunnableC0026a(androidx.work.multiprocess.a<I> aVar) {
            this.f2845a = aVar;
        }

        public static void a(androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback, java.lang.Throwable th) {
            try {
                iWorkManagerImplCallback.onFailure(th.getMessage());
            } catch (android.os.RemoteException e5) {
                q0.n.e().d(f2844b, "Unable to notify failures in operation", e5);
            }
        }

        public static void b(androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback, byte[] bArr) {
            try {
                iWorkManagerImplCallback.onSuccess(bArr);
            } catch (android.os.RemoteException e5) {
                q0.n.e().d(f2844b, "Unable to notify successful operation", e5);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                I i5 = this.f2845a.f2843c.get();
                androidx.work.multiprocess.a<I> aVar = this.f2845a;
                b(aVar.f2842b, aVar.b(i5));
            } catch (java.lang.Throwable th) {
                a(this.f2845a.f2842b, th);
            }
        }
    }

    public a(java.util.concurrent.Executor executor, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback, r2.a<I> aVar) {
        this.f2841a = executor;
        this.f2842b = iWorkManagerImplCallback;
        this.f2843c = aVar;
    }

    public void a() {
        this.f2843c.a(new androidx.work.multiprocess.a.RunnableC0026a(this), this.f2841a);
    }

    public abstract byte[] b(I i5);
}
