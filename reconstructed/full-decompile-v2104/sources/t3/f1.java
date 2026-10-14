package t3;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f1 extends t3.j1 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicIntegerFieldUpdater f6183f = java.util.concurrent.atomic.AtomicIntegerFieldUpdater.newUpdater(t3.f1.class, "_invoked");
    private volatile int _invoked;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final l3.l<java.lang.Throwable, a3.o> f6184e;

    /* JADX WARN: Multi-variable type inference failed */
    public f1(l3.l<? super java.lang.Throwable, a3.o> lVar) {
        this.f6184e = lVar;
    }

    @Override // l3.l
    public /* bridge */ /* synthetic */ a3.o x(java.lang.Throwable th) {
        z(th);
        return a3.o.f122a;
    }

    @Override // t3.w
    public void z(java.lang.Throwable th) {
        if (f6183f.compareAndSet(this, 0, 1)) {
            this.f6184e.x(th);
        }
    }
}
