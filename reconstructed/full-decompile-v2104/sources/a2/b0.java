package a2;

/* JADX INFO: compiled from: WeakConcurrentMap.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b0<K, V> extends a2.t<K, V> {
    public b0() {
        this(new a2.u());
    }

    public b0(java.util.concurrent.ConcurrentMap<java.lang.ref.Reference<K>, V> concurrentMap) {
        super(concurrentMap, e2.s.WEAK);
    }
}
