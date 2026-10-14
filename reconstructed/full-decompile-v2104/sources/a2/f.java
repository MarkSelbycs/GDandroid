package a2;

/* JADX INFO: compiled from: FuncKeyMap.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f<K, V> extends a2.e<K, V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.function.Function<java.lang.Object, K> f79b;

    public f(java.util.Map<K, V> map, java.util.function.Function<java.lang.Object, K> function) {
        super(map);
        this.f79b = function;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // a2.a0
    public K H(java.lang.Object obj) {
        java.util.function.Function<java.lang.Object, K> function = this.f79b;
        return function != null ? function.apply(obj) : obj;
    }
}
