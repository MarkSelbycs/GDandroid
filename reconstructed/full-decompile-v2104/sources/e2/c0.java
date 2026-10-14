package e2;

/* JADX INFO: compiled from: SystemPropsUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static java.lang.String f4068a = "hutool.date.lenient";

    public static java.lang.String a(java.lang.String str) {
        return b(str, null);
    }

    public static java.lang.String b(java.lang.String str, java.lang.String str2) {
        return b2.c.w(c(str, false), str2);
    }

    public static java.lang.String c(java.lang.String str, boolean z4) {
        java.lang.String property;
        try {
            property = java.lang.System.getProperty(str);
        } catch (java.lang.SecurityException unused) {
            if (!z4) {
                v1.f.b("Caught a SecurityException reading the system property '{}'; the SystemUtil property value will default to null.", str);
            }
            property = null;
        }
        if (property != null) {
            return property;
        }
        try {
            return java.lang.System.getenv(str);
        } catch (java.lang.SecurityException unused2) {
            if (z4) {
                return property;
            }
            v1.f.b("Caught a SecurityException reading the system env '{}'; the SystemUtil env value will default to null.", str);
            return property;
        }
    }

    public static boolean d(java.lang.String str, boolean z4) {
        java.lang.String strA = a(str);
        return strA == null ? z4 : e2.d.b(strA);
    }
}
