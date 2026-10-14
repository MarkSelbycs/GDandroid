package b3;

/* JADX INFO: compiled from: Maps.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h0 extends b3.g0 {
    public static final <K, V> java.util.Map<K, V> g() {
        b3.z zVar = b3.z.f2950a;
        m3.k.c(zVar, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
        return zVar;
    }

    public static final <K, V> V h(java.util.Map<K, ? extends V> map, K k5) {
        m3.k.e(map, "<this>");
        return (V) b3.f0.a(map, k5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> java.util.Map<K, V> i(java.util.Map<K, ? extends V> map) {
        m3.k.e(map, "<this>");
        int size = map.size();
        if (size != 0) {
            return size != 1 ? map : b3.g0.f(map);
        }
        return g();
    }

    public static final <K, V> java.util.Map<K, V> j(java.util.Map<? extends K, ? extends V> map, a3.h<? extends K, ? extends V> hVar) {
        m3.k.e(map, "<this>");
        m3.k.e(hVar, "pair");
        if (map.isEmpty()) {
            return b3.g0.e(hVar);
        }
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap(map);
        linkedHashMap.put(hVar.e(), hVar.f());
        return linkedHashMap;
    }

    public static final <K, V> void k(java.util.Map<? super K, ? super V> map, java.lang.Iterable<? extends a3.h<? extends K, ? extends V>> iterable) {
        m3.k.e(map, "<this>");
        m3.k.e(iterable, "pairs");
        for (a3.h<? extends K, ? extends V> hVar : iterable) {
            map.put(hVar.b(), hVar.c());
        }
    }

    public static final <K, V> java.util.Map<K, V> l(java.lang.Iterable<? extends a3.h<? extends K, ? extends V>> iterable) {
        m3.k.e(iterable, "<this>");
        if (!(iterable instanceof java.util.Collection)) {
            return i(m(iterable, new java.util.LinkedHashMap()));
        }
        java.util.Collection collection = (java.util.Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return g();
        }
        if (size != 1) {
            return m(iterable, new java.util.LinkedHashMap(b3.g0.d(collection.size())));
        }
        return b3.g0.e(iterable instanceof java.util.List ? (a3.h<? extends K, ? extends V>) ((java.util.List) iterable).get(0) : iterable.iterator().next());
    }

    public static final <K, V, M extends java.util.Map<? super K, ? super V>> M m(java.lang.Iterable<? extends a3.h<? extends K, ? extends V>> iterable, M m5) {
        m3.k.e(iterable, "<this>");
        m3.k.e(m5, "destination");
        k(m5, iterable);
        return m5;
    }
}
