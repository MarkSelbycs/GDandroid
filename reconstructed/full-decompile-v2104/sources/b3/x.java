package b3;

/* JADX INFO: compiled from: Collections.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class x implements java.util.ListIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b3.x f2948a = new b3.x();

    @Override // java.util.ListIterator, java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public java.lang.Void next() {
        throw new java.util.NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public /* bridge */ /* synthetic */ void add(java.lang.Object obj) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public java.lang.Void previous() {
        throw new java.util.NoSuchElementException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return false;
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return false;
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return 0;
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return -1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public /* bridge */ /* synthetic */ void set(java.lang.Object obj) {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
