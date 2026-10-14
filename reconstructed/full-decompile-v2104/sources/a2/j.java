package a2;

/* JADX INFO: compiled from: MapWrapper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class j<K, V> implements java.util.Map<K, V>, java.lang.Iterable<java.util.Map.Entry<K, V>>, java.io.Serializable, java.lang.Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.Map<K, V> f82a;

    public j(java.util.Map<K, V> map) {
        this.f82a = map;
    }

    @Override // java.util.Map
    public void clear() {
        this.f82a.clear();
    }

    @Override // java.util.Map
    public V compute(K k5, java.util.function.BiFunction<? super K, ? super V, ? extends V> biFunction) {
        return this.f82a.compute(k5, biFunction);
    }

    @Override // java.util.Map
    public V computeIfAbsent(K k5, java.util.function.Function<? super K, ? extends V> function) {
        return this.f82a.computeIfAbsent(k5, function);
    }

    @Override // java.util.Map
    public V computeIfPresent(K k5, java.util.function.BiFunction<? super K, ? super V, ? extends V> biFunction) {
        return this.f82a.computeIfPresent(k5, biFunction);
    }

    @Override // java.util.Map
    public boolean containsKey(java.lang.Object obj) {
        return this.f82a.containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(java.lang.Object obj) {
        return this.f82a.containsValue(obj);
    }

    @Override // java.util.Map
    public java.util.Set<java.util.Map.Entry<K, V>> entrySet() {
        return this.f82a.entrySet();
    }

    @Override // java.util.Map
    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return java.util.Objects.equals(this.f82a, ((a2.j) obj).f82a);
    }

    @Override // java.util.Map
    public void forEach(java.util.function.BiConsumer<? super K, ? super V> biConsumer) {
        this.f82a.forEach(biConsumer);
    }

    @Override // java.util.Map
    public V get(java.lang.Object obj) {
        return this.f82a.get(obj);
    }

    @Override // java.util.Map
    public V getOrDefault(java.lang.Object obj, V v4) {
        return this.f82a.getOrDefault(obj, v4);
    }

    @Override // java.util.Map
    public int hashCode() {
        return java.util.Objects.hash(this.f82a);
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f82a.isEmpty();
    }

    @Override // java.lang.Iterable
    public java.util.Iterator<java.util.Map.Entry<K, V>> iterator() {
        return entrySet().iterator();
    }

    @Override // java.util.Map
    public java.util.Set<K> keySet() {
        return this.f82a.keySet();
    }

    @Override // java.util.Map
    public V merge(K k5, V v4, java.util.function.BiFunction<? super V, ? super V, ? extends V> biFunction) {
        return this.f82a.merge(k5, v4, biFunction);
    }

    @Override // java.util.Map
    public V put(K k5, V v4) {
        return this.f82a.put(k5, v4);
    }

    @Override // java.util.Map
    public void putAll(java.util.Map<? extends K, ? extends V> map) {
        this.f82a.putAll(map);
    }

    @Override // java.util.Map
    public V putIfAbsent(K k5, V v4) {
        return this.f82a.putIfAbsent(k5, v4);
    }

    @Override // java.util.Map
    public V remove(java.lang.Object obj) {
        return this.f82a.remove(obj);
    }

    @Override // java.util.Map
    public boolean replace(K k5, V v4, V v5) {
        return this.f82a.replace(k5, v4, v5);
    }

    @Override // java.util.Map
    public void replaceAll(java.util.function.BiFunction<? super K, ? super V, ? extends V> biFunction) {
        this.f82a.replaceAll(biFunction);
    }

    @Override // java.util.Map
    public int size() {
        return this.f82a.size();
    }

    public java.lang.String toString() {
        return this.f82a.toString();
    }

    @Override // 
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public a2.j<K, V> clone() throws java.lang.CloneNotSupportedException {
        a2.j<K, V> jVar = (a2.j) super.clone();
        jVar.f82a = (java.util.Map) e2.p.a(this.f82a);
        return jVar;
    }

    @Override // java.util.Map
    public java.util.Collection<V> values() {
        return this.f82a.values();
    }

    public java.util.Map<K, V> x() {
        return this.f82a;
    }

    @Override // java.util.Map
    public boolean remove(java.lang.Object obj, java.lang.Object obj2) {
        return this.f82a.remove(obj, obj2);
    }

    @Override // java.util.Map
    public V replace(K k5, V v4) {
        return this.f82a.replace(k5, v4);
    }
}
