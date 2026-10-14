package b3;

/* JADX INFO: compiled from: AbstractMutableSet.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class e<E> extends java.util.AbstractSet<E> {
    public abstract int b();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return b();
    }
}
