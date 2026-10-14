package a2;

/* JADX INFO: compiled from: MapBuilder.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g<K, V> implements java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.Map<K, V> f80a;

    public g(java.util.Map<K, V> map) {
        this.f80a = map;
    }

    public static <K, V> a2.g<K, V> c(java.util.Map<K, V> map) {
        return new a2.g<>(map);
    }

    public static <K, V> a2.g<K, V> e(boolean z4) {
        return c(a2.i.k(z4));
    }

    public java.util.Map<K, V> b() {
        return f();
    }

    public java.util.Map<K, V> f() {
        return this.f80a;
    }
}
