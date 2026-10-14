package b3;

/* JADX INFO: compiled from: MapsJVM.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g0 extends b3.f0 {
    public static final <K, V> java.util.Map<K, V> b(java.util.Map<K, V> map) {
        m3.k.e(map, "builder");
        return ((c3.d) map).y();
    }

    public static final <K, V> java.util.Map<K, V> c() {
        return new c3.d();
    }

    public static final int d(int i5) {
        if (i5 < 0) {
            return i5;
        }
        if (i5 < 3) {
            return i5 + 1;
        }
        if (i5 < 1073741824) {
            return (int) ((i5 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static final <K, V> java.util.Map<K, V> e(a3.h<? extends K, ? extends V> hVar) {
        m3.k.e(hVar, "pair");
        java.util.Map<K, V> mapSingletonMap = java.util.Collections.singletonMap(hVar.e(), hVar.f());
        m3.k.d(mapSingletonMap, "singletonMap(pair.first, pair.second)");
        return mapSingletonMap;
    }

    public static final <K, V> java.util.Map<K, V> f(java.util.Map<? extends K, ? extends V> map) {
        m3.k.e(map, "<this>");
        java.util.Map.Entry<? extends K, ? extends V> next = map.entrySet().iterator().next();
        java.util.Map<K, V> mapSingletonMap = java.util.Collections.singletonMap(next.getKey(), next.getValue());
        m3.k.d(mapSingletonMap, "with(entries.iterator().…ingletonMap(key, value) }");
        return mapSingletonMap;
    }
}
