package h;

/* JADX INFO: compiled from: FastSafeIterableMap.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a<K, V> extends h.b<K, V> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.util.HashMap<K, h.b.c<K, V>> f4537e = new java.util.HashMap<>();

    @Override // h.b
    public h.b.c<K, V> c(K k5) {
        return this.f4537e.get(k5);
    }

    public boolean contains(K k5) {
        return this.f4537e.containsKey(k5);
    }

    @Override // h.b
    public V g(K k5, V v4) {
        h.b.c<K, V> cVarC = c(k5);
        if (cVarC != null) {
            return cVarC.f4543b;
        }
        this.f4537e.put(k5, f(k5, v4));
        return null;
    }

    @Override // h.b
    public V h(K k5) {
        V v4 = (V) super.h(k5);
        this.f4537e.remove(k5);
        return v4;
    }
}
