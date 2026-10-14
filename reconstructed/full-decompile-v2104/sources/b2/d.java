package b2;

/* JADX INFO: compiled from: NamingCase.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d {
    public static java.lang.String a(java.lang.CharSequence charSequence) {
        return b(charSequence, '_');
    }

    public static java.lang.String b(java.lang.CharSequence charSequence, char c5) {
        if (charSequence == null) {
            return null;
        }
        java.lang.String string = charSequence.toString();
        if (!b2.c.b(string, c5)) {
            return string;
        }
        int length = string.length();
        java.lang.StringBuilder sb = new java.lang.StringBuilder(length);
        boolean z4 = false;
        for (int i5 = 0; i5 < length; i5++) {
            char cCharAt = string.charAt(i5);
            if (cCharAt == c5) {
                z4 = true;
            } else if (z4) {
                sb.append(java.lang.Character.toUpperCase(cCharAt));
                z4 = false;
            } else {
                sb.append(java.lang.Character.toLowerCase(cCharAt));
            }
        }
        return sb.toString();
    }

    public static java.lang.String c(java.lang.CharSequence charSequence, char c5) {
        if (charSequence == null) {
            return null;
        }
        int length = charSequence.length();
        b2.e eVar = new b2.e();
        int i5 = 0;
        while (i5 < length) {
            char cCharAt = charSequence.charAt(i5);
            if (java.lang.Character.isUpperCase(cCharAt)) {
                java.lang.Character chValueOf = i5 > 0 ? java.lang.Character.valueOf(charSequence.charAt(i5 - 1)) : null;
                java.lang.Character chValueOf2 = i5 < charSequence.length() + (-1) ? java.lang.Character.valueOf(charSequence.charAt(i5 + 1)) : null;
                if (chValueOf != null) {
                    if (c5 == chValueOf.charValue()) {
                        if (chValueOf2 == null || java.lang.Character.isLowerCase(chValueOf2.charValue())) {
                            cCharAt = java.lang.Character.toLowerCase(cCharAt);
                        }
                    } else if (java.lang.Character.isLowerCase(chValueOf.charValue())) {
                        eVar.append(c5);
                        if (chValueOf2 == null || java.lang.Character.isLowerCase(chValueOf2.charValue()) || e2.f.e(chValueOf2.charValue())) {
                            cCharAt = java.lang.Character.toLowerCase(cCharAt);
                        }
                    } else if (chValueOf2 != null && java.lang.Character.isLowerCase(chValueOf2.charValue())) {
                        eVar.append(c5);
                        cCharAt = java.lang.Character.toLowerCase(cCharAt);
                    }
                } else if (chValueOf2 == null || java.lang.Character.isLowerCase(chValueOf2.charValue())) {
                    cCharAt = java.lang.Character.toLowerCase(cCharAt);
                }
            }
            eVar.append(cCharAt);
            i5++;
        }
        return eVar.toString();
    }

    public static java.lang.String d(java.lang.CharSequence charSequence) {
        return c(charSequence, '_');
    }
}
