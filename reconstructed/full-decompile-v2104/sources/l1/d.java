package l1;

/* JADX INFO: compiled from: ComputeIter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class d<T> implements java.util.Iterator<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public T f5125a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f5126b;

    public abstract T b();

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f5125a != null) {
            return true;
        }
        if (this.f5126b) {
            return false;
        }
        T tB = b();
        if (tB == null) {
            this.f5126b = true;
            return false;
        }
        this.f5125a = tB;
        return true;
    }

    @Override // java.util.Iterator
    public T next() {
        if (!hasNext()) {
            throw new java.util.NoSuchElementException("No more lines");
        }
        T t5 = this.f5125a;
        this.f5125a = null;
        return t5;
    }
}
