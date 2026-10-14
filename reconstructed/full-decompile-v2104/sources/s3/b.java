package s3;

/* JADX INFO: compiled from: Char.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends s3.a {
    public static final boolean d(char c5, char c6, boolean z4) {
        if (c5 == c6) {
            return true;
        }
        if (!z4) {
            return false;
        }
        char upperCase = java.lang.Character.toUpperCase(c5);
        char upperCase2 = java.lang.Character.toUpperCase(c6);
        return upperCase == upperCase2 || java.lang.Character.toLowerCase(upperCase) == java.lang.Character.toLowerCase(upperCase2);
    }
}
