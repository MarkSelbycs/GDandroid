package c4;

/* JADX INFO: compiled from: Cookie.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class l {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final java.util.regex.Pattern f3169j = java.util.regex.Pattern.compile("(\\d{2,4})[^\\d]*");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final java.util.regex.Pattern f3170k = java.util.regex.Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final java.util.regex.Pattern f3171l = java.util.regex.Pattern.compile("(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final java.util.regex.Pattern f3172m = java.util.regex.Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f3173a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f3174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f3175c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.String f3176d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.lang.String f3177e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f3178f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f3179g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f3180h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f3181i;

    public l(java.lang.String str, java.lang.String str2, long j5, java.lang.String str3, java.lang.String str4, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.f3173a = str;
        this.f3174b = str2;
        this.f3175c = j5;
        this.f3176d = str3;
        this.f3177e = str4;
        this.f3178f = z4;
        this.f3179g = z5;
        this.f3181i = z6;
        this.f3180h = z7;
    }

    public static int a(java.lang.String str, int i5, int i6, boolean z4) {
        while (i5 < i6) {
            char cCharAt = str.charAt(i5);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || (cCharAt >= '0' && cCharAt <= '9') || ((cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == ':'))) == (!z4)) {
                return i5;
            }
            i5++;
        }
        return i6;
    }

    public static boolean b(c4.r rVar, java.lang.String str) {
        java.lang.String strO = rVar.o();
        if (strO.equals(str)) {
            return true;
        }
        return strO.endsWith(str) && strO.charAt((strO.length() - str.length()) - 1) == '.' && !d4.c.A(strO);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00b1 A[PHI: r0
  0x00b1: PHI (r0v12 long) = (r0v1 long), (r0v5 long) binds: [B:37:0x00af, B:48:0x00d2] A[DONT_GENERATE, DONT_INLINE]] */
    public static c4.l d(long j5, c4.r rVar, java.lang.String str) {
        long j6;
        java.lang.String strO;
        java.lang.String strSubstring;
        int length = str.length();
        char c5 = ';';
        int iG = d4.c.g(str, 0, length, ';');
        char c6 = '=';
        int iG2 = d4.c.g(str, 0, iG, '=');
        if (iG2 == iG) {
            return null;
        }
        java.lang.String strZ = d4.c.z(str, 0, iG2);
        if (strZ.isEmpty()) {
            return null;
        }
        java.lang.String strZ2 = d4.c.z(str, iG2 + 1, iG);
        int i5 = iG + 1;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        java.lang.String strG = null;
        boolean z7 = true;
        long jI = -1;
        long jH = 253402300799999L;
        java.lang.String str2 = null;
        while (i5 < length) {
            int iG3 = d4.c.g(str, i5, length, c5);
            int iG4 = d4.c.g(str, i5, iG3, c6);
            java.lang.String strZ3 = d4.c.z(str, i5, iG4);
            java.lang.String strZ4 = iG4 < iG3 ? d4.c.z(str, iG4 + 1, iG3) : "";
            if (strZ3.equalsIgnoreCase("expires")) {
                try {
                    jH = h(strZ4, 0, strZ4.length());
                    z6 = true;
                } catch (java.lang.NumberFormatException | java.lang.IllegalArgumentException unused) {
                }
            } else if (strZ3.equalsIgnoreCase("max-age")) {
                jI = i(strZ4);
                z6 = true;
            } else if (strZ3.equalsIgnoreCase(com.cndatacom.sdk.portal.entity.ConfigKey.KEY_PRIVATE_DOMAIN)) {
                strG = g(strZ4);
                z7 = false;
            } else if (strZ3.equalsIgnoreCase("path")) {
                str2 = strZ4;
            } else if (strZ3.equalsIgnoreCase("secure")) {
                z4 = true;
            } else if (strZ3.equalsIgnoreCase("httponly")) {
                z5 = true;
            }
            i5 = iG3 + 1;
            c5 = ';';
            c6 = '=';
        }
        long j7 = Long.MIN_VALUE;
        if (jI == Long.MIN_VALUE) {
            j6 = j7;
        } else if (jI != -1) {
            j7 = j5 + (jI <= 9223372036854775L ? jI * 1000 : Long.MAX_VALUE);
            if (j7 < j5 || j7 > 253402300799999L) {
                j6 = 253402300799999L;
            } else {
                j6 = j7;
            }
        } else {
            j6 = jH;
        }
        if (strG == null) {
            strO = rVar.o();
        } else {
            if (!b(rVar, strG)) {
                return null;
            }
            strO = strG;
        }
        if (str2 == null || !str2.startsWith("/")) {
            java.lang.String strK = rVar.k();
            int iLastIndexOf = strK.lastIndexOf(47);
            strSubstring = iLastIndexOf != 0 ? strK.substring(0, iLastIndexOf) : "/";
        } else {
            strSubstring = str2;
        }
        return new c4.l(strZ, strZ2, j6, strO, strSubstring, z4, z5, z7, z6);
    }

    public static c4.l e(c4.r rVar, java.lang.String str) {
        return d(java.lang.System.currentTimeMillis(), rVar, str);
    }

    public static java.util.List<c4.l> f(c4.r rVar, c4.q qVar) {
        java.util.List<java.lang.String> listI = qVar.i("Set-Cookie");
        int size = listI.size();
        java.util.ArrayList arrayList = null;
        for (int i5 = 0; i5 < size; i5++) {
            c4.l lVarE = e(rVar, listI.get(i5));
            if (lVarE != null) {
                if (arrayList == null) {
                    arrayList = new java.util.ArrayList();
                }
                arrayList.add(lVarE);
            }
        }
        return arrayList != null ? java.util.Collections.unmodifiableList(arrayList) : java.util.Collections.emptyList();
    }

    public static java.lang.String g(java.lang.String str) {
        if (str.endsWith(".")) {
            throw new java.lang.IllegalArgumentException();
        }
        if (str.startsWith(".")) {
            str = str.substring(1);
        }
        java.lang.String strJ = d4.c.j(str);
        if (strJ != null) {
            return strJ;
        }
        throw new java.lang.IllegalArgumentException();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0081  */
    public static long h(java.lang.String str, int i5, int i6) {
        int iA = a(str, i5, i6, false);
        java.util.regex.Matcher matcher = f3172m.matcher(str);
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        int iIndexOf = -1;
        int i10 = -1;
        int i11 = -1;
        while (iA < i6) {
            int iA2 = a(str, iA + 1, i6, true);
            matcher.region(iA, iA2);
            if (i8 == -1 && matcher.usePattern(f3172m).matches()) {
                i8 = java.lang.Integer.parseInt(matcher.group(1));
                i10 = java.lang.Integer.parseInt(matcher.group(2));
                i11 = java.lang.Integer.parseInt(matcher.group(3));
            } else if (i9 == -1 && matcher.usePattern(f3171l).matches()) {
                i9 = java.lang.Integer.parseInt(matcher.group(1));
            } else if (iIndexOf == -1) {
                java.util.regex.Pattern pattern = f3170k;
                if (matcher.usePattern(pattern).matches()) {
                    iIndexOf = pattern.pattern().indexOf(matcher.group(1).toLowerCase(java.util.Locale.US)) / 4;
                } else if (i7 != -1 && matcher.usePattern(f3169j).matches()) {
                    i7 = java.lang.Integer.parseInt(matcher.group(1));
                }
            } else if (i7 != -1) {
            }
            iA = a(str, iA2 + 1, i6, false);
        }
        if (i7 >= 70 && i7 <= 99) {
            i7 += 1900;
        }
        if (i7 >= 0 && i7 <= 69) {
            i7 += 2000;
        }
        if (i7 < 1601) {
            throw new java.lang.IllegalArgumentException();
        }
        if (iIndexOf == -1) {
            throw new java.lang.IllegalArgumentException();
        }
        if (i9 < 1 || i9 > 31) {
            throw new java.lang.IllegalArgumentException();
        }
        if (i8 < 0 || i8 > 23) {
            throw new java.lang.IllegalArgumentException();
        }
        if (i10 < 0 || i10 > 59) {
            throw new java.lang.IllegalArgumentException();
        }
        if (i11 < 0 || i11 > 59) {
            throw new java.lang.IllegalArgumentException();
        }
        java.util.GregorianCalendar gregorianCalendar = new java.util.GregorianCalendar(d4.c.f3968d);
        gregorianCalendar.setLenient(false);
        gregorianCalendar.set(1, i7);
        gregorianCalendar.set(2, iIndexOf - 1);
        gregorianCalendar.set(5, i9);
        gregorianCalendar.set(11, i8);
        gregorianCalendar.set(12, i10);
        gregorianCalendar.set(13, i11);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    public static long i(java.lang.String str) {
        try {
            long j5 = java.lang.Long.parseLong(str);
            if (j5 <= 0) {
                return Long.MIN_VALUE;
            }
            return j5;
        } catch (java.lang.NumberFormatException e5) {
            if (str.matches("-?\\d+")) {
                return str.startsWith("-") ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
            throw e5;
        }
    }

    public java.lang.String c() {
        return this.f3173a;
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof c4.l)) {
            return false;
        }
        c4.l lVar = (c4.l) obj;
        return lVar.f3173a.equals(this.f3173a) && lVar.f3174b.equals(this.f3174b) && lVar.f3176d.equals(this.f3176d) && lVar.f3177e.equals(this.f3177e) && lVar.f3175c == this.f3175c && lVar.f3178f == this.f3178f && lVar.f3179g == this.f3179g && lVar.f3180h == this.f3180h && lVar.f3181i == this.f3181i;
    }

    public int hashCode() {
        int iHashCode = (((((((527 + this.f3173a.hashCode()) * 31) + this.f3174b.hashCode()) * 31) + this.f3176d.hashCode()) * 31) + this.f3177e.hashCode()) * 31;
        long j5 = this.f3175c;
        return ((((((((iHashCode + ((int) (j5 ^ (j5 >>> 32)))) * 31) + (!this.f3178f ? 1 : 0)) * 31) + (!this.f3179g ? 1 : 0)) * 31) + (!this.f3180h ? 1 : 0)) * 31) + (!this.f3181i ? 1 : 0);
    }

    public java.lang.String j() {
        return this.f3174b;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(this.f3173a);
        sb.append('=');
        sb.append(this.f3174b);
        if (this.f3180h) {
            if (this.f3175c == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(h4.e.a(new java.util.Date(this.f3175c)));
            }
        }
        if (!this.f3181i) {
            sb.append("; domain=");
            sb.append(this.f3176d);
        }
        sb.append("; path=");
        sb.append(this.f3177e);
        if (this.f3178f) {
            sb.append("; secure");
        }
        if (this.f3179g) {
            sb.append("; httponly");
        }
        return sb.toString();
    }
}
