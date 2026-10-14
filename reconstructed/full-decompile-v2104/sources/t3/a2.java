package t3;

/* JADX INFO: compiled from: CoroutineContext.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a2<T> extends y3.d0<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.lang.ThreadLocal<a3.h<d3.g, java.lang.Object>> f6171e;
    private volatile boolean threadLocalIsSet;

    @Override // y3.d0, t3.a
    public void J0(java.lang.Object obj) {
        if (this.threadLocalIsSet) {
            a3.h<d3.g, java.lang.Object> hVar = this.f6171e.get();
            if (hVar != null) {
                y3.l0.a(hVar.b(), hVar.c());
            }
            this.f6171e.remove();
        }
        java.lang.Object objA = t3.y.a(obj, this.f6889d);
        d3.d<T> dVar = this.f6889d;
        d3.g gVarB = dVar.b();
        java.lang.Object objC = y3.l0.c(gVarB, null);
        t3.a2<?> a2VarF = objC != y3.l0.f6910a ? t3.a0.f(dVar, gVarB, objC) : null;
        try {
            this.f6889d.F(objA);
            a3.o oVar = a3.o.f122a;
        } finally {
            if (a2VarF == null || a2VarF.N0()) {
                y3.l0.a(gVarB, objC);
            }
        }
    }

    public final boolean N0() {
        boolean z4 = this.threadLocalIsSet && this.f6171e.get() == null;
        this.f6171e.remove();
        return !z4;
    }

    public final void O0(d3.g gVar, java.lang.Object obj) {
        this.threadLocalIsSet = true;
        this.f6171e.set(a3.l.a(gVar, obj));
    }
}
