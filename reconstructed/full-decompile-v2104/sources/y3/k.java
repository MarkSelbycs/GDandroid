package y3;

/* JADX INFO: compiled from: DispatchedContinuation.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y3.h0 f6907a = new y3.h0("UNDEFINED");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final y3.h0 f6908b = new y3.h0("REUSABLE_CLAIMED");

    public static final <T> void b(d3.d<? super T> dVar, java.lang.Object obj, l3.l<? super java.lang.Throwable, a3.o> lVar) {
        boolean z4;
        if (!(dVar instanceof y3.j)) {
            dVar.F(obj);
            return;
        }
        y3.j jVar = (y3.j) dVar;
        java.lang.Object objB = t3.y.b(obj, lVar);
        if (jVar.f6902d.n(jVar.b())) {
            jVar.f6904f = objB;
            jVar.f6208c = 1;
            jVar.f6902d.i(jVar.b(), jVar);
            return;
        }
        t3.t0 t0VarA = t3.y1.f6259a.a();
        if (t0VarA.Y()) {
            jVar.f6904f = objB;
            jVar.f6208c = 1;
            t0VarA.z(jVar);
            return;
        }
        t0VarA.K(true);
        try {
            t3.h1 h1Var = (t3.h1) jVar.b().c(t3.h1.f6192m);
            if (h1Var == null || h1Var.f()) {
                z4 = false;
            } else {
                java.util.concurrent.CancellationException cancellationExceptionY = h1Var.y();
                jVar.a(objB, cancellationExceptionY);
                a3.i.a aVar = a3.i.f116a;
                jVar.F(a3.i.b(a3.j.a(cancellationExceptionY)));
                z4 = true;
            }
            if (!z4) {
                d3.d<T> dVar2 = jVar.f6903e;
                java.lang.Object obj2 = jVar.f6905g;
                d3.g gVarB = dVar2.b();
                java.lang.Object objC = y3.l0.c(gVarB, obj2);
                t3.a2<?> a2VarF = objC != y3.l0.f6910a ? t3.a0.f(dVar2, gVarB, objC) : null;
                try {
                    jVar.f6903e.F(obj);
                    a3.o oVar = a3.o.f122a;
                    if (a2VarF == null || a2VarF.N0()) {
                        y3.l0.a(gVarB, objC);
                    }
                } catch (java.lang.Throwable th) {
                    if (a2VarF == null || a2VarF.N0()) {
                        y3.l0.a(gVarB, objC);
                    }
                    throw th;
                }
            }
            while (t0VarA.b0()) {
            }
        } catch (java.lang.Throwable th2) {
            try {
                jVar.g(th2, null);
            } finally {
                t0VarA.r(true);
            }
        }
    }

    public static /* synthetic */ void c(d3.d dVar, java.lang.Object obj, l3.l lVar, int i5, java.lang.Object obj2) {
        if ((i5 & 2) != 0) {
            lVar = null;
        }
        b(dVar, obj, lVar);
    }

    public static final boolean d(y3.j<? super a3.o> jVar) {
        a3.o oVar = a3.o.f122a;
        t3.t0 t0VarA = t3.y1.f6259a.a();
        if (t0VarA.Z()) {
            return false;
        }
        if (t0VarA.Y()) {
            jVar.f6904f = oVar;
            jVar.f6208c = 1;
            t0VarA.z(jVar);
            return true;
        }
        t0VarA.K(true);
        try {
            jVar.run();
            do {
            } while (t0VarA.b0());
        } catch (java.lang.Throwable th) {
            try {
                jVar.g(th, null);
            } finally {
                t0VarA.r(true);
            }
        }
        return false;
    }
}
