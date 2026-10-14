package w0;

/* JADX INFO: compiled from: ContraintControllers.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d extends w0.c<v0.c> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6702b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(x0.g<v0.c> gVar) {
        super(gVar);
        m3.k.e(gVar, "tracker");
        this.f6702b = 7;
    }

    @Override // w0.c
    public int b() {
        return this.f6702b;
    }

    @Override // w0.c
    public boolean c(z0.u uVar) {
        m3.k.e(uVar, "workSpec");
        return uVar.f7041j.d() == q0.o.CONNECTED;
    }

    @Override // w0.c
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public boolean d(v0.c cVar) {
        m3.k.e(cVar, "value");
        return (cVar.a() && cVar.d()) ? false : true;
    }
}
