package b3;

/* JADX INFO: compiled from: Collections.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class y implements java.util.List, java.io.Serializable, java.util.RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b3.y f2949a = new b3.y();

    @Override // java.util.List
    public /* bridge */ /* synthetic */ void add(int i5, java.lang.Object obj) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(java.lang.Object obj) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i5, java.util.Collection collection) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(java.util.Collection collection) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean b(java.lang.Void r5) {
        m3.k.e(r5, "element");
        return false;
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public java.lang.Void get(int i5) {
        throw new java.lang.IndexOutOfBoundsException("Empty list doesn't contain element at index " + i5 + '.');
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(java.lang.Object obj) {
        if (obj instanceof java.lang.Void) {
            return b((java.lang.Void) obj);
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(java.util.Collection collection) {
        m3.k.e(collection, "elements");
        return collection.isEmpty();
    }

    public int e() {
        return 0;
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof java.util.List) && ((java.util.List) obj).isEmpty();
    }

    public int f(java.lang.Void r5) {
        m3.k.e(r5, "element");
        return -1;
    }

    public int h(java.lang.Void r5) {
        m3.k.e(r5, "element");
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return 1;
    }

    @Override // java.util.List
    public final /* bridge */ int indexOf(java.lang.Object obj) {
        if (obj instanceof java.lang.Void) {
            return f((java.lang.Void) obj);
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return true;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public java.util.Iterator iterator() {
        return b3.x.f2948a;
    }

    @Override // java.util.List
    public final /* bridge */ int lastIndexOf(java.lang.Object obj) {
        if (obj instanceof java.lang.Void) {
            return h((java.lang.Void) obj);
        }
        return -1;
    }

    @Override // java.util.List
    public java.util.ListIterator listIterator() {
        return b3.x.f2948a;
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ java.lang.Object remove(int i5) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(java.lang.Object obj) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(java.util.Collection collection) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(java.util.Collection collection) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ java.lang.Object set(int i5, java.lang.Object obj) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return e();
    }

    @Override // java.util.List
    public java.util.List subList(int i5, int i6) {
        if (i5 == 0 && i6 == 0) {
            return this;
        }
        throw new java.lang.IndexOutOfBoundsException("fromIndex: " + i5 + ", toIndex: " + i6);
    }

    @Override // java.util.List, java.util.Collection
    public java.lang.Object[] toArray() {
        return m3.f.a(this);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        m3.k.e(tArr, "array");
        return (T[]) m3.f.b(this, tArr);
    }

    public java.lang.String toString() {
        return "[]";
    }

    @Override // java.util.List
    public java.util.ListIterator listIterator(int i5) {
        if (i5 == 0) {
            return b3.x.f2948a;
        }
        throw new java.lang.IndexOutOfBoundsException("Index: " + i5);
    }
}
