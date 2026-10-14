package androidx.work.impl.background.systemalarm;

/* JADX INFO: compiled from: DelayMetCommandHandler.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c implements v0.d, a1.a0.a {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final java.lang.String f2681t = q0.n.i("DelayMetCommandHandler");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f2682a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final z0.m f2684c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.work.impl.background.systemalarm.d f2685d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final v0.e f2686e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final java.lang.Object f2687f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2688g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final java.util.concurrent.Executor f2689h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final java.util.concurrent.Executor f2690i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public android.os.PowerManager.WakeLock f2691o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f2692p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final r0.a0 f2693q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final t3.b0 f2694r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public volatile t3.h1 f2695s;

    public c(android.content.Context context, int i5, androidx.work.impl.background.systemalarm.d dVar, r0.a0 a0Var) {
        this.f2682a = context;
        this.f2683b = i5;
        this.f2685d = dVar;
        this.f2684c = a0Var.a();
        this.f2693q = a0Var;
        x0.m mVarT = dVar.g().t();
        this.f2689h = dVar.f().c();
        this.f2690i = dVar.f().b();
        this.f2694r = dVar.f().d();
        this.f2686e = new v0.e(mVarT);
        this.f2692p = false;
        this.f2688g = 0;
        this.f2687f = new java.lang.Object();
    }

    @Override // v0.d
    public void a(z0.u uVar, v0.b bVar) {
        if (bVar instanceof v0.b.a) {
            this.f2689h.execute(new t0.b(this));
        } else {
            this.f2689h.execute(new t0.c(this));
        }
    }

    @Override // a1.a0.a
    public void b(z0.m mVar) {
        q0.n.e().a(f2681t, "Exceeded time limits on execution for " + mVar);
        this.f2689h.execute(new t0.c(this));
    }

    public final void e() {
        synchronized (this.f2687f) {
            if (this.f2695s != null) {
                this.f2695s.e(null);
            }
            this.f2685d.h().b(this.f2684c);
            android.os.PowerManager.WakeLock wakeLock = this.f2691o;
            if (wakeLock != null && wakeLock.isHeld()) {
                q0.n.e().a(f2681t, "Releasing wakelock " + this.f2691o + "for WorkSpec " + this.f2684c);
                this.f2691o.release();
            }
        }
    }

    public void f() {
        java.lang.String strB = this.f2684c.b();
        this.f2691o = a1.u.b(this.f2682a, strB + " (" + this.f2683b + ")");
        q0.n nVarE = q0.n.e();
        java.lang.String str = f2681t;
        nVarE.a(str, "Acquiring wakelock " + this.f2691o + "for WorkSpec " + strB);
        this.f2691o.acquire();
        z0.u uVarF = this.f2685d.g().u().J().f(strB);
        if (uVarF == null) {
            this.f2689h.execute(new t0.c(this));
            return;
        }
        boolean zK = uVarF.k();
        this.f2692p = zK;
        if (zK) {
            this.f2695s = v0.f.b(this.f2686e, uVarF, this.f2694r, this);
            return;
        }
        q0.n.e().a(str, "No constraints for " + strB);
        this.f2689h.execute(new t0.b(this));
    }

    public void g(boolean z4) {
        q0.n.e().a(f2681t, "onExecuted " + this.f2684c + ", " + z4);
        e();
        if (z4) {
            this.f2690i.execute(new androidx.work.impl.background.systemalarm.d.b(this.f2685d, androidx.work.impl.background.systemalarm.a.e(this.f2682a, this.f2684c), this.f2683b));
        }
        if (this.f2692p) {
            this.f2690i.execute(new androidx.work.impl.background.systemalarm.d.b(this.f2685d, androidx.work.impl.background.systemalarm.a.a(this.f2682a), this.f2683b));
        }
    }

    public final void h() {
        if (this.f2688g != 0) {
            q0.n.e().a(f2681t, "Already started work for " + this.f2684c);
            return;
        }
        this.f2688g = 1;
        q0.n.e().a(f2681t, "onAllConstraintsMet for " + this.f2684c);
        if (this.f2685d.e().r(this.f2693q)) {
            this.f2685d.h().a(this.f2684c, 600000L, this);
        } else {
            e();
        }
    }

    public final void i() {
        java.lang.String strB = this.f2684c.b();
        if (this.f2688g >= 2) {
            q0.n.e().a(f2681t, "Already stopped work for " + strB);
            return;
        }
        this.f2688g = 2;
        q0.n nVarE = q0.n.e();
        java.lang.String str = f2681t;
        nVarE.a(str, "Stopping work for WorkSpec " + strB);
        this.f2690i.execute(new androidx.work.impl.background.systemalarm.d.b(this.f2685d, androidx.work.impl.background.systemalarm.a.f(this.f2682a, this.f2684c), this.f2683b));
        if (!this.f2685d.e().k(this.f2684c.b())) {
            q0.n.e().a(str, "Processor does not have WorkSpec " + strB + ". No need to reschedule");
            return;
        }
        q0.n.e().a(str, "WorkSpec " + strB + " needs to be rescheduled");
        this.f2690i.execute(new androidx.work.impl.background.systemalarm.d.b(this.f2685d, androidx.work.impl.background.systemalarm.a.e(this.f2682a, this.f2684c), this.f2683b));
    }
}
