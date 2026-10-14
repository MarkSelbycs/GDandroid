package t3;

/* JADX INFO: compiled from: DispatchedTask.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class n0<T> extends a4.h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6208c;

    public n0(int i5) {
        this.f6208c = i5;
    }

    public void a(java.lang.Object obj, java.lang.Throwable th) {
    }

    public abstract d3.d<T> c();

    public java.lang.Throwable e(java.lang.Object obj) {
        t3.u uVar = obj instanceof t3.u ? (t3.u) obj : null;
        if (uVar != null) {
            return uVar.f6248a;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T f(java.lang.Object obj) {
        return obj;
    }

    public final void g(java.lang.Throwable th, java.lang.Throwable th2) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            a3.a.a(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        m3.k.b(th);
        t3.d0.a(c().b(), new t3.h0("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract java.lang.Object h();

    @Override // java.lang.Runnable
    public final void run() throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        java.lang.Object objB;
        java.lang.Object objB2;
        a4.i iVar = this.f161b;
        try {
            d3.d<T> dVarC = c();
            m3.k.c(dVarC, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            y3.j jVar = (y3.j) dVarC;
            d3.d<T> dVar = jVar.f6903e;
            java.lang.Object obj = jVar.f6905g;
            d3.g gVarB = dVar.b();
            java.lang.Object objC = y3.l0.c(gVarB, obj);
            t3.a2<?> a2VarF = objC != y3.l0.f6910a ? t3.a0.f(dVar, gVarB, objC) : null;
            try {
                d3.g gVarB2 = dVar.b();
                java.lang.Object objH = h();
                java.lang.Throwable thE = e(objH);
                t3.h1 h1Var = (thE == null && t3.o0.b(this.f6208c)) ? (t3.h1) gVarB2.c(t3.h1.f6192m) : null;
                if (h1Var != null && !h1Var.f()) {
                    java.util.concurrent.CancellationException cancellationExceptionY = h1Var.y();
                    a(objH, cancellationExceptionY);
                    a3.i.a aVar = a3.i.f116a;
                    dVar.F(a3.i.b(a3.j.a(cancellationExceptionY)));
                } else if (thE != null) {
                    a3.i.a aVar2 = a3.i.f116a;
                    dVar.F(a3.i.b(a3.j.a(thE)));
                } else {
                    a3.i.a aVar3 = a3.i.f116a;
                    dVar.F(a3.i.b(f(objH)));
                }
                a3.o oVar = a3.o.f122a;
                if (a2VarF == null || a2VarF.N0()) {
                    y3.l0.a(gVarB, objC);
                }
                try {
                    a3.i.a aVar4 = a3.i.f116a;
                    iVar.b();
                    objB2 = a3.i.b(oVar);
                } catch (java.lang.Throwable th) {
                    a3.i.a aVar5 = a3.i.f116a;
                    objB2 = a3.i.b(a3.j.a(th));
                }
                g(null, a3.i.c(objB2));
            } catch (java.lang.Throwable th2) {
                if (a2VarF == null || a2VarF.N0()) {
                    y3.l0.a(gVarB, objC);
                }
                throw th2;
            }
        } catch (java.lang.Throwable th3) {
            try {
                a3.i.a aVar6 = a3.i.f116a;
                iVar.b();
                objB = a3.i.b(a3.o.f122a);
            } catch (java.lang.Throwable th4) {
                a3.i.a aVar7 = a3.i.f116a;
                objB = a3.i.b(a3.j.a(th4));
            }
            g(th3, a3.i.c(objB));
        }
    }
}
