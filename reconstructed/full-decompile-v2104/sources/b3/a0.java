package b3;

/* JADX INFO: compiled from: Sets.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a0 implements java.util.Set, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b3.a0 f2937a = new b3.a0();

    @Override // java.util.Set, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(java.lang.Object obj) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(java.util.Collection collection) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean b(java.lang.Void r5) {
        m3.k.e(r5, "element");
        return false;
    }

    public int c() {
        return 0;
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ boolean contains(java.lang.Object obj) {
        if (obj instanceof java.lang.Void) {
            return b((java.lang.Void) obj);
        }
        return false;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(java.util.Collection collection) {
        m3.k.e(collection, "elements");
        return collection.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof java.util.Set) && ((java.util.Set) obj).isEmpty();
    }

    @Override // java.util.Set, java.util.Collection
    public int hashCode() {
        return 0;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return true;
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public java.util.Iterator iterator() {
        return b3.x.f2948a;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(java.lang.Object obj) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(java.util.Collection collection) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(java.util.Collection collection) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ int size() {
        return c();
    }

    @Override // java.util.Set, java.util.Collection
    public java.lang.Object[] toArray() {
        return m3.f.a(this);
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        m3.k.e(tArr, "array");
        return (T[]) m3.f.b(this, tArr);
    }

    public java.lang.String toString() {
        return "[]";
    }
}
