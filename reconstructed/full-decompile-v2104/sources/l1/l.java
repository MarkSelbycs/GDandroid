package l1;

/* JADX INFO: compiled from: TransCollection.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l<F, T> extends java.util.AbstractCollection<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.Collection<F> f5132a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.function.Function<? super F, ? extends T> f5133b;

    public l(java.util.Collection<F> collection, java.util.function.Function<? super F, ? extends T> function) {
        this.f5132a = (java.util.Collection) v1.e.p(collection);
        this.f5133b = (java.util.function.Function) v1.e.p(function);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(java.util.function.Consumer consumer, java.lang.Object obj) {
        consumer.accept(this.f5133b.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean d(java.util.function.Predicate predicate, java.lang.Object obj) {
        return predicate.test(this.f5133b.apply(obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.f5132a.clear();
    }

    @Override // java.lang.Iterable
    public void forEach(final java.util.function.Consumer<? super T> consumer) {
        v1.e.p(consumer);
        this.f5132a.forEach(new java.util.function.Consumer() { // from class: l1.j
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                this.f5128a.c(consumer, obj);
            }
        });
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.f5132a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public java.util.Iterator<T> iterator() {
        return l1.f.c(this.f5132a.iterator(), this.f5133b);
    }

    @Override // java.util.Collection
    public boolean removeIf(final java.util.function.Predicate<? super T> predicate) {
        v1.e.p(predicate);
        return this.f5132a.removeIf(new java.util.function.Predicate() { // from class: l1.k
            @Override // java.util.function.Predicate
            public final boolean test(java.lang.Object obj) {
                return this.f5130a.d(predicate, obj);
            }
        });
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return this.f5132a.size();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public java.util.Spliterator<T> spliterator() {
        return l1.i.a(this.f5132a.spliterator(), this.f5133b);
    }
}
