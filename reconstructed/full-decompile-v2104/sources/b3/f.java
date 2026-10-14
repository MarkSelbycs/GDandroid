package b3;

/* JADX INFO: compiled from: Collections.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f<T> implements java.util.Collection<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final T[] f2941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f2942b;

    public f(T[] tArr, boolean z4) {
        m3.k.e(tArr, "values");
        this.f2941a = tArr;
        this.f2942b = z4;
    }

    public int a() {
        return this.f2941a.length;
    }

    @Override // java.util.Collection
    public boolean add(T t5) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(java.util.Collection<? extends T> collection) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean contains(java.lang.Object obj) {
        return b3.k.k(this.f2941a, obj);
    }

    @Override // java.util.Collection
    public boolean containsAll(java.util.Collection<? extends java.lang.Object> collection) {
        m3.k.e(collection, "elements");
        if (collection.isEmpty()) {
            return true;
        }
        java.util.Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.f2941a.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public java.util.Iterator<T> iterator() {
        return m3.b.a(this.f2941a);
    }

    @Override // java.util.Collection
    public boolean remove(java.lang.Object obj) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(java.util.Collection<? extends java.lang.Object> collection) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(java.util.Collection<? extends java.lang.Object> collection) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return a();
    }

    @Override // java.util.Collection
    public final java.lang.Object[] toArray() {
        return b3.n.b(this.f2941a, this.f2942b);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        m3.k.e(tArr, "array");
        return (T[]) m3.f.b(this, tArr);
    }
}
