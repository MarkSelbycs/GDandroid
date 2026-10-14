package w0;

/* JADX INFO: compiled from: ContraintControllers.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b extends w0.c<java.lang.Boolean> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6693b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(x0.c cVar) {
        super(cVar);
        m3.k.e(cVar, "tracker");
        this.f6693b = 5;
    }

    @Override // w0.c
    public int b() {
        return this.f6693b;
    }

    @Override // w0.c
    public boolean c(z0.u uVar) {
        m3.k.e(uVar, "workSpec");
        return uVar.f7041j.f();
    }

    @Override // w0.c
    public /* bridge */ /* synthetic */ boolean d(java.lang.Boolean bool) {
        return g(bool.booleanValue());
    }

    public boolean g(boolean z4) {
        return !z4;
    }
}
