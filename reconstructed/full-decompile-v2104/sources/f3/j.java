package f3;

/* JADX INFO: compiled from: ContinuationImpl.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class j extends f3.a {
    public j(d3.d<java.lang.Object> dVar) {
        super(dVar);
        if (dVar != null) {
            if (!(dVar.b() == d3.h.f3962a)) {
                throw new java.lang.IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext".toString());
            }
        }
    }

    @Override // d3.d
    public d3.g b() {
        return d3.h.f3962a;
    }
}
