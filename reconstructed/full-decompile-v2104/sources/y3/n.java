package y3;

/* JADX INFO: compiled from: InlineList.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class n<E> {
    public static <E> java.lang.Object a(java.lang.Object obj) {
        return obj;
    }

    public static /* synthetic */ java.lang.Object b(java.lang.Object obj, int i5, m3.g gVar) {
        if ((i5 & 1) != 0) {
            obj = null;
        }
        return a(obj);
    }

    public static final java.lang.Object c(java.lang.Object obj, E e5) {
        if (obj == null) {
            return a(e5);
        }
        if (obj instanceof java.util.ArrayList) {
            m3.k.c(obj, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }");
            ((java.util.ArrayList) obj).add(e5);
            return a(obj);
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(4);
        arrayList.add(obj);
        arrayList.add(e5);
        return a(arrayList);
    }
}
