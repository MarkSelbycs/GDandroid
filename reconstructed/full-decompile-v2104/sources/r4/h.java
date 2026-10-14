package r4;

/* JADX INFO: compiled from: IpAddress.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h extends r4.m {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final n4.a f5981e = n4.b.d(r4.a.class);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final byte[] f5982f = {0, 0, 0, 0};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final java.net.InetAddress f5983g = H();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.net.InetAddress f5984d;

    public h() {
        this.f5984d = f5983g;
    }

    public static java.net.InetAddress H() {
        try {
            return java.net.InetAddress.getByAddress(f5982f);
        } catch (java.lang.Exception e5) {
            f5981e.h("Unable to create any IpAddress: " + e5.getMessage(), e5);
            return null;
        }
    }

    public java.net.InetAddress I() {
        return this.f5984d;
    }

    public void M(java.net.InetAddress inetAddress) {
        this.f5984d = inetAddress;
    }

    @Override // r4.a, r4.u
    public int c() {
        return 64;
    }

    @Override // r4.a, r4.u
    public java.lang.Object clone() {
        return new r4.h(this.f5984d);
    }

    @Override // r4.a, l4.d
    public void e(java.io.OutputStream outputStream) throws java.io.IOException {
        byte[] bArr = new byte[4];
        java.net.InetAddress inetAddress = this.f5984d;
        if (!(inetAddress instanceof java.net.Inet6Address)) {
            java.lang.System.arraycopy(inetAddress.getAddress(), 0, bArr, 0, 4);
        } else if (((java.net.Inet6Address) inetAddress).isIPv4CompatibleAddress()) {
            byte[] address = this.f5984d.getAddress();
            java.lang.System.arraycopy(address, address.length - 5, bArr, 0, 4);
        }
        l4.a.q(outputStream, (byte) 64, bArr);
    }

    @Override // r4.a, r4.u
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof r4.h) && compareTo((r4.h) obj) == 0;
    }

    @Override // r4.a, l4.d
    public int f() {
        return 6;
    }

    @Override // r4.b
    public boolean h(java.lang.String str) {
        try {
            this.f5984d = java.net.InetAddress.getByName(str);
            return true;
        } catch (java.net.UnknownHostException unused) {
            return false;
        }
    }

    @Override // r4.a
    public int hashCode() {
        java.net.InetAddress inetAddress = this.f5984d;
        if (inetAddress != null) {
            return inetAddress.hashCode();
        }
        return 0;
    }

    @Override // l4.d
    public void j(l4.b bVar) throws java.io.IOException {
        l4.a.C0066a c0066a = new l4.a.C0066a();
        byte[] bArrJ = l4.a.j(bVar, c0066a);
        if (c0066a.a() != 64) {
            throw new java.io.IOException("Wrong type encountered when decoding Counter: " + ((int) c0066a.a()));
        }
        if (bArrJ.length == 4) {
            this.f5984d = java.net.InetAddress.getByAddress(bArrJ);
            return;
        }
        throw new java.io.IOException("IpAddress encoding error, wrong length: " + bArrJ.length);
    }

    @Override // r4.a, r4.u
    public java.lang.String toString() {
        java.net.InetAddress inetAddress = this.f5984d;
        if (inetAddress == null) {
            return "0.0.0.0";
        }
        java.lang.String string = inetAddress.toString();
        return string.substring(string.indexOf(47) + 1);
    }

    @Override // r4.a, java.lang.Comparable
    /* JADX INFO: renamed from: u */
    public int compareTo(r4.u uVar) {
        return new r4.k(this.f5984d.getAddress()).compareTo(new r4.k(((r4.h) uVar).I().getAddress()));
    }

    public h(java.net.InetAddress inetAddress) {
        java.util.Objects.requireNonNull(inetAddress);
        this.f5984d = inetAddress;
    }

    public h(java.lang.String str) {
        if (!h(str)) {
            throw new java.lang.IllegalArgumentException(str);
        }
    }
}
