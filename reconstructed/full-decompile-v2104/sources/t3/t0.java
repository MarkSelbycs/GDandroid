package t3;

/* JADX INFO: compiled from: EventLoop.common.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class t0 extends t3.b0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f6243c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6244d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b3.g<t3.n0<?>> f6245e;

    public static /* synthetic */ void R(t3.t0 t0Var, boolean z4, int i5, java.lang.Object obj) {
        if (obj != null) {
            throw new java.lang.UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
        }
        if ((i5 & 1) != 0) {
            z4 = false;
        }
        t0Var.K(z4);
    }

    public long C() {
        b3.g<t3.n0<?>> gVar = this.f6245e;
        return (gVar == null || gVar.isEmpty()) ? Long.MAX_VALUE : 0L;
    }

    public final void K(boolean z4) {
        this.f6243c += s(z4);
        if (z4) {
            return;
        }
        this.f6244d = true;
    }

    public final boolean Y() {
        return this.f6243c >= s(true);
    }

    public final boolean Z() {
        b3.g<t3.n0<?>> gVar = this.f6245e;
        if (gVar != null) {
            return gVar.isEmpty();
        }
        return true;
    }

    public final boolean b0() throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        t3.n0<?> n0VarH;
        b3.g<t3.n0<?>> gVar = this.f6245e;
        if (gVar == null || (n0VarH = gVar.H()) == null) {
            return false;
        }
        n0VarH.run();
        return true;
    }

    public void c0() {
    }

    public final void r(boolean z4) {
        long jS = this.f6243c - s(z4);
        this.f6243c = jS;
        if (jS <= 0 && this.f6244d) {
            c0();
        }
    }

    public final long s(boolean z4) {
        return z4 ? 4294967296L : 1L;
    }

    public final void z(t3.n0<?> n0Var) {
        b3.g<t3.n0<?>> gVar = this.f6245e;
        if (gVar == null) {
            gVar = new b3.g<>();
            this.f6245e = gVar;
        }
        gVar.f(n0Var);
    }
}
