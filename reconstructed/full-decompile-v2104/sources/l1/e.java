package l1;

/* JADX INFO: compiled from: EnumerationIter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e<E> implements l1.g<E>, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.Enumeration<E> f5127a;

    public e(java.util.Enumeration<E> enumeration) {
        this.f5127a = enumeration;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f5127a.hasMoreElements();
    }

    @Override // java.util.Iterator
    public E next() {
        return this.f5127a.nextElement();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new java.lang.UnsupportedOperationException();
    }
}
