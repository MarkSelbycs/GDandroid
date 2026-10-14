package h4;

/* JADX INFO: compiled from: RealInterceptorChain.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class i implements c4.s.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.List<c4.s> f4617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f4.g f4618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h4.h f4619c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c4.i f4620d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f4621e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final c4.y f4622f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4623g;

    public i(java.util.List<c4.s> list, f4.g gVar, h4.h hVar, c4.i iVar, int i5, c4.y yVar) {
        this.f4617a = list;
        this.f4620d = iVar;
        this.f4618b = gVar;
        this.f4619c = hVar;
        this.f4621e = i5;
        this.f4622f = yVar;
    }

    @Override // c4.s.a
    public c4.a0 a(c4.y yVar) throws java.io.IOException {
        return d(yVar, this.f4618b, this.f4619c, this.f4620d);
    }

    @Override // c4.s.a
    public c4.y b() {
        return this.f4622f;
    }

    public h4.h c() {
        return this.f4619c;
    }

    public c4.a0 d(c4.y yVar, f4.g gVar, h4.h hVar, c4.i iVar) throws java.io.IOException {
        if (this.f4621e >= this.f4617a.size()) {
            throw new java.lang.AssertionError();
        }
        this.f4623g++;
        if (this.f4619c != null && !e(yVar.m())) {
            throw new java.lang.IllegalStateException("network interceptor " + this.f4617a.get(this.f4621e - 1) + " must retain the same host and port");
        }
        if (this.f4619c != null && this.f4623g > 1) {
            throw new java.lang.IllegalStateException("network interceptor " + this.f4617a.get(this.f4621e - 1) + " must call proceed() exactly once");
        }
        h4.i iVar2 = new h4.i(this.f4617a, gVar, hVar, iVar, this.f4621e + 1, yVar);
        c4.s sVar = this.f4617a.get(this.f4621e);
        c4.a0 a0VarA = sVar.a(iVar2);
        if (hVar != null && this.f4621e + 1 < this.f4617a.size() && iVar2.f4623g != 1) {
            throw new java.lang.IllegalStateException("network interceptor " + sVar + " must call proceed() exactly once");
        }
        if (a0VarA != null) {
            return a0VarA;
        }
        throw new java.lang.NullPointerException("interceptor " + sVar + " returned null");
    }

    public final boolean e(c4.r rVar) {
        return rVar.o().equals(this.f4620d.a().a().k().o()) && rVar.A() == this.f4620d.a().a().k().A();
    }

    public f4.g f() {
        return this.f4618b;
    }
}
