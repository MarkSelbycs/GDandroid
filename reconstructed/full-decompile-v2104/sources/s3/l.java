package s3;

/* JADX INFO: compiled from: StringsJVM.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l extends s3.k {
    public static final boolean h(java.lang.String str, java.lang.String str2, boolean z4) {
        if (str == null) {
            return str2 == null;
        }
        return !z4 ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    public static final boolean i(java.lang.CharSequence charSequence) {
        boolean z4;
        m3.k.e(charSequence, "<this>");
        if (charSequence.length() != 0) {
            java.lang.Iterable iterableS = s3.m.s(charSequence);
            if (!(iterableS instanceof java.util.Collection) || !((java.util.Collection) iterableS).isEmpty()) {
                java.util.Iterator it = iterableS.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z4 = true;
                        break;
                    }
                    if (!s3.a.c(charSequence.charAt(((b3.c0) it).a()))) {
                        z4 = false;
                        break;
                    }
                }
            } else {
                z4 = true;
                break;
            }
            if (!z4) {
                return false;
            }
        }
        return true;
    }

    public static final boolean j(java.lang.String str, int i5, java.lang.String str2, int i6, int i7, boolean z4) {
        m3.k.e(str, "<this>");
        m3.k.e(str2, "other");
        return !z4 ? str.regionMatches(i5, str2, i6, i7) : str.regionMatches(z4, i5, str2, i6, i7);
    }

    public static final java.lang.String k(java.lang.String str, char c5, char c6, boolean z4) {
        m3.k.e(str, "<this>");
        if (!z4) {
            java.lang.String strReplace = str.replace(c5, c6);
            m3.k.d(strReplace, "this as java.lang.String…replace(oldChar, newChar)");
            return strReplace;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(str.length());
        for (int i5 = 0; i5 < str.length(); i5++) {
            char cCharAt = str.charAt(i5);
            if (s3.b.d(cCharAt, c5, z4)) {
                cCharAt = c6;
            }
            sb.append(cCharAt);
        }
        java.lang.String string = sb.toString();
        m3.k.d(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public static /* synthetic */ java.lang.String l(java.lang.String str, char c5, char c6, boolean z4, int i5, java.lang.Object obj) {
        if ((i5 & 4) != 0) {
            z4 = false;
        }
        return k(str, c5, c6, z4);
    }

    public static final boolean m(java.lang.String str, java.lang.String str2, boolean z4) {
        m3.k.e(str, "<this>");
        m3.k.e(str2, "prefix");
        return !z4 ? str.startsWith(str2) : j(str, 0, str2, 0, str2.length(), z4);
    }

    public static /* synthetic */ boolean n(java.lang.String str, java.lang.String str2, boolean z4, int i5, java.lang.Object obj) {
        if ((i5 & 2) != 0) {
            z4 = false;
        }
        return m(str, str2, z4);
    }
}
