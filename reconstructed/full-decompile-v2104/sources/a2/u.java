package a2;

/* JADX INFO: compiled from: SafeConcurrentHashMap.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class u<K, V> extends java.util.concurrent.ConcurrentHashMap<K, V> {
    public u() {
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.Map, java.util.concurrent.ConcurrentMap
    public V computeIfAbsent(K k5, java.util.function.Function<? super K, ? extends V> function) {
        return (V) a2.i.a(this, k5, function);
    }

    public u(int i5) {
        super(i5);
    }
}
