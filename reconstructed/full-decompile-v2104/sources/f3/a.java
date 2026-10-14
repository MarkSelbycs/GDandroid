package f3;

/* JADX INFO: compiled from: ContinuationImpl.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a implements d3.d<java.lang.Object>, f3.e, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d3.d<java.lang.Object> f4230a;

    public a(d3.d<java.lang.Object> dVar) {
        this.f4230a = dVar;
    }

    @Override // f3.e
    public f3.e D() {
        d3.d<java.lang.Object> dVar = this.f4230a;
        if (dVar instanceof f3.e) {
            return (f3.e) dVar;
        }
        return null;
    }

    @Override // d3.d
    public final void F(java.lang.Object obj) {
        d3.d<java.lang.Object> dVar = this;
        while (true) {
            f3.h.b(dVar);
            f3.a aVar = (f3.a) dVar;
            d3.d<java.lang.Object> dVar2 = aVar.f4230a;
            m3.k.b(dVar2);
            try {
                java.lang.Object objI = aVar.I(obj);
                if (objI == e3.c.c()) {
                    return;
                }
                a3.i.a aVar2 = a3.i.f116a;
                obj = a3.i.b(objI);
            } catch (java.lang.Throwable th) {
                a3.i.a aVar3 = a3.i.f116a;
                obj = a3.i.b(a3.j.a(th));
            }
            aVar.M();
            if (!(dVar2 instanceof f3.a)) {
                dVar2.F(obj);
                return;
            }
            dVar = dVar2;
        }
    }

    public java.lang.StackTraceElement H() {
        return f3.g.d(this);
    }

    public abstract java.lang.Object I(java.lang.Object obj);

    public void M() {
    }

    public d3.d<a3.o> f(java.lang.Object obj, d3.d<?> dVar) {
        m3.k.e(dVar, "completion");
        throw new java.lang.UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("Continuation at ");
        java.lang.Object objH = H();
        if (objH == null) {
            objH = getClass().getName();
        }
        sb.append(objH);
        return sb.toString();
    }

    public final d3.d<java.lang.Object> y() {
        return this.f4230a;
    }
}
