package j;

/* JADX INFO: compiled from: ArrayMap.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a<K, V> extends j.g<K, V> implements java.util.Map<K, V> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public j.f<K, V> f4690h;

    /* JADX INFO: renamed from: j.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ArrayMap.java */
    public class C0063a extends j.f<K, V> {
        public C0063a() {
        }

        @Override // j.f
        public void a() {
            j.a.this.clear();
        }

        @Override // j.f
        public java.lang.Object b(int i5, int i6) {
            return j.a.this.f4739b[(i5 << 1) + i6];
        }

        @Override // j.f
        public java.util.Map<K, V> c() {
            return j.a.this;
        }

        @Override // j.f
        public int d() {
            return j.a.this.f4740c;
        }

        @Override // j.f
        public int e(java.lang.Object obj) {
            return j.a.this.f(obj);
        }

        @Override // j.f
        public int f(java.lang.Object obj) {
            return j.a.this.h(obj);
        }

        @Override // j.f
        public void g(K k5, V v4) {
            j.a.this.put(k5, v4);
        }

        @Override // j.f
        public void h(int i5) {
            j.a.this.k(i5);
        }

        @Override // j.f
        public V i(int i5, V v4) {
            return j.a.this.l(i5, v4);
        }
    }

    @Override // java.util.Map
    public java.util.Set<java.util.Map.Entry<K, V>> entrySet() {
        return n().l();
    }

    @Override // java.util.Map
    public java.util.Set<K> keySet() {
        return n().m();
    }

    public final j.f<K, V> n() {
        if (this.f4690h == null) {
            this.f4690h = new j.a.C0063a();
        }
        return this.f4690h;
    }

    public boolean o(java.util.Collection<?> collection) {
        return j.f.p(this, collection);
    }

    @Override // java.util.Map
    public void putAll(java.util.Map<? extends K, ? extends V> map) {
        c(this.f4740c + map.size());
        for (java.util.Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public java.util.Collection<V> values() {
        return n().n();
    }
}
