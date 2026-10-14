package s3;

/* JADX INFO: compiled from: Strings.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class m extends s3.l {

    /* JADX INFO: compiled from: Strings.kt */
    public static final class a extends m3.l implements l3.p<java.lang.CharSequence, java.lang.Integer, a3.h<? extends java.lang.Integer, ? extends java.lang.Integer>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.util.List<java.lang.String> f6087b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f6088c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(java.util.List<java.lang.String> list, boolean z4) {
            super(2);
            this.f6087b = list;
            this.f6088c = z4;
        }

        public final a3.h<java.lang.Integer, java.lang.Integer> b(java.lang.CharSequence charSequence, int i5) {
            m3.k.e(charSequence, "$this$$receiver");
            a3.h hVarR = s3.m.r(charSequence, this.f6087b, i5, this.f6088c, false);
            if (hVarR != null) {
                return a3.l.a(hVarR.e(), java.lang.Integer.valueOf(((java.lang.String) hVarR.f()).length()));
            }
            return null;
        }

        @Override // l3.p
        public /* bridge */ /* synthetic */ a3.h<? extends java.lang.Integer, ? extends java.lang.Integer> u(java.lang.CharSequence charSequence, java.lang.Integer num) {
            return b(charSequence, num.intValue());
        }
    }

    /* JADX INFO: compiled from: Strings.kt */
    public static final class b extends m3.l implements l3.l<p3.h, java.lang.String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.lang.CharSequence f6089b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(java.lang.CharSequence charSequence) {
            super(1);
            this.f6089b = charSequence;
        }

        @Override // l3.l
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final java.lang.String x(p3.h hVar) {
            m3.k.e(hVar, "it");
            return s3.m.O(this.f6089b, hVar);
        }
    }

    public static final int A(java.lang.CharSequence charSequence, char[] cArr, int i5, boolean z4) {
        boolean z5;
        m3.k.e(charSequence, "<this>");
        m3.k.e(cArr, "chars");
        if (!z4 && cArr.length == 1 && (charSequence instanceof java.lang.String)) {
            return ((java.lang.String) charSequence).indexOf(b3.k.q(cArr), i5);
        }
        b3.c0 it = new p3.h(p3.m.a(i5, 0), t(charSequence)).iterator();
        while (it.hasNext()) {
            int iA = it.a();
            char cCharAt = charSequence.charAt(iA);
            int length = cArr.length;
            int i6 = 0;
            while (true) {
                if (i6 >= length) {
                    z5 = false;
                    break;
                }
                if (s3.b.d(cArr[i6], cCharAt, z4)) {
                    z5 = true;
                    break;
                }
                i6++;
            }
            if (z5) {
                return iA;
            }
        }
        return -1;
    }

    public static final int B(java.lang.CharSequence charSequence, char c5, int i5, boolean z4) {
        m3.k.e(charSequence, "<this>");
        return (z4 || !(charSequence instanceof java.lang.String)) ? F(charSequence, new char[]{c5}, i5, z4) : ((java.lang.String) charSequence).lastIndexOf(c5, i5);
    }

    public static final int C(java.lang.CharSequence charSequence, java.lang.String str, int i5, boolean z4) {
        m3.k.e(charSequence, "<this>");
        m3.k.e(str, "string");
        return (z4 || !(charSequence instanceof java.lang.String)) ? w(charSequence, str, i5, 0, z4, true) : ((java.lang.String) charSequence).lastIndexOf(str, i5);
    }

    public static /* synthetic */ int D(java.lang.CharSequence charSequence, char c5, int i5, boolean z4, int i6, java.lang.Object obj) {
        if ((i6 & 2) != 0) {
            i5 = t(charSequence);
        }
        if ((i6 & 4) != 0) {
            z4 = false;
        }
        return B(charSequence, c5, i5, z4);
    }

    public static /* synthetic */ int E(java.lang.CharSequence charSequence, java.lang.String str, int i5, boolean z4, int i6, java.lang.Object obj) {
        if ((i6 & 2) != 0) {
            i5 = t(charSequence);
        }
        if ((i6 & 4) != 0) {
            z4 = false;
        }
        return C(charSequence, str, i5, z4);
    }

    public static final int F(java.lang.CharSequence charSequence, char[] cArr, int i5, boolean z4) {
        m3.k.e(charSequence, "<this>");
        m3.k.e(cArr, "chars");
        if (!z4 && cArr.length == 1 && (charSequence instanceof java.lang.String)) {
            return ((java.lang.String) charSequence).lastIndexOf(b3.k.q(cArr), i5);
        }
        for (int iC = p3.m.c(i5, t(charSequence)); -1 < iC; iC--) {
            char cCharAt = charSequence.charAt(iC);
            boolean z5 = false;
            for (char c5 : cArr) {
                if (s3.b.d(c5, cCharAt, z4)) {
                    z5 = true;
                    break;
                }
            }
            if (z5) {
                return iC;
            }
        }
        return -1;
    }

    public static final r3.b<java.lang.String> G(java.lang.CharSequence charSequence) {
        m3.k.e(charSequence, "<this>");
        return N(charSequence, new java.lang.String[]{"\r\n", "\n", "\r"}, false, 0, 6, null);
    }

    public static final java.util.List<java.lang.String> H(java.lang.CharSequence charSequence) {
        m3.k.e(charSequence, "<this>");
        return r3.g.e(G(charSequence));
    }

    public static final r3.b<p3.h> I(java.lang.CharSequence charSequence, java.lang.String[] strArr, int i5, boolean z4, int i6) {
        L(i6);
        return new s3.c(charSequence, i5, i6, new s3.m.a(b3.j.c(strArr), z4));
    }

    public static /* synthetic */ r3.b J(java.lang.CharSequence charSequence, java.lang.String[] strArr, int i5, boolean z4, int i6, int i7, java.lang.Object obj) {
        if ((i7 & 2) != 0) {
            i5 = 0;
        }
        if ((i7 & 4) != 0) {
            z4 = false;
        }
        if ((i7 & 8) != 0) {
            i6 = 0;
        }
        return I(charSequence, strArr, i5, z4, i6);
    }

    public static final boolean K(java.lang.CharSequence charSequence, int i5, java.lang.CharSequence charSequence2, int i6, int i7, boolean z4) {
        m3.k.e(charSequence, "<this>");
        m3.k.e(charSequence2, "other");
        if (i6 < 0 || i5 < 0 || i5 > charSequence.length() - i7 || i6 > charSequence2.length() - i7) {
            return false;
        }
        for (int i8 = 0; i8 < i7; i8++) {
            if (!s3.b.d(charSequence.charAt(i5 + i8), charSequence2.charAt(i6 + i8), z4)) {
                return false;
            }
        }
        return true;
    }

    public static final void L(int i5) {
        if (i5 >= 0) {
            return;
        }
        throw new java.lang.IllegalArgumentException(("Limit must be non-negative, but was " + i5).toString());
    }

    public static final r3.b<java.lang.String> M(java.lang.CharSequence charSequence, java.lang.String[] strArr, boolean z4, int i5) {
        m3.k.e(charSequence, "<this>");
        m3.k.e(strArr, "delimiters");
        return r3.g.c(J(charSequence, strArr, 0, z4, i5, 2, null), new s3.m.b(charSequence));
    }

    public static /* synthetic */ r3.b N(java.lang.CharSequence charSequence, java.lang.String[] strArr, boolean z4, int i5, int i6, java.lang.Object obj) {
        if ((i6 & 2) != 0) {
            z4 = false;
        }
        if ((i6 & 4) != 0) {
            i5 = 0;
        }
        return M(charSequence, strArr, z4, i5);
    }

    public static final java.lang.String O(java.lang.CharSequence charSequence, p3.h hVar) {
        m3.k.e(charSequence, "<this>");
        m3.k.e(hVar, "range");
        return charSequence.subSequence(hVar.h().intValue(), hVar.g().intValue() + 1).toString();
    }

    public static final java.lang.String P(java.lang.String str, char c5, java.lang.String str2) {
        m3.k.e(str, "<this>");
        m3.k.e(str2, "missingDelimiterValue");
        int iY = y(str, c5, 0, false, 6, null);
        if (iY == -1) {
            return str2;
        }
        java.lang.String strSubstring = str.substring(iY + 1, str.length());
        m3.k.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final java.lang.String Q(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        m3.k.e(str, "<this>");
        m3.k.e(str2, "delimiter");
        m3.k.e(str3, "missingDelimiterValue");
        int iZ = z(str, str2, 0, false, 6, null);
        if (iZ == -1) {
            return str3;
        }
        java.lang.String strSubstring = str.substring(iZ + str2.length(), str.length());
        m3.k.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ java.lang.String R(java.lang.String str, char c5, java.lang.String str2, int i5, java.lang.Object obj) {
        if ((i5 & 2) != 0) {
            str2 = str;
        }
        return P(str, c5, str2);
    }

    public static /* synthetic */ java.lang.String S(java.lang.String str, java.lang.String str2, java.lang.String str3, int i5, java.lang.Object obj) {
        if ((i5 & 2) != 0) {
            str3 = str;
        }
        return Q(str, str2, str3);
    }

    public static final java.lang.String T(java.lang.String str, char c5, java.lang.String str2) {
        m3.k.e(str, "<this>");
        m3.k.e(str2, "missingDelimiterValue");
        int iD = D(str, c5, 0, false, 6, null);
        if (iD == -1) {
            return str2;
        }
        java.lang.String strSubstring = str.substring(iD + 1, str.length());
        m3.k.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ java.lang.String U(java.lang.String str, char c5, java.lang.String str2, int i5, java.lang.Object obj) {
        if ((i5 & 2) != 0) {
            str2 = str;
        }
        return T(str, c5, str2);
    }

    public static final java.lang.String V(java.lang.String str, char c5, java.lang.String str2) {
        m3.k.e(str, "<this>");
        m3.k.e(str2, "missingDelimiterValue");
        int iY = y(str, c5, 0, false, 6, null);
        if (iY == -1) {
            return str2;
        }
        java.lang.String strSubstring = str.substring(0, iY);
        m3.k.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final java.lang.String W(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        m3.k.e(str, "<this>");
        m3.k.e(str2, "delimiter");
        m3.k.e(str3, "missingDelimiterValue");
        int iZ = z(str, str2, 0, false, 6, null);
        if (iZ == -1) {
            return str3;
        }
        java.lang.String strSubstring = str.substring(0, iZ);
        m3.k.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ java.lang.String X(java.lang.String str, char c5, java.lang.String str2, int i5, java.lang.Object obj) {
        if ((i5 & 2) != 0) {
            str2 = str;
        }
        return V(str, c5, str2);
    }

    public static /* synthetic */ java.lang.String Y(java.lang.String str, java.lang.String str2, java.lang.String str3, int i5, java.lang.Object obj) {
        if ((i5 & 2) != 0) {
            str3 = str;
        }
        return W(str, str2, str3);
    }

    public static final java.lang.CharSequence Z(java.lang.CharSequence charSequence) {
        m3.k.e(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i5 = 0;
        boolean z4 = false;
        while (i5 <= length) {
            boolean zC = s3.a.c(charSequence.charAt(!z4 ? i5 : length));
            if (z4) {
                if (!zC) {
                    break;
                }
                length--;
            } else if (zC) {
                i5++;
            } else {
                z4 = true;
            }
        }
        return charSequence.subSequence(i5, length + 1);
    }

    public static final boolean p(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, boolean z4) {
        m3.k.e(charSequence, "<this>");
        m3.k.e(charSequence2, "other");
        if (charSequence2 instanceof java.lang.String) {
            if (z(charSequence, (java.lang.String) charSequence2, 0, z4, 2, null) >= 0) {
                return true;
            }
        } else if (x(charSequence, charSequence2, 0, charSequence.length(), z4, false, 16, null) >= 0) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ boolean q(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, boolean z4, int i5, java.lang.Object obj) {
        if ((i5 & 2) != 0) {
            z4 = false;
        }
        return p(charSequence, charSequence2, z4);
    }

    public static final a3.h<java.lang.Integer, java.lang.String> r(java.lang.CharSequence charSequence, java.util.Collection<java.lang.String> collection, int i5, boolean z4, boolean z5) {
        java.lang.Object next;
        java.lang.String str;
        java.lang.Object next2;
        java.lang.String str2;
        if (!z4 && collection.size() == 1) {
            java.lang.String str3 = (java.lang.String) b3.w.w(collection);
            int iZ = !z5 ? z(charSequence, str3, i5, false, 4, null) : E(charSequence, str3, i5, false, 4, null);
            if (iZ < 0) {
                return null;
            }
            return a3.l.a(java.lang.Integer.valueOf(iZ), str3);
        }
        p3.f hVar = !z5 ? new p3.h(p3.m.a(i5, 0), charSequence.length()) : p3.m.g(p3.m.c(i5, t(charSequence)), 0);
        if (charSequence instanceof java.lang.String) {
            int iA = hVar.a();
            int iB = hVar.b();
            int iC = hVar.c();
            if ((iC > 0 && iA <= iB) || (iC < 0 && iB <= iA)) {
                while (true) {
                    java.util.Iterator<T> it = collection.iterator();
                    do {
                        if (!it.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it.next();
                        str2 = (java.lang.String) next2;
                    } while (!s3.l.j(str2, 0, (java.lang.String) charSequence, iA, str2.length(), z4));
                    java.lang.String str4 = (java.lang.String) next2;
                    if (str4 != null) {
                        return a3.l.a(java.lang.Integer.valueOf(iA), str4);
                    }
                    if (iA != iB) {
                        iA += iC;
                    }
                }
            }
        } else {
            int iA2 = hVar.a();
            int iB2 = hVar.b();
            int iC2 = hVar.c();
            if ((iC2 > 0 && iA2 <= iB2) || (iC2 < 0 && iB2 <= iA2)) {
                while (true) {
                    java.util.Iterator<T> it2 = collection.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                        str = (java.lang.String) next;
                    } while (!K(str, 0, charSequence, iA2, str.length(), z4));
                    java.lang.String str5 = (java.lang.String) next;
                    if (str5 != null) {
                        return a3.l.a(java.lang.Integer.valueOf(iA2), str5);
                    }
                    if (iA2 != iB2) {
                        iA2 += iC2;
                    }
                }
            }
        }
        return null;
    }

    public static final p3.h s(java.lang.CharSequence charSequence) {
        m3.k.e(charSequence, "<this>");
        return new p3.h(0, charSequence.length() - 1);
    }

    public static final int t(java.lang.CharSequence charSequence) {
        m3.k.e(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int u(java.lang.CharSequence charSequence, char c5, int i5, boolean z4) {
        m3.k.e(charSequence, "<this>");
        return (z4 || !(charSequence instanceof java.lang.String)) ? A(charSequence, new char[]{c5}, i5, z4) : ((java.lang.String) charSequence).indexOf(c5, i5);
    }

    public static final int v(java.lang.CharSequence charSequence, java.lang.String str, int i5, boolean z4) {
        m3.k.e(charSequence, "<this>");
        m3.k.e(str, "string");
        return (z4 || !(charSequence instanceof java.lang.String)) ? x(charSequence, str, i5, charSequence.length(), z4, false, 16, null) : ((java.lang.String) charSequence).indexOf(str, i5);
    }

    public static final int w(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, int i5, int i6, boolean z4, boolean z5) {
        p3.f hVar = !z5 ? new p3.h(p3.m.a(i5, 0), p3.m.c(i6, charSequence.length())) : p3.m.g(p3.m.c(i5, t(charSequence)), p3.m.a(i6, 0));
        if ((charSequence instanceof java.lang.String) && (charSequence2 instanceof java.lang.String)) {
            int iA = hVar.a();
            int iB = hVar.b();
            int iC = hVar.c();
            if ((iC <= 0 || iA > iB) && (iC >= 0 || iB > iA)) {
                return -1;
            }
            while (!s3.l.j((java.lang.String) charSequence2, 0, (java.lang.String) charSequence, iA, charSequence2.length(), z4)) {
                if (iA == iB) {
                    return -1;
                }
                iA += iC;
            }
            return iA;
        }
        int iA2 = hVar.a();
        int iB2 = hVar.b();
        int iC2 = hVar.c();
        if ((iC2 <= 0 || iA2 > iB2) && (iC2 >= 0 || iB2 > iA2)) {
            return -1;
        }
        while (!K(charSequence2, 0, charSequence, iA2, charSequence2.length(), z4)) {
            if (iA2 == iB2) {
                return -1;
            }
            iA2 += iC2;
        }
        return iA2;
    }

    public static /* synthetic */ int x(java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2, int i5, int i6, boolean z4, boolean z5, int i7, java.lang.Object obj) {
        if ((i7 & 16) != 0) {
            z5 = false;
        }
        return w(charSequence, charSequence2, i5, i6, z4, z5);
    }

    public static /* synthetic */ int y(java.lang.CharSequence charSequence, char c5, int i5, boolean z4, int i6, java.lang.Object obj) {
        if ((i6 & 2) != 0) {
            i5 = 0;
        }
        if ((i6 & 4) != 0) {
            z4 = false;
        }
        return u(charSequence, c5, i5, z4);
    }

    public static /* synthetic */ int z(java.lang.CharSequence charSequence, java.lang.String str, int i5, boolean z4, int i6, java.lang.Object obj) {
        if ((i6 & 2) != 0) {
            i5 = 0;
        }
        if ((i6 & 4) != 0) {
            z4 = false;
        }
        return v(charSequence, str, i5, z4);
    }
}
