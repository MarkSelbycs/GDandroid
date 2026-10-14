package r0;

/* JADX INFO: compiled from: Processor.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class u implements y0.a {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final java.lang.String f5906l = q0.n.i("Processor");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.content.Context f5908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.work.a f5909c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c1.b f5910d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.work.impl.WorkDatabase f5911e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public java.util.Map<java.lang.String, r0.w0> f5913g = new java.util.HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.util.Map<java.lang.String, r0.w0> f5912f = new java.util.HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public java.util.Set<java.lang.String> f5915i = new java.util.HashSet();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final java.util.List<r0.f> f5916j = new java.util.ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.os.PowerManager.WakeLock f5907a = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final java.lang.Object f5917k = new java.lang.Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public java.util.Map<java.lang.String, java.util.Set<r0.a0>> f5914h = new java.util.HashMap();

    public u(android.content.Context context, androidx.work.a aVar, c1.b bVar, androidx.work.impl.WorkDatabase workDatabase) {
        this.f5908b = context;
        this.f5909c = aVar;
        this.f5910d = bVar;
        this.f5911e = workDatabase;
    }

    public static boolean i(java.lang.String str, r0.w0 w0Var, int i5) {
        if (w0Var == null) {
            q0.n.e().a(f5906l, "WorkerWrapper could not be found for " + str);
            return false;
        }
        w0Var.g(i5);
        q0.n.e().a(f5906l, "WorkerWrapper interrupted for " + str);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(z0.m mVar, boolean z4) {
        synchronized (this.f5917k) {
            java.util.Iterator<r0.f> it = this.f5916j.iterator();
            while (it.hasNext()) {
                it.next().c(mVar, z4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ z0.u m(java.util.ArrayList arrayList, java.lang.String str) throws java.lang.Exception {
        arrayList.addAll(this.f5911e.K().e(str));
        return this.f5911e.J().f(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void n(r2.a aVar, r0.w0 w0Var) {
        boolean zBooleanValue;
        try {
            zBooleanValue = ((java.lang.Boolean) aVar.get()).booleanValue();
        } catch (java.lang.InterruptedException | java.util.concurrent.ExecutionException unused) {
            zBooleanValue = true;
        }
        o(w0Var, zBooleanValue);
    }

    @Override // y0.a
    public void a(java.lang.String str, q0.h hVar) {
        synchronized (this.f5917k) {
            q0.n.e().f(f5906l, "Moving WorkSpec (" + str + ") to the foreground");
            r0.w0 w0VarRemove = this.f5913g.remove(str);
            if (w0VarRemove != null) {
                if (this.f5907a == null) {
                    android.os.PowerManager.WakeLock wakeLockB = a1.u.b(this.f5908b, "ProcessorForegroundLck");
                    this.f5907a = wakeLockB;
                    wakeLockB.acquire();
                }
                this.f5912f.put(str, w0VarRemove);
                androidx.core.content.a.g(this.f5908b, androidx.work.impl.foreground.a.f(this.f5908b, w0VarRemove.d(), hVar));
            }
        }
    }

    public void e(r0.f fVar) {
        synchronized (this.f5917k) {
            this.f5916j.add(fVar);
        }
    }

    public final r0.w0 f(java.lang.String str) {
        r0.w0 w0VarRemove = this.f5912f.remove(str);
        boolean z4 = w0VarRemove != null;
        if (!z4) {
            w0VarRemove = this.f5913g.remove(str);
        }
        this.f5914h.remove(str);
        if (z4) {
            u();
        }
        return w0VarRemove;
    }

    public z0.u g(java.lang.String str) {
        synchronized (this.f5917k) {
            r0.w0 w0VarH = h(str);
            if (w0VarH == null) {
                return null;
            }
            return w0VarH.e();
        }
    }

    public final r0.w0 h(java.lang.String str) {
        r0.w0 w0Var = this.f5912f.get(str);
        return w0Var == null ? this.f5913g.get(str) : w0Var;
    }

    public boolean j(java.lang.String str) {
        boolean zContains;
        synchronized (this.f5917k) {
            zContains = this.f5915i.contains(str);
        }
        return zContains;
    }

    public boolean k(java.lang.String str) {
        boolean z4;
        synchronized (this.f5917k) {
            z4 = h(str) != null;
        }
        return z4;
    }

    public final void o(r0.w0 w0Var, boolean z4) {
        synchronized (this.f5917k) {
            z0.m mVarD = w0Var.d();
            java.lang.String strB = mVarD.b();
            if (h(strB) == w0Var) {
                f(strB);
            }
            q0.n.e().a(f5906l, getClass().getSimpleName() + " " + strB + " executed; reschedule = " + z4);
            java.util.Iterator<r0.f> it = this.f5916j.iterator();
            while (it.hasNext()) {
                it.next().c(mVarD, z4);
            }
        }
    }

    public void p(r0.f fVar) {
        synchronized (this.f5917k) {
            this.f5916j.remove(fVar);
        }
    }

    public final void q(final z0.m mVar, final boolean z4) {
        this.f5910d.b().execute(new java.lang.Runnable() { // from class: r0.s
            @Override // java.lang.Runnable
            public final void run() {
                this.f5888a.l(mVar, z4);
            }
        });
    }

    public boolean r(r0.a0 a0Var) {
        return s(a0Var, null);
    }

    public boolean s(r0.a0 a0Var, androidx.work.WorkerParameters.a aVar) {
        z0.m mVarA = a0Var.a();
        final java.lang.String strB = mVarA.b();
        final java.util.ArrayList arrayList = new java.util.ArrayList();
        z0.u uVar = (z0.u) this.f5911e.z(new java.util.concurrent.Callable() { // from class: r0.t
            @Override // java.util.concurrent.Callable
            public final java.lang.Object call() {
                return this.f5898a.m(arrayList, strB);
            }
        });
        if (uVar == null) {
            q0.n.e().k(f5906l, "Didn't find WorkSpec for id " + mVarA);
            q(mVarA, false);
            return false;
        }
        synchronized (this.f5917k) {
            if (k(strB)) {
                java.util.Set<r0.a0> set = this.f5914h.get(strB);
                if (set.iterator().next().a().a() == mVarA.a()) {
                    set.add(a0Var);
                    q0.n.e().a(f5906l, "Work " + mVarA + " is already enqueued for processing");
                } else {
                    q(mVarA, false);
                }
                return false;
            }
            if (uVar.f() != mVarA.a()) {
                q(mVarA, false);
                return false;
            }
            final r0.w0 w0VarB = new r0.w0.c(this.f5908b, this.f5909c, this.f5910d, this, this.f5911e, uVar, arrayList).c(aVar).b();
            final r2.a<java.lang.Boolean> aVarC = w0VarB.c();
            aVarC.a(new java.lang.Runnable() { // from class: r0.r
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5885a.n(aVarC, w0VarB);
                }
            }, this.f5910d.b());
            this.f5913g.put(strB, w0VarB);
            java.util.HashSet hashSet = new java.util.HashSet();
            hashSet.add(a0Var);
            this.f5914h.put(strB, hashSet);
            this.f5910d.c().execute(w0VarB);
            q0.n.e().a(f5906l, getClass().getSimpleName() + ": processing " + mVarA);
            return true;
        }
    }

    public boolean t(java.lang.String str, int i5) {
        r0.w0 w0VarF;
        synchronized (this.f5917k) {
            q0.n.e().a(f5906l, "Processor cancelling " + str);
            this.f5915i.add(str);
            w0VarF = f(str);
        }
        return i(str, w0VarF, i5);
    }

    public final void u() {
        synchronized (this.f5917k) {
            if (!(!this.f5912f.isEmpty())) {
                try {
                    this.f5908b.startService(androidx.work.impl.foreground.a.g(this.f5908b));
                } catch (java.lang.Throwable th) {
                    q0.n.e().d(f5906l, "Unable to stop foreground service", th);
                }
                android.os.PowerManager.WakeLock wakeLock = this.f5907a;
                if (wakeLock != null) {
                    wakeLock.release();
                    this.f5907a = null;
                }
            }
        }
    }

    public boolean v(r0.a0 a0Var, int i5) {
        r0.w0 w0VarF;
        java.lang.String strB = a0Var.a().b();
        synchronized (this.f5917k) {
            w0VarF = f(strB);
        }
        return i(strB, w0VarF, i5);
    }

    public boolean w(r0.a0 a0Var, int i5) {
        java.lang.String strB = a0Var.a().b();
        synchronized (this.f5917k) {
            if (this.f5912f.get(strB) == null) {
                java.util.Set<r0.a0> set = this.f5914h.get(strB);
                if (set != null && set.contains(a0Var)) {
                    return i(strB, f(strB), i5);
                }
                return false;
            }
            q0.n.e().a(f5906l, "Ignored stopWork. WorkerWrapper " + strB + " is in foreground");
            return false;
        }
    }
}
