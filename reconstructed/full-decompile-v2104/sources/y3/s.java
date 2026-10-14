package y3;

/* JADX INFO: compiled from: LockFreeLinkedList.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6933a = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(y3.s.class, java.lang.Object.class, "_next");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6934b = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(y3.s.class, java.lang.Object.class, "_prev");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6935c = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(y3.s.class, java.lang.Object.class, "_removedRef");
    private volatile java.lang.Object _next = this;
    private volatile java.lang.Object _prev = this;
    private volatile java.lang.Object _removedRef;

    /* JADX INFO: compiled from: LockFreeLinkedList.kt */
    public static abstract class a extends y3.b<y3.s> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final y3.s f6936b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public y3.s f6937c;

        public a(y3.s sVar) {
            this.f6936b = sVar;
        }

        @Override // y3.b
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void b(y3.s sVar, java.lang.Object obj) {
            boolean z4 = obj == null;
            y3.s sVar2 = z4 ? this.f6936b : this.f6937c;
            if (sVar2 != null && a4.n.a(y3.s.f6933a, sVar, this, sVar2) && z4) {
                y3.s sVar3 = this.f6936b;
                y3.s sVar4 = this.f6937c;
                m3.k.b(sVar4);
                sVar3.n(sVar4);
            }
        }
    }

    public final boolean k(y3.s sVar) {
        f6934b.lazySet(sVar, this);
        f6933a.lazySet(sVar, this);
        while (o() == this) {
            if (a4.n.a(f6933a, this, this, sVar)) {
                sVar.n(this);
                return true;
            }
        }
        return false;
    }

    public final y3.s l(y3.a0 a0Var) {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        java.lang.Object obj;
        while (true) {
            y3.s sVar = (y3.s) f6934b.get(this);
            y3.s sVar2 = sVar;
            while (true) {
                y3.s sVar3 = null;
                while (true) {
                    atomicReferenceFieldUpdater = f6933a;
                    obj = atomicReferenceFieldUpdater.get(sVar2);
                    if (obj == this) {
                        if (sVar != sVar2 && !a4.n.a(f6934b, this, sVar, sVar2)) {
                            break;
                        }
                        return sVar2;
                    }
                    if (s()) {
                        return null;
                    }
                    if (obj == a0Var) {
                        return sVar2;
                    }
                    if (obj instanceof y3.a0) {
                        ((y3.a0) obj).a(sVar2);
                        break;
                    }
                    if (!(obj instanceof y3.b0)) {
                        m3.k.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
                        sVar3 = sVar2;
                        sVar2 = (y3.s) obj;
                    } else {
                        if (sVar3 != null) {
                            break;
                        }
                        sVar2 = (y3.s) f6934b.get(sVar2);
                    }
                }
                if (!a4.n.a(atomicReferenceFieldUpdater, sVar3, sVar2, ((y3.b0) obj).f6886a)) {
                    break;
                }
                sVar2 = sVar3;
            }
        }
    }

    public final y3.s m(y3.s sVar) {
        while (sVar.s()) {
            sVar = (y3.s) f6934b.get(sVar);
        }
        return sVar;
    }

    public final void n(y3.s sVar) {
        y3.s sVar2;
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6934b;
        do {
            sVar2 = (y3.s) atomicReferenceFieldUpdater.get(sVar);
            if (o() != sVar) {
                return;
            }
        } while (!a4.n.a(f6934b, sVar, sVar2, this));
        if (s()) {
            sVar.l(null);
        }
    }

    public final java.lang.Object o() {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6933a;
        while (true) {
            java.lang.Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof y3.a0)) {
                return obj;
            }
            ((y3.a0) obj).a(this);
        }
    }

    public final y3.s p() {
        return y3.r.b(o());
    }

    public final y3.s r() {
        y3.s sVarL = l(null);
        return sVarL == null ? m((y3.s) f6934b.get(this)) : sVarL;
    }

    public boolean s() {
        return o() instanceof y3.b0;
    }

    public boolean t() {
        return v() == null;
    }

    public java.lang.String toString() {
        return new m3.o(this) { // from class: y3.s.b
            @Override // q3.f
            public java.lang.Object get() {
                return t3.i0.a(this.f5174b);
            }
        } + '@' + t3.i0.b(this);
    }

    public final y3.s v() {
        java.lang.Object objO;
        y3.s sVar;
        do {
            objO = o();
            if (objO instanceof y3.b0) {
                return ((y3.b0) objO).f6886a;
            }
            if (objO == this) {
                return (y3.s) objO;
            }
            m3.k.c(objO, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
            sVar = (y3.s) objO;
        } while (!a4.n.a(f6933a, this, objO, sVar.w()));
        sVar.l(null);
        return null;
    }

    public final y3.b0 w() {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6935c;
        y3.b0 b0Var = (y3.b0) atomicReferenceFieldUpdater.get(this);
        if (b0Var != null) {
            return b0Var;
        }
        y3.b0 b0Var2 = new y3.b0(this);
        atomicReferenceFieldUpdater.lazySet(this, b0Var2);
        return b0Var2;
    }

    public final int y(y3.s sVar, y3.s sVar2, y3.s.a aVar) {
        f6934b.lazySet(sVar, this);
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6933a;
        atomicReferenceFieldUpdater.lazySet(sVar, sVar2);
        aVar.f6937c = sVar2;
        if (a4.n.a(atomicReferenceFieldUpdater, this, sVar2, aVar)) {
            return aVar.a(this) == null ? 1 : 2;
        }
        return 0;
    }
}
