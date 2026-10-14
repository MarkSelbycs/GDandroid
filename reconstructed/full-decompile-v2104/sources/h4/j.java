package h4;

/* JADX INFO: compiled from: RealResponseBody.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class j extends c4.b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.q f4624a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final okio.BufferedSource f4625b;

    public j(c4.q qVar, okio.BufferedSource bufferedSource) {
        this.f4624a = qVar;
        this.f4625b = bufferedSource;
    }

    @Override // c4.b0
    public long h() {
        return h4.f.a(this.f4624a);
    }

    @Override // c4.b0
    public c4.t i() {
        java.lang.String strA = this.f4624a.a("Content-Type");
        if (strA != null) {
            return c4.t.b(strA);
        }
        return null;
    }

    @Override // c4.b0
    public okio.BufferedSource n() {
        return this.f4625b;
    }
}
