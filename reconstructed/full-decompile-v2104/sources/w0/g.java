package w0;

/* JADX INFO: compiled from: ContraintControllers.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class g extends w0.c<v0.c> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6709b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(x0.g<v0.c> gVar) {
        super(gVar);
        m3.k.e(gVar, "tracker");
        this.f6709b = 7;
    }

    @Override // w0.c
    public int b() {
        return this.f6709b;
    }

    @Override // w0.c
    public boolean c(z0.u uVar) {
        m3.k.e(uVar, "workSpec");
        q0.o oVarD = uVar.f7041j.d();
        return oVarD == q0.o.UNMETERED || (android.os.Build.VERSION.SDK_INT >= 30 && oVarD == q0.o.TEMPORARILY_UNMETERED);
    }

    @Override // w0.c
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public boolean d(v0.c cVar) {
        m3.k.e(cVar, "value");
        return !cVar.a() || cVar.b();
    }
}
