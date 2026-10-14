package r0;

/* JADX INFO: compiled from: WorkLauncher.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class o0 implements r0.n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r0.u f5864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c1.b f5865b;

    public o0(r0.u uVar, c1.b bVar) {
        m3.k.e(uVar, "processor");
        m3.k.e(bVar, "workTaskExecutor");
        this.f5864a = uVar;
        this.f5865b = bVar;
    }

    @Override // r0.n0
    public void c(r0.a0 a0Var, int i5) {
        m3.k.e(a0Var, "workSpecId");
        this.f5865b.a(new a1.s(this.f5864a, a0Var, false, i5));
    }

    @Override // r0.n0
    public void d(r0.a0 a0Var, androidx.work.WorkerParameters.a aVar) {
        m3.k.e(a0Var, "workSpecId");
        this.f5865b.a(new a1.q(this.f5864a, a0Var, aVar));
    }
}
