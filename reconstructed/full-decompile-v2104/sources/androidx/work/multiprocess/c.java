package androidx.work.multiprocess;

/* JADX INFO: compiled from: ListenableWorkerImplClient.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.lang.String f2849e = q0.n.i("ListenableWorkerImplClient");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f2850a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.concurrent.Executor f2851b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.Object f2852c = new java.lang.Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public androidx.work.multiprocess.c.b f2853d;

    /* JADX INFO: compiled from: ListenableWorkerImplClient.java */
    public class a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ r2.a f2854a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ androidx.work.multiprocess.RemoteCallback f2855b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ androidx.work.multiprocess.f f2856c;

        /* JADX INFO: renamed from: androidx.work.multiprocess.c$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ListenableWorkerImplClient.java */
        public class RunnableC0027a implements java.lang.Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ androidx.work.multiprocess.IListenableWorkerImpl f2858a;

            public RunnableC0027a(androidx.work.multiprocess.IListenableWorkerImpl iListenableWorkerImpl) {
                this.f2858a = iListenableWorkerImpl;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    androidx.work.multiprocess.c.a aVar = androidx.work.multiprocess.c.a.this;
                    aVar.f2856c.a(this.f2858a, aVar.f2855b);
                } catch (java.lang.Throwable th) {
                    q0.n.e().d(androidx.work.multiprocess.c.f2849e, "Unable to execute", th);
                    androidx.work.multiprocess.a.RunnableC0026a.a(androidx.work.multiprocess.c.a.this.f2855b, th);
                }
            }
        }

        public a(r2.a aVar, androidx.work.multiprocess.RemoteCallback remoteCallback, androidx.work.multiprocess.f fVar) {
            this.f2854a = aVar;
            this.f2855b = remoteCallback;
            this.f2856c = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                androidx.work.multiprocess.IListenableWorkerImpl iListenableWorkerImpl = (androidx.work.multiprocess.IListenableWorkerImpl) this.f2854a.get();
                this.f2855b.setBinder(iListenableWorkerImpl.asBinder());
                androidx.work.multiprocess.c.this.f2851b.execute(new androidx.work.multiprocess.c.a.RunnableC0027a(iListenableWorkerImpl));
            } catch (java.lang.InterruptedException | java.util.concurrent.ExecutionException e5) {
                q0.n.e().d(androidx.work.multiprocess.c.f2849e, "Unable to bind to service", e5);
                androidx.work.multiprocess.a.RunnableC0026a.a(this.f2855b, e5);
            }
        }
    }

    /* JADX INFO: compiled from: ListenableWorkerImplClient.java */
    public static class b implements android.content.ServiceConnection {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final java.lang.String f2860b = q0.n.i("ListenableWorkerImplSession");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final b1.c<androidx.work.multiprocess.IListenableWorkerImpl> f2861a = b1.c.t();

        @Override // android.content.ServiceConnection
        public void onBindingDied(android.content.ComponentName componentName) {
            q0.n.e().k(f2860b, "Binding died");
            this.f2861a.q(new java.lang.RuntimeException("Binding died"));
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(android.content.ComponentName componentName) {
            q0.n.e().c(f2860b, "Unable to bind to service");
            this.f2861a.q(new java.lang.RuntimeException("Cannot bind to service " + componentName));
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(android.content.ComponentName componentName, android.os.IBinder iBinder) {
            q0.n.e().a(f2860b, "Service connected");
            this.f2861a.p(androidx.work.multiprocess.IListenableWorkerImpl.Stub.asInterface(iBinder));
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(android.content.ComponentName componentName) {
            q0.n.e().k(f2860b, "Service disconnected");
            this.f2861a.q(new java.lang.RuntimeException("Service disconnected"));
        }
    }

    public c(android.content.Context context, java.util.concurrent.Executor executor) {
        this.f2850a = context;
        this.f2851b = executor;
    }

    public static void d(androidx.work.multiprocess.c.b bVar, java.lang.Throwable th) {
        q0.n.e().d(f2849e, "Unable to bind to service", th);
        bVar.f2861a.q(th);
    }

    public r2.a<byte[]> a(android.content.ComponentName componentName, androidx.work.multiprocess.f<androidx.work.multiprocess.IListenableWorkerImpl> fVar) {
        return b(c(componentName), fVar, new androidx.work.multiprocess.RemoteCallback());
    }

    @android.annotation.SuppressLint({"LambdaLast"})
    public r2.a<byte[]> b(r2.a<androidx.work.multiprocess.IListenableWorkerImpl> aVar, androidx.work.multiprocess.f<androidx.work.multiprocess.IListenableWorkerImpl> fVar, androidx.work.multiprocess.RemoteCallback remoteCallback) {
        aVar.a(new androidx.work.multiprocess.c.a(aVar, remoteCallback, fVar), this.f2851b);
        return remoteCallback.getFuture();
    }

    public r2.a<androidx.work.multiprocess.IListenableWorkerImpl> c(android.content.ComponentName componentName) {
        b1.c<androidx.work.multiprocess.IListenableWorkerImpl> cVar;
        synchronized (this.f2852c) {
            if (this.f2853d == null) {
                q0.n.e().a(f2849e, "Binding to " + componentName.getPackageName() + ", " + componentName.getClassName());
                this.f2853d = new androidx.work.multiprocess.c.b();
                try {
                    android.content.Intent intent = new android.content.Intent();
                    intent.setComponent(componentName);
                    if (!this.f2850a.bindService(intent, this.f2853d, 1)) {
                        d(this.f2853d, new java.lang.RuntimeException("Unable to bind to service"));
                    }
                } catch (java.lang.Throwable th) {
                    d(this.f2853d, th);
                }
                cVar = this.f2853d.f2861a;
            } else {
                cVar = this.f2853d.f2861a;
            }
            throw th;
        }
        return cVar;
    }

    public void e() {
        synchronized (this.f2852c) {
            androidx.work.multiprocess.c.b bVar = this.f2853d;
            if (bVar != null) {
                this.f2850a.unbindService(bVar);
                this.f2853d = null;
            }
        }
    }
}
