package r4;

/* JADX INFO: compiled from: UdpAddress.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class s extends r4.r {
    public s() {
    }

    @Override // r4.r, r4.h, r4.a, r4.u
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof r4.s) && super.equals(obj);
    }

    public s(java.net.InetAddress inetAddress, int i5) {
        M(inetAddress);
        U(i5);
    }

    public s(java.lang.String str) {
        if (!h(str)) {
            throw new java.lang.IllegalArgumentException(str);
        }
    }
}
