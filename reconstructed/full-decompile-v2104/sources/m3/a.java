package m3;

/* JADX INFO: compiled from: ArrayIterator.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a<T> implements java.util.Iterator<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final T[] f5170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5171b;

    public a(T[] tArr) {
        m3.k.e(tArr, "array");
        this.f5170a = tArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f5171b < this.f5170a.length;
    }

    @Override // java.util.Iterator
    public T next() {
        try {
            T[] tArr = this.f5170a;
            int i5 = this.f5171b;
            this.f5171b = i5 + 1;
            return tArr[i5];
        } catch (java.lang.ArrayIndexOutOfBoundsException e5) {
            this.f5171b--;
            throw new java.util.NoSuchElementException(e5.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
