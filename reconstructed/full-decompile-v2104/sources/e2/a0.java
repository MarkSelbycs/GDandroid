package e2;

/* JADX INFO: compiled from: ServiceLoaderUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a0 {
    public static <T> java.util.ServiceLoader<T> a(java.lang.Class<T> cls) {
        return b(cls, null);
    }

    public static <T> java.util.ServiceLoader<T> b(java.lang.Class<T> cls, java.lang.ClassLoader classLoader) {
        return java.util.ServiceLoader.load(cls, (java.lang.ClassLoader) e2.p.d(classLoader, new java.util.function.Supplier() { // from class: e2.z
            @Override // java.util.function.Supplier
            public final java.lang.Object get() {
                return e2.j.c();
            }
        }));
    }
}
