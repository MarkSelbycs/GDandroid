package h4;

/* JADX INFO: compiled from: CallServerInterceptor.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b implements c4.s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f4573a;

    public b(boolean z4) {
        this.f4573a = z4;
    }

    @Override // c4.s
    public c4.a0 a(c4.s.a aVar) throws java.io.IOException {
        h4.i iVar = (h4.i) aVar;
        h4.h hVarC = iVar.c();
        f4.g gVarF = iVar.f();
        c4.y yVarB = aVar.b();
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        hVarC.d(yVarB);
        if (h4.g.b(yVarB.k()) && yVarB.f() != null) {
            okio.BufferedSink bufferedSinkBuffer = okio.Okio.buffer(hVarC.a(yVarB, yVarB.f().a()));
            yVarB.f().writeTo(bufferedSinkBuffer);
            bufferedSinkBuffer.close();
        }
        hVarC.c();
        c4.a0 a0VarO = hVarC.e().B(yVarB).t(gVarF.b().l()).C(jCurrentTimeMillis).z(java.lang.System.currentTimeMillis()).o();
        if (!this.f4573a || a0VarO.y() != 101) {
            a0VarO = a0VarO.K().n(hVarC.b(a0VarO)).o();
        }
        if ("close".equalsIgnoreCase(a0VarO.P().h("Connection")) || "close".equalsIgnoreCase(a0VarO.C("Connection"))) {
            gVarF.h();
        }
        int iY = a0VarO.y();
        if ((iY != 204 && iY != 205) || a0VarO.u().h() <= 0) {
            return a0VarO;
        }
        throw new java.net.ProtocolException("HTTP " + iY + " had non-zero Content-Length: " + a0VarO.u().h());
    }
}
