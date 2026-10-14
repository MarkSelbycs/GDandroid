package t3;

/* JADX INFO: compiled from: Yield.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class e2 {
    public static final java.lang.Object a(d3.d<? super a3.o> dVar) {
        java.lang.Object objC;
        d3.g gVarB = dVar.b();
        t3.l1.d(gVarB);
        d3.d dVarB = e3.b.b(dVar);
        y3.j jVar = dVarB instanceof y3.j ? (y3.j) dVarB : null;
        if (jVar == null) {
            objC = a3.o.f122a;
        } else {
            if (jVar.f6902d.n(gVarB)) {
                jVar.k(gVarB, a3.o.f122a);
            } else {
                t3.d2 d2Var = new t3.d2();
                d3.g gVarX = gVarB.x(d2Var);
                a3.o oVar = a3.o.f122a;
                jVar.k(gVarX, oVar);
                objC = (!d2Var.f6180b || y3.k.d(jVar)) ? e3.c.c() : oVar;
            }
            objC = e3.c.c();
        }
        if (objC == e3.c.c()) {
            f3.h.c(dVar);
        }
        return objC == e3.c.c() ? objC : a3.o.f122a;
    }
}
