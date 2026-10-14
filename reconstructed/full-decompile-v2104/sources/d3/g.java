package d3;

/* JADX INFO: compiled from: CoroutineContext.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface g {

    /* JADX INFO: compiled from: CoroutineContext.kt */
    public static final class a {

        /* JADX INFO: renamed from: d3.g$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: CoroutineContext.kt */
        public static final class C0042a extends m3.l implements l3.p<d3.g, d3.g.b, d3.g> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final d3.g.a.C0042a f3961b = new d3.g.a.C0042a();

            public C0042a() {
                super(2);
            }

            @Override // l3.p
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final d3.g u(d3.g gVar, d3.g.b bVar) {
                d3.c cVar;
                m3.k.e(gVar, "acc");
                m3.k.e(bVar, "element");
                d3.g gVarJ = gVar.j(bVar.getKey());
                d3.h hVar = d3.h.f3962a;
                if (gVarJ == hVar) {
                    return bVar;
                }
                d3.e.b bVar2 = d3.e.f3959k;
                d3.e eVar = (d3.e) gVarJ.c(bVar2);
                if (eVar == null) {
                    cVar = new d3.c(gVarJ, bVar);
                } else {
                    d3.g gVarJ2 = gVarJ.j(bVar2);
                    if (gVarJ2 == hVar) {
                        return new d3.c(bVar, eVar);
                    }
                    cVar = new d3.c(new d3.c(gVarJ2, bVar), eVar);
                }
                return cVar;
            }
        }

        public static d3.g a(d3.g gVar, d3.g gVar2) {
            m3.k.e(gVar2, "context");
            return gVar2 == d3.h.f3962a ? gVar : (d3.g) gVar2.m0(gVar, d3.g.a.C0042a.f3961b);
        }
    }

    /* JADX INFO: compiled from: CoroutineContext.kt */
    public interface b extends d3.g {

        /* JADX INFO: compiled from: CoroutineContext.kt */
        public static final class a {
            public static <R> R a(d3.g.b bVar, R r5, l3.p<? super R, ? super d3.g.b, ? extends R> pVar) {
                m3.k.e(pVar, "operation");
                return pVar.u(r5, bVar);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static <E extends d3.g.b> E b(d3.g.b bVar, d3.g.c<E> cVar) {
                m3.k.e(cVar, "key");
                if (!m3.k.a(bVar.getKey(), cVar)) {
                    return null;
                }
                m3.k.c(bVar, "null cannot be cast to non-null type E of kotlin.coroutines.CoroutineContext.Element.get");
                return bVar;
            }

            public static d3.g c(d3.g.b bVar, d3.g.c<?> cVar) {
                m3.k.e(cVar, "key");
                return m3.k.a(bVar.getKey(), cVar) ? d3.h.f3962a : bVar;
            }

            public static d3.g d(d3.g.b bVar, d3.g gVar) {
                m3.k.e(gVar, "context");
                return d3.g.a.a(bVar, gVar);
            }
        }

        @Override // d3.g
        <E extends d3.g.b> E c(d3.g.c<E> cVar);

        d3.g.c<?> getKey();
    }

    /* JADX INFO: compiled from: CoroutineContext.kt */
    public interface c<E extends d3.g.b> {
    }

    <E extends d3.g.b> E c(d3.g.c<E> cVar);

    d3.g j(d3.g.c<?> cVar);

    <R> R m0(R r5, l3.p<? super R, ? super d3.g.b, ? extends R> pVar);

    d3.g x(d3.g gVar);
}
