package c3;

/* JADX INFO: compiled from: MapBuilder.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f<E> extends b3.e<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c3.d<E, ?> f3016a;

    public f(c3.d<E, ?> dVar) {
        m3.k.e(dVar, "backing");
        this.f3016a = dVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e5) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(java.util.Collection<? extends E> collection) {
        m3.k.e(collection, "elements");
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // b3.e
    public int b() {
        return this.f3016a.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f3016a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(java.lang.Object obj) {
        return this.f3016a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f3016a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public java.util.Iterator<E> iterator() {
        return this.f3016a.i0();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(java.lang.Object obj) {
        return this.f3016a.p0(obj) >= 0;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(java.util.Collection<? extends java.lang.Object> collection) {
        m3.k.e(collection, "elements");
        this.f3016a.D();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(java.util.Collection<? extends java.lang.Object> collection) {
        m3.k.e(collection, "elements");
        this.f3016a.D();
        return super.retainAll(collection);
    }
}
