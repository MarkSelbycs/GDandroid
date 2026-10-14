package s;

/* JADX INFO: compiled from: BuildCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {
    public static boolean a(java.lang.String str, java.lang.String str2) {
        if ("REL".equals(str2)) {
            return false;
        }
        java.util.Locale locale = java.util.Locale.ROOT;
        return str2.toUpperCase(locale).compareTo(str.toUpperCase(locale)) >= 0;
    }

    @java.lang.Deprecated
    public static boolean b() {
        return android.os.Build.VERSION.SDK_INT >= 30;
    }

    public static boolean c() {
        int i5 = android.os.Build.VERSION.SDK_INT;
        return i5 >= 33 || (i5 >= 32 && a("Tiramisu", android.os.Build.VERSION.CODENAME));
    }
}
