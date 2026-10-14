package s0;

/* JADX INFO: compiled from: DelayedWorkTracker.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.lang.String f6010e = q0.n.i("DelayedWorkTracker");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r0.w f6011a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q0.v f6012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final q0.b f6013c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.Map<java.lang.String, java.lang.Runnable> f6014d = new java.util.HashMap();

    /* JADX INFO: renamed from: s0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DelayedWorkTracker.java */
    public class RunnableC0075a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ z0.u f6015a;

        public RunnableC0075a(z0.u uVar) {
            this.f6015a = uVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            q0.n.e().a(s0.a.f6010e, "Scheduling work " + this.f6015a.f7032a);
            s0.a.this.f6011a.e(this.f6015a);
        }
    }

    public a(r0.w wVar, q0.v vVar, q0.b bVar) {
        this.f6011a = wVar;
        this.f6012b = vVar;
        this.f6013c = bVar;
    }

    public void a(z0.u uVar, long j5) {
        java.lang.Runnable runnableRemove = this.f6014d.remove(uVar.f7032a);
        if (runnableRemove != null) {
            this.f6012b.a(runnableRemove);
        }
        s0.a.RunnableC0075a runnableC0075a = new s0.a.RunnableC0075a(uVar);
        this.f6014d.put(uVar.f7032a, runnableC0075a);
        this.f6012b.b(j5 - this.f6013c.a(), runnableC0075a);
    }

    public void b(java.lang.String str) {
        java.lang.Runnable runnableRemove = this.f6014d.remove(str);
        if (runnableRemove != null) {
            this.f6012b.a(runnableRemove);
        }
    }
}
