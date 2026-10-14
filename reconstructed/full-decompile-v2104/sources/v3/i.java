package v3;

/* JADX INFO: compiled from: BufferedChannel.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class i<E> extends y3.e0<v3.i<E>> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final v3.b<E> f6607e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final java.util.concurrent.atomic.AtomicReferenceArray f6608f;

    public i(long j5, v3.i<E> iVar, v3.b<E> bVar, int i5) {
        super(j5, iVar, i5);
        this.f6607e = bVar;
        this.f6608f = new java.util.concurrent.atomic.AtomicReferenceArray(v3.c.f6580b * 2);
    }

    public final void A(int i5, java.lang.Object obj) {
        this.f6608f.set((i5 * 2) + 1, obj);
    }

    public final void B(int i5, E e5) {
        z(i5, e5);
    }

    @Override // y3.e0
    public int n() {
        return v3.c.f6580b;
    }

    @Override // y3.e0
    public void o(int i5, java.lang.Throwable th, d3.g gVar) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        l3.l<E, a3.o> lVar;
        l3.l<E, a3.o> lVar2;
        int i6 = v3.c.f6580b;
        boolean z4 = i5 >= i6;
        if (z4) {
            i5 -= i6;
        }
        E eV = v(i5);
        while (true) {
            java.lang.Object objW = w(i5);
            if ((objW instanceof t3.c2) || (objW instanceof v3.u)) {
                if (r(i5, objW, z4 ? v3.c.f6588j : v3.c.f6589k)) {
                    s(i5);
                    x(i5, !z4);
                    if (!z4 || (lVar = u().f6558b) == null) {
                        return;
                    }
                    y3.z.b(lVar, eV, gVar);
                    return;
                }
            } else {
                if (objW == v3.c.f6588j || objW == v3.c.f6589k) {
                    break;
                }
                if (objW != v3.c.f6585g && objW != v3.c.f6584f) {
                    if (objW == v3.c.f6587i || objW == v3.c.f6582d || objW == v3.c.z()) {
                        return;
                    }
                    throw new java.lang.IllegalStateException(("unexpected state: " + objW).toString());
                }
            }
        }
        s(i5);
        if (!z4 || (lVar2 = u().f6558b) == null) {
            return;
        }
        y3.z.b(lVar2, eV, gVar);
    }

    public final boolean r(int i5, java.lang.Object obj, java.lang.Object obj2) {
        return this.f6608f.compareAndSet((i5 * 2) + 1, obj, obj2);
    }

    public final void s(int i5) {
        z(i5, null);
    }

    public final java.lang.Object t(int i5, java.lang.Object obj) {
        return this.f6608f.getAndSet((i5 * 2) + 1, obj);
    }

    public final v3.b<E> u() {
        v3.b<E> bVar = this.f6607e;
        m3.k.b(bVar);
        return bVar;
    }

    public final E v(int i5) {
        return (E) this.f6608f.get(i5 * 2);
    }

    public final java.lang.Object w(int i5) {
        return this.f6608f.get((i5 * 2) + 1);
    }

    public final void x(int i5, boolean z4) {
        if (z4) {
            u().I0((this.f6893c * ((long) v3.c.f6580b)) + ((long) i5));
        }
        p();
    }

    public final E y(int i5) {
        E eV = v(i5);
        s(i5);
        return eV;
    }

    public final void z(int i5, java.lang.Object obj) {
        this.f6608f.lazySet(i5 * 2, obj);
    }
}
