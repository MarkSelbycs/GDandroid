package a1;

/* JADX INFO: compiled from: WorkProgressUpdater.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class z implements q0.u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.lang.String f71c = q0.n.i("WorkProgressUpdater");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.work.impl.WorkDatabase f72a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c1.b f73b;

    /* JADX INFO: compiled from: WorkProgressUpdater.java */
    public class a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.util.UUID f74a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ androidx.work.b f75b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ b1.c f76c;

        public a(java.util.UUID uuid, androidx.work.b bVar, b1.c cVar) {
            this.f74a = uuid;
            this.f75b = bVar;
            this.f76c = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            java.lang.String string = this.f74a.toString();
            q0.n nVarE = q0.n.e();
            java.lang.String str = a1.z.f71c;
            nVarE.a(str, "Updating progress for " + this.f74a + " (" + this.f75b + ")");
            a1.z.this.f72a.e();
            try {
                z0.u uVarF = a1.z.this.f72a.J().f(string);
                if (uVarF == null) {
                    throw new java.lang.IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
                }
                if (uVarF.f7033b == q0.y.c.RUNNING) {
                    a1.z.this.f72a.I().c(new z0.q(string, this.f75b));
                } else {
                    q0.n.e().k(str, "Ignoring setProgressAsync(...). WorkSpec (" + string + ") is not in a RUNNING state.");
                }
                this.f76c.p(null);
                a1.z.this.f72a.B();
            } catch (java.lang.Throwable th) {
                try {
                    q0.n.e().d(a1.z.f71c, "Error updating Worker progress", th);
                    this.f76c.q(th);
                } finally {
                    a1.z.this.f72a.i();
                }
            }
        }
    }

    public z(androidx.work.impl.WorkDatabase workDatabase, c1.b bVar) {
        this.f72a = workDatabase;
        this.f73b = bVar;
    }

    @Override // q0.u
    public r2.a<java.lang.Void> a(android.content.Context context, java.util.UUID uuid, androidx.work.b bVar) {
        b1.c cVarT = b1.c.t();
        this.f73b.a(new a1.z.a(uuid, bVar, cVarT));
        return cVarT;
    }
}
