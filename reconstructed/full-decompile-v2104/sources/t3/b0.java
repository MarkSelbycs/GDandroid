package t3;

/* JADX INFO: compiled from: CoroutineDispatcher.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class b0 extends d3.a implements d3.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final t3.b0.a f6172b = new t3.b0.a(null);

    /* JADX INFO: compiled from: CoroutineDispatcher.kt */
    public static final class a extends d3.b<d3.e, t3.b0> {

        /* JADX INFO: renamed from: t3.b0$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: CoroutineDispatcher.kt */
        public static final class C0082a extends m3.l implements l3.l<d3.g.b, t3.b0> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static final t3.b0.a.C0082a f6173b = new t3.b0.a.C0082a();

            public C0082a() {
                super(1);
            }

            @Override // l3.l
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final t3.b0 x(d3.g.b bVar) {
                if (bVar instanceof t3.b0) {
                    return (t3.b0) bVar;
                }
                return null;
            }
        }

        public a() {
            super(d3.e.f3959k, t3.b0.a.C0082a.f6173b);
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }
    }

    public b0() {
        super(d3.e.f3959k);
    }

    @Override // d3.e
    public final <T> d3.d<T> M(d3.d<? super T> dVar) {
        return new y3.j(this, dVar);
    }

    @Override // d3.a, d3.g.b, d3.g
    public <E extends d3.g.b> E c(d3.g.c<E> cVar) {
        return (E) d3.e.a.a(this, cVar);
    }

    public abstract void i(d3.g gVar, java.lang.Runnable runnable);

    @Override // d3.e
    public final void i0(d3.d<?> dVar) {
        m3.k.c(dVar, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        ((y3.j) dVar).o();
    }

    @Override // d3.a, d3.g
    public d3.g j(d3.g.c<?> cVar) {
        return d3.e.a.b(this, cVar);
    }

    public void l(d3.g gVar, java.lang.Runnable runnable) {
        i(gVar, runnable);
    }

    public boolean n(d3.g gVar) {
        return true;
    }

    public t3.b0 o(int i5) {
        y3.p.a(i5);
        return new y3.o(this, i5);
    }

    public java.lang.String toString() {
        return t3.i0.a(this) + '@' + t3.i0.b(this);
    }
}
