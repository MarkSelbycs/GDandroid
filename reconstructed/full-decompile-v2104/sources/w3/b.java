package w3;

/* JADX INFO: compiled from: Builders.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b<T> extends x3.a<T> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final l3.p<v3.q<? super T>, d3.d<? super a3.o>, java.lang.Object> f6717d;

    /* JADX WARN: Multi-variable type inference failed */
    public b(l3.p<? super v3.q<? super T>, ? super d3.d<? super a3.o>, ? extends java.lang.Object> pVar, d3.g gVar, int i5, v3.a aVar) {
        super(gVar, i5, aVar);
        this.f6717d = pVar;
    }

    public static /* synthetic */ <T> java.lang.Object h(w3.b<T> bVar, v3.q<? super T> qVar, d3.d<? super a3.o> dVar) {
        java.lang.Object objU = bVar.f6717d.u(qVar, dVar);
        return objU == e3.c.c() ? objU : a3.o.f122a;
    }

    @Override // x3.a
    public java.lang.Object d(v3.q<? super T> qVar, d3.d<? super a3.o> dVar) {
        return h(this, qVar, dVar);
    }

    @Override // x3.a
    public java.lang.String toString() {
        return "block[" + this.f6717d + "] -> " + super.toString();
    }
}
