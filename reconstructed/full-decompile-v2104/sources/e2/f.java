package e2;

/* JADX INFO: compiled from: CharUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f {
    public static boolean a(char c5, char c6, boolean z4) {
        if (z4) {
            return java.lang.Character.toLowerCase(c5) == java.lang.Character.toLowerCase(c6);
        }
        return c5 == c6;
    }

    public static boolean b(char c5) {
        return c(c5);
    }

    public static boolean c(int i5) {
        return java.lang.Character.isWhitespace(i5) || java.lang.Character.isSpaceChar(i5) || i5 == 65279 || i5 == 8234 || i5 == 0 || i5 == 12644 || i5 == 10240 || i5 == 6158;
    }

    public static boolean d(java.lang.Object obj) {
        return (obj instanceof java.lang.Character) || obj.getClass() == java.lang.Character.TYPE;
    }

    public static boolean e(char c5) {
        return c5 >= '0' && c5 <= '9';
    }

    public static java.lang.String f(char c5) {
        return b2.a.a(c5);
    }
}
