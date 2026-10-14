package t3;

/* JADX INFO: compiled from: Unconfined.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class z1 extends t3.b0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final t3.z1 f6263c = new t3.z1();

    @Override // t3.b0
    public void i(d3.g gVar, java.lang.Runnable runnable) {
        t3.d2 d2Var = (t3.d2) gVar.c(t3.d2.f6179c);
        if (d2Var == null) {
            throw new java.lang.UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
        }
        d2Var.f6180b = true;
    }

    @Override // t3.b0
    public boolean n(d3.g gVar) {
        return false;
    }

    @Override // t3.b0
    public java.lang.String toString() {
        return "Dispatchers.Unconfined";
    }
}
