package androidx.work.multiprocess;

/* JADX INFO: compiled from: RemoteCoroutineWorker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class RemoteCoroutineWorker extends androidx.work.multiprocess.RemoteListenableWorker {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final t3.s f2784o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final b1.c<androidx.work.c.a> f2785p;

    /* JADX INFO: compiled from: RemoteCoroutineWorker.kt */
    @f3.f(c = "androidx.work.multiprocess.RemoteCoroutineWorker$startRemoteWork$1", f = "RemoteCoroutineWorker.kt", l = {75}, m = "invokeSuspend")
    public static final class a extends f3.k implements l3.p<t3.e0, d3.d<? super a3.o>, java.lang.Object> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2786e;

        public a(d3.d<? super androidx.work.multiprocess.RemoteCoroutineWorker.a> dVar) {
            super(2, dVar);
        }

        @Override // f3.a
        public final java.lang.Object I(java.lang.Object obj) throws java.lang.Throwable {
            java.lang.Object objC = e3.c.c();
            int i5 = this.f2786e;
            try {
                if (i5 == 0) {
                    a3.j.b(obj);
                    androidx.work.multiprocess.RemoteCoroutineWorker remoteCoroutineWorker = androidx.work.multiprocess.RemoteCoroutineWorker.this;
                    this.f2786e = 1;
                    obj = remoteCoroutineWorker.h(this);
                    if (obj == objC) {
                        return objC;
                    }
                } else {
                    if (i5 != 1) {
                        throw new java.lang.IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    a3.j.b(obj);
                }
                androidx.work.multiprocess.RemoteCoroutineWorker.this.f2785p.p((androidx.work.c.a) obj);
            } catch (java.lang.Throwable th) {
                androidx.work.multiprocess.RemoteCoroutineWorker.this.f2785p.q(th);
            }
            return a3.o.f122a;
        }

        @Override // l3.p
        /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
        public final java.lang.Object u(t3.e0 e0Var, d3.d<? super a3.o> dVar) {
            return ((androidx.work.multiprocess.RemoteCoroutineWorker.a) f(e0Var, dVar)).I(a3.o.f122a);
        }

        @Override // f3.a
        public final d3.d<a3.o> f(java.lang.Object obj, d3.d<?> dVar) {
            return androidx.work.multiprocess.RemoteCoroutineWorker.this.new a(dVar);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteCoroutineWorker(android.content.Context context, androidx.work.WorkerParameters workerParameters) {
        super(context, workerParameters);
        m3.k.e(context, "context");
        m3.k.e(workerParameters, "parameters");
        this.f2784o = t3.m1.b(null, 1, null);
        b1.c<androidx.work.c.a> cVarT = b1.c.t();
        m3.k.d(cVarT, "create()");
        this.f2785p = cVarT;
        cVarT.a(new java.lang.Runnable() { // from class: androidx.work.multiprocess.e
            @Override // java.lang.Runnable
            public final void run() {
                androidx.work.multiprocess.RemoteCoroutineWorker.f(this.f2866a);
            }
        }, getTaskExecutor().c());
    }

    public static final void f(androidx.work.multiprocess.RemoteCoroutineWorker remoteCoroutineWorker) {
        m3.k.e(remoteCoroutineWorker, "this$0");
        if (remoteCoroutineWorker.f2785p.isCancelled()) {
            t3.h1.a.a(remoteCoroutineWorker.f2784o, null, 1, null);
        }
    }

    @Override // androidx.work.multiprocess.RemoteListenableWorker
    public r2.a<androidx.work.c.a> d() {
        t3.g.b(t3.f0.a(t3.q0.a().x(this.f2784o)), null, null, new androidx.work.multiprocess.RemoteCoroutineWorker.a(null), 3, null);
        return this.f2785p;
    }

    public abstract java.lang.Object h(d3.d<? super androidx.work.c.a> dVar);

    @Override // androidx.work.multiprocess.RemoteListenableWorker, androidx.work.c
    public final void onStopped() {
        super.onStopped();
        this.f2785p.cancel(true);
    }
}
