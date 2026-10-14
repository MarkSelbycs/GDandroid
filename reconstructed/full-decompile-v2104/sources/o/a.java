package o;

/* JADX INFO: compiled from: ColorUtils.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.ThreadLocal<double[]> f5262a = new java.lang.ThreadLocal<>();

    public static int a(int i5, int i6) {
        return 255 - (((255 - i6) * (255 - i5)) / 255);
    }

    public static int b(int i5, int i6) {
        int iAlpha = android.graphics.Color.alpha(i6);
        int iAlpha2 = android.graphics.Color.alpha(i5);
        int iA = a(iAlpha2, iAlpha);
        return android.graphics.Color.argb(iA, c(android.graphics.Color.red(i5), iAlpha2, android.graphics.Color.red(i6), iAlpha, iA), c(android.graphics.Color.green(i5), iAlpha2, android.graphics.Color.green(i6), iAlpha, iA), c(android.graphics.Color.blue(i5), iAlpha2, android.graphics.Color.blue(i6), iAlpha, iA));
    }

    public static int c(int i5, int i6, int i7, int i8, int i9) {
        if (i9 == 0) {
            return 0;
        }
        return (((i5 * 255) * i6) + ((i7 * i8) * (255 - i6))) / (i9 * 255);
    }

    public static int d(int i5, int i6) {
        if (i6 < 0 || i6 > 255) {
            throw new java.lang.IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i5 & 16777215) | (i6 << 24);
    }
}
