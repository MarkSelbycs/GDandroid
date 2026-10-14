package o4;

/* JADX INFO: compiled from: MPv2c.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d implements o4.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final n4.a f5331b = n4.b.d(o4.d.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public t4.e f5332a = new o4.d.a();

    /* JADX INFO: compiled from: MPv2c.java */
    public class a implements t4.e {
        public a() {
        }

        @Override // t4.e
        public k4.k a(o4.g gVar) {
            return new k4.k();
        }
    }

    @Override // o4.g
    public int a() {
        return 1;
    }

    @Override // o4.g
    public int b(r4.b bVar, int i5, int i6, int i7, byte[] bArr, int i8, k4.k kVar, boolean z4, o4.i iVar, r4.b bVar2, l4.c cVar, k4.t tVar) throws java.io.IOException {
        if (i8 != 1 || i7 != 2) {
            f5331b.c("MPv2c used with unsupported security model");
            return -1402;
        }
        if (kVar instanceof k4.n) {
            f5331b.c("ScopedPDU must not be used with MPv2c");
            throw new java.lang.IllegalArgumentException("ScopedPDU must not be used with MPv2c");
        }
        if (!e(i6)) {
            f5331b.c("MPv2c used with unsupported SNMP version");
            return -1402;
        }
        r4.k kVar2 = new r4.k(bArr);
        r4.g gVar = new r4.g(i6);
        int iF = kVar.f() + kVar2.f() + gVar.f();
        cVar.f(java.nio.ByteBuffer.allocate(l4.a.u(iF) + iF + 1));
        l4.a.m(cVar, 48, iF);
        gVar.e(cVar);
        kVar2.e(cVar);
        kVar.e(cVar);
        return 0;
    }

    @Override // o4.g
    public int c(int i5, int i6, int i7, byte[] bArr, int i8, k4.k kVar, int i9, o4.n nVar, o4.o oVar, l4.c cVar) throws java.io.IOException {
        return b(nVar.c0(), i6, i5, i7, bArr, i8, kVar, false, nVar.u(), null, cVar, null);
    }

    @Override // o4.g
    public void d(o4.i iVar) {
    }

    @Override // o4.g
    public boolean e(int i5) {
        return i5 == 1;
    }

    @Override // o4.g
    public int f(k4.g gVar, r4.b bVar, l4.b bVar2, k4.t tVar, r4.g gVar2, r4.g gVar3, r4.k kVar, r4.g gVar4, k4.j jVar, o4.i iVar, r4.g gVar5, o4.o oVar, o4.h hVar) throws java.io.IOException {
        l4.a.C0066a c0066a = new l4.a.C0066a();
        int iC = l4.a.c(bVar2, c0066a);
        int iE = (int) bVar2.e();
        if (c0066a.a() != 48) {
            f5331b.c("SNMPv2c PDU must start with a SEQUENCE");
            throw new java.io.IOException("SNMPv2c PDU must start with a SEQUENCE");
        }
        new r4.g().j(bVar2);
        kVar.j(bVar2);
        gVar4.I(1);
        gVar3.I(2);
        gVar2.I(1);
        k4.k kVarA = this.f5332a.a(this);
        jVar.c(kVarA);
        kVarA.j(bVar2);
        l4.a.b(iC, ((int) bVar2.e()) - iE, kVarA);
        iVar.e(kVarA.I().H());
        hVar.b(new o4.n(iVar, bVar, null, p4.x.a().b(gVar3), kVar.a0(), 0));
        return 0;
    }
}
