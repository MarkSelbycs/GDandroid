package androidx.work.multiprocess;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanKeepAnnotation"})
public class RemoteWorkManagerClient extends androidx.work.multiprocess.j {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final java.lang.String f2797j = q0.n.i("RemoteWorkManagerClient");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.work.multiprocess.RemoteWorkManagerClient.d f2798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.content.Context f2799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final r0.p0 f2800c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.concurrent.Executor f2801d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.lang.Object f2802e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile long f2803f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f2804g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final android.os.Handler f2805h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final androidx.work.multiprocess.RemoteWorkManagerClient.e f2806i;

    public static class SessionRemoteCallback extends androidx.work.multiprocess.RemoteCallback {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final androidx.work.multiprocess.RemoteWorkManagerClient f2807g;

        public SessionRemoteCallback(androidx.work.multiprocess.RemoteWorkManagerClient remoteWorkManagerClient) {
            this.f2807g = remoteWorkManagerClient;
        }

        @Override // androidx.work.multiprocess.RemoteCallback
        public void onRequestCompleted() {
            super.onRequestCompleted();
            this.f2807g.k().postDelayed(this.f2807g.o(), this.f2807g.n());
        }
    }

    public class a implements androidx.work.multiprocess.f<androidx.work.multiprocess.IWorkManagerImpl> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f2808a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ q0.h f2809b;

        public a(java.lang.String str, q0.h hVar) {
            this.f2808a = str;
            this.f2809b = hVar;
        }

        @Override // androidx.work.multiprocess.f
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(androidx.work.multiprocess.IWorkManagerImpl iWorkManagerImpl, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws java.lang.Throwable {
            iWorkManagerImpl.setForegroundAsync(e1.a.a(new androidx.work.multiprocess.parcelable.ParcelableForegroundRequestInfo(this.f2808a, this.f2809b)), iWorkManagerImplCallback);
        }
    }

    public class b implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ r2.a f2811a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ androidx.work.multiprocess.RemoteCallback f2812b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ androidx.work.multiprocess.f f2813c;

        public class a implements java.lang.Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ androidx.work.multiprocess.IWorkManagerImpl f2815a;

