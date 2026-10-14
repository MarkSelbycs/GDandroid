package r4;

/* JADX INFO: compiled from: TimeTicks.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class p extends r4.t {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f5998e = {8640000, 360000, 6000, 100, 1};

    public p() {
    }

    public java.lang.String P(java.lang.String str) {
        long jI = I();
        long j5 = jI / 8640000;
        long j6 = jI % 8640000;
        long j7 = j6 / 360000;
        long j8 = j6 % 360000;
        long j9 = j8 / 6000;
        long j10 = j8 % 6000;
        return java.text.MessageFormat.format(str, java.lang.Long.valueOf(j5), java.lang.Long.valueOf(j7), java.lang.Long.valueOf(j9), java.lang.Long.valueOf(j10 / 100), java.lang.Long.valueOf(j10 % 100));
    }

    @Override // r4.t, r4.a, r4.u
    public int c() {
        return 67;
    }

    @Override // r4.t, r4.a, r4.u
    public java.lang.Object clone() {
        return new r4.p(this.f6002d);
    }

    @Override // r4.t, r4.a, l4.d
    public void e(java.io.OutputStream outputStream) throws java.io.IOException {
        l4.a.t(outputStream, (byte) 67, super.I());
    }

    @Override // r4.t, l4.d
    public void j(l4.b bVar) throws java.io.IOException {
        l4.a.C0066a c0066a = new l4.a.C0066a();
        long jL = l4.a.l(bVar, c0066a);
        if (c0066a.a() == 67) {
            M(jL);
            return;
        }
        throw new java.io.IOException("Wrong type encountered when decoding TimeTicks: " + ((int) c0066a.a()));
    }

    @Override // r4.t, r4.a, r4.u
    public java.lang.String toString() {
        return P("{0,choice,0#|1#1 day, |1<{0,number,integer} days, }{1,number,integer}:{2,number,00}:{3,number,00}.{4,number,00}");
    }

    public p(long j5) {
        super(j5);
    }
}
