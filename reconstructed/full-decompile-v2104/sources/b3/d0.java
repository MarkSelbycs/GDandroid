package b3;

/* JADX INFO: compiled from: PrimitiveIterators.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class d0 implements java.util.Iterator<java.lang.Long> {
    public abstract long a();

    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ java.lang.Long next() {
        return java.lang.Long.valueOf(a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
