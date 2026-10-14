package androidx.work.impl.background.systemalarm;

/* JADX INFO: compiled from: SystemAlarmDispatcher.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d implements r0.f {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final java.lang.String f2696q = q0.n.i("SystemAlarmDispatcher");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f2697a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c1.b f2698b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a1.a0 f2699c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final r0.u f2700d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final r0.p0 f2701e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final androidx.work.impl.background.systemalarm.a f2702f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.util.List<android.content.Intent> f2703g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public android.content.Intent f2704h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public androidx.work.impl.background.systemalarm.d.c f2705i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public r0.b0 f2706o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final r0.n0 f2707p;

    /* JADX INFO: compiled from: SystemAlarmDispatcher.java */
    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            java.util.concurrent.Executor executorB;
            androidx.work.impl.background.systemalarm.d.RunnableC0024d runnableC0024d;
            synchronized (androidx.work.impl.background.systemalarm.d.this.f2703g) {
                androidx.work.impl.background.systemalarm.d dVar = androidx.work.impl.background.systemalarm.d.this;
                dVar.f2704h = dVar.f2703g.get(0);
            }
            android.content.Intent intent = androidx.work.impl.background.systemalarm.d.this.f2704h;
            if (intent != null) {
                java.lang.String action = intent.getAction();
                int intExtra = androidx.work.impl.background.systemalarm.d.this.f2704h.getIntExtra("KEY_START_ID", 0);
                q0.n nVarE = q0.n.e();
                java.lang.String str = androidx.work.impl.background.systemalarm.d.f2696q;
                nVarE.a(str, "Processing command " + androidx.work.impl.background.systemalarm.d.this.f2704h + ", " + intExtra);
                android.os.PowerManager.WakeLock wakeLockB = a1.u.b(androidx.work.impl.background.systemalarm.d.this.f2697a, action + " (" + intExtra + ")");
                try {
                    q0.n.e().a(str, "Acquiring operation wake lock (" + action + ") " + wakeLockB);
                    wakeLockB.acquire();
                    androidx.work.impl.background.systemalarm.d dVar2 = androidx.work.impl.background.systemalarm.d.this;
                    dVar2.f2702f.o(dVar2.f2704h, intExtra, dVar2);
                    q0.n.e().a(str, "Releasing operation wake lock (" + action + ") " + wakeLockB);
                    wakeLockB.release();
                    executorB = androidx.work.impl.background.systemalarm.d.this.f2698b.b();
                    runnableC0024d = new androidx.work.impl.background.systemalarm.d.RunnableC0024d(androidx.work.impl.background.systemalarm.d.this);
                } catch (java.lang.Throwable th) {
                    try {
                        q0.n nVarE2 = q0.n.e();
                        java.lang.String str2 = androidx.work.impl.background.systemalarm.d.f2696q;
                        nVarE2.d(str2, "Unexpected error in onHandleIntent", th);
                        q0.n.e().a(str2, "Releasing operation wake lock (" + action + ") " + wakeLockB);
                        wakeLockB.release();
                        executorB = androidx.work.impl.background.systemalarm.d.this.f2698b.b();
                        runnableC0024d = new androidx.work.impl.background.systemalarm.d.RunnableC0024d(androidx.work.impl.background.systemalarm.d.this);
                    } catch (java.lang.Throwable th2) {
                        q0.n.e().a(androidx.work.impl.background.systemalarm.d.f2696q, "Releasing operation wake lock (" + action + ") " + wakeLockB);
                        wakeLockB.release();
                        androidx.work.impl.background.systemalarm.d.this.f2698b.b().execute(new androidx.work.impl.background.systemalarm.d.RunnableC0024d(androidx.work.impl.background.systemalarm.d.this));
                        throw th2;
                    }
                }
                executorB.execute(runnableC0024d);
            }
        }
    }

    /* JADX INFO: compiled from: SystemAlarmDispatcher.java */
    public static class b implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.work.impl.background.systemalarm.d f2709a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final android.content.Intent f2710b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f2711c;

        public b(androidx.work.impl.background.systemalarm.d dVar, android.content.Intent intent, int i5) {
            this.f2709a = dVar;
            this.f2710b = intent;
            this.f2711c = i5;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2709a.a(this.f2710b, this.f2711c);
        }
    }

    /* JADX INFO: compiled from: SystemAlarmDispatcher.java */
    public interface c {
        void b();
    }

    /* JADX INFO: renamed from: androidx.work.impl.background.systemalarm.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SystemAlarmDispatcher.java */
    public static class RunnableC0024d implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.work.impl.background.systemalarm.d f2712a;

        public RunnableC0024d(androidx.work.impl.background.systemalarm.d dVar) {
            this.f2712a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2712a.d();
        }
    }

    public d(android.content.Context context) {
        this(context, null, null, null);
    }

    public boolean a(android.content.Intent intent, int i5) {
        q0.n nVarE = q0.n.e();
        java.lang.String str = f2696q;
        nVarE.a(str, "Adding command " + intent + " (" + i5 + ")");
        b();
        java.lang.String action = intent.getAction();
        if (android.text.TextUtils.isEmpty(action)) {
            q0.n.e().k(str, "Unknown command. Ignoring");
            return false;
        }
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action) && j("ACTION_CONSTRAINTS_CHANGED")) {
            return false;
        }
        intent.putExtra("KEY_START_ID", i5);
        synchronized (this.f2703g) {
            boolean z4 = this.f2703g.isEmpty() ? false : true;
            this.f2703g.add(intent);
            if (!z4) {
                l();
            }
        }
        return true;
    }

    public final void b() {
        if (android.os.Looper.getMainLooper().getThread() != java.lang.Thread.currentThread()) {
            throw new java.lang.IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    @Override // r0.f
    public void c(z0.m mVar, boolean z4) {
        this.f2698b.b().execute(new androidx.work.impl.background.systemalarm.d.b(this, androidx.work.impl.background.systemalarm.a.d(this.f2697a, mVar, z4), 0));
    }

    public void d() {
        q0.n nVarE = q0.n.e();
        java.lang.String str = f2696q;
        nVarE.a(str, "Checking if commands are complete.");
        b();
        synchronized (this.f2703g) {
            if (this.f2704h != null) {
                q0.n.e().a(str, "Removing command " + this.f2704h);
                if (!this.f2703g.remove(0).equals(this.f2704h)) {
                    throw new java.lang.IllegalStateException("Dequeue-d command is not the first.");
                }
                this.f2704h = null;
            }
            c1.a aVarC = this.f2698b.c();
            if (!this.f2702f.n() && this.f2703g.isEmpty() && !aVarC.k0()) {
                q0.n.e().a(str, "No more commands & intents.");
                androidx.work.impl.background.systemalarm.d.c cVar = this.f2705i;
                if (cVar != null) {
                    cVar.b();
                }
            } else if (!this.f2703g.isEmpty()) {
                l();
            }
        }
    }

    public r0.u e() {
        return this.f2700d;
    }

    public c1.b f() {
        return this.f2698b;
    }

    public r0.p0 g() {
        return this.f2701e;
    }

    public a1.a0 h() {
        return this.f2699c;
    }

    public r0.n0 i() {
        return this.f2707p;
    }

    public final boolean j(java.lang.String str) {
        b();
        synchronized (this.f2703g) {
            java.util.Iterator<android.content.Intent> it = this.f2703g.iterator();
            while (it.hasNext()) {
                if (str.equals(it.next().getAction())) {
                    return true;
                }
            }
            return false;
        }
    }

    public void k() {
        q0.n.e().a(f2696q, "Destroying SystemAlarmDispatcher");
        this.f2700d.p(this);
        this.f2705i = null;
    }

    public final void l() {
        b();
        android.os.PowerManager.WakeLock wakeLockB = a1.u.b(this.f2697a, "ProcessCommand");
        try {
            wakeLockB.acquire();
            this.f2701e.w().a(new androidx.work.impl.background.systemalarm.d.a());
        } finally {
            wakeLockB.release();
        }
    }

    public void m(androidx.work.impl.background.systemalarm.d.c cVar) {
        if (this.f2705i != null) {
            q0.n.e().c(f2696q, "A completion listener for SystemAlarmDispatcher already exists.");
        } else {
            this.f2705i = cVar;
        }
    }

    public d(android.content.Context context, r0.u uVar, r0.p0 p0Var, r0.n0 n0Var) {
        android.content.Context applicationContext = context.getApplicationContext();
        this.f2697a = applicationContext;
        this.f2706o = new r0.b0();
        p0Var = p0Var == null ? r0.p0.o(context) : p0Var;
        this.f2701e = p0Var;
        this.f2702f = new androidx.work.impl.background.systemalarm.a(applicationContext, p0Var.m().a(), this.f2706o);
        this.f2699c = new a1.a0(p0Var.m().k());
        uVar = uVar == null ? p0Var.q() : uVar;
        this.f2700d = uVar;
        c1.b bVarW = p0Var.w();
        this.f2698b = bVarW;
        this.f2707p = n0Var == null ? new r0.o0(uVar, bVarW) : n0Var;
        uVar.e(this);
        this.f2703g = new java.util.ArrayList();
        this.f2704h = null;
    }
}
