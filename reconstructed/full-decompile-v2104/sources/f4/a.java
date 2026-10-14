package f4;

/* JADX INFO: compiled from: ConnectInterceptor.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a implements c4.s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.v f4241a;

    public a(c4.v vVar) {
        this.f4241a = vVar;
    }

    @Override // c4.s
    public c4.a0 a(c4.s.a aVar) throws java.io.IOException {
        h4.i iVar = (h4.i) aVar;
        c4.y yVarB = iVar.b();
        f4.g gVarF = iVar.f();
        return iVar.d(yVarB, gVarF, gVarF.g(this.f4241a, !yVarB.k().equals("GET")), gVarF.b());
    }
}
