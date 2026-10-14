package d3;

/* JADX INFO: compiled from: CoroutineContextImpl.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class h implements d3.g, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d3.h f3962a = new d3.h();

    @Override // d3.g
    public <E extends d3.g.b> E c(d3.g.c<E> cVar) {
        m3.k.e(cVar, "key");
        return null;
    }

    public int hashCode() {
        return 0;
    }

    @Override // d3.g
    public d3.g j(d3.g.c<?> cVar) {
        m3.k.e(cVar, "key");
        return this;
    }

    @Override // d3.g
    public <R> R m0(R r5, l3.p<? super R, ? super d3.g.b, ? extends R> pVar) {
        m3.k.e(pVar, "operation");
        return r5;
    }

    public java.lang.String toString() {
        return "EmptyCoroutineContext";
    }

    @Override // d3.g
    public d3.g x(d3.g gVar) {
        m3.k.e(gVar, "context");
        return gVar;
    }
}
