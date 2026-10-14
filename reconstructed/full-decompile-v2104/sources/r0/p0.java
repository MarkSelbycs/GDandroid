package r0;

/* JADX INFO: compiled from: WorkManagerImpl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class p0 extends q0.z {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final java.lang.String f5867l = q0.n.i("WorkManagerImpl");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static r0.p0 f5868m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static r0.p0 f5869n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final java.lang.Object f5870o = new java.lang.Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.content.Context f5871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public androidx.work.a f5872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.work.impl.WorkDatabase f5873c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c1.b f5874d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.util.List<r0.w> f5875e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public r0.u f5876f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public a1.m f5877g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f5878h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public android.content.BroadcastReceiver.PendingResult f5879i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile androidx.work.multiprocess.j f5880j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final x0.m f5881k;

    /* JADX INFO: compiled from: WorkManagerImpl.java */
    public static class a {
        public static boolean a(android.content.Context context) {
            return context.isDeviceProtectedStorage();
        }
    }

    public p0(android.content.Context context, androidx.work.a aVar, c1.b bVar, androidx.work.impl.WorkDatabase workDatabase, java.util.List<r0.w> list, r0.u uVar, x0.m mVar) {
        android.content.Context origApplicationContext = com.stub.StubApp.getOrigApplicationContext(context.getApplicationContext());
        if (r0.p0.a.a(origApplicationContext)) {
            throw new java.lang.IllegalStateException("Cannot initialize WorkManager in direct boot mode");
        }
        q0.n.h(new q0.n.a(aVar.j()));
        this.f5871a = origApplicationContext;
        this.f5874d = bVar;
        this.f5873c = workDatabase;
        this.f5876f = uVar;
        this.f5881k = mVar;
        this.f5872b = aVar;
        this.f5875e = list;
        this.f5877g = new a1.m(workDatabase);
        r0.z.g(list, this.f5876f, bVar.c(), this.f5873c, aVar);
        this.f5874d.a(new androidx.work.impl.utils.ForceStopRunnable(origApplicationContext, this));
    }

    public static void f(android.content.Context context, androidx.work.a aVar) {
        synchronized (f5870o) {
            r0.p0 p0Var = f5868m;
            if (p0Var != null && f5869n != null) {
                throw new java.lang.IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
            }
            if (p0Var == null) {
                android.content.Context origApplicationContext = com.stub.StubApp.getOrigApplicationContext(context.getApplicationContext());
                if (f5869n == null) {
                    f5869n = androidx.work.impl.a.c(origApplicationContext, aVar);
                }
                f5868m = f5869n;
            }
        }
    }

    public static boolean g() {
        return n() != null;
    }

    @java.lang.Deprecated
    public static r0.p0 n() {
        synchronized (f5870o) {
            r0.p0 p0Var = f5868m;
            if (p0Var != null) {
                return p0Var;
            }
            return f5869n;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static r0.p0 o(android.content.Context context) {
        r0.p0 p0VarN;
        synchronized (f5870o) {
            p0VarN = n();
            if (p0VarN == null) {
                android.content.Context origApplicationContext = com.stub.StubApp.getOrigApplicationContext(context.getApplicationContext());
                if (!(origApplicationContext instanceof androidx.work.a.c)) {
                    throw new java.lang.IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
                }
                f(origApplicationContext, ((androidx.work.a.c) origApplicationContext).a());
                p0VarN = o(origApplicationContext);
            }
        }
        return p0VarN;
    }

    public void A(z0.m mVar) {
        this.f5874d.a(new a1.s(this.f5876f, new r0.a0(mVar), true));
    }

    public final void B() {
        try {
            java.lang.String str = androidx.work.multiprocess.RemoteWorkManagerClient.f2797j;
            this.f5880j = (androidx.work.multiprocess.j) androidx.work.multiprocess.RemoteWorkManagerClient.class.getConstructor(android.content.Context.class, r0.p0.class).newInstance(this.f5871a, this);
        } catch (java.lang.Throwable th) {
            q0.n.e().b(f5867l, "Unable to initialize multi-process support", th);
        }
    }

    @Override // q0.z
    public q0.r a(java.lang.String str) {
        a1.b bVarE = a1.b.e(str, this);
        this.f5874d.a(bVarE);
        return bVarE.f();
    }

    @Override // q0.z
    public q0.r b(java.util.List<? extends q0.b0> list) {
        if (list.isEmpty()) {
            throw new java.lang.IllegalArgumentException("enqueue needs at least one WorkRequest.");
        }
        return new r0.c0(this, list).a();
    }

    @Override // q0.z
    public q0.r d(java.lang.String str, q0.f fVar, q0.t tVar) {
        return fVar == q0.f.UPDATE ? r0.u0.c(this, str, tVar) : k(str, fVar, tVar).a();
    }

    public q0.r h() {
        a1.b bVarB = a1.b.b(this);
        this.f5874d.a(bVarB);
        return bVarB.f();
    }

    public q0.r i(java.lang.String str) {
        a1.b bVarD = a1.b.d(str, this, true);
        this.f5874d.a(bVarD);
        return bVarD.f();
    }

    public q0.r j(java.util.UUID uuid) {
        a1.b bVarC = a1.b.c(uuid, this);
        this.f5874d.a(bVarC);
        return bVarC.f();
    }

    public r0.c0 k(java.lang.String str, q0.f fVar, q0.t tVar) {
        return new r0.c0(this, str, fVar == q0.f.KEEP ? q0.g.KEEP : q0.g.REPLACE, java.util.Collections.singletonList(tVar));
    }

    public android.content.Context l() {
        return this.f5871a;
    }

    public androidx.work.a m() {
        return this.f5872b;
    }

    public a1.m p() {
        return this.f5877g;
    }

    public r0.u q() {
        return this.f5876f;
    }

    public androidx.work.multiprocess.j r() {
        if (this.f5880j == null) {
            synchronized (f5870o) {
                if (this.f5880j == null) {
                    B();
                    if (this.f5880j == null && !android.text.TextUtils.isEmpty(this.f5872b.c())) {
                        throw new java.lang.IllegalStateException("Invalid multiprocess configuration. Define an `implementation` dependency on :work:work-multiprocess library");
                    }
                }
            }
        }
        return this.f5880j;
    }

    public java.util.List<r0.w> s() {
        return this.f5875e;
    }

    public x0.m t() {
        return this.f5881k;
    }

    public androidx.work.impl.WorkDatabase u() {
        return this.f5873c;
    }

    public r2.a<java.util.List<q0.y>> v(q0.a0 a0Var) {
        a1.r<java.util.List<q0.y>> rVarA = a1.r.a(this, a0Var);
        this.f5874d.c().execute(rVarA);
        return rVarA.b();
    }

    public c1.b w() {
        return this.f5874d;
    }

    public void x() {
        synchronized (f5870o) {
            this.f5878h = true;
            android.content.BroadcastReceiver.PendingResult pendingResult = this.f5879i;
            if (pendingResult != null) {
                pendingResult.finish();
                this.f5879i = null;
            }
        }
    }

    public void y() {
        u0.b.a(l());
        u().J().z();
        r0.z.h(m(), u(), s());
    }

    public void z(android.content.BroadcastReceiver.PendingResult pendingResult) {
        synchronized (f5870o) {
            android.content.BroadcastReceiver.PendingResult pendingResult2 = this.f5879i;
            if (pendingResult2 != null) {
                pendingResult2.finish();
            }
            this.f5879i = pendingResult;
            if (this.f5878h) {
                pendingResult.finish();
                this.f5879i = null;
            }
        }
    }
}
