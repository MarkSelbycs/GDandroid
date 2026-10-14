package r3;

/* JADX INFO: compiled from: _Sequences.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g extends r3.f {
    public static final <T, R> r3.b<R> c(r3.b<? extends T> bVar, l3.l<? super T, ? extends R> lVar) {
        m3.k.e(bVar, "<this>");
        m3.k.e(lVar, "transform");
        return new r3.h(bVar, lVar);
    }

    public static final <T, C extends java.util.Collection<? super T>> C d(r3.b<? extends T> bVar, C c5) {
        m3.k.e(bVar, "<this>");
        m3.k.e(c5, "destination");
        java.util.Iterator<? extends T> it = bVar.iterator();
        while (it.hasNext()) {
            c5.add(it.next());
        }
        return c5;
    }

    public static final <T> java.util.List<T> e(r3.b<? extends T> bVar) {
        m3.k.e(bVar, "<this>");
        return b3.o.i(f(bVar));
    }

    public static final <T> java.util.List<T> f(r3.b<? extends T> bVar) {
        m3.k.e(bVar, "<this>");
        return (java.util.List) d(bVar, new java.util.ArrayList());
    }
}
