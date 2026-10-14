package a1;

/* JADX INFO: compiled from: StartWorkRunnable.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class q implements java.lang.Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r0.u f38a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r0.a0 f39b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.work.WorkerParameters.a f40c;

    public q(r0.u uVar, r0.a0 a0Var, androidx.work.WorkerParameters.a aVar) {
        m3.k.e(uVar, "processor");
        m3.k.e(a0Var, "startStopToken");
        this.f38a = uVar;
        this.f39b = a0Var;
        this.f40c = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f38a.s(this.f39b, this.f40c);
    }
}
