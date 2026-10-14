package r4;

/* JADX INFO: compiled from: OctetString.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class k extends r4.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f5993d;

    public k() {
        this.f5993d = new byte[0];
    }

    public static r4.k P(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new r4.k(bArr);
    }

    public static r4.k T(java.lang.String str) {
        return U(str, ':');
    }

    public static r4.k U(java.lang.String str, char c5) {
        return V(str, c5, 16);
    }

    public static r4.k V(java.lang.String str, char c5, int i5) {
        java.util.StringTokenizer stringTokenizer = new java.util.StringTokenizer(str, "" + c5);
        byte[] bArr = new byte[stringTokenizer.countTokens()];
        int i6 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            bArr[i6] = (byte) java.lang.Integer.parseInt(stringTokenizer.nextToken(), i5);
            i6++;
        }
        return new r4.k(bArr);
    }

    public void H(r4.k kVar) {
        I(kVar.a0());
    }

    public void I(byte[] bArr) {
        byte[] bArr2 = this.f5993d;
        byte[] bArr3 = new byte[bArr2.length + bArr.length];
        java.lang.System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        java.lang.System.arraycopy(bArr, 0, bArr3, this.f5993d.length, bArr.length);
        this.f5993d = bArr3;
    }

    public boolean M(byte[] bArr) {
        return java.util.Arrays.equals(this.f5993d, bArr);
    }

    public final byte W(int i5) {
        return this.f5993d[i5];
    }

    public int X() {
        return this.f5993d.length;
    }

    public byte[] a0() {
        return this.f5993d;
    }

    @Override // r4.a, r4.u
    public int c() {
        return 4;
    }

    @Override // r4.a, r4.u
    public java.lang.Object clone() {
        return new r4.k(this.f5993d);
    }

    public boolean d0() {
        int i5;
        for (byte b5 : this.f5993d) {
            char c5 = (char) b5;
            if ((java.lang.Character.isISOControl(c5) || (c5 & 255) >= 128) && (!java.lang.Character.isWhitespace(c5) || ((i5 = c5 & 255) >= 28 && i5 <= 31))) {
                return false;
            }
        }
        return true;
    }

    @Override // r4.a, l4.d
    public void e(java.io.OutputStream outputStream) throws java.io.IOException {
        l4.a.q(outputStream, (byte) 4, a0());
    }

    public final int e0() {
        return this.f5993d.length;
    }

    @Override // r4.a, r4.u
    public boolean equals(java.lang.Object obj) {
        if (obj instanceof r4.k) {
            return java.util.Arrays.equals(this.f5993d, ((r4.k) obj).f5993d);
        }
        return false;
    }

    @Override // r4.a, l4.d
    public int f() {
        byte[] bArr = this.f5993d;
        return bArr.length + l4.a.u(bArr.length) + 1;
    }

    public void f0(byte[] bArr) {
        if (bArr == null) {
            throw new java.lang.IllegalArgumentException("OctetString must not be assigned a null value");
        }
        this.f5993d = bArr;
    }

    public r4.k g0(int i5, int i6) {
        if (i5 < 0 || i6 > e0()) {
            throw new java.lang.IndexOutOfBoundsException();
        }
        int i7 = i6 - i5;
        byte[] bArr = new byte[i7];
        java.lang.System.arraycopy(this.f5993d, i5, bArr, 0, i7);
        return new r4.k(bArr);
    }

    public java.lang.String h0() {
        return i0(':');
    }

    @Override // r4.a
    public int hashCode() {
        return java.util.Arrays.hashCode(a0());
    }

    public java.lang.String i0(char c5) {
        return j0(c5, 16);
    }

    @Override // l4.d
    public void j(l4.b bVar) throws java.io.IOException {
        l4.a.C0066a c0066a = new l4.a.C0066a();
        byte[] bArrJ = l4.a.j(bVar, c0066a);
        if (c0066a.a() == 4) {
            f0(bArrJ);
            return;
        }
        throw new java.io.IOException("Wrong type encountered when decoding OctetString: " + ((int) c0066a.a()));
    }

    public java.lang.String j0(char c5, int i5) {
        int iRound = (int) java.lang.Math.round(((double) ((float) java.lang.Math.log(256.0d))) / java.lang.Math.log(i5));
        java.lang.StringBuilder sb = new java.lang.StringBuilder(this.f5993d.length * (iRound + 1));
        for (int i6 = 0; i6 < this.f5993d.length; i6++) {
            if (i6 > 0) {
                sb.append(c5);
            }
            java.lang.String string = java.lang.Integer.toString(this.f5993d[i6] & 255, i5);
            for (int i7 = 0; i7 < iRound - string.length(); i7++) {
                sb.append('0');
            }
            sb.append(string);
        }
        return sb.toString();
    }

    public r4.j k0(boolean z4) {
        int[] iArr;
        int i5 = 1;
        if (z4) {
            iArr = new int[e0()];
            i5 = 0;
        } else {
            iArr = new int[e0() + 1];
            iArr[0] = e0();
        }
        for (int i6 = 0; i6 < e0(); i6++) {
            iArr[i5 + i6] = W(i6) & 255;
        }
        return new r4.j(iArr);
    }

    @Override // r4.a, r4.u
    public java.lang.String toString() {
        return d0() ? new java.lang.String(this.f5993d) : h0();
    }

    @Override // r4.a, java.lang.Comparable
    /* JADX INFO: renamed from: u */
    public int compareTo(r4.u uVar) {
        if (!(uVar instanceof r4.k)) {
            throw new java.lang.ClassCastException(uVar.getClass().getName());
        }
        r4.k kVar = (r4.k) uVar;
        int iMin = java.lang.Math.min(this.f5993d.length, kVar.f5993d.length);
        for (int i5 = 0; i5 < iMin; i5++) {
            byte[] bArr = this.f5993d;
            byte b5 = bArr[i5];
            byte[] bArr2 = kVar.f5993d;
            if (b5 != bArr2[i5]) {
                return (bArr[i5] & 255) < (bArr2[i5] & 255) ? -1 : 1;
            }
        }
        return this.f5993d.length - kVar.f5993d.length;
    }

    public k(byte[] bArr) {
        this(bArr, 0, bArr.length);
    }

    public k(byte[] bArr, int i5, int i6) {
        this.f5993d = new byte[0];
        byte[] bArr2 = new byte[i6];
        this.f5993d = bArr2;
        java.lang.System.arraycopy(bArr, i5, bArr2, 0, i6);
    }

    public k(java.lang.String str) {
        this.f5993d = new byte[0];
        this.f5993d = str.getBytes();
    }
}
