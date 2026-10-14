package d3;

/* JADX INFO: compiled from: CoroutineContextImpl.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c implements d3.g, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d3.g f3956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d3.g.b f3957b;

    /* JADX INFO: compiled from: CoroutineContextImpl.kt */
    public static final class a extends m3.l implements l3.p<java.lang.String, d3.g.b, java.lang.String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final d3.c.a f3958b = new d3.c.a();

        public a() {
            super(2);
        }

        @Override // l3.p
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final java.lang.String u(java.lang.String str, d3.g.b bVar) {
            m3.k.e(str, "acc");
            m3.k.e(bVar, "element");
            if (str.length() == 0) {
                return bVar.toString();
            }
            return str + ", " + bVar;
        }
    }

    public c(d3.g gVar, d3.g.b bVar) {
        m3.k.e(gVar, "left");
        m3.k.e(bVar, "element");
        this.f3956a = gVar;
        this.f3957b = bVar;
    }

    public final boolean D(d3.c cVar) {
        while (b(cVar.f3957b)) {
            d3.g gVar = cVar.f3956a;
            if (!(gVar instanceof d3.c)) {
                m3.k.c(gVar, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                return b((d3.g.b) gVar);
            }
            cVar = (d3.c) gVar;
        }
        return false;
    }

    public final int F() {
        int i5 = 2;
        d3.c cVar = this;
        while (true) {
            d3.g gVar = cVar.f3956a;
            cVar = gVar instanceof d3.c ? (d3.c) gVar : null;
            if (cVar == null) {
                return i5;
            }
            i5++;
        }
    }

    public final boolean b(d3.g.b bVar) {
        return m3.k.a(c(bVar.getKey()), bVar);
    }

    @Override // d3.g
    public <E extends d3.g.b> E c(d3.g.c<E> cVar) {
        m3.k.e(cVar, "key");
        d3.c cVar2 = this;
        while (true) {
            E e5 = (E) cVar2.f3957b.c(cVar);
            if (e5 != null) {
                return e5;
            }
            d3.g gVar = cVar2.f3956a;
            if (!(gVar instanceof d3.c)) {
                return (E) gVar.c(cVar);
            }
            cVar2 = (d3.c) gVar;
        }
    }

    public boolean equals(java.lang.Object obj) {
        if (this != obj) {
            if (obj instanceof d3.c) {
                d3.c cVar = (d3.c) obj;
                if (cVar.F() != F() || !cVar.D(this)) {
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.f3956a.hashCode() + this.f3957b.hashCode();
    }

    @Override // d3.g
    public d3.g j(d3.g.c<?> cVar) {
        m3.k.e(cVar, "key");
        if (this.f3957b.c(cVar) != null) {
            return this.f3956a;
        }
        d3.g gVarJ = this.f3956a.j(cVar);
        if (gVarJ == this.f3956a) {
            return this;
        }
        return gVarJ == d3.h.f3962a ? this.f3957b : new d3.c(gVarJ, this.f3957b);
    }

    @Override // d3.g
    public <R> R m0(R r5, l3.p<? super R, ? super d3.g.b, ? extends R> pVar) {
        m3.k.e(pVar, "operation");
        return pVar.u((java.lang.Object) this.f3956a.m0(r5, pVar), this.f3957b);
    }

    public java.lang.String toString() {
        return '[' + ((java.lang.String) m0("", d3.c.a.f3958b)) + ']';
    }

    @Override // d3.g
    public d3.g x(d3.g gVar) {
        return d3.g.a.a(this, gVar);
    }
}
