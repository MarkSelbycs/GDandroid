package t3;

/* JADX INFO: compiled from: Job.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface h1 extends d3.g.b {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final t3.h1.b f6192m = t3.h1.b.f6193a;

    /* JADX INFO: compiled from: Job.kt */
    public static final class a {
        public static /* synthetic */ void a(t3.h1 h1Var, java.util.concurrent.CancellationException cancellationException, int i5, java.lang.Object obj) {
            if (obj != null) {
                throw new java.lang.UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i5 & 1) != 0) {
                cancellationException = null;
            }
            h1Var.e(cancellationException);
        }

        public static <R> R b(t3.h1 h1Var, R r5, l3.p<? super R, ? super d3.g.b, ? extends R> pVar) {
            return (R) d3.g.b.a.a(h1Var, r5, pVar);
        }

        public static <E extends d3.g.b> E c(t3.h1 h1Var, d3.g.c<E> cVar) {
            return (E) d3.g.b.a.b(h1Var, cVar);
        }

        public static /* synthetic */ t3.r0 d(t3.h1 h1Var, boolean z4, boolean z5, l3.l lVar, int i5, java.lang.Object obj) {
            if (obj != null) {
                throw new java.lang.UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
            }
            if ((i5 & 1) != 0) {
                z4 = false;
            }
            if ((i5 & 2) != 0) {
                z5 = true;
            }
            return h1Var.P(z4, z5, lVar);
        }

        public static d3.g e(t3.h1 h1Var, d3.g.c<?> cVar) {
            return d3.g.b.a.c(h1Var, cVar);
        }

        public static d3.g f(t3.h1 h1Var, d3.g gVar) {
            return d3.g.b.a.d(h1Var, gVar);
        }
    }

    /* JADX INFO: compiled from: Job.kt */
    public static final class b implements d3.g.c<t3.h1> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ t3.h1.b f6193a = new t3.h1.b();
    }

    t3.r0 P(boolean z4, boolean z5, l3.l<? super java.lang.Throwable, a3.o> lVar);

    t3.r0 X(l3.l<? super java.lang.Throwable, a3.o> lVar);

    void e(java.util.concurrent.CancellationException cancellationException);

    boolean f();

    t3.p h(t3.r rVar);

    boolean start();

    java.util.concurrent.CancellationException y();
}
