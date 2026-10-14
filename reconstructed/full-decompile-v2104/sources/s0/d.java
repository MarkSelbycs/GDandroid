package s0;

/* JADX INFO: compiled from: TimeLimiter.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q0.v f6036a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r0.n0 f6037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f6038c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.Object f6039d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.util.Map<r0.a0, java.lang.Runnable> f6040e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public d(q0.v vVar, r0.n0 n0Var) {
        this(vVar, n0Var, 0L, 4, null);
        m3.k.e(vVar, "runnableScheduler");
        m3.k.e(n0Var, "launcher");
    }

    public d(q0.v vVar, r0.n0 n0Var, long j5) {
        m3.k.e(vVar, "runnableScheduler");
        m3.k.e(n0Var, "launcher");
        this.f6036a = vVar;
        this.f6037b = n0Var;
        this.f6038c = j5;
        this.f6039d = new java.lang.Object();
        this.f6040e = new java.util.LinkedHashMap();
    }

    public static final void d(s0.d dVar, r0.a0 a0Var) {
        m3.k.e(dVar, "this$0");
        m3.k.e(a0Var, "$token");
        dVar.f6037b.c(a0Var, 3);
    }

    public final void b(r0.a0 a0Var) {
        java.lang.Runnable runnableRemove;
        m3.k.e(a0Var, "token");
        synchronized (this.f6039d) {
            runnableRemove = this.f6040e.remove(a0Var);
        }
        if (runnableRemove != null) {
            this.f6036a.a(runnableRemove);
        }
    }

    public final void c(final r0.a0 a0Var) {
        m3.k.e(a0Var, "token");
        java.lang.Runnable runnable = new java.lang.Runnable() { // from class: s0.c
            @Override // java.lang.Runnable
            public final void run() {
                s0.d.d(this.f6034a, a0Var);
            }
        };
        synchronized (this.f6039d) {
            this.f6040e.put(a0Var, runnable);
        }
        this.f6036a.b(this.f6038c, runnable);
    }

    public /* synthetic */ d(q0.v vVar, r0.n0 n0Var, long j5, int i5, m3.g gVar) {
        this(vVar, n0Var, (i5 & 4) != 0 ? java.util.concurrent.TimeUnit.MINUTES.toMillis(90L) : j5);
    }
}
