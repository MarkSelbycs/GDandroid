package e2;

/* JADX INFO: compiled from: BooleanUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.Set<java.lang.String> f4069a = l1.c.k("true", "yes", "y", "t", "ok", "1", "on", "是", "对", "真", "對", "√");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.Set<java.lang.String> f4070b = l1.c.k("false", "no", "n", "f", com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS, "off", "否", "错", "假", "錯", "×");

    public static boolean a(java.lang.Class<?> cls) {
        return cls == java.lang.Boolean.class || cls == java.lang.Boolean.TYPE;
    }

    public static boolean b(java.lang.String str) {
        if (!b2.c.s(str)) {
            return false;
        }
        return f4069a.contains(str.trim().toLowerCase());
    }

    public static byte c(boolean z4) {
        return (byte) k(z4);
    }

    public static java.lang.Byte d(boolean z4) {
        return java.lang.Byte.valueOf(c(z4));
    }

    public static char e(boolean z4) {
        return (char) k(z4);
    }

    public static java.lang.Character f(boolean z4) {
        return java.lang.Character.valueOf(e(z4));
    }

    public static double g(boolean z4) {
        return k(z4);
    }

    public static java.lang.Double h(boolean z4) {
        return java.lang.Double.valueOf(g(z4));
    }

    public static float i(boolean z4) {
        return k(z4);
    }

    public static java.lang.Float j(boolean z4) {
        return java.lang.Float.valueOf(i(z4));
    }

    public static int k(boolean z4) {
        return z4 ? 1 : 0;
    }

    public static java.lang.Integer l(boolean z4) {
        return java.lang.Integer.valueOf(k(z4));
    }

    public static long m(boolean z4) {
        return k(z4);
    }

    public static java.lang.Long n(boolean z4) {
        return java.lang.Long.valueOf(m(z4));
    }

    public static short o(boolean z4) {
        return (short) k(z4);
    }

    public static java.lang.Short p(boolean z4) {
        return java.lang.Short.valueOf(o(z4));
    }
}
