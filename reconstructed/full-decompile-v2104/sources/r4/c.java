package r4;

/* JADX INFO: compiled from: Counter32.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c extends r4.t {
    public c() {
    }

    @Override // r4.t, r4.a, r4.u
    public int c() {
        return 65;
    }

    @Override // r4.t, r4.a, r4.u
    public java.lang.Object clone() {
        return new r4.c(this.f6002d);
    }

    @Override // r4.t, r4.a, l4.d
    public void e(java.io.OutputStream outputStream) throws java.io.IOException {
        l4.a.t(outputStream, (byte) 65, I());
    }

    @Override // r4.t, r4.a, r4.u
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof r4.c) && ((r4.c) obj).I() == I();
    }

    @Override // r4.t, l4.d
    public void j(l4.b bVar) throws java.io.IOException {
        l4.a.C0066a c0066a = new l4.a.C0066a();
        long jL = l4.a.l(bVar, c0066a);
        if (c0066a.a() == 65) {
            M(jL);
            return;
        }
        throw new java.io.IOException("Wrong type encountered when decoding Counter: " + ((int) c0066a.a()));
    }

    public c(long j5) {
        super(j5);
    }
}
