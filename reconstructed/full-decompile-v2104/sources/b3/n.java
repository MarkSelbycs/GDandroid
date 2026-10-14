package b3;

/* JADX INFO: compiled from: CollectionsJVM.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class n {
    public static final <E> java.util.List<E> a(java.util.List<E> list) {
        m3.k.e(list, "builder");
        return ((c3.b) list).u();
    }

    public static final <T> java.lang.Object[] b(T[] tArr, boolean z4) {
        m3.k.e(tArr, "<this>");
        if (z4 && m3.k.a(tArr.getClass(), java.lang.Object[].class)) {
            return tArr;
        }
        java.lang.Object[] objArrCopyOf = java.util.Arrays.copyOf(tArr, tArr.length, java.lang.Object[].class);
        m3.k.d(objArrCopyOf, "copyOf(this, this.size, Array<Any?>::class.java)");
        return objArrCopyOf;
    }

    public static final <E> java.util.List<E> c() {
        return new c3.b();
    }

    public static final <T> java.util.List<T> d(T t5) {
        java.util.List<T> listSingletonList = java.util.Collections.singletonList(t5);
        m3.k.d(listSingletonList, "singletonList(element)");
        return listSingletonList;
    }
}
