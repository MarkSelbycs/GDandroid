package b2;

/* JADX INFO: compiled from: CharSequenceUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c {
    public static java.lang.String A(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2) {
        if (r(charSequence) || r(charSequence2)) {
            return L(charSequence);
        }
        java.lang.String string = charSequence.toString();
        return string.endsWith(charSequence2.toString()) ? S(string, string.length() - charSequence2.length()) : string;
    }

    public static java.lang.String B(java.lang.CharSequence charSequence, int i5, java.lang.CharSequence charSequence2) {
        if (i5 <= 0) {
            return "";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(charSequence.length() * i5);
        sb.append(charSequence);
        int i6 = i5 - 1;
        boolean zT = t(charSequence2);
        while (true) {
            int i7 = i6 - 1;
            if (i6 <= 0) {
                return sb.toString();
            }
            if (zT) {
                sb.append(charSequence2);
            }
            sb.append(charSequence);
            i6 = i7;
        }
    }

    public static java.util.List<java.lang.String> C(java.lang.CharSequence charSequence, char c5, int i5, boolean z4, boolean z5) {
        return b2.h.c(charSequence, c5, i5, z4, z5);
    }

    public static java.lang.String[] D(java.lang.CharSequence charSequence, char c5) {
        return E(charSequence, c5, 0);
    }

    public static java.lang.String[] E(java.lang.CharSequence charSequence, char c5, int i5) {
        v1.e.q(charSequence, "Text must be not null!", new java.lang.Object[0]);
        return b2.h.f(charSequence.toString(), c5, i5, false, false);
    }

    public static java.util.List<java.lang.String> F(java.lang.CharSequence charSequence, char c5) {
        return G(charSequence, c5, -1);
    }

    public static java.util.List<java.lang.String> G(java.lang.CharSequence charSequence, char c5, int i5) {
        return C(charSequence, c5, i5, true, true);
    }

    public static boolean H(java.lang.CharSequence charSequence, char c5) {
        return !r(charSequence) && c5 == charSequence.charAt(0);
    }

    public static boolean I(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, boolean z4) {
        return J(charSequence, charSequence2, z4, false);
    }

    public static boolean J(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, boolean z4, boolean z5) {
        if (charSequence == null || charSequence2 == null) {
            if (z5) {
                return false;
            }
            return charSequence == null && charSequence2 == null;
        }
        if (charSequence.toString().regionMatches(z4, 0, charSequence2.toString(), 0, charSequence2.length())) {
            return (z5 && h(charSequence, charSequence2, z4)) ? false : true;
        }
        return false;
    }

    public static boolean K(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2) {
        return I(charSequence, charSequence2, true);
    }

    public static java.lang.String L(java.lang.CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        return charSequence.toString();
    }

    public static java.lang.String M(java.lang.CharSequence charSequence, int i5, int i6) {
        if (r(charSequence)) {
            return L(charSequence);
        }
        int length = charSequence.length();
        if (i5 < 0) {
            i5 += length;
            if (i5 < 0) {
                i5 = 0;
            }
        } else if (i5 > length) {
            i5 = length;
        }
        if (i6 >= 0 ? i6 > length : (i6 = i6 + length) < 0) {
            i6 = length;
        }
        if (i6 < i5) {
            int i7 = i6;
            i6 = i5;
            i5 = i7;
        }
        return i5 == i6 ? "" : charSequence.toString().substring(i5, i6);
    }

    public static java.lang.String N(java.lang.CharSequence charSequence, char c5, boolean z4) {
        if (r(charSequence)) {
            if (charSequence == null) {
                return null;
            }
            return "";
        }
        java.lang.String string = charSequence.toString();
        int iLastIndexOf = z4 ? string.lastIndexOf(c5) : string.indexOf(c5);
        return -1 == iLastIndexOf ? "" : string.substring(iLastIndexOf + 1);
    }

    public static java.lang.String O(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, boolean z4) {
        if (r(charSequence)) {
            if (charSequence == null) {
                return null;
            }
            return "";
        }
        if (charSequence2 == null) {
            return "";
        }
        java.lang.String string = charSequence.toString();
        java.lang.String string2 = charSequence2.toString();
        int iLastIndexOf = z4 ? string.lastIndexOf(string2) : string.indexOf(string2);
        return (-1 == iLastIndexOf || charSequence.length() + (-1) == iLastIndexOf) ? "" : string.substring(iLastIndexOf + charSequence2.length());
    }

    public static java.lang.String P(java.lang.CharSequence charSequence, char c5, boolean z4) {
        if (r(charSequence)) {
            if (charSequence == null) {
                return null;
            }
            return "";
        }
        java.lang.String string = charSequence.toString();
        int iLastIndexOf = z4 ? string.lastIndexOf(c5) : string.indexOf(c5);
        if (-1 == iLastIndexOf) {
            return string;
        }
        return iLastIndexOf == 0 ? "" : string.substring(0, iLastIndexOf);
    }

    public static java.lang.String Q(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, boolean z4) {
        if (r(charSequence) || charSequence2 == null) {
            if (charSequence == null) {
                return null;
            }
            return charSequence.toString();
        }
        java.lang.String string = charSequence.toString();
        java.lang.String string2 = charSequence2.toString();
        if (string2.isEmpty()) {
            return "";
        }
        int iLastIndexOf = z4 ? string.lastIndexOf(string2) : string.indexOf(string2);
        if (-1 == iLastIndexOf) {
            return string;
        }
        return iLastIndexOf == 0 ? "" : string.substring(0, iLastIndexOf);
    }

    public static java.lang.String R(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, java.lang.CharSequence charSequence3) {
        int iIndexOf;
        if (charSequence != null && charSequence2 != null && charSequence3 != null) {
            java.lang.String string = charSequence.toString();
            java.lang.String string2 = charSequence2.toString();
            java.lang.String string3 = charSequence3.toString();
            int iIndexOf2 = string.indexOf(string2);
            if (iIndexOf2 != -1 && (iIndexOf = string.indexOf(string3, string2.length() + iIndexOf2)) != -1) {
                return string.substring(iIndexOf2 + string2.length(), iIndexOf);
            }
        }
        return null;
    }

    public static java.lang.String S(java.lang.CharSequence charSequence, int i5) {
        return M(charSequence, 0, i5);
    }

    public static java.lang.String T(java.lang.CharSequence charSequence, int i5) {
        if (r(charSequence)) {
            return null;
        }
        return M(charSequence, i5, charSequence.length());
    }

    public static java.lang.String U(java.lang.CharSequence charSequence) {
        return b2.d.a(charSequence);
    }

    public static java.lang.String V(java.lang.CharSequence charSequence) {
        return b2.d.d(charSequence);
    }

    public static java.lang.String W(java.lang.CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        return X(charSequence, 0);
    }

    public static java.lang.String X(java.lang.CharSequence charSequence, int i5) {
        return Y(charSequence, i5, new java.util.function.Predicate() { // from class: b2.b
            @Override // java.util.function.Predicate
            public final boolean test(java.lang.Object obj) {
                return e2.f.b(((java.lang.Character) obj).charValue());
            }
        });
    }

    public static java.lang.String Y(java.lang.CharSequence charSequence, int i5, java.util.function.Predicate<java.lang.Character> predicate) {
        int i6;
        if (charSequence == null) {
            return null;
        }
        int length = charSequence.length();
        int i7 = 0;
        if (i5 <= 0) {
            while (i7 < length && predicate.test(java.lang.Character.valueOf(charSequence.charAt(i7)))) {
                i7++;
            }
        }
        if (i5 >= 0) {
            i6 = length;
            while (i7 < i6 && predicate.test(java.lang.Character.valueOf(charSequence.charAt(i6 - 1)))) {
                i6--;
            }
        } else {
            i6 = length;
        }
        return (i7 > 0 || i6 < length) ? charSequence.toString().substring(i7, i6) : charSequence.toString();
    }

    public static java.lang.String Z(java.lang.CharSequence charSequence, char c5, char c6) {
        if (r(charSequence)) {
            return L(charSequence);
        }
        return (charSequence.charAt(0) == c5 && charSequence.charAt(charSequence.length() - 1) == c6) ? M(charSequence, 1, charSequence.length() - 1) : charSequence.toString();
    }

    public static byte[] a(java.lang.CharSequence charSequence, java.nio.charset.Charset charset) {
        if (charSequence == null) {
            return null;
        }
        return charset == null ? charSequence.toString().getBytes() : charSequence.toString().getBytes(charset);
    }

    public static java.lang.String a0(java.lang.CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        if (charSequence.length() > 0) {
            char cCharAt = charSequence.charAt(0);
            if (java.lang.Character.isLowerCase(cCharAt)) {
                return java.lang.Character.toUpperCase(cCharAt) + T(charSequence, 1);
            }
        }
        return charSequence.toString();
    }

    public static boolean b(java.lang.CharSequence charSequence, char c5) {
        return k(charSequence, c5) > -1;
    }

    public static byte[] b0(java.lang.CharSequence charSequence) {
        return a(charSequence, e2.g.f4074b);
    }

    public static boolean c(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            return false;
        }
        return charSequence.toString().contains(charSequence2);
    }

    public static boolean d(java.lang.CharSequence charSequence, java.lang.CharSequence... charSequenceArr) {
        return j(charSequence, charSequenceArr) != null;
    }

    public static boolean e(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2) {
        if (charSequence == null) {
            return charSequence2 == null;
        }
        return o(charSequence, charSequence2) > -1;
    }

    public static int f(java.lang.CharSequence charSequence, char c5) {
        if (r(charSequence)) {
            return 0;
        }
        int length = charSequence.length();
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            if (c5 == charSequence.charAt(i6)) {
                i5++;
            }
        }
        return i5;
    }

    public static boolean g(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2) {
        return h(charSequence, charSequence2, false);
    }

    public static boolean h(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, boolean z4) {
        if (charSequence == null) {
            return charSequence2 == null;
        }
        if (charSequence2 == null) {
            return false;
        }
        return z4 ? charSequence.toString().equalsIgnoreCase(charSequence2.toString()) : charSequence.toString().contentEquals(charSequence2);
    }

    public static java.lang.String i(java.lang.CharSequence charSequence, java.lang.Object... objArr) {
        if (charSequence == null) {
            return "null";
        }
        return (e2.c.u(objArr) || q(charSequence)) ? charSequence.toString() : b2.f.a(charSequence.toString(), objArr);
    }

    public static java.lang.String j(java.lang.CharSequence charSequence, java.lang.CharSequence... charSequenceArr) {
        if (!r(charSequence) && !e2.c.u(charSequenceArr)) {
            for (java.lang.CharSequence charSequence2 : charSequenceArr) {
                if (e(charSequence, charSequence2)) {
                    return charSequence2.toString();
                }
            }
        }
        return null;
    }

    public static int k(java.lang.CharSequence charSequence, char c5) {
        return l(charSequence, c5, 0);
    }

    public static int l(java.lang.CharSequence charSequence, char c5, int i5) {
        return charSequence instanceof java.lang.String ? ((java.lang.String) charSequence).indexOf(c5, i5) : m(charSequence, c5, i5, -1);
    }

    public static int m(java.lang.CharSequence charSequence, char c5, int i5, int i6) {
        if (r(charSequence)) {
            return -1;
        }
        return new c2.a(c5).h(charSequence).f(i6).c(i5);
    }

    public static int n(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, int i5, boolean z4) {
        if (r(charSequence) || r(charSequence2)) {
            return g(charSequence, charSequence2) ? 0 : -1;
        }
        return new c2.c(charSequence2, z4).h(charSequence).c(i5);
    }

    public static int o(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2) {
        return p(charSequence, charSequence2, 0);
    }

    public static int p(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, int i5) {
        return n(charSequence, charSequence2, i5, true);
    }

    public static boolean q(java.lang.CharSequence charSequence) {
        int length;
        if (charSequence != null && (length = charSequence.length()) != 0) {
            for (int i5 = 0; i5 < length; i5++) {
                if (!e2.f.b(charSequence.charAt(i5))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean r(java.lang.CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean s(java.lang.CharSequence charSequence) {
        return !q(charSequence);
    }

    public static boolean t(java.lang.CharSequence charSequence) {
        return !r(charSequence);
    }

    public static boolean u(java.lang.CharSequence charSequence, int i5, java.lang.CharSequence charSequence2, int i6, int i7, boolean z4) {
        if (charSequence == null || charSequence2 == null) {
            return false;
        }
        return charSequence.toString().regionMatches(z4, i5, charSequence2.toString(), i6, i7);
    }

    public static boolean v(java.lang.CharSequence charSequence, char c5, char c6) {
        return charSequence != null && charSequence.charAt(0) == c5 && charSequence.charAt(charSequence.length() - 1) == c6;
    }

    public static java.lang.String w(java.lang.CharSequence charSequence, java.lang.String str) {
        return charSequence == null ? str : charSequence.toString();
    }

    public static java.lang.String x(java.lang.CharSequence charSequence, char... cArr) {
        if (charSequence == null || e2.q.d(cArr)) {
            return L(charSequence);
        }
        int length = charSequence.length();
        if (length == 0) {
            return L(charSequence);
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(length);
        for (int i5 = 0; i5 < length; i5++) {
            char cCharAt = charSequence.charAt(i5);
            if (!e2.q.a(cArr, cCharAt)) {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    public static java.lang.String y(java.lang.CharSequence charSequence, int i5) {
        if (charSequence == null) {
            return null;
        }
        if (charSequence.length() <= i5) {
            return charSequence.toString();
        }
        char lowerCase = java.lang.Character.toLowerCase(charSequence.charAt(i5));
        int i6 = i5 + 1;
        if (charSequence.length() <= i6) {
            return java.lang.String.valueOf(lowerCase);
        }
        return lowerCase + charSequence.toString().substring(i6);
    }

    public static java.lang.String z(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2) {
        if (r(charSequence) || r(charSequence2)) {
            return L(charSequence);
        }
        java.lang.String string = charSequence.toString();
        return string.startsWith(charSequence2.toString()) ? T(string, charSequence2.length()) : string;
    }
}
