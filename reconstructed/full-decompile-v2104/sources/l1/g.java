package l1;

/* JADX INFO: compiled from: IterableIter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface g<T> extends java.lang.Iterable<T>, java.util.Iterator<T> {
    @Override // java.lang.Iterable
    default java.util.Iterator<T> iterator() {
        return this;
    }
}
