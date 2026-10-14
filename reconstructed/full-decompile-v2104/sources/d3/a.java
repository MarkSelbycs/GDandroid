package d3;

/* JADX INFO: compiled from: CoroutineContextImpl.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a implements d3.g.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d3.g.c<?> f3953a;

    public a(d3.g.c<?> cVar) {
        m3.k.e(cVar, "key");
        this.f3953a = cVar;
    }

    @Override // d3.g.b, d3.g
    public <E extends d3.g.b> E c(d3.g.c<E> cVar) {
        return (E) d3.g.b.a.b(this, cVar);
    }

    @Override // d3.g.b
    public d3.g.c<?> getKey() {
        return this.f3953a;
    }

    @Override // d3.g
    public d3.g j(d3.g.c<?> cVar) {
        return d3.g.b.a.c(this, cVar);
    }

    @Override // d3.g
    public <R> R m0(R r5, l3.p<? super R, ? super d3.g.b, ? extends R> pVar) {
        return (R) d3.g.b.a.a(this, r5, pVar);
    }

    @Override // d3.g
    public d3.g x(d3.g gVar) {
        return d3.g.b.a.d(this, gVar);
    }
}
