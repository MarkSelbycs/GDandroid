package a4;

/* JADX INFO: compiled from: Tasks.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class k extends a4.h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.Runnable f163c;

    public k(java.lang.Runnable runnable, long j5, a4.i iVar) {
        super(j5, iVar);
        this.f163c = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f163c.run();
        } finally {
            this.f161b.b();
        }
    }

    public java.lang.String toString() {
        return "Task[" + t3.i0.a(this.f163c) + '@' + t3.i0.b(this.f163c) + ", " + this.f160a + ", " + this.f161b + ']';
    }
}
