package l1;

/* JADX INFO: compiled from: ArrayIter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a<E> implements l1.g<E>, java.util.Iterator, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Object f5120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5123d;

    public a(E[] eArr) {
        this((java.lang.Object) eArr);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f5123d < this.f5122c;
    }

    @Override // java.util.Iterator
    public E next() {
        if (!hasNext()) {
            throw new java.util.NoSuchElementException();
        }
        java.lang.Object obj = this.f5120a;
        int i5 = this.f5123d;
        this.f5123d = i5 + 1;
        return (E) java.lang.reflect.Array.get(obj, i5);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new java.lang.UnsupportedOperationException("remove() method is not supported");
    }

    public a(java.lang.Object obj) {
        this(obj, 0);
    }

    public a(java.lang.Object obj, int i5) {
        this(obj, i5, -1);
    }

    public a(java.lang.Object obj, int i5, int i6) {
        int length = java.lang.reflect.Array.getLength(obj);
        this.f5122c = length;
        if (i6 > 0 && i6 < length) {
            this.f5122c = i6;
        }
        if (i5 >= 0 && i5 < this.f5122c) {
            this.f5121b = i5;
        }
        this.f5120a = obj;
        this.f5123d = this.f5121b;
    }
}
