package t3;

/* JADX INFO: compiled from: CompletionState.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicIntegerFieldUpdater f6247b = java.util.concurrent.atomic.AtomicIntegerFieldUpdater.newUpdater(t3.u.class, "_handled");
    private volatile int _handled;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Throwable f6248a;

    public u(java.lang.Throwable th, boolean z4) {
        this.f6248a = th;
        this._handled = z4 ? 1 : 0;
    }

    public final boolean a() {
        return f6247b.get(this) != 0;
    }

    public final boolean b() {
        return f6247b.compareAndSet(this, 0, 1);
    }

    public java.lang.String toString() {
        return t3.i0.a(this) + '[' + this.f6248a + ']';
    }

    public /* synthetic */ u(java.lang.Throwable th, boolean z4, int i5, m3.g gVar) {
        this(th, (i5 & 2) != 0 ? false : z4);
    }
}
