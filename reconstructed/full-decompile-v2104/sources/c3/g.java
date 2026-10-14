package c3;

/* JADX INFO: compiled from: MapBuilder.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class g<V> extends b3.c<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c3.d<?, V> f3017a;

    public g(c3.d<?, V> dVar) {
        m3.k.e(dVar, "backing");
        this.f3017a = dVar;
    }

    @Override // b3.c
    public int a() {
        return this.f3017a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean add(V v4) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean addAll(java.util.Collection<? extends V> collection) {
        m3.k.e(collection, "elements");
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f3017a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(java.lang.Object obj) {
        return this.f3017a.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f3017a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public java.util.Iterator<V> iterator() {
        return this.f3017a.u0();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(java.lang.Object obj) {
        return this.f3017a.s0(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(java.util.Collection<? extends java.lang.Object> collection) {
        m3.k.e(collection, "elements");
        this.f3017a.D();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(java.util.Collection<? extends java.lang.Object> collection) {
        m3.k.e(collection, "elements");
        this.f3017a.D();
        return super.retainAll(collection);
    }
}
