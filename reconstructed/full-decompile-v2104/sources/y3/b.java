package y3;

/* JADX INFO: compiled from: Atomic.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class b<T> extends y3.a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicReferenceFieldUpdater f6885a = java.util.concurrent.atomic.AtomicReferenceFieldUpdater.newUpdater(y3.b.class, java.lang.Object.class, "_consensus");
    private volatile java.lang.Object _consensus = y3.a.f6884a;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // y3.a0
    public final java.lang.Object a(java.lang.Object obj) {
        java.lang.Object objC = f6885a.get(this);
        if (objC == y3.a.f6884a) {
            objC = c(d(obj));
        }
        b(obj, objC);
        return objC;
    }

    public abstract void b(T t5, java.lang.Object obj);

    public final java.lang.Object c(java.lang.Object obj) {
        java.util.concurrent.atomic.AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f6885a;
        java.lang.Object obj2 = atomicReferenceFieldUpdater.get(this);
        java.lang.Object obj3 = y3.a.f6884a;
        if (obj2 != obj3) {
            return obj2;
        }
        return a4.n.a(atomicReferenceFieldUpdater, this, obj3, obj) ? obj : atomicReferenceFieldUpdater.get(this);
    }

    public abstract java.lang.Object d(T t5);
}
