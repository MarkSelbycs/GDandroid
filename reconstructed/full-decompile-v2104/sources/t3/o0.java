package t3;

/* JADX INFO: compiled from: DispatchedTask.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class o0 {
    public static final <T> void a(t3.n0<? super T> n0Var, int i5) {
        d3.d<? super T> dVarC = n0Var.c();
        boolean z4 = i5 == 4;
        if (z4 || !(dVarC instanceof y3.j) || b(i5) != b(n0Var.f6208c)) {
            d(n0Var, dVarC, z4);
            return;
        }
        t3.b0 b0Var = ((y3.j) dVarC).f6902d;
        d3.g gVarB = dVarC.b();
        if (b0Var.n(gVarB)) {
            b0Var.i(gVarB, n0Var);
        } else {
            e(n0Var);
        }
    }

    public static final boolean b(int i5) {
        return i5 == 1 || i5 == 2;
    }

    public static final boolean c(int i5) {
        return i5 == 2;
    }

    public static final <T> void d(t3.n0<? super T> n0Var, d3.d<? super T> dVar, boolean z4) {
        java.lang.Object objF;
        java.lang.Object objH = n0Var.h();
        java.lang.Throwable thE = n0Var.e(objH);
        if (thE != null) {
            a3.i.a aVar = a3.i.f116a;
            objF = a3.j.a(thE);
        } else {
            a3.i.a aVar2 = a3.i.f116a;
            objF = n0Var.f(objH);
        }
        java.lang.Object objB = a3.i.b(objF);
        if (!z4) {
            dVar.F(objB);
            return;
        }
        m3.k.c(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
        y3.j jVar = (y3.j) dVar;
        d3.d<T> dVar2 = jVar.f6903e;
        java.lang.Object obj = jVar.f6905g;
        d3.g gVarB = dVar2.b();
        java.lang.Object objC = y3.l0.c(gVarB, obj);
        t3.a2<?> a2VarF = objC != y3.l0.f6910a ? t3.a0.f(dVar2, gVarB, objC) : null;
        try {
            jVar.f6903e.F(objB);
            a3.o oVar = a3.o.f122a;
        } finally {
            if (a2VarF == null || a2VarF.N0()) {
                y3.l0.a(gVarB, objC);
            }
        }
    }

    public static final void e(t3.n0<?> n0Var) {
        t3.t0 t0VarA = t3.y1.f6259a.a();
        if (t0VarA.Y()) {
            t0VarA.z(n0Var);
            return;
        }
        t0VarA.K(true);
        try {
            d(n0Var, n0Var.c(), true);
            do {
            } while (t0VarA.b0());
        } catch (java.lang.Throwable th) {
            try {
                n0Var.g(th, null);
            } finally {
                t0VarA.r(true);
            }
        }
    }
}
