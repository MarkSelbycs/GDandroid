package s3;

/* JADX INFO: compiled from: CharJVM.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {
    public static final int a(int i5) {
        if (new p3.h(2, 36).f(i5)) {
            return i5;
        }
        throw new java.lang.IllegalArgumentException("radix " + i5 + " was not in valid range " + new p3.h(2, 36));
    }

    public static final int b(char c5, int i5) {
        return java.lang.Character.digit((int) c5, i5);
    }

    public static final boolean c(char c5) {
        return java.lang.Character.isWhitespace(c5) || java.lang.Character.isSpaceChar(c5);
    }
}
