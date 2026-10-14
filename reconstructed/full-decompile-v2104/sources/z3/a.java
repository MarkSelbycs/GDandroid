package z3;

/* JADX INFO: compiled from: Cancellable.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a {
    public static final void a(d3.d<?> dVar, java.lang.Throwable th) throws java.lang.Throwable {
        a3.i.a aVar = a3.i.f116a;
        dVar.F(a3.i.b(a3.j.a(th)));
        throw th;
    }

    public static final void b(d3.d<? super a3.o> dVar, d3.d<?> dVar2) throws java.lang.Throwable {
        try {
            d3.d dVarB = e3.b.b(dVar);
            a3.i.a aVar = a3.i.f116a;
            y3.k.c(dVarB, a3.i.b(a3.o.f122a), null, 2, null);
        } catch (java.lang.Throwable th) {
            a(dVar2, th);
        }
    }

    public static final <R, T> void c(l3.p<? super R, ? super d3.d<? super T>, ? extends java.lang.Object> pVar, R r5, d3.d<? super T> dVar, l3.l<? super java.lang.Throwable, a3.o> lVar) throws java.lang.Throwable {
        try {
            d3.d dVarB = e3.b.b(e3.b.a(pVar, r5, dVar));
            a3.i.a aVar = a3.i.f116a;
            y3.k.b(dVarB, a3.i.b(a3.o.f122a), lVar);
        } catch (java.lang.Throwable th) {
            a(dVar, th);
        }
    }

    public static /* synthetic */ void d(l3.p pVar, java.lang.Object obj, d3.d dVar, l3.l lVar, int i5, java.lang.Object obj2) throws java.lang.Throwable {
        if ((i5 & 4) != 0) {
            lVar = null;
        }
        c(pVar, obj, dVar, lVar);
    }
}
