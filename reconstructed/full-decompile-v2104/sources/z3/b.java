package z3;

/* JADX INFO: compiled from: Undispatched.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b {
    public static final <R, T> void a(l3.p<? super R, ? super d3.d<? super T>, ? extends java.lang.Object> pVar, R r5, d3.d<? super T> dVar) {
        d3.d dVarA = f3.h.a(dVar);
        try {
            d3.g gVarB = dVar.b();
            java.lang.Object objC = y3.l0.c(gVarB, null);
            try {
                java.lang.Object objU = ((l3.p) m3.t.a(pVar, 2)).u(r5, dVarA);
                y3.l0.a(gVarB, objC);
                if (objU != e3.c.c()) {
                    a3.i.a aVar = a3.i.f116a;
                    dVarA.F(a3.i.b(objU));
                }
            } catch (java.lang.Throwable th) {
                y3.l0.a(gVarB, objC);
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            a3.i.a aVar2 = a3.i.f116a;
            dVarA.F(a3.i.b(a3.j.a(th2)));
        }
    }

    public static final <T, R> java.lang.Object b(y3.d0<? super T> d0Var, R r5, l3.p<? super R, ? super d3.d<? super T>, ? extends java.lang.Object> pVar) throws java.lang.Throwable {
        java.lang.Object uVar;
        java.lang.Object objL0;
        try {
            uVar = ((l3.p) m3.t.a(pVar, 2)).u(r5, d0Var);
        } catch (java.lang.Throwable th) {
            uVar = new t3.u(th, false, 2, null);
        }
        if (uVar != e3.c.c() && (objL0 = d0Var.l0(uVar)) != t3.p1.f6225b) {
            if (objL0 instanceof t3.u) {
                throw ((t3.u) objL0).f6248a;
            }
            return t3.p1.h(objL0);
        }
        return e3.c.c();
    }
}
