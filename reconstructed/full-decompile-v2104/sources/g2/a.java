package g2;

/* JADX INFO: compiled from: GlobalSerializeMapping.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static java.util.Map<java.lang.reflect.Type, g2.c<? extends f2.b, ?>> f4333a = new a2.u();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static java.util.Map<java.lang.reflect.Type, java.lang.Object> f4334b = new a2.u();

    static {
        g2.e eVar = new g2.e(java.time.LocalDate.class);
        f4333a.put(java.time.LocalDate.class, eVar);
        f4334b.put(java.time.LocalDate.class, eVar);
        g2.e eVar2 = new g2.e(java.time.LocalDateTime.class);
        f4333a.put(java.time.LocalDateTime.class, eVar2);
        f4334b.put(java.time.LocalDateTime.class, eVar2);
        g2.e eVar3 = new g2.e(java.time.LocalTime.class);
        f4333a.put(java.time.LocalTime.class, eVar3);
        f4334b.put(java.time.LocalTime.class, eVar3);
    }

    public static g2.c<? extends f2.b, ?> a(java.lang.reflect.Type type) {
        java.util.Map<java.lang.reflect.Type, g2.c<? extends f2.b, ?>> map = f4333a;
        if (map == null) {
            return null;
        }
        return map.get(type);
    }
}
