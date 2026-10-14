package t3;

/* JADX INFO: compiled from: Job.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final /* synthetic */ class m1 {
    public static final t3.s a(t3.h1 h1Var) {
        return new t3.k1(h1Var);
    }

    public static /* synthetic */ t3.s b(t3.h1 h1Var, int i5, java.lang.Object obj) {
        if ((i5 & 1) != 0) {
            h1Var = null;
        }
        return t3.l1.a(h1Var);
    }

    public static final void c(d3.g gVar, java.util.concurrent.CancellationException cancellationException) {
        t3.h1 h1Var = (t3.h1) gVar.c(t3.h1.f6192m);
        if (h1Var != null) {
            h1Var.e(cancellationException);
        }
    }

    public static final void d(d3.g gVar) {
        t3.h1 h1Var = (t3.h1) gVar.c(t3.h1.f6192m);
        if (h1Var != null) {
            t3.l1.e(h1Var);
        }
    }

    public static final void e(t3.h1 h1Var) {
        if (!h1Var.f()) {
            throw h1Var.y();
        }
    }
}
