package l1;

/* JADX INFO: compiled from: TransSpliterator.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class p<F, T> implements java.util.Spliterator<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.Spliterator<F> f5140a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.function.Function<? super F, ? extends T> f5141b;

    public p(java.util.Spliterator<F> spliterator, java.util.function.Function<? super F, ? extends T> function) {
        this.f5140a = spliterator;
        this.f5141b = function;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(java.util.function.Consumer consumer, java.lang.Object obj) {
        consumer.accept(this.f5141b.apply(obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(java.util.function.Consumer consumer, java.lang.Object obj) {
        consumer.accept(this.f5141b.apply(obj));
    }

    @Override // java.util.Spliterator
    public int characteristics() {
        return this.f5140a.characteristics() & (-262);
    }

    @Override // java.util.Spliterator
    public long estimateSize() {
        return this.f5140a.estimateSize();
    }

    @Override // java.util.Spliterator
    public void forEachRemaining(final java.util.function.Consumer<? super T> consumer) {
        this.f5140a.forEachRemaining(new java.util.function.Consumer() { // from class: l1.n
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                this.f5136a.c(consumer, obj);
            }
        });
    }

    @Override // java.util.Spliterator
    public boolean tryAdvance(final java.util.function.Consumer<? super T> consumer) {
        return this.f5140a.tryAdvance(new java.util.function.Consumer() { // from class: l1.o
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                this.f5138a.d(consumer, obj);
            }
        });
    }

    @Override // java.util.Spliterator
    public java.util.Spliterator<T> trySplit() {
        java.util.Spliterator<F> spliteratorTrySplit = this.f5140a.trySplit();
        if (spliteratorTrySplit != null) {
            return new l1.p(spliteratorTrySplit, this.f5141b);
        }
        return null;
    }
}
