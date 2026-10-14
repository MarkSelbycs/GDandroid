package c3;

/* JADX INFO: compiled from: MapBuilder.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class e<K, V> extends c3.a<java.util.Map.Entry<K, V>, K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c3.d<K, V> f3015a;

    public e(c3.d<K, V> dVar) {
        m3.k.e(dVar, "backing");
        this.f3015a = dVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(java.util.Collection<? extends java.util.Map.Entry<K, V>> collection) {
        m3.k.e(collection, "elements");
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // b3.e
    public int b() {
        return this.f3015a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f3015a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(java.util.Collection<? extends java.lang.Object> collection) {
        m3.k.e(collection, "elements");
        return this.f3015a.H(collection);
    }

    @Override // c3.a
    public boolean e(java.util.Map.Entry<? extends K, ? extends V> entry) {
        m3.k.e(entry, "element");
        return this.f3015a.I(entry);
    }

    @Override // c3.a
    public boolean f(java.util.Map.Entry entry) {
        m3.k.e(entry, "element");
        return this.f3015a.n0(entry);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public boolean add(java.util.Map.Entry<K, V> entry) {
        m3.k.e(entry, "element");
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f3015a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public java.util.Iterator<java.util.Map.Entry<K, V>> iterator() {
        return this.f3015a.U();
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(java.util.Collection<? extends java.lang.Object> collection) {
        m3.k.e(collection, "elements");
        this.f3015a.D();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(java.util.Collection<? extends java.lang.Object> collection) {
        m3.k.e(collection, "elements");
        this.f3015a.D();
        return super.retainAll(collection);
    }
}