            public a(androidx.work.multiprocess.IWorkManagerImpl iWorkManagerImpl) {
                this.f2815a = iWorkManagerImpl;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    androidx.work.multiprocess.RemoteWorkManagerClient.b bVar = androidx.work.multiprocess.RemoteWorkManagerClient.b.this;
                    bVar.f2813c.a(this.f2815a, bVar.f2812b);
                } catch (java.lang.Throwable th) {
                    q0.n.e().d(androidx.work.multiprocess.RemoteWorkManagerClient.f2797j, "Unable to execute", th);
                    androidx.work.multiprocess.a.RunnableC0026a.a(androidx.work.multiprocess.RemoteWorkManagerClient.b.this.f2812b, th);
                }
            }
        }

        public b(r2.a aVar, androidx.work.multiprocess.RemoteCallback remoteCallback, androidx.work.multiprocess.f fVar) {
            this.f2811a = aVar;
            this.f2812b = remoteCallback;
            this.f2813c = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                androidx.work.multiprocess.IWorkManagerImpl iWorkManagerImpl = (androidx.work.multiprocess.IWorkManagerImpl) this.f2811a.get();
                this.f2812b.setBinder(iWorkManagerImpl.asBinder());
                androidx.work.multiprocess.RemoteWorkManagerClient.this.f2801d.execute(new androidx.work.multiprocess.RemoteWorkManagerClient.b.a(iWorkManagerImpl));
            } catch (java.lang.InterruptedException | java.util.concurrent.ExecutionException unused) {
                q0.n.e().c(androidx.work.multiprocess.RemoteWorkManagerClient.f2797j, "Unable to bind to service");
                androidx.work.multiprocess.a.RunnableC0026a.a(this.f2812b, new java.lang.RuntimeException("Unable to bind to service"));
                androidx.work.multiprocess.RemoteWorkManagerClient.this.d();
            }
        }
    }

    public class c implements androidx.work.multiprocess.f<androidx.work.multiprocess.IWorkManagerImpl> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.util.UUID f2817a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ androidx.work.b f2818b;

        public c(java.util.UUID uuid, androidx.work.b bVar) {
            this.f2817a = uuid;
            this.f2818b = bVar;
        }

        @Override // androidx.work.multiprocess.f
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(androidx.work.multiprocess.IWorkManagerImpl iWorkManagerImpl, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws java.lang.Throwable {
            iWorkManagerImpl.setProgress(e1.a.a(new androidx.work.multiprocess.parcelable.ParcelableUpdateRequest(this.f2817a, this.f2818b)), iWorkManagerImplCallback);
        }
    }

    public static class d implements android.content.ServiceConnection {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final java.lang.String f2820c = q0.n.i("RemoteWMgr.Connection");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final b1.c<androidx.work.multiprocess.IWorkManagerImpl> f2821a = b1.c.t();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final androidx.work.multiprocess.RemoteWorkManagerClient f2822b;

        public d(androidx.work.multiprocess.RemoteWorkManagerClient remoteWorkManagerClient) {
            this.f2822b = remoteWorkManagerClient;
        }

        public void a() {
            q0.n.e().a(f2820c, "Binding died");
            this.f2821a.q(new java.lang.RuntimeException("Binding died"));
            this.f2822b.d();
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(android.content.ComponentName componentName) {
            a();
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(android.content.ComponentName componentName) {
            q0.n.e().c(f2820c, "Unable to bind to service");
            this.f2821a.q(new java.lang.RuntimeException("Cannot bind to service " + componentName));
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(android.content.ComponentName componentName, android.os.IBinder iBinder) {
            q0.n.e().a(f2820c, "Service connected");
            this.f2821a.p(androidx.work.multiprocess.IWorkManagerImpl.Stub.asInterface(iBinder));
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(android.content.ComponentName componentName) {
            q0.n.e().a(f2820c, "Service disconnected");
            this.f2821a.q(new java.lang.RuntimeException("Service disconnected"));
            this.f2822b.d();
        }
    }

    public static class e implements java.lang.Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final java.lang.String f2823b = q0.n.i("SessionHandler");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.work.multiprocess.RemoteWorkManagerClient f2824a;

        public e(androidx.work.multiprocess.RemoteWorkManagerClient remoteWorkManagerClient) {
            this.f2824a = remoteWorkManagerClient;
        }

        @Override // java.lang.Runnable
        public void run() {
            long jL = this.f2824a.l();
            synchronized (this.f2824a.m()) {
                long jL2 = this.f2824a.l();
                androidx.work.multiprocess.RemoteWorkManagerClient.d dVarH = this.f2824a.h();
                if (dVarH != null) {
                    if (jL == jL2) {
                        q0.n.e().a(f2823b, "Unbinding service");
                        this.f2824a.g().unbindService(dVarH);
                        dVarH.a();
                    } else {
                        q0.n.e().a(f2823b, "Ignoring request to unbind.");
                    }
                }
            }
        }
    }

    public RemoteWorkManagerClient(android.content.Context context, r0.p0 p0Var) {
        this(context, p0Var, 60000L);
    }

    public static android.content.Intent p(android.content.Context context) {
        return new android.content.Intent(context, (java.lang.Class<?>) androidx.work.multiprocess.RemoteWorkManagerService.class);
    }

    @Override // androidx.work.multiprocess.j
    public r2.a<java.lang.Void> b(java.lang.String str, q0.h hVar) {
        return androidx.work.multiprocess.d.a(e(new androidx.work.multiprocess.RemoteWorkManagerClient.a(str, hVar)), androidx.work.multiprocess.d.f2862a, this.f2801d);
    }

    @Override // androidx.work.multiprocess.j
    public r2.a<java.lang.Void> c(java.util.UUID uuid, androidx.work.b bVar) {
        return androidx.work.multiprocess.d.a(e(new androidx.work.multiprocess.RemoteWorkManagerClient.c(uuid, bVar)), androidx.work.multiprocess.d.f2862a, this.f2801d);
    }

    public void d() {
        synchronized (this.f2802e) {
            q0.n.e().a(f2797j, "Cleaning up.");
            this.f2798a = null;
        }
    }

    public r2.a<byte[]> e(androidx.work.multiprocess.f<androidx.work.multiprocess.IWorkManagerImpl> fVar) {
        return f(i(), fVar, new androidx.work.multiprocess.RemoteWorkManagerClient.SessionRemoteCallback(this));
    }

    public r2.a<byte[]> f(r2.a<androidx.work.multiprocess.IWorkManagerImpl> aVar, androidx.work.multiprocess.f<androidx.work.multiprocess.IWorkManagerImpl> fVar, androidx.work.multiprocess.RemoteCallback remoteCallback) {
        aVar.a(new androidx.work.multiprocess.RemoteWorkManagerClient.b(aVar, remoteCallback, fVar), this.f2801d);
        return remoteCallback.getFuture();
    }

    public android.content.Context g() {
        return this.f2799b;
    }

    public androidx.work.multiprocess.RemoteWorkManagerClient.d h() {
        return this.f2798a;
    }

    public r2.a<androidx.work.multiprocess.IWorkManagerImpl> i() {
        return j(p(this.f2799b));
    }

    public r2.a<androidx.work.multiprocess.IWorkManagerImpl> j(android.content.Intent intent) {
        b1.c<androidx.work.multiprocess.IWorkManagerImpl> cVar;
        synchronized (this.f2802e) {
            this.f2803f++;
            if (this.f2798a == null) {
                q0.n.e().a(f2797j, "Creating a new session");
                androidx.work.multiprocess.RemoteWorkManagerClient.d dVar = new androidx.work.multiprocess.RemoteWorkManagerClient.d(this);
                this.f2798a = dVar;
                try {
                    if (!this.f2799b.bindService(intent, dVar, 1)) {
                        q(this.f2798a, new java.lang.RuntimeException("Unable to bind to service"));
                    }
                } catch (java.lang.Throwable th) {
                    q(this.f2798a, th);
                }
                this.f2805h.removeCallbacks(this.f2806i);
                cVar = this.f2798a.f2821a;
            } else {
                this.f2805h.removeCallbacks(this.f2806i);
                cVar = this.f2798a.f2821a;
            }
            throw th;
        }
        return cVar;
    }

    public android.os.Handler k() {
        return this.f2805h;
    }

    public long l() {
        return this.f2803f;
    }

    public java.lang.Object m() {
        return this.f2802e;
    }

    public long n() {
        return this.f2804g;
    }

    public androidx.work.multiprocess.RemoteWorkManagerClient.e o() {
        return this.f2806i;
    }

    public final void q(androidx.work.multiprocess.RemoteWorkManagerClient.d dVar, java.lang.Throwable th) {
        q0.n.e().d(f2797j, "Unable to bind to service", th);
        dVar.f2821a.q(th);
    }

    public RemoteWorkManagerClient(android.content.Context context, r0.p0 p0Var, long j5) {
        this.f2799b = context.getApplicationContext();
        this.f2800c = p0Var;
        this.f2801d = p0Var.w().c();
        this.f2802e = new java.lang.Object();
        this.f2798a = null;
        this.f2806i = new androidx.work.multiprocess.RemoteWorkManagerClient.e(this);
        this.f2804g = j5;
        this.f2805h = s.b.a(android.os.Looper.getMainLooper());
    }
}
