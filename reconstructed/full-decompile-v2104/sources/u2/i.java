package u2;

/* JADX INFO: compiled from: Primitives.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.Map<java.lang.Class<?>, java.lang.Class<?>> f6364a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.Map<java.lang.Class<?>, java.lang.Class<?>> f6365b;

    static {
        java.util.HashMap map = new java.util.HashMap(16);
        java.util.HashMap map2 = new java.util.HashMap(16);
        a(map, map2, java.lang.Boolean.TYPE, java.lang.Boolean.class);
        a(map, map2, java.lang.Byte.TYPE, java.lang.Byte.class);
        a(map, map2, java.lang.Character.TYPE, java.lang.Character.class);
        a(map, map2, java.lang.Double.TYPE, java.lang.Double.class);
        a(map, map2, java.lang.Float.TYPE, java.lang.Float.class);
        a(map, map2, java.lang.Integer.TYPE, java.lang.Integer.class);
        a(map, map2, java.lang.Long.TYPE, java.lang.Long.class);
        a(map, map2, java.lang.Short.TYPE, java.lang.Short.class);
        a(map, map2, java.lang.Void.TYPE, java.lang.Void.class);
        f6364a = java.util.Collections.unmodifiableMap(map);
        f6365b = java.util.Collections.unmodifiableMap(map2);
    }

    public static void a(java.util.Map<java.lang.Class<?>, java.lang.Class<?>> map, java.util.Map<java.lang.Class<?>, java.lang.Class<?>> map2, java.lang.Class<?> cls, java.lang.Class<?> cls2) {
        map.put(cls, cls2);
        map2.put(cls2, cls);
    }

    public static boolean b(java.lang.reflect.Type type) {
        return f6364a.containsKey(type);
    }
}
