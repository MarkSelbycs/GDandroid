package v3;

/* JADX INFO: compiled from: ChannelCoroutine.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e<E> extends t3.a<a3.o> implements v3.d<E> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final v3.d<E> f6602d;

    public e(d3.g gVar, v3.d<E> dVar, boolean z4, boolean z5) {
        super(gVar, z4, z5);
        this.f6602d = dVar;
    }

    @Override // t3.o1
    public void A(java.lang.Throwable th) {
        java.util.concurrent.CancellationException cancellationExceptionC0 = t3.o1.C0(this, th, null, 1, null);
        this.f6602d.e(cancellationExceptionC0);
        w(cancellationExceptionC0);
    }

    public final v3.d<E> N0() {
        return this;
    }

    public final v3.d<E> O0() {
        return this.f6602d;
    }

    @Override // v3.s
    public java.lang.Object a(d3.d<? super v3.h<? extends E>> dVar) {
        java.lang.Object objA = this.f6602d.a(dVar);
        e3.c.c();
        return objA;
    }

    @Override // v3.s
    public java.lang.Object d() {
        return this.f6602d.d();
    }

    @Override // t3.o1, t3.h1
    public final void e(java.util.concurrent.CancellationException cancellationException) {
        if (e0()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new t3.i1(E(), null, this);
        }
        A(cancellationException);
    }

    @Override // v3.t
    public boolean g(java.lang.Throwable th) {
        return this.f6602d.g(th);
    }

    @Override // v3.t
    public java.lang.Object i(E e5) {
        return this.f6602d.i(e5);
    }

    @Override // v3.s
    public v3.f<E> iterator() {
        return this.f6602d.iterator();
    }

    @Override // v3.t
    public boolean l() {
        return this.f6602d.l();
    }

    @Override // v3.t
    public void n(l3.l<? super java.lang.Throwable, a3.o> lVar) {
        this.f6602d.n(lVar);
    }

    @Override // v3.t
    public java.lang.Object o(E e5, d3.d<? super a3.o> dVar) {
        return this.f6602d.o(e5, dVar);
    }
}
