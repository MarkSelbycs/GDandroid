package k4;

/* JADX INFO: compiled from: CommunityTarget.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e extends k4.a {
    public e() {
        C(0);
        h(1);
        j(1);
    }

    public void D(r4.k kVar) {
        if (kVar == null) {
            throw new java.lang.IllegalArgumentException("Community must not be null");
        }
        u(kVar);
    }

    @Override // k4.q
    public k4.q K() {
        k4.e eVar = new k4.e(c0(), y());
        eVar.j(r0());
        eVar.h(o());
        eVar.l(s());
        eVar.R(n());
        eVar.C(b0());
        eVar.e(b());
        eVar.f(i());
        return eVar;
    }

    @Override // k4.a
    public void h(int i5) {
        if (i5 != 1) {
            throw new java.lang.IllegalArgumentException("CommunityTarget only supports SecurityLevel.NOAUTH_NOPRIV");
        }
        super.h(i5);
    }

    @Override // k4.a
    public void j(int i5) {
        if (i5 == 1) {
            super.j(i5);
            super.C(0);
        } else {
            if (i5 != 2) {
                throw new java.lang.UnsupportedOperationException("To set security model for a CommunityTarget, use setVersion");
            }
            super.j(i5);
            super.C(1);
        }
    }

    @Override // k4.a, k4.q
    public int r0() {
        return b0() != 0 ? 2 : 1;
    }

    @Override // k4.a
    public java.lang.String toString() {
        return "CommunityTarget[" + x() + ']';
    }

    public r4.k y() {
        return Z();
    }

    public e(r4.b bVar, r4.k kVar) {
        super(bVar, kVar);
        C(0);
        h(1);
        j(1);
    }
}
