package y3;

/* JADX INFO: compiled from: Scopes.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d0<T> extends t3.a<T> implements f3.e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d3.d<T> f6889d;

    /* JADX WARN: Multi-variable type inference failed */
    public d0(d3.g gVar, d3.d<? super T> dVar) {
        super(gVar, true, true);
        this.f6889d = dVar;
    }

    @Override // f3.e
    public final f3.e D() {
        d3.d<T> dVar = this.f6889d;
        if (dVar instanceof f3.e) {
            return (f3.e) dVar;
        }
        return null;
    }

    @Override // t3.a
    public void J0(java.lang.Object obj) {
        d3.d<T> dVar = this.f6889d;
        dVar.F(t3.y.a(obj, dVar));
    }

    @Override // t3.o1
    public final boolean g0() {
        return true;
    }

    @Override // t3.o1
    public void v(java.lang.Object obj) {
        y3.k.c(e3.b.b(this.f6889d), t3.y.a(obj, this.f6889d), null, 2, null);
    }
}
