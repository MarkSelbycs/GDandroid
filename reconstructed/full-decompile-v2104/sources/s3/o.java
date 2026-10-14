package s3;

/* JADX INFO: compiled from: _Strings.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class o extends s3.n {
    public static final java.lang.String a0(java.lang.String str, int i5) {
        m3.k.e(str, "<this>");
        if (i5 >= 0) {
            java.lang.String strSubstring = str.substring(p3.m.c(i5, str.length()));
            m3.k.d(strSubstring, "this as java.lang.String).substring(startIndex)");
            return strSubstring;
        }
        throw new java.lang.IllegalArgumentException(("Requested character count " + i5 + " is less than zero.").toString());
    }

    public static final char b0(java.lang.CharSequence charSequence) {
        m3.k.e(charSequence, "<this>");
        if (charSequence.length() == 0) {
            throw new java.util.NoSuchElementException("Char sequence is empty.");
        }
        return charSequence.charAt(s3.m.t(charSequence));
    }
}
