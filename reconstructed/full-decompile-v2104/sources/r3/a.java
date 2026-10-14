package r3;

/* JADX INFO: compiled from: SequencesJVM.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a<T> implements r3.b<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.concurrent.atomic.AtomicReference<r3.b<T>> f5967a;

    public a(r3.b<? extends T> bVar) {
        m3.k.e(bVar, "sequence");
        this.f5967a = new java.util.concurrent.atomic.AtomicReference<>(bVar);
    }

    @Override // r3.b
    public java.util.Iterator<T> iterator() {
        r3.b<T> andSet = this.f5967a.getAndSet(null);
        if (andSet != null) {
            return andSet.iterator();
        }
        throw new java.lang.IllegalStateException("This sequence can be consumed only once.");
    }
}
