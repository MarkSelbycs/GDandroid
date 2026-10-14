package k1;

/* JADX INFO: compiled from: Base64Decoder.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.nio.charset.Charset f4860a = e2.g.f4074b;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f4861b = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51};

    public static byte[] a(java.lang.CharSequence charSequence) {
        return b(b2.c.a(charSequence, f4860a));
    }

    public static byte[] b(byte[] bArr) {
        return e2.q.c(bArr) ? bArr : c(bArr, 0, bArr.length);
    }

    public static byte[] c(byte[] bArr, int i5, int i6) {
        if (e2.q.c(bArr)) {
            return bArr;
        }
        y1.b bVar = new y1.b(i5);
        int i7 = (i5 + i6) - 1;
        int i8 = 0;
        int i9 = (i6 * 3) / 4;
        byte[] bArr2 = new byte[i9];
        while (bVar.intValue() <= i7) {
            byte bD = d(bArr, bVar, i7);
            byte bD2 = d(bArr, bVar, i7);
            byte bD3 = d(bArr, bVar, i7);
            byte bD4 = d(bArr, bVar, i7);
            if (-2 != bD2) {
                bArr2[i8] = (byte) ((bD << 2) | (bD2 >>> 4));
                i8++;
            }
            if (-2 != bD3) {
                bArr2[i8] = (byte) (((bD2 & 15) << 4) | (bD3 >>> 2));
                i8++;
            }
            if (-2 != bD4) {
                bArr2[i8] = (byte) (((bD3 & 3) << 6) | bD4);
                i8++;
            }
        }
        return i8 == i9 ? bArr2 : (byte[]) e2.c.k(bArr2, new byte[i8], i8);
    }

    public static byte d(byte[] bArr, y1.b bVar, int i5) {
        byte b5;
        while (bVar.intValue() <= i5) {
            byte b6 = bArr[bVar.intValue()];
            bVar.f();
            if (b6 > -1 && (b5 = f4861b[b6]) > -1) {
                return b5;
            }
        }
        return (byte) -2;
    }

    public static boolean e(byte b5) {
        if (b5 != 61) {
            if (b5 >= 0) {
                byte[] bArr = f4861b;
                if (b5 >= bArr.length || bArr[b5] == -1) {
                }
            }
            return false;
        }
        return true;
    }
}
