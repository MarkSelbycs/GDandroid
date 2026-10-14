package k4;

/* JADX INFO: compiled from: UserTarget.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class u extends k4.o {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public r4.k f4966o;

    public u() {
        this.f4966o = new r4.k();
        j(3);
    }

    public void D(byte[] bArr) {
        this.f4966o.f0(bArr);
    }

    @Override // k4.q
    public k4.q K() {
        k4.u uVar = new k4.u(c0(), this.f4871i, this.f4966o.a0(), this.f4869g);
        uVar.l(s());
        uVar.R(n());
        uVar.e(b());
        uVar.j(r0());
        uVar.C(b0());
        uVar.f(i());
        return uVar;
    }

    @Override // k4.a
    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        r4.k kVar = this.f4966o;
        r4.k kVar2 = ((k4.u) obj).f4966o;
        return kVar == null ? kVar2 == null : kVar.equals(kVar2);
    }

    @Override // k4.a
    public int hashCode() {
        int iHashCode = super.hashCode() * 31;
        r4.k kVar = this.f4966o;
        return iHashCode + (kVar != null ? kVar.hashCode() : 0);
    }

    @Override // k4.o, k4.a
    public java.lang.String toString() {
        return "UserTarget[" + x() + ", authoritativeEngineID=" + this.f4966o + ']';
    }

    public byte[] y() {
        return this.f4966o.a0();
    }

    public u(r4.b bVar, r4.k kVar, byte[] bArr, int i5) {
        super(bVar, kVar);
        this.f4966o = new r4.k();
        D(bArr);
        h(i5);
        j(3);
    }
}
