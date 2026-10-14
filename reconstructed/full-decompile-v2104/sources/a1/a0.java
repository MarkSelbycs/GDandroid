package a1;

/* JADX INFO: compiled from: WorkTimer.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.lang.String f5e = q0.n.i("WorkTimer");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q0.v f6a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.Map<z0.m, a1.a0.b> f7b = new java.util.HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.Map<z0.m, a1.a0.a> f8c = new java.util.HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.Object f9d = new java.lang.Object();

    /* JADX INFO: compiled from: WorkTimer.java */
    public interface a {
        void b(z0.m mVar);
    }

    /* JADX INFO: compiled from: WorkTimer.java */
    public static class b implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final a1.a0 f10a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final z0.m f11b;

        public b(a1.a0 a0Var, z0.m mVar) {
            this.f10a = a0Var;
            this.f11b = mVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f10a.f9d) {
                if (this.f10a.f7b.remove(this.f11b) != null) {
                    a1.a0.a aVarRemove = this.f10a.f8c.remove(this.f11b);
                    if (aVarRemove != null) {
                        aVarRemove.b(this.f11b);
                    }
                } else {
                    q0.n.e().a("WrkTimerRunnable", java.lang.String.format("Timer with %s is already marked as complete.", this.f11b));
                }
            }
        }
    }

    public a0(q0.v vVar) {
        this.f6a = vVar;
    }

    public void a(z0.m mVar, long j5, a1.a0.a aVar) {
        synchronized (this.f9d) {
            q0.n.e().a(f5e, "Starting timer for " + mVar);
            b(mVar);
            a1.a0.b bVar = new a1.a0.b(this, mVar);
            this.f7b.put(mVar, bVar);
            this.f8c.put(mVar, aVar);
            this.f6a.b(j5, bVar);
        }
    }

    public void b(z0.m mVar) {
        synchronized (this.f9d) {
            if (this.f7b.remove(mVar) != null) {
                q0.n.e().a(f5e, "Stopping timer for " + mVar);
                this.f8c.remove(mVar);
            }
        }
    }
}
