package a1;

/* JADX INFO: compiled from: WorkForegroundRunnable.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class x implements java.lang.Runnable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final java.lang.String f53g = q0.n.i("WorkForegroundRunnable");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b1.c<java.lang.Void> f54a = b1.c.t();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.content.Context f55b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final z0.u f56c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.work.c f57d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final q0.i f58e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final c1.b f59f;

    /* JADX INFO: compiled from: WorkForegroundRunnable.java */
    public class a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ b1.c f60a;

        public a(b1.c cVar) {
            this.f60a = cVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            if (a1.x.this.f54a.isCancelled()) {
                return;
            }
            try {
                q0.h hVar = (q0.h) this.f60a.get();
                if (hVar == null) {
                    throw new java.lang.IllegalStateException("Worker was marked important (" + a1.x.this.f56c.f7034c + ") but did not provide ForegroundInfo");
                }
                q0.n.e().a(a1.x.f53g, "Updating notification for " + a1.x.this.f56c.f7034c);
                a1.x xVar = a1.x.this;
                xVar.f54a.r(xVar.f58e.a(xVar.f55b, xVar.f57d.getId(), hVar));
            } catch (java.lang.Throwable th) {
                a1.x.this.f54a.q(th);
            }
        }
    }

    @android.annotation.SuppressLint({"LambdaLast"})
    public x(android.content.Context context, z0.u uVar, androidx.work.c cVar, q0.i iVar, c1.b bVar) {
        this.f55b = context;
        this.f56c = uVar;
        this.f57d = cVar;
        this.f58e = iVar;
        this.f59f = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(b1.c cVar) {
        if (this.f54a.isCancelled()) {
            cVar.cancel(true);
        } else {
            cVar.r(this.f57d.getForegroundInfoAsync());
        }
    }

    public r2.a<java.lang.Void> b() {
        return this.f54a;
    }

    @Override // java.lang.Runnable
    @android.annotation.SuppressLint({"UnsafeExperimentalUsageError"})
    public void run() {
        if (!this.f56c.f7048q || android.os.Build.VERSION.SDK_INT >= 31) {
            this.f54a.p(null);
            return;
        }
        final b1.c cVarT = b1.c.t();
        this.f59f.b().execute(new java.lang.Runnable() { // from class: a1.w
            @Override // java.lang.Runnable
            public final void run() {
                this.f51a.c(cVarT);
            }
        });
        cVarT.a(new a1.x.a(cVarT), this.f59f.b());
    }
}
