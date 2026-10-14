package t3;

/* JADX INFO: compiled from: Executors.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class p0 implements java.util.concurrent.Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t3.b0 f6223a;

    @Override // java.util.concurrent.Executor
    public void execute(java.lang.Runnable runnable) {
        t3.b0 b0Var = this.f6223a;
        d3.h hVar = d3.h.f3962a;
        if (b0Var.n(hVar)) {
            this.f6223a.i(hVar, runnable);
        } else {
            runnable.run();
        }
    }

    public java.lang.String toString() {
        return this.f6223a.toString();
    }
}
