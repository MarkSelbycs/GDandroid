package b3;

/* JADX INFO: compiled from: MapWithDefault.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f0 {
    public static final <K, V> V a(java.util.Map<K, ? extends V> map, K k5) {
        m3.k.e(map, "<this>");
        if (map instanceof b3.e0) {
            return (V) ((b3.e0) map).j(k5);
        }
        V v4 = map.get(k5);
        if (v4 != null || map.containsKey(k5)) {
            return v4;
        }
        throw new java.util.NoSuchElementException("Key " + k5 + " is missing in the map.");
    }
}
