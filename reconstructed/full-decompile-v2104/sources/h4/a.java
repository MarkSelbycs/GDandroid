package h4;

/* JADX INFO: compiled from: BridgeInterceptor.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a implements c4.s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.m f4572a;

    public a(c4.m mVar) {
        this.f4572a = mVar;
    }

    @Override // c4.s
    public c4.a0 a(c4.s.a aVar) throws java.io.IOException {
        c4.y yVarB = aVar.b();
        c4.y.b bVarL = yVarB.l();
        c4.z zVarF = yVarB.f();
        if (zVarF != null) {
            c4.t tVarB = zVarF.b();
            if (tVarB != null) {
                bVarL.i("Content-Type", tVarB.toString());
            }
            long jA = zVarF.a();
            if (jA != -1) {
                bVarL.i("Content-Length", java.lang.Long.toString(jA));
                bVarL.m("Transfer-Encoding");
            } else {
                bVarL.i("Transfer-Encoding", "chunked");
                bVarL.m("Content-Length");
            }
        }
        boolean z4 = false;
        if (yVarB.h("Host") == null) {
            bVarL.i("Host", d4.c.m(yVarB.m(), false));
        }
        if (yVarB.h("Connection") == null) {
            bVarL.i("Connection", "Keep-Alive");
        }
        if (yVarB.h("Accept-Encoding") == null) {
            z4 = true;
            bVarL.i("Accept-Encoding", "gzip");
        }
        java.util.List<c4.l> listB = this.f4572a.b(yVarB.m());
        if (!listB.isEmpty()) {
            bVarL.i("Cookie", b(listB));
        }
        if (yVarB.h("User-Agent") == null) {
            bVarL.i("User-Agent", d4.d.a());
        }
        c4.a0 a0VarA = aVar.a(bVarL.g());
        h4.f.e(this.f4572a, yVarB.m(), a0VarA.I());
        c4.a0.b bVarB = a0VarA.K().B(yVarB);
        if (z4 && "gzip".equalsIgnoreCase(a0VarA.C("Content-Encoding")) && h4.f.c(a0VarA)) {
            okio.GzipSource gzipSource = new okio.GzipSource(a0VarA.u().n());
            c4.q qVarE = a0VarA.I().e().g("Content-Encoding").g("Content-Length").e();
            bVarB.u(qVarE);
            bVarB.n(new h4.j(qVarE, okio.Okio.buffer(gzipSource)));
        }
        return bVarB.o();
    }

    public final java.lang.String b(java.util.List<c4.l> list) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        int size = list.size();
        for (int i5 = 0; i5 < size; i5++) {
            if (i5 > 0) {
                sb.append("; ");
            }
            c4.l lVar = list.get(i5);
            sb.append(lVar.c());
            sb.append('=');
            sb.append(lVar.j());
        }
        return sb.toString();
    }
}
