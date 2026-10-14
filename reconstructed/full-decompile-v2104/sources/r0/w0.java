package r0;

/* JADX INFO: compiled from: WorkerWrapper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class w0 implements java.lang.Runnable {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final java.lang.String f5926x = q0.n.i("WorkerWrapper");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.content.Context f5927a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f5928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.work.WorkerParameters.a f5929c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public z0.u f5930d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.work.c f5931e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public c1.b f5932f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public androidx.work.a f5934h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public q0.b f5935i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public y0.a f5936o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public androidx.work.impl.WorkDatabase f5937p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public z0.v f5938q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public z0.b f5939r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public java.util.List<java.lang.String> f5940s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public java.lang.String f5941t;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public androidx.work.c.a f5933g = androidx.work.c.a.a();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public b1.c<java.lang.Boolean> f5942u = b1.c.t();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final b1.c<androidx.work.c.a> f5943v = b1.c.t();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public volatile int f5944w = -256;

    /* JADX INFO: compiled from: WorkerWrapper.java */
    public class a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ r2.a f5945a;

        public a(r2.a aVar) {
            this.f5945a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (r0.w0.this.f5943v.isCancelled()) {
                return;
            }
            try {
                this.f5945a.get();
                q0.n.e().a(r0.w0.f5926x, "Starting work for " + r0.w0.this.f5930d.f7034c);
                r0.w0 w0Var = r0.w0.this;
                w0Var.f5943v.r(w0Var.f5931e.startWork());
            } catch (java.lang.Throwable th) {
                r0.w0.this.f5943v.q(th);
            }
        }
    }

    /* JADX INFO: compiled from: WorkerWrapper.java */
    public class b implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f5947a;

        public b(java.lang.String str) {
            this.f5947a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    androidx.work.c.a aVar = r0.w0.this.f5943v.get();
                    if (aVar == null) {
                        q0.n.e().c(r0.w0.f5926x, r0.w0.this.f5930d.f7034c + " returned a null result. Treating it as a failure.");
                    } else {
                        q0.n.e().a(r0.w0.f5926x, r0.w0.this.f5930d.f7034c + " returned a " + aVar + ".");
                        r0.w0.this.f5933g = aVar;
                    }
                } catch (java.lang.InterruptedException e5) {
                    e = e5;
                    q0.n.e().d(r0.w0.f5926x, this.f5947a + " failed because it threw an exception/error", e);
                } catch (java.util.concurrent.CancellationException e6) {
                    q0.n.e().g(r0.w0.f5926x, this.f5947a + " was cancelled", e6);
                } catch (java.util.concurrent.ExecutionException e7) {
                    e = e7;
                    q0.n.e().d(r0.w0.f5926x, this.f5947a + " failed because it threw an exception/error", e);
                }
                r0.w0.this.j();
            } catch (java.lang.Throwable th) {
                r0.w0.this.j();
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: WorkerWrapper.java */
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public android.content.Context f5949a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public androidx.work.c f5950b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public y0.a f5951c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public c1.b f5952d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public androidx.work.a f5953e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public androidx.work.impl.WorkDatabase f5954f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public z0.u f5955g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final java.util.List<java.lang.String> f5956h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public androidx.work.WorkerParameters.a f5957i = new androidx.work.WorkerParameters.a();

        @android.annotation.SuppressLint({"LambdaLast"})
        public c(android.content.Context context, androidx.work.a aVar, c1.b bVar, y0.a aVar2, androidx.work.impl.WorkDatabase workDatabase, z0.u uVar, java.util.List<java.lang.String> list) {
            this.f5949a = com.stub.StubApp.getOrigApplicationContext(context.getApplicationContext());
            this.f5952d = bVar;
            this.f5951c = aVar2;
            this.f5953e = aVar;
            this.f5954f = workDatabase;
            this.f5955g = uVar;
            this.f5956h = list;
        }

        public r0.w0 b() {
            return new r0.w0(this);
        }

        public r0.w0.c c(androidx.work.WorkerParameters.a aVar) {
            if (aVar != null) {
                this.f5957i = aVar;
            }
            return this;
        }
    }

    public w0(r0.w0.c cVar) {
        this.f5927a = cVar.f5949a;
        this.f5932f = cVar.f5952d;
        this.f5936o = cVar.f5951c;
        z0.u uVar = cVar.f5955g;
        this.f5930d = uVar;
        this.f5928b = uVar.f7032a;
        this.f5929c = cVar.f5957i;
        this.f5931e = cVar.f5950b;
        androidx.work.a aVar = cVar.f5953e;
        this.f5934h = aVar;
        this.f5935i = aVar.a();
        androidx.work.impl.WorkDatabase workDatabase = cVar.f5954f;
        this.f5937p = workDatabase;
        this.f5938q = workDatabase.J();
        this.f5939r = this.f5937p.D();
        this.f5940s = cVar.f5956h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(r2.a aVar) {
        if (this.f5943v.isCancelled()) {
            aVar.cancel(true);
        }
    }

    public final java.lang.String b(java.util.List<java.lang.String> list) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder("Work [ id=");
        sb.append(this.f5928b);
        sb.append(", tags={ ");
        boolean z4 = true;
        for (java.lang.String str : list) {
            if (z4) {
                z4 = false;
            } else {
                sb.append(", ");
            }
            sb.append(str);
        }
        sb.append(" } ]");
        return sb.toString();
    }

    public r2.a<java.lang.Boolean> c() {
        return this.f5942u;
    }

    public z0.m d() {
        return z0.x.a(this.f5930d);
    }

    public z0.u e() {
        return this.f5930d;
    }

    public final void f(androidx.work.c.a aVar) {
        if (aVar instanceof androidx.work.c.a.C0022c) {
            q0.n.e().f(f5926x, "Worker result SUCCESS for " + this.f5941t);
            if (this.f5930d.m()) {
                l();
                return;
            } else {
                q();
                return;
            }
        }
        if (aVar instanceof androidx.work.c.a.b) {
            q0.n.e().f(f5926x, "Worker result RETRY for " + this.f5941t);
            k();
            return;
        }
        q0.n.e().f(f5926x, "Worker result FAILURE for " + this.f5941t);
        if (this.f5930d.m()) {
            l();
        } else {
            p();
        }
    }

    public void g(int i5) {
        this.f5944w = i5;
        r();
        this.f5943v.cancel(true);
        if (this.f5931e != null && this.f5943v.isCancelled()) {
            this.f5931e.stop(i5);
            return;
        }
        q0.n.e().a(f5926x, "WorkSpec " + this.f5930d + " is already done. Not interrupting.");
    }

    public final void h(java.lang.String str) {
        java.util.LinkedList linkedList = new java.util.LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            java.lang.String str2 = (java.lang.String) linkedList.remove();
            if (this.f5938q.b(str2) != q0.y.c.CANCELLED) {
                this.f5938q.c(q0.y.c.FAILED, str2);
            }
            linkedList.addAll(this.f5939r.c(str2));
        }
    }

    public void j() {
        if (r()) {
            return;
        }
        this.f5937p.e();
        try {
            q0.y.c cVarB = this.f5938q.b(this.f5928b);
            this.f5937p.I().a(this.f5928b);
            if (cVarB == null) {
                m(false);
            } else if (cVarB == q0.y.c.RUNNING) {
                f(this.f5933g);
            } else if (!cVarB.e()) {
                this.f5944w = -512;
                k();
            }
            this.f5937p.B();
        } finally {
            this.f5937p.i();
        }
    }

    public final void k() {
        this.f5937p.e();
        try {
            this.f5938q.c(q0.y.c.ENQUEUED, this.f5928b);
            this.f5938q.i(this.f5928b, this.f5935i.a());
            this.f5938q.u(this.f5928b, this.f5930d.h());
            this.f5938q.t(this.f5928b, -1L);
            this.f5937p.B();
        } finally {
            this.f5937p.i();
            m(true);
        }
    }

    public final void l() {
        this.f5937p.e();
        try {
            this.f5938q.i(this.f5928b, this.f5935i.a());
            this.f5938q.c(q0.y.c.ENQUEUED, this.f5928b);
            this.f5938q.h(this.f5928b);
            this.f5938q.u(this.f5928b, this.f5930d.h());
            this.f5938q.o(this.f5928b);
            this.f5938q.t(this.f5928b, -1L);
            this.f5937p.B();
        } finally {
            this.f5937p.i();
            m(false);
        }
    }

    public final void m(boolean z4) {
        this.f5937p.e();
        try {
            if (!this.f5937p.J().r()) {
                a1.l.c(this.f5927a, androidx.work.impl.background.systemalarm.RescheduleReceiver.class, false);
            }
            if (z4) {
                this.f5938q.c(q0.y.c.ENQUEUED, this.f5928b);
                this.f5938q.g(this.f5928b, this.f5944w);
                this.f5938q.t(this.f5928b, -1L);
            }
            this.f5937p.B();
            this.f5937p.i();
            this.f5942u.p(java.lang.Boolean.valueOf(z4));
        } catch (java.lang.Throwable th) {
            this.f5937p.i();
            throw th;
        }
    }

    public final void n() {
        q0.y.c cVarB = this.f5938q.b(this.f5928b);
        if (cVarB == q0.y.c.RUNNING) {
            q0.n.e().a(f5926x, "Status for " + this.f5928b + " is RUNNING; not doing any work and rescheduling for later execution");
            m(true);
            return;
        }
        q0.n.e().a(f5926x, "Status for " + this.f5928b + " is " + cVarB + " ; not doing any work");
        m(false);
    }

    public final void o() {
        androidx.work.b bVarA;
        if (r()) {
            return;
        }
        this.f5937p.e();
        try {
            z0.u uVar = this.f5930d;
            if (uVar.f7033b != q0.y.c.ENQUEUED) {
                n();
                this.f5937p.B();
                q0.n.e().a(f5926x, this.f5930d.f7034c + " is not in ENQUEUED state. Nothing more to do");
                this.f5937p.i();
                return;
            }
            if ((uVar.m() || this.f5930d.l()) && this.f5935i.a() < this.f5930d.c()) {
                q0.n.e().a(f5926x, java.lang.String.format("Delaying execution for %s because it is being executed before schedule.", this.f5930d.f7034c));
                m(true);
                this.f5937p.B();
                this.f5937p.i();
                return;
            }
            this.f5937p.B();
            this.f5937p.i();
            if (this.f5930d.m()) {
                bVarA = this.f5930d.f7036e;
            } else {
                q0.j jVarB = this.f5934h.f().b(this.f5930d.f7035d);
                if (jVarB == null) {
                    q0.n.e().c(f5926x, "Could not create Input Merger " + this.f5930d.f7035d);
                    p();
                    return;
                }
                java.util.ArrayList arrayList = new java.util.ArrayList();
                arrayList.add(this.f5930d.f7036e);
                arrayList.addAll(this.f5938q.m(this.f5928b));
                bVarA = jVarB.a(arrayList);
            }
            androidx.work.b bVar = bVarA;
            java.util.UUID uuidFromString = java.util.UUID.fromString(this.f5928b);
            java.util.List<java.lang.String> list = this.f5940s;
            androidx.work.WorkerParameters.a aVar = this.f5929c;
            z0.u uVar2 = this.f5930d;
            androidx.work.WorkerParameters workerParameters = new androidx.work.WorkerParameters(uuidFromString, bVar, list, aVar, uVar2.f7042k, uVar2.f(), this.f5934h.d(), this.f5932f, this.f5934h.n(), new a1.z(this.f5937p, this.f5932f), new a1.y(this.f5937p, this.f5936o, this.f5932f));
            if (this.f5931e == null) {
                this.f5931e = this.f5934h.n().b(this.f5927a, this.f5930d.f7034c, workerParameters);
            }
            androidx.work.c cVar = this.f5931e;
            if (cVar == null) {
                q0.n.e().c(f5926x, "Could not create Worker " + this.f5930d.f7034c);
                p();
                return;
            }
            if (cVar.isUsed()) {
                q0.n.e().c(f5926x, "Received an already-used Worker " + this.f5930d.f7034c + "; Worker Factory should return new instances");
                p();
                return;
            }
            this.f5931e.setUsed();
            if (!s()) {
                n();
                return;
            }
            if (r()) {
                return;
            }
            a1.x xVar = new a1.x(this.f5927a, this.f5930d, this.f5931e, workerParameters.b(), this.f5932f);
            this.f5932f.b().execute(xVar);
            final r2.a<java.lang.Void> aVarB = xVar.b();
            this.f5943v.a(new java.lang.Runnable() { // from class: r0.v0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5924a.i(aVarB);
                }
            }, new a1.t());
            aVarB.a(new r0.w0.a(aVarB), this.f5932f.b());
            this.f5943v.a(new r0.w0.b(this.f5941t), this.f5932f.c());
        } catch (java.lang.Throwable th) {
            this.f5937p.i();
            throw th;
        }
    }

    public void p() {
        this.f5937p.e();
        try {
            h(this.f5928b);
            androidx.work.b bVarC = ((androidx.work.c.a.C0021a) this.f5933g).c();
            this.f5938q.u(this.f5928b, this.f5930d.h());
            this.f5938q.x(this.f5928b, bVarC);
            this.f5937p.B();
        } finally {
            this.f5937p.i();
            m(false);
        }
    }

    public final void q() {
        this.f5937p.e();
        try {
            this.f5938q.c(q0.y.c.SUCCEEDED, this.f5928b);
            this.f5938q.x(this.f5928b, ((androidx.work.c.a.C0022c) this.f5933g).c());
            long jA = this.f5935i.a();
            for (java.lang.String str : this.f5939r.c(this.f5928b)) {
                if (this.f5938q.b(str) == q0.y.c.BLOCKED && this.f5939r.b(str)) {
                    q0.n.e().f(f5926x, "Setting status to enqueued for " + str);
                    this.f5938q.c(q0.y.c.ENQUEUED, str);
                    this.f5938q.i(str, jA);
                }
            }
            this.f5937p.B();
        } finally {
            this.f5937p.i();
            m(false);
        }
    }

    public final boolean r() {
        if (this.f5944w == -256) {
            return false;
        }
        q0.n.e().a(f5926x, "Work interrupted for " + this.f5941t);
        q0.y.c cVarB = this.f5938q.b(this.f5928b);
        if (cVarB == null) {
            m(false);
        } else {
            m(!cVarB.e());
        }
        return true;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f5941t = b(this.f5940s);
        o();
    }

    public final boolean s() {
        boolean z4;
        this.f5937p.e();
        try {
            if (this.f5938q.b(this.f5928b) == q0.y.c.ENQUEUED) {
                this.f5938q.c(q0.y.c.RUNNING, this.f5928b);
                this.f5938q.n(this.f5928b);
                this.f5938q.g(this.f5928b, -256);
                z4 = true;
            } else {
                z4 = false;
            }
            this.f5937p.B();
            return z4;
        } finally {
            this.f5937p.i();
        }
    }
}
