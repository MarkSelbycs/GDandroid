package f3;

/* JADX INFO: compiled from: ContinuationImpl.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class d extends f3.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d3.g f4232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient d3.d<java.lang.Object> f4233c;

    public d(d3.d<java.lang.Object> dVar, d3.g gVar) {
        super(dVar);
        this.f4232b = gVar;
    }

    @Override // f3.a
    public void M() {
        d3.d<?> dVar = this.f4233c;
        if (dVar != null && dVar != this) {
            d3.g.b bVarC = b().c(d3.e.f3959k);
            m3.k.b(bVarC);
            ((d3.e) bVarC).i0(dVar);
        }
        this.f4233c = f3.c.f4231a;
    }

    public final d3.d<java.lang.Object> P() {
        d3.d<java.lang.Object> dVarM = this.f4233c;
        if (dVarM == null) {
            d3.e eVar = (d3.e) b().c(d3.e.f3959k);
            if (eVar == null || (dVarM = eVar.M(this)) == null) {
                dVarM = this;
            }
            this.f4233c = dVarM;
        }
        return dVarM;
    }

    @Override // d3.d
    public d3.g b() {
        d3.g gVar = this.f4232b;
        m3.k.b(gVar);
        return gVar;
    }

    public d(d3.d<java.lang.Object> dVar) {
        this(dVar, dVar != null ? dVar.b() : null);
    }
}
