package d3;

/* JADX INFO: compiled from: ContinuationInterceptor.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface e extends d3.g.b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final d3.e.b f3959k = d3.e.b.f3960a;

    /* JADX INFO: compiled from: ContinuationInterceptor.kt */
    public static final class a {
        public static <E extends d3.g.b> E a(d3.e eVar, d3.g.c<E> cVar) {
            m3.k.e(cVar, "key");
            if (!(cVar instanceof d3.b)) {
                if (d3.e.f3959k != cVar) {
                    return null;
                }
                m3.k.c(eVar, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get");
                return eVar;
            }
            d3.b bVar = (d3.b) cVar;
            if (!bVar.a(eVar.getKey())) {
                return null;
            }
            E e5 = (E) bVar.b(eVar);
            if (e5 instanceof d3.g.b) {
                return e5;
            }
            return null;
        }

        public static d3.g b(d3.e eVar, d3.g.c<?> cVar) {
            m3.k.e(cVar, "key");
            if (!(cVar instanceof d3.b)) {
                return d3.e.f3959k == cVar ? d3.h.f3962a : eVar;
            }
            d3.b bVar = (d3.b) cVar;
            return (!bVar.a(eVar.getKey()) || bVar.b(eVar) == null) ? eVar : d3.h.f3962a;
        }
    }

    /* JADX INFO: compiled from: ContinuationInterceptor.kt */
    public static final class b implements d3.g.c<d3.e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ d3.e.b f3960a = new d3.e.b();
    }

    <T> d3.d<T> M(d3.d<? super T> dVar);

    void i0(d3.d<?> dVar);
}
