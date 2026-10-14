package a1;

/* JADX INFO: compiled from: StopWorkRunnable.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class s implements java.lang.Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r0.u f44a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r0.a0 f45b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f46c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f47d;

    public s(r0.u uVar, r0.a0 a0Var, boolean z4, int i5) {
        m3.k.e(uVar, "processor");
        m3.k.e(a0Var, "token");
        this.f44a = uVar;
        this.f45b = a0Var;
        this.f46c = z4;
        this.f47d = i5;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zV = this.f46c ? this.f44a.v(this.f45b, this.f47d) : this.f44a.w(this.f45b, this.f47d);
        q0.n.e().a(q0.n.i("StopWorkRunnable"), "StopWorkRunnable for " + this.f45b.a().b() + "; Processor.stopWork = " + zV);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public s(r0.u uVar, r0.a0 a0Var, boolean z4) {
        this(uVar, a0Var, z4, -512);
        m3.k.e(uVar, "processor");
        m3.k.e(a0Var, "token");
    }
}
