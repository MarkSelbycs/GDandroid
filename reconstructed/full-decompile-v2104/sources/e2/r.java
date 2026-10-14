package e2;

/* JADX INFO: compiled from: ReUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.Set<java.lang.Character> f4093a = l1.c.k('$', '(', ')', '*', '+', '.', '[', ']', '?', '\\', '^', '{', '}', '|');

    public static boolean a(java.lang.String str, java.lang.CharSequence charSequence) {
        if (str == null || charSequence == null) {
            return false;
        }
        return b(v1.o.b(str, 32), charSequence);
    }

    public static boolean b(java.util.regex.Pattern pattern, java.lang.CharSequence charSequence) {
        if (pattern == null || charSequence == null) {
            return false;
        }
        return pattern.matcher(charSequence).find();
    }

    public static boolean c(java.util.regex.Pattern pattern, java.lang.CharSequence charSequence) {
        if (charSequence == null || pattern == null) {
            return false;
        }
        return pattern.matcher(charSequence).matches();
    }
}
