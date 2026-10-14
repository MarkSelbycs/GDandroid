package b3;

/* JADX INFO: compiled from: SetsJVM.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i0 {
    public static final <E> java.util.Set<E> a(java.util.Set<E> set) {
        m3.k.e(set, "builder");
        return ((c3.h) set).c();
    }

    public static final <E> java.util.Set<E> b() {
        return new c3.h();
    }

    public static final <T> java.util.Set<T> c(T t5) {
        java.util.Set<T> setSingleton = java.util.Collections.singleton(t5);
        m3.k.d(setSingleton, "singleton(element)");
        return setSingleton;
    }
}
