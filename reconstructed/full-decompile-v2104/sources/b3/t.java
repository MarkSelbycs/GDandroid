package b3;

/* JADX INFO: compiled from: MutableCollections.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class t extends b3.s {
    public static final <T> boolean n(java.util.Collection<? super T> collection, java.lang.Iterable<? extends T> iterable) {
        m3.k.e(collection, "<this>");
        m3.k.e(iterable, "elements");
        if (iterable instanceof java.util.Collection) {
            return collection.addAll((java.util.Collection) iterable);
        }
        boolean z4 = false;
        java.util.Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z4 = true;
            }
        }
        return z4;
    }

    public static final <T> T o(java.util.List<T> list) {
        m3.k.e(list, "<this>");
        if (list.isEmpty()) {
            throw new java.util.NoSuchElementException("List is empty.");
        }
        return list.remove(b3.o.f(list));
    }
}
