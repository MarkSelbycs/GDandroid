package r4;

/* JADX INFO: compiled from: TransportIpAddress.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class r extends r4.h {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final n4.a f6000i = n4.b.d(r4.r.class);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6001h = 0;

    public int P() {
        return this.f6001h;
    }

    public byte[] T() {
        int iIntValue;
        int i5;
        byte[] address = I().getAddress();
        if (I() instanceof java.net.Inet6Address) {
            try {
                iIntValue = ((java.lang.Number) java.net.Inet6Address.class.getMethod("getScopeId", new java.lang.Class[0]).invoke((java.net.Inet6Address) I(), new java.lang.Object[0])).intValue();
                i5 = 4;
            } catch (java.lang.Exception unused) {
                iIntValue = 0;
                i5 = 0;
            }
        } else {
            iIntValue = 0;
            i5 = 0;
        }
        byte[] bArr = new byte[address.length + 2 + i5];
        java.lang.System.arraycopy(address, 0, bArr, 0, address.length);
        int length = address.length;
        if (i5 > 0) {
            int i6 = length + 1;
            bArr[length] = (byte) (((-16777216) & iIntValue) >> 24);
            int i7 = i6 + 1;
            bArr[i6] = (byte) ((16711680 & iIntValue) >> 16);
            int i8 = i7 + 1;
            bArr[i7] = (byte) ((65280 & iIntValue) >> 8);
            length = i8 + 1;
            bArr[i8] = (byte) (iIntValue & 255);
        }
        int i9 = this.f6001h;
        bArr[length] = (byte) ((i9 >> 8) & 255);
        bArr[length + 1] = (byte) (i9 & 255);
        return bArr;
    }

    public void U(int i5) {
        if (i5 >= 0 && i5 <= 65535) {
            this.f6001h = i5;
            return;
        }
        throw new java.lang.IllegalArgumentException("Illegal port specified: " + i5);
    }

    public void V(r4.k kVar) throws java.net.UnknownHostException {
        byte[] bArrA0 = kVar.g0(0, kVar.e0() - 2).a0();
        if (bArrA0.length == 8 || bArrA0.length == 20) {
            int length = bArrA0.length - 4;
            byte[] bArr = new byte[length];
            java.lang.System.arraycopy(bArrA0, 0, bArr, 0, length);
            try {
                M((java.net.InetAddress) java.net.Inet6Address.class.getMethod("getByAddress", java.lang.String.class, byte[].class, java.lang.Integer.TYPE).invoke(java.net.Inet6Address.class, null, bArr, java.lang.Integer.valueOf((bArrA0[length] << 24) + ((bArrA0[length + 1] & 255) << 16) + ((bArrA0[length + 2] & 255) << 8) + (bArrA0[length + 3] & 255))));
            } catch (java.lang.Exception unused) {
                f6000i.i("Java < 1.5 does not support scoped IPv6 addresses, ignoring scope ID for " + kVar);
                M(java.net.InetAddress.getByAddress(bArr));
            }
        } else {
            M(java.net.InetAddress.getByAddress(bArrA0));
        }
        int iW = (kVar.W(kVar.e0() - 2) & 255) << 8;
        this.f6001h = iW;
        this.f6001h = iW + (kVar.W(kVar.e0() - 1) & 255);
    }

    @Override // r4.h, r4.a, r4.u
    public int c() {
        return 4;
    }

    @Override // r4.h, r4.a, l4.d
    public void e(java.io.OutputStream outputStream) throws java.io.IOException {
        new r4.k(T()).e(outputStream);
    }

    @Override // r4.h, r4.a, r4.u
    public boolean equals(java.lang.Object obj) {
        return (obj instanceof r4.r) && super.equals(obj) && ((r4.r) obj).P() == this.f6001h;
    }

    @Override // r4.h, r4.a, l4.d
    public int f() {
        return T().length;
    }

    @Override // r4.h, r4.b
    public boolean h(java.lang.String str) {
        try {
            java.util.StringTokenizer stringTokenizer = new java.util.StringTokenizer(str, "/");
            java.lang.String strNextToken = stringTokenizer.nextToken();
            java.lang.String strNextToken2 = stringTokenizer.nextToken();
            if (super.h(strNextToken)) {
                this.f6001h = java.lang.Integer.parseInt(strNextToken2);
                return true;
            }
        } catch (java.lang.Exception unused) {
        }
        return false;
    }

    @Override // r4.h, r4.a
    public int hashCode() {
        return super.hashCode() ^ (this.f6001h + 2);
    }

    @Override // r4.h, l4.d
    public void j(l4.b bVar) throws java.io.IOException {
        r4.k kVar = new r4.k();
        kVar.j(bVar);
        try {
            V(kVar);
        } catch (java.lang.Exception e5) {
            f6000i.c("Wrong encoding of TransportAddress");
            throw new java.io.IOException("Wrong encoding of TransportAddress: " + e5.getMessage());
        }
    }

    @Override // r4.h, r4.a, r4.u
    public java.lang.String toString() {
        return super.toString() + "/" + this.f6001h;
    }

    @Override // r4.h, r4.a, java.lang.Comparable
    /* JADX INFO: renamed from: u */
    public int compareTo(r4.u uVar) {
        int iCompareTo = super.compareTo(uVar);
        return iCompareTo == 0 ? this.f6001h - ((r4.r) uVar).P() : iCompareTo;
    }
}
