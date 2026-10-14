package l1;

/* JADX INFO: compiled from: TransIter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class m<F, T> implements java.util.Iterator<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.Iterator<? extends F> f5134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.function.Function<? super F, ? extends T> f5135b;

    public m(java.util.Iterator<? extends F> it, java.util.function.Function<? super F, ? extends T> function) {
        this.f5134a = (java.util.Iterator) v1.e.p(it);
        this.f5135b = (java.util.function.Function) v1.e.p(function);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f5134a.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return this.f5135b.apply(this.f5134a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f5134a.remove();
    }
}
