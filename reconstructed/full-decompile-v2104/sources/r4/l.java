package r4;

/* JADX INFO: compiled from: Opaque.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l extends r4.k {
    public l() {
    }

    @Override // r4.k, r4.a, r4.u
    public int c() {
        return 68;
    }

    @Override // r4.k, r4.a, r4.u
    public java.lang.Object clone() {
        return new r4.l(super.a0());
    }

    @Override // r4.k, r4.a, l4.d
    public void e(java.io.OutputStream outputStream) throws java.io.IOException {
        l4.a.q(outputStream, (byte) 68, a0());
    }

    @Override // r4.k, l4.d
    public void j(l4.b bVar) throws java.io.IOException {
        l4.a.C0066a c0066a = new l4.a.C0066a();
        byte[] bArrJ = l4.a.j(bVar, c0066a);
        if (c0066a.a() == 68) {
            f0(bArrJ);
            return;
        }
        throw new java.io.IOException("Wrong type encountered when decoding OctetString: " + ((int) c0066a.a()));
    }

    @Override // r4.k, r4.a, r4.u
    public java.lang.String toString() {
        return super.h0();
    }

    public l(byte[] bArr) {
        super(bArr);
    }
}
