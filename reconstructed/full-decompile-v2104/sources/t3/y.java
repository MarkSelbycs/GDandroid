package t3;

/* JADX INFO: compiled from: CompletionState.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class y {
    public static final <T> java.lang.Object a(java.lang.Object obj, d3.d<? super T> dVar) {
        if (obj instanceof t3.u) {
            a3.i.a aVar = a3.i.f116a;
            return a3.i.b(a3.j.a(((t3.u) obj).f6248a));
        }
        a3.i.a aVar2 = a3.i.f116a;
        return a3.i.b(obj);
    }

    public static final <T> java.lang.Object b(java.lang.Object obj, l3.l<? super java.lang.Throwable, a3.o> lVar) {
        java.lang.Throwable thC = a3.i.c(obj);
        if (thC == null) {
            return lVar != null ? new t3.v(obj, lVar) : obj;
        }
        return new t3.u(thC, false, 2, null);
    }

    public static final <T> java.lang.Object c(java.lang.Object obj, t3.j<?> jVar) {
        java.lang.Throwable thC = a3.i.c(obj);
        return thC == null ? obj : new t3.u(thC, false, 2, null);
    }

    public static /* synthetic */ java.lang.Object d(java.lang.Object obj, l3.l lVar, int i5, java.lang.Object obj2) {
        if ((i5 & 1) != 0) {
            lVar = null;
        }
        return b(obj, lVar);
    }
}
