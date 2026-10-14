package androidx.work;

/* JADX INFO: compiled from: CoroutineWorker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class CoroutineWorker extends androidx.work.c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final t3.s f2580e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final b1.c<androidx.work.c.a> f2581f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final t3.b0 f2582g;

    /* JADX INFO: compiled from: CoroutineWorker.kt */
    @f3.f(c = "androidx.work.CoroutineWorker$getForegroundInfoAsync$1", f = "CoroutineWorker.kt", l = {134}, m = "invokeSuspend")
    public static final class a extends f3.k implements l3.p<t3.e0, d3.d<? super a3.o>, java.lang.Object> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public java.lang.Object f2583e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2584f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final /* synthetic */ q0.m<q0.h> f2585g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ androidx.work.CoroutineWorker f2586h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(q0.m<q0.h> mVar, androidx.work.CoroutineWorker coroutineWorker, d3.d<? super androidx.work.CoroutineWorker.a> dVar) {
            super(2, dVar);
            this.f2585g = mVar;
            this.f2586h = coroutineWorker;
        }

        @Override // f3.a
        public final java.lang.Object I(java.lang.Object obj) throws java.lang.Throwable {
            q0.m mVar;
            java.lang.Object objC = e3.c.c();
            int i5 = this.f2584f;
            if (i5 == 0) {
                a3.j.b(obj);
                q0.m<q0.h> mVar2 = this.f2585g;
                androidx.work.CoroutineWorker coroutineWorker = this.f2586h;
                this.f2583e = mVar2;
                this.f2584f = 1;
                java.lang.Object objF = coroutineWorker.f(this);
                if (objF == objC) {
                    return objC;
                }
                mVar = mVar2;
                obj = objF;
            } else {
                if (i5 != 1) {
                    throw new java.lang.IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mVar = (q0.m) this.f2583e;
                a3.j.b(obj);
            }
            mVar.c(obj);
            return a3.o.f122a;
        }

        @Override // l3.p
        /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
        public final java.lang.Object u(t3.e0 e0Var, d3.d<? super a3.o> dVar) {
            return ((androidx.work.CoroutineWorker.a) f(e0Var, dVar)).I(a3.o.f122a);
        }

        @Override // f3.a
        public final d3.d<a3.o> f(java.lang.Object obj, d3.d<?> dVar) {
            return new androidx.work.CoroutineWorker.a(this.f2585g, this.f2586h, dVar);
        }
    }

    /* JADX INFO: compiled from: CoroutineWorker.kt */
    @f3.f(c = "androidx.work.CoroutineWorker$startWork$1", f = "CoroutineWorker.kt", l = {68}, m = "invokeSuspend")
    public static final class b extends f3.k implements l3.p<t3.e0, d3.d<? super a3.o>, java.lang.Object> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2587e;

        public b(d3.d<? super androidx.work.CoroutineWorker.b> dVar) {
            super(2, dVar);
        }

        @Override // f3.a
        public final java.lang.Object I(java.lang.Object obj) throws java.lang.Throwable {
            java.lang.Object objC = e3.c.c();
            int i5 = this.f2587e;
            try {
                if (i5 == 0) {
                    a3.j.b(obj);
                    androidx.work.CoroutineWorker coroutineWorker = androidx.work.CoroutineWorker.this;
                    this.f2587e = 1;
                    obj = coroutineWorker.d(this);
                    if (obj == objC) {
                        return objC;
                    }
                } else {
                    if (i5 != 1) {
                        throw new java.lang.IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    a3.j.b(obj);
                }
                androidx.work.CoroutineWorker.this.h().p((androidx.work.c.a) obj);
            } catch (java.lang.Throwable th) {
                androidx.work.CoroutineWorker.this.h().q(th);
            }
            return a3.o.f122a;
        }

        @Override // l3.p
        /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
        public final java.lang.Object u(t3.e0 e0Var, d3.d<? super a3.o> dVar) {
            return ((androidx.work.CoroutineWorker.b) f(e0Var, dVar)).I(a3.o.f122a);
        }

        @Override // f3.a
        public final d3.d<a3.o> f(java.lang.Object obj, d3.d<?> dVar) {
            return androidx.work.CoroutineWorker.this.new b(dVar);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(android.content.Context context, androidx.work.WorkerParameters workerParameters) {
        super(context, workerParameters);
        m3.k.e(context, "appContext");
        m3.k.e(workerParameters, "params");
        this.f2580e = t3.m1.b(null, 1, null);
        b1.c<androidx.work.c.a> cVarT = b1.c.t();
        m3.k.d(cVarT, "create()");
        this.f2581f = cVarT;
        cVarT.a(new java.lang.Runnable() { // from class: q0.e
            @Override // java.lang.Runnable
            public final void run() {
                androidx.work.CoroutineWorker.c(this.f5684a);
            }
        }, getTaskExecutor().c());
        this.f2582g = t3.q0.a();
    }

    public static final void c(androidx.work.CoroutineWorker coroutineWorker) {
        m3.k.e(coroutineWorker, "this$0");
        if (coroutineWorker.f2581f.isCancelled()) {
            t3.h1.a.a(coroutineWorker.f2580e, null, 1, null);
        }
    }

    public static /* synthetic */ java.lang.Object g(androidx.work.CoroutineWorker coroutineWorker, d3.d<? super q0.h> dVar) {
        throw new java.lang.IllegalStateException("Not implemented");
    }

    public abstract java.lang.Object d(d3.d<? super androidx.work.c.a> dVar);

    public t3.b0 e() {
        return this.f2582g;
    }

    public java.lang.Object f(d3.d<? super q0.h> dVar) {
        return g(this, dVar);
    }

    @Override // androidx.work.c
    public final r2.a<q0.h> getForegroundInfoAsync() {
        t3.s sVarB = t3.m1.b(null, 1, null);
        t3.e0 e0VarA = t3.f0.a(e().x(sVarB));
        q0.m mVar = new q0.m(sVarB, null, 2, null);
        t3.g.b(e0VarA, null, null, new androidx.work.CoroutineWorker.a(mVar, this, null), 3, null);
        return mVar;
    }

    public final b1.c<androidx.work.c.a> h() {
        return this.f2581f;
    }

    @Override // androidx.work.c
    public final void onStopped() {
        super.onStopped();
        this.f2581f.cancel(false);
    }

    @Override // androidx.work.c
    public final r2.a<androidx.work.c.a> startWork() {
        t3.g.b(t3.f0.a(e().x(this.f2580e)), null, null, new androidx.work.CoroutineWorker.b(null), 3, null);
        return this.f2581f;
    }
}
