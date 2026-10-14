package a1;

/* JADX INFO: compiled from: WorkForegroundUpdater.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class y implements q0.i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final java.lang.String f62d = q0.n.i("WMFgUpdater");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c1.b f63a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final y0.a f64b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final z0.v f65c;

    /* JADX INFO: compiled from: WorkForegroundUpdater.java */
    public class a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ b1.c f66a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.util.UUID f67b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ q0.h f68c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ android.content.Context f69d;

        public a(b1.c cVar, java.util.UUID uuid, q0.h hVar, android.content.Context context) {
            this.f66a = cVar;
            this.f67b = uuid;
            this.f68c = hVar;
            this.f69d = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (!this.f66a.isCancelled()) {
                    java.lang.String string = this.f67b.toString();
                    z0.u uVarF = a1.y.this.f65c.f(string);
                    if (uVarF == null || uVarF.f7033b.e()) {
                        throw new java.lang.IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                    }
                    a1.y.this.f64b.a(string, this.f68c);
                    this.f69d.startService(androidx.work.impl.foreground.a.e(this.f69d, z0.x.a(uVarF), this.f68c));
                }
                this.f66a.p(null);
            } catch (java.lang.Throwable th) {
                this.f66a.q(th);
            }
        }
    }

    @android.annotation.SuppressLint({"LambdaLast"})
    public y(androidx.work.impl.WorkDatabase workDatabase, y0.a aVar, c1.b bVar) {
        this.f64b = aVar;
        this.f63a = bVar;
        this.f65c = workDatabase.J();
    }

    @Override // q0.i
    public r2.a<java.lang.Void> a(android.content.Context context, java.util.UUID uuid, q0.h hVar) {
        b1.c cVarT = b1.c.t();
        this.f63a.a(new a1.y.a(cVarT, uuid, hVar, context));
        return cVarT;
    }
}
