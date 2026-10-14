package a2;

/* JADX INFO: compiled from: MapUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i {
    public static <K, V> V a(java.util.Map<K, V> map, K k5, java.util.function.Function<? super K, ? extends V> function) {
        V v4 = map.get(k5);
        if (v4 != null) {
            return v4;
        }
        map.putIfAbsent(k5, function.apply(k5));
        return map.get(k5);
    }

    public static <K, V> java.util.Map<K, V> b(java.lang.Class<?> cls) {
        if (cls == null || cls.isAssignableFrom(java.util.AbstractMap.class)) {
            return new java.util.HashMap();
        }
        try {
            return (java.util.Map) e2.x.D(cls, new java.lang.Object[0]);
        } catch (r1.c unused) {
            return new java.util.HashMap();
        }
    }

    public static <K, V> java.util.Map.Entry<K, V> c(K k5, V v4) {
        return d(k5, v4, true);
    }

    public static <K, V> java.util.Map.Entry<K, V> d(K k5, V v4, boolean z4) {
        return z4 ? new java.util.AbstractMap.SimpleImmutableEntry(k5, v4) : new java.util.AbstractMap.SimpleEntry(k5, v4);
    }

    public static <T> T e(java.util.Map<?, ?> map, java.lang.Object obj, java.lang.Class<T> cls) {
        return (T) f(map, obj, cls, null);
    }

    public static <T> T f(java.util.Map<?, ?> map, java.lang.Object obj, java.lang.Class<T> cls, T t5) {
        return map == null ? t5 : (T) n1.c.b(cls, map.get(obj), t5);
    }

    public static java.lang.Integer g(java.util.Map<?, ?> map, java.lang.Object obj) {
        return (java.lang.Integer) e(map, obj, java.lang.Integer.class);
    }

    public static java.lang.String h(java.util.Map<?, ?> map, java.lang.Object obj) {
        return (java.lang.String) e(map, obj, java.lang.String.class);
    }

    public static boolean i(java.util.Map<?, ?> map) {
        return (map == null || map.isEmpty()) ? false : true;
    }

    public static <K, V> java.util.HashMap<K, V> j(int i5, boolean z4) {
        int i6 = ((int) (i5 / 0.75f)) + 1;
        return z4 ? new java.util.LinkedHashMap(i6) : new java.util.HashMap<>(i6);
    }

    public static <K, V> java.util.HashMap<K, V> k(boolean z4) {
        return j(16, z4);
    }
}
