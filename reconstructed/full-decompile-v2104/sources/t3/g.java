package t3;

/* JADX INFO: compiled from: Builders.common.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final /* synthetic */ class g {
    public static final t3.h1 a(t3.e0 e0Var, d3.g gVar, t3.g0 g0Var, l3.p<? super t3.e0, ? super d3.d<? super a3.o>, ? extends java.lang.Object> pVar) {
        d3.g gVarD = t3.a0.d(e0Var, gVar);
        t3.a q1Var = g0Var.f() ? new t3.q1(gVarD, pVar) : new t3.w1(gVarD, true);
        q1Var.M0(g0Var, q1Var, pVar);
        return q1Var;
    }

    public static /* synthetic */ t3.h1 b(t3.e0 e0Var, d3.g gVar, t3.g0 g0Var, l3.p pVar, int i5, java.lang.Object obj) {
        if ((i5 & 1) != 0) {
            gVar = d3.h.f3962a;
        }
        if ((i5 & 2) != 0) {
            g0Var = t3.g0.DEFAULT;
        }
        return t3.f.a(e0Var, gVar, g0Var, pVar);
    }
}
