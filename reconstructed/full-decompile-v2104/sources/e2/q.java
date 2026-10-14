package e2;

/* JADX INFO: compiled from: PrimitiveArrayUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class q {
    public static boolean a(char[] cArr, char c5) {
        return b(cArr, c5) > -1;
    }

    public static int b(char[] cArr, char c5) {
        if (!e(cArr)) {
            return -1;
        }
        for (int i5 = 0; i5 < cArr.length; i5++) {
            if (c5 == cArr[i5]) {
                return i5;
            }
        }
        return -1;
    }

    public static boolean c(byte[] bArr) {
        return bArr == null || bArr.length == 0;
    }

    public static boolean d(char[] cArr) {
        return cArr == null || cArr.length == 0;
    }

    public static boolean e(char[] cArr) {
        return !d(cArr);
    }
}
