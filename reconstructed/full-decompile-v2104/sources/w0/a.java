package w0;

/* JADX INFO: compiled from: ContraintControllers.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a extends w0.c<java.lang.Boolean> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6692b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(x0.g<java.lang.Boolean> gVar) {
        super(gVar);
        m3.k.e(gVar, "tracker");
        this.f6692b = 6;
    }

    @Override // w0.c
    public int b() {
        return this.f6692b;
    }

    @Override // w0.c
    public boolean c(z0.u uVar) {
        m3.k.e(uVar, "workSpec");
        return uVar.f7041j.g();
    }

    @Override // w0.c
    public /* bridge */ /* synthetic */ boolean d(java.lang.Boolean bool) {
        return g(bool.booleanValue());
    }

    public boolean g(boolean z4) {
        return !z4;
    }
}
