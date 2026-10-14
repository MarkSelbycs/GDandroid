package b3;

/* JADX INFO: compiled from: AbstractMutableList.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class d<E> extends java.util.AbstractList<E> {
    public abstract int b();

    public abstract E c(int i5);

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ E remove(int i5) {
        return c(i5);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return b();
    }
}
