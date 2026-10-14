package d3;

/* JADX INFO: compiled from: CoroutineContextImpl.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class b<B extends d3.g.b, E extends B> implements d3.g.c<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l3.l<d3.g.b, E> f3954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d3.g.c<?> f3955b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [d3.g$c<?>] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, l3.l<? super d3.g$b, ? extends E extends B>, l3.l<d3.g$b, E extends B>] */
    public b(d3.g.c<B> cVar, l3.l<? super d3.g.b, ? extends E> lVar) {
        m3.k.e(cVar, "baseKey");
        m3.k.e(lVar, "safeCast");
        this.f3954a = lVar;
        this.f3955b = cVar instanceof d3.b ? (d3.g.c<B>) ((d3.b) cVar).f3955b : cVar;
    }

    public final boolean a(d3.g.c<?> cVar) {
        m3.k.e(cVar, "key");
        return cVar == this || this.f3955b == cVar;
    }

    /* JADX WARN: Incorrect return type in method signature: (Ld3/g$b;)TE; */
    public final d3.g.b b(d3.g.b bVar) {
        m3.k.e(bVar, "element");
        return (d3.g.b) this.f3954a.x(bVar);
    }
}
