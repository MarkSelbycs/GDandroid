package t1;

/* JADX INFO: compiled from: FastByteBuffer.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6157b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f6159d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6160e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6161f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f6162g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[][] f6156a = new byte[16][];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6158c = -1;

    public b(int i5) {
        this.f6162g = java.lang.Math.abs(i5 <= 0 ? 1024 : i5);
    }

    public t1.b a(byte b5) {
        byte[] bArr = this.f6159d;
        if (bArr == null || this.f6160e == bArr.length) {
            c(this.f6161f + 1);
        }
        byte[] bArr2 = this.f6159d;
        int i5 = this.f6160e;
        bArr2[i5] = b5;
        this.f6160e = i5 + 1;
        this.f6161f++;
        return this;
    }

    public t1.b b(byte[] bArr, int i5, int i6) {
        int i7 = i5 + i6;
        if (i5 < 0 || i6 < 0 || i7 > bArr.length) {
            throw new java.lang.IndexOutOfBoundsException();
        }
        if (i6 == 0) {
            return this;
        }
        int i8 = this.f6161f + i6;
        byte[] bArr2 = this.f6159d;
        if (bArr2 != null) {
            int iMin = java.lang.Math.min(i6, bArr2.length - this.f6160e);
            java.lang.System.arraycopy(bArr, i7 - i6, this.f6159d, this.f6160e, iMin);
            i6 -= iMin;
            this.f6160e += iMin;
            this.f6161f += iMin;
        }
        if (i6 > 0) {
            c(i8);
            int iMin2 = java.lang.Math.min(i6, this.f6159d.length - this.f6160e);
            java.lang.System.arraycopy(bArr, i7 - i6, this.f6159d, this.f6160e, iMin2);
            this.f6160e += iMin2;
            this.f6161f += iMin2;
        }
        return this;
    }

    public final void c(int i5) {
        int iMax = java.lang.Math.max(this.f6162g, i5 - this.f6161f);
        int i6 = this.f6158c + 1;
        this.f6158c = i6;
        this.f6159d = new byte[iMax];
        this.f6160e = 0;
        byte[][] bArr = this.f6156a;
        if (i6 >= bArr.length) {
            byte[][] bArr2 = new byte[bArr.length << 1][];
            java.lang.System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            this.f6156a = bArr2;
        }
        this.f6156a[this.f6158c] = this.f6159d;
        this.f6157b++;
    }

    public byte[] d() {
        byte[] bArr = new byte[this.f6161f];
        if (this.f6158c == -1) {
            return bArr;
        }
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int i7 = this.f6158c;
            if (i5 >= i7) {
                java.lang.System.arraycopy(this.f6156a[i7], 0, bArr, i6, this.f6160e);
                return bArr;
            }
            byte[][] bArr2 = this.f6156a;
            int length = bArr2[i5].length;
            java.lang.System.arraycopy(bArr2[i5], 0, bArr, i6, length);
            i6 += length;
            i5++;
        }
    }
}
