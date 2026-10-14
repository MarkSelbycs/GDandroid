package r3;

/* JADX INFO: compiled from: Sequences.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class h<T, R> implements r3.b<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r3.b<T> f5969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l3.l<T, R> f5970b;

    /* JADX INFO: compiled from: Sequences.kt */
    public static final class a implements java.util.Iterator<R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.Iterator<T> f5971a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ r3.h<T, R> f5972b;

        public a(r3.h<T, R> hVar) {
            this.f5972b = hVar;
            this.f5971a = hVar.f5969a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f5971a.hasNext();
        }

        @Override // java.util.Iterator
        public R next() {
            return (R) this.f5972b.f5970b.x(this.f5971a.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new java.lang.UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h(r3.b<? extends T> bVar, l3.l<? super T, ? extends R> lVar) {
        m3.k.e(bVar, "sequence");
        m3.k.e(lVar, "transformer");
        this.f5969a = bVar;
        this.f5970b = lVar;
    }

    @Override // r3.b
    public java.util.Iterator<R> iterator() {
        return new r3.h.a(this);
    }
}
