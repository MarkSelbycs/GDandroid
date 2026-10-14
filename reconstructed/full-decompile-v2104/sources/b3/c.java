package b3;

/* JADX INFO: compiled from: AbstractMutableCollection.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class c<E> extends java.util.AbstractCollection<E> {
    public abstract int a();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final /* bridge */ int size() {
        return a();
    }
}
