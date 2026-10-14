package b3;

/* JADX INFO: compiled from: _Arrays.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class k extends b3.j {
    public static final <T> boolean k(T[] tArr, T t5) {
        m3.k.e(tArr, "<this>");
        return m(tArr, t5) >= 0;
    }

    public static final <T> int l(T[] tArr) {
        m3.k.e(tArr, "<this>");
        return tArr.length - 1;
    }

    public static final <T> int m(T[] tArr, T t5) {
        m3.k.e(tArr, "<this>");
        int i5 = 0;
        if (t5 == null) {
            int length = tArr.length;
            while (i5 < length) {
                if (tArr[i5] == null) {
                    return i5;
                }
                i5++;
            }
            return -1;
        }
        int length2 = tArr.length;
        while (i5 < length2) {
            if (m3.k.a(t5, tArr[i5])) {
                return i5;
            }
            i5++;
        }
        return -1;
    }

    public static final <T, A extends java.lang.Appendable> A n(T[] tArr, A a5, java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, java.lang.CharSequence charSequence3, int i5, java.lang.CharSequence charSequence4, l3.l<? super T, ? extends java.lang.CharSequence> lVar) throws java.io.IOException {
        m3.k.e(tArr, "<this>");
        m3.k.e(a5, "buffer");
        m3.k.e(charSequence, "separator");
        m3.k.e(charSequence2, "prefix");
        m3.k.e(charSequence3, "postfix");
        m3.k.e(charSequence4, "truncated");
        a5.append(charSequence2);
        int i6 = 0;
        for (T t5 : tArr) {
            i6++;
            if (i6 > 1) {
                a5.append(charSequence);
            }
            if (i5 >= 0 && i6 > i5) {
                break;
            }
            s3.d.a(a5, t5, lVar);
        }
        if (i5 >= 0 && i6 > i5) {
            a5.append(charSequence4);
        }
        a5.append(charSequence3);
        return a5;
    }

    public static final <T> java.lang.String o(T[] tArr, java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, java.lang.CharSequence charSequence3, int i5, java.lang.CharSequence charSequence4, l3.l<? super T, ? extends java.lang.CharSequence> lVar) {
        m3.k.e(tArr, "<this>");
        m3.k.e(charSequence, "separator");
        m3.k.e(charSequence2, "prefix");
        m3.k.e(charSequence3, "postfix");
        m3.k.e(charSequence4, "truncated");
        java.lang.String string = ((java.lang.StringBuilder) n(tArr, new java.lang.StringBuilder(), charSequence, charSequence2, charSequence3, i5, charSequence4, lVar)).toString();
        m3.k.d(string, "joinTo(StringBuilder(), …ed, transform).toString()");
        return string;
    }

    public static /* synthetic */ java.lang.String p(java.lang.Object[] objArr, java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, java.lang.CharSequence charSequence3, int i5, java.lang.CharSequence charSequence4, l3.l lVar, int i6, java.lang.Object obj) {
        if ((i6 & 1) != 0) {
            charSequence = ", ";
        }
        java.lang.CharSequence charSequence5 = (i6 & 2) != 0 ? "" : charSequence2;
        java.lang.CharSequence charSequence6 = (i6 & 4) == 0 ? charSequence3 : "";
        if ((i6 & 8) != 0) {
            i5 = -1;
        }
        int i7 = i5;
        if ((i6 & 16) != 0) {
            charSequence4 = "...";
        }
        java.lang.CharSequence charSequence7 = charSequence4;
        if ((i6 & 32) != 0) {
            lVar = null;
        }
        return o(objArr, charSequence, charSequence5, charSequence6, i7, charSequence7, lVar);
    }

    public static final char q(char[] cArr) {
        m3.k.e(cArr, "<this>");
        int length = cArr.length;
        if (length == 0) {
            throw new java.util.NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new java.lang.IllegalArgumentException("Array has more than one element.");
    }

    public static final <T> T r(T[] tArr) {
        m3.k.e(tArr, "<this>");
        if (tArr.length == 1) {
            return tArr[0];
        }
        return null;
    }

    public static final <T, C extends java.util.Collection<? super T>> C s(T[] tArr, C c5) {
        m3.k.e(tArr, "<this>");
        m3.k.e(c5, "destination");
        for (T t5 : tArr) {
            c5.add(t5);
        }
        return c5;
    }
}
