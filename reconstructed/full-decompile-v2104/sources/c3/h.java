package c3;

/* JADX INFO: compiled from: SetBuilder.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class h<E> extends b3.e<E> implements java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c3.d<E, ?> f3018a;

    public h(c3.d<E, ?> dVar) {
        m3.k.e(dVar, "backing");
        this.f3018a = dVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e5) {
        return this.f3018a.u(e5) >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(java.util.Collection<? extends E> collection) {
        m3.k.e(collection, "elements");
        this.f3018a.D();
        return super.addAll(collection);
    }

    @Override // b3.e
    public int b() {
        return this.f3018a.size();
    }

    public final java.util.Set<E> c() {
        this.f3018a.y();
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f3018a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(java.lang.Object obj) {
        return this.f3018a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f3018a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public java.util.Iterator<E> iterator() {
        return this.f3018a.i0();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(java.lang.Object obj) {
        return this.f3018a.p0(obj) >= 0;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(java.util.Collection<? extends java.lang.Object> collection) {
        m3.k.e(collection, "elements");
        this.f3018a.D();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(java.util.Collection<? extends java.lang.Object> collection) {
        m3.k.e(collection, "elements");
        this.f3018a.D();
        return super.retainAll(collection);
    }

    public h() {
        this(new c3.d());
    }
}
