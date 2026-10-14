package k1;

/* JADX INFO: compiled from: Base64.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.nio.charset.Charset f4859a = e2.g.f4074b;

    public static byte[] a(java.lang.CharSequence charSequence) {
        return k1.c.a(charSequence);
    }

    public static boolean b(java.lang.CharSequence charSequence) {
        if (charSequence == null || charSequence.length() < 2) {
            return false;
        }
        byte[] bArrB0 = b2.c.b0(charSequence);
        if (bArrB0.length != charSequence.length()) {
            return false;
        }
        return c(bArrB0);
    }

    public static boolean c(byte[] bArr) {
        if (bArr == null || bArr.length < 3) {
            return false;
        }
        int length = bArr.length;
        int i5 = 0;
        boolean z4 = false;
        while (true) {
            boolean z5 = true;
            if (i5 >= length) {
                return true;
            }
            byte b5 = bArr[i5];
            if (z4) {
                if (61 != b5) {
                    return false;
                }
            } else if (61 == b5) {
                z4 = true;
            } else {
                if (!k1.c.e(b5) && !d(b5)) {
                    z5 = false;
                }
                if (!z5) {
                    return false;
                }
            }
            i5++;
        }
    }

    public static boolean d(byte b5) {
        return b5 == 9 || b5 == 10 || b5 == 13 || b5 == 32;
    }
}
