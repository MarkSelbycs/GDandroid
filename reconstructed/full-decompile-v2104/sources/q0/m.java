package q0;

/* JADX INFO: compiled from: ListenableFuture.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class m<R> implements r2.a<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t3.h1 f5699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b1.c<R> f5700b;

    /* JADX INFO: compiled from: ListenableFuture.kt */
    public static final class a extends m3.l implements l3.l<java.lang.Throwable, a3.o> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ q0.m<R> f5701b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(q0.m<R> mVar) {
            super(1);
            this.f5701b = mVar;
        }

        public final void b(java.lang.Throwable th) {
            if (th == null) {
                if (!this.f5701b.f5700b.isDone()) {
                    throw new java.lang.IllegalArgumentException("Failed requirement.".toString());
                }
            } else {
                if (th instanceof java.util.concurrent.CancellationException) {
                    this.f5701b.f5700b.cancel(true);
                    return;
                }
                b1.c cVar = this.f5701b.f5700b;
                java.lang.Throwable cause = th.getCause();
                if (cause != null) {
                    th = cause;
                }
                cVar.q(th);
            }
        }

        @Override // l3.l
        public /* bridge */ /* synthetic */ a3.o x(java.lang.Throwable th) {
            b(th);
            return a3.o.f122a;
        }
    }

    public m(t3.h1 h1Var, b1.c<R> cVar) {
        m3.k.e(h1Var, "job");
        m3.k.e(cVar, "underlying");
        this.f5699a = h1Var;
        this.f5700b = cVar;
        h1Var.X(new q0.m.a(this));
    }

    @Override // r2.a
    public void a(java.lang.Runnable runnable, java.util.concurrent.Executor executor) {
        this.f5700b.a(runnable, executor);
    }

    public final void c(R r5) {
        this.f5700b.p(r5);
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z4) {
        return this.f5700b.cancel(z4);
    }

    @Override // java.util.concurrent.Future
    public R get() {
        return this.f5700b.get();
    }

    @Override // java.util.concurrent.Future
    public R get(long j5, java.util.concurrent.TimeUnit timeUnit) {
        return this.f5700b.get(j5, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f5700b.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f5700b.isDone();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ m(t3.h1 h1Var, b1.c cVar, int i5, m3.g gVar) {
        if ((i5 & 2) != 0) {
            cVar = b1.c.t();
            m3.k.d(cVar, "create()");
        }
        this(h1Var, cVar);
    }
}
