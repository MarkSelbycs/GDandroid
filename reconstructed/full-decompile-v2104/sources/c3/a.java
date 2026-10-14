package c3;

/* JADX INFO: compiled from: MapBuilder.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a<E extends java.util.Map.Entry<? extends K, ? extends V>, K, V> extends b3.e<E> {
    public final boolean c(E e5) {
        m3.k.e(e5, "element");
        return e(e5);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean contains(java.lang.Object obj) {
        if (obj instanceof java.util.Map.Entry) {
            return c((java.util.Map.Entry) obj);
        }
        return false;
    }

    public abstract boolean e(java.util.Map.Entry<? extends K, ? extends V> entry);

    public abstract /* bridge */ boolean f(java.util.Map.Entry<?, ?> entry);

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean remove(java.lang.Object obj) {
        if (obj instanceof java.util.Map.Entry) {
            return f((java.util.Map.Entry) obj);
        }
        return false;
    }
}
