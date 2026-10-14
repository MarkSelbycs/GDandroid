package z0;

/* JADX INFO: compiled from: WorkTagDao.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface z {

    /* JADX INFO: compiled from: WorkTagDao.kt */
    public static final class a {
        @java.lang.Deprecated
        public static void a(z0.z zVar, java.lang.String str, java.util.Set<java.lang.String> set) {
            m3.k.e(str, "id");
            m3.k.e(set, "tags");
            z0.z.super.d(str, set);
        }
    }

    void a(java.lang.String str);

    void c(z0.y yVar);

    default void d(java.lang.String str, java.util.Set<java.lang.String> set) {
        m3.k.e(str, "id");
        m3.k.e(set, "tags");
        java.util.Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            c(new z0.y((java.lang.String) it.next(), str));
        }
    }

    java.util.List<java.lang.String> e(java.lang.String str);
}
