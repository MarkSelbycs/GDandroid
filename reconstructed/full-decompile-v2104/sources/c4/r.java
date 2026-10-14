package c4;

/* JADX INFO: compiled from: HttpUrl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class r {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final char[] f3197j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f3198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f3199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.String f3200c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.String f3201d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3202e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final java.util.List<java.lang.String> f3203f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.util.List<java.lang.String> f3204g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final java.lang.String f3205h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final java.lang.String f3206i;

    /* JADX INFO: compiled from: HttpUrl.java */
    public static /* synthetic */ class a {
    }

    /* JADX INFO: compiled from: HttpUrl.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.lang.String f3207a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public java.lang.String f3210d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final java.util.List<java.lang.String> f3212f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public java.util.List<java.lang.String> f3213g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public java.lang.String f3214h;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public java.lang.String f3208b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public java.lang.String f3209c = "";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f3211e = -1;

        /* JADX INFO: compiled from: HttpUrl.java */
        public enum a {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public b() {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            this.f3212f = arrayList;
            arrayList.add("");
        }

        public static java.lang.String c(java.lang.String str, int i5, int i6) {
            java.lang.String strV = c4.r.v(str, i5, i6, false);
            if (!strV.contains(":")) {
                return d4.c.j(strV);
            }
            java.net.InetAddress inetAddressE = (strV.startsWith("[") && strV.endsWith("]")) ? e(strV, 1, strV.length() - 1) : e(strV, 0, strV.length());
            if (inetAddressE == null) {
                return null;
            }
            byte[] address = inetAddressE.getAddress();
            if (address.length == 16) {
                return i(address);
            }
            throw new java.lang.AssertionError();
        }

        public static boolean d(java.lang.String str, int i5, int i6, byte[] bArr, int i7) {
            int i8 = i7;
            while (i5 < i6) {
                if (i8 == bArr.length) {
                    return false;
                }
                if (i8 != i7) {
                    if (str.charAt(i5) != '.') {
                        return false;
                    }
                    i5++;
                }
                int i9 = i5;
                int i10 = 0;
                while (i9 < i6) {
                    char cCharAt = str.charAt(i9);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    if ((i10 == 0 && i5 != i9) || (i10 = ((i10 * 10) + cCharAt) - 48) > 255) {
                        return false;
                    }
                    i9++;
                }
                if (i9 - i5 == 0) {
                    return false;
                }
                bArr[i8] = (byte) i10;
                i8++;
                i5 = i9;
            }
            return i8 == i7 + 4;
        }

        /* JADX WARN: Code duplicated, block: B:31:0x004f  */
        /* JADX WARN: Code duplicated, block: B:34:0x005a A[LOOP:1: B:30:0x004d->B:34:0x005a, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:59:0x0060 A[EDGE_INSN: B:59:0x0060->B:35:0x0060 BREAK  A[LOOP:1: B:30:0x004d->B:34:0x005a], SYNTHETIC] */
        public static java.net.InetAddress e(java.lang.String str, int i5, int i6) {
            int i7;
            int i8;
            int iG;
            byte[] bArr = new byte[16];
            int i9 = -1;
            int i10 = -1;
            int i11 = 0;
            while (i5 < i6) {
                if (i11 == 16) {
                    return null;
                }
                int i12 = i5 + 2;
                if (i12 <= i6 && str.regionMatches(i5, "::", 0, 2)) {
                    if (i9 != -1) {
                        return null;
                    }
                    i11 += 2;
                    i9 = i11;
                    if (i12 == i6) {
                        break;
                    }
                    i10 = i12;
                    i7 = 0;
                    i5 = i10;
                    while (i5 < i6) {
                        iG = c4.r.g(str.charAt(i5));
                        if (iG == -1) {
                            break;
                            break;
                        }
                        i7 = (i7 << 4) + iG;
                        i5++;
                    }
                    i8 = i5 - i10;
                    if (i8 != 0) {
                    }
                    return null;
                }
                if (i11 != 0) {
                    if (!str.regionMatches(i5, ":", 0, 1)) {
                        if (!str.regionMatches(i5, ".", 0, 1) || !d(str, i10, i6, bArr, i11 - 2)) {
                            return null;
                        }
                        i11 += 2;
                        break;
                    }
                    i5++;
                }
                i10 = i5;
                i7 = 0;
                i5 = i10;
                while (i5 < i6) {
                    iG = c4.r.g(str.charAt(i5));
                    if (iG == -1) {
                        break;
                    }
                    i7 = (i7 << 4) + iG;
                    i5++;
                }
                i8 = i5 - i10;
                if (i8 != 0 || i8 > 4) {
                    return null;
                }
                int i13 = i11 + 1;
                bArr[i11] = (byte) ((i7 >>> 8) & 255);
                i11 = i13 + 1;
                bArr[i13] = (byte) (i7 & 255);
            }
            if (i11 != 16) {
                if (i9 == -1) {
                    return null;
                }
                int i14 = i11 - i9;
                java.lang.System.arraycopy(bArr, i9, bArr, 16 - i14, i14);
                java.util.Arrays.fill(bArr, i9, (16 - i11) + i9, (byte) 0);
            }
            try {
                return java.net.InetAddress.getByAddress(bArr);
            } catch (java.net.UnknownHostException unused) {
                throw new java.lang.AssertionError();
            }
        }

        public static java.lang.String i(byte[] bArr) {
            int i5 = 0;
            int i6 = -1;
            int i7 = 0;
            int i8 = 0;
            while (i7 < bArr.length) {
                int i9 = i7;
                while (i9 < 16 && bArr[i9] == 0 && bArr[i9 + 1] == 0) {
                    i9 += 2;
                }
                int i10 = i9 - i7;
                if (i10 > i8) {
                    i6 = i7;
                    i8 = i10;
                }
                i7 = i9 + 2;
            }
            okio.Buffer buffer = new okio.Buffer();
            while (i5 < bArr.length) {
                if (i5 == i6) {
                    buffer.writeByte(58);
                    i5 += i8;
                    if (i5 == 16) {
                        buffer.writeByte(58);
                    }
                } else {
                    if (i5 > 0) {
                        buffer.writeByte(58);
                    }
                    buffer.writeHexadecimalUnsignedLong(((bArr[i5] & 255) << 8) | (bArr[i5 + 1] & 255));
                    i5 += 2;
                }
            }
            return buffer.readUtf8();
        }

        public static int m(java.lang.String str, int i5, int i6) {
            try {
                int i7 = java.lang.Integer.parseInt(c4.r.d(str, i5, i6, "", false, false, false, true));
                if (i7 <= 0 || i7 > 65535) {
                    return -1;
                }
                return i7;
            } catch (java.lang.NumberFormatException unused) {
            }
        }

        public static int p(java.lang.String str, int i5, int i6) {
            while (i5 < i6) {
                char cCharAt = str.charAt(i5);
                if (cCharAt == ':') {
                    return i5;
                }
                if (cCharAt == '[') {
                    do {
                        i5++;
                        if (i5 >= i6) {
                            break;
                        }
                    } while (str.charAt(i5) != ']');
                }
                i5++;
            }
            return i6;
        }

        public static int u(java.lang.String str, int i5, int i6) {
            if (i6 - i5 < 2) {
                return -1;
            }
            char cCharAt = str.charAt(i5);
            if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                while (true) {
                    i5++;
                    if (i5 >= i6) {
                        break;
                    }
                    char cCharAt2 = str.charAt(i5);
                    if (cCharAt2 < 'a' || cCharAt2 > 'z') {
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            if (cCharAt2 < '0' || cCharAt2 > '9') {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i5;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        public static int v(java.lang.String str, int i5, int i6) {
            int i7 = 0;
            while (i5 < i6) {
                char cCharAt = str.charAt(i5);
                if (cCharAt != '\\' && cCharAt != '/') {
                    break;
                }
                i7++;
                i5++;
            }
            return i7;
        }

        public c4.r.b a(java.lang.String str, java.lang.String str2) {
            java.util.Objects.requireNonNull(str, "name == null");
            if (this.f3213g == null) {
                this.f3213g = new java.util.ArrayList();
            }
            this.f3213g.add(c4.r.e(str, " \"'<>#&=", false, false, true, true));
            this.f3213g.add(str2 != null ? c4.r.e(str2, " \"'<>#&=", false, false, true, true) : null);
            return this;
        }

        public c4.r b() {
            if (this.f3207a == null) {
                throw new java.lang.IllegalStateException("scheme == null");
            }
            if (this.f3210d != null) {
                return new c4.r(this, null);
            }
            throw new java.lang.IllegalStateException("host == null");
        }

        public int f() {
            int i5 = this.f3211e;
            return i5 != -1 ? i5 : c4.r.h(this.f3207a);
        }

        public c4.r.b g(java.lang.String str) {
            this.f3213g = str != null ? c4.r.C(c4.r.e(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        public c4.r.b h(java.lang.String str) {
            java.util.Objects.requireNonNull(str, "host == null");
            java.lang.String strC = c(str, 0, str.length());
            if (strC != null) {
                this.f3210d = strC;
                return this;
            }
            throw new java.lang.IllegalArgumentException("unexpected host: " + str);
        }

        public final boolean j(java.lang.String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        public final boolean k(java.lang.String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        public c4.r.b.a l(c4.r rVar, java.lang.String str) {
            int iH;
            int i5;
            int iW = d4.c.w(str, 0, str.length());
            int iX = d4.c.x(str, iW, str.length());
            if (u(str, iW, iX) != -1) {
                if (str.regionMatches(true, iW, "https:", 0, 6)) {
                    this.f3207a = "https";
                    iW += 6;
                } else {
                    if (!str.regionMatches(true, iW, "http:", 0, 5)) {
                        return c4.r.b.a.UNSUPPORTED_SCHEME;
                    }
                    this.f3207a = "http";
                    iW += 5;
                }
            } else {
                if (rVar == null) {
                    return c4.r.b.a.MISSING_SCHEME;
                }
                this.f3207a = rVar.f3198a;
            }
            int iV = v(str, iW, iX);
            char c5 = '?';
            char c6 = '#';
            if (iV >= 2 || rVar == null || !rVar.f3198a.equals(this.f3207a)) {
                boolean z4 = false;
                boolean z5 = false;
                int i6 = iW + iV;
                while (true) {
                    iH = d4.c.h(str, i6, iX, "@/\\?#");
                    byte bCharAt = iH != iX ? str.charAt(iH) : (byte) -1;
                    if (bCharAt == -1 || bCharAt == c6 || bCharAt == 47 || bCharAt == 92 || bCharAt == c5) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (z4) {
                            i5 = iH;
                            this.f3209c += "%40" + c4.r.d(str, i6, i5, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                        } else {
                            int iG = d4.c.g(str, i6, iH, ':');
                            i5 = iH;
                            java.lang.String strD = c4.r.d(str, i6, iG, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                            if (z5) {
                                strD = this.f3208b + "%40" + strD;
                            }
                            this.f3208b = strD;
                            if (iG != i5) {
                                this.f3209c = c4.r.d(str, iG + 1, i5, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                                z4 = true;
                            }
                            z5 = true;
                        }
                        i6 = i5 + 1;
                    }
                    c5 = '?';
                    c6 = '#';
                }
                int iP = p(str, i6, iH);
                int i7 = iP + 1;
                if (i7 < iH) {
                    this.f3210d = c(str, i6, iP);
                    int iM = m(str, i7, iH);
                    this.f3211e = iM;
                    if (iM == -1) {
                        return c4.r.b.a.INVALID_PORT;
                    }
                } else {
                    this.f3210d = c(str, i6, iP);
                    this.f3211e = c4.r.h(this.f3207a);
                }
                if (this.f3210d == null) {
                    return c4.r.b.a.INVALID_HOST;
                }
                iW = iH;
            } else {
                this.f3208b = rVar.n();
                this.f3209c = rVar.j();
                this.f3210d = rVar.f3201d;
                this.f3211e = rVar.f3202e;
                this.f3212f.clear();
                this.f3212f.addAll(rVar.l());
                if (iW == iX || str.charAt(iW) == '#') {
                    g(rVar.m());
                }
            }
            int iH2 = d4.c.h(str, iW, iX, "?#");
            s(str, iW, iH2);
            if (iH2 < iX && str.charAt(iH2) == '?') {
                int iG2 = d4.c.g(str, iH2, iX, '#');
                this.f3213g = c4.r.C(c4.r.d(str, iH2 + 1, iG2, " \"'<>#", true, false, true, true));
                iH2 = iG2;
            }
            if (iH2 < iX && str.charAt(iH2) == '#') {
                this.f3214h = c4.r.d(str, 1 + iH2, iX, "", true, false, false, false);
            }
            return c4.r.b.a.SUCCESS;
        }

        public final void n() {
            java.util.List<java.lang.String> list = this.f3212f;
            if (!list.remove(list.size() - 1).isEmpty() || this.f3212f.isEmpty()) {
                this.f3212f.add("");
            } else {
                java.util.List<java.lang.String> list2 = this.f3212f;
                list2.set(list2.size() - 1, "");
            }
        }

        public c4.r.b o(int i5) {
            if (i5 > 0 && i5 <= 65535) {
                this.f3211e = i5;
                return this;
            }
            throw new java.lang.IllegalArgumentException("unexpected port: " + i5);
        }

        public final void q(java.lang.String str, int i5, int i6, boolean z4, boolean z5) {
            java.lang.String strD = c4.r.d(str, i5, i6, " \"<>^`{}|/\\?#", z5, false, false, true);
            if (j(strD)) {
                return;
            }
            if (k(strD)) {
                n();
                return;
            }
            java.util.List<java.lang.String> list = this.f3212f;
            if (list.get(list.size() - 1).isEmpty()) {
                java.util.List<java.lang.String> list2 = this.f3212f;
                list2.set(list2.size() - 1, strD);
            } else {
                this.f3212f.add(strD);
            }
            if (z4) {
                this.f3212f.add("");
            }
        }

        public c4.r.b r() {
            int size = this.f3212f.size();
            for (int i5 = 0; i5 < size; i5++) {
                this.f3212f.set(i5, c4.r.e(this.f3212f.get(i5), "[]", true, true, false, true));
            }
            java.util.List<java.lang.String> list = this.f3213g;
            if (list != null) {
                int size2 = list.size();
                for (int i6 = 0; i6 < size2; i6++) {
                    java.lang.String str = this.f3213g.get(i6);
                    if (str != null) {
                        this.f3213g.set(i6, c4.r.e(str, "\\^`{|}", true, true, true, true));
                    }
                }
            }
            java.lang.String str2 = this.f3214h;
            if (str2 != null) {
                this.f3214h = c4.r.e(str2, " \"#<>\\^`{|}", true, true, false, false);
            }
            return this;
        }

        public final void s(java.lang.String str, int i5, int i6) {
            if (i5 == i6) {
                return;
            }
            char cCharAt = str.charAt(i5);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.f3212f.clear();
                this.f3212f.add("");
                i5++;
            } else {
                java.util.List<java.lang.String> list = this.f3212f;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i7 = i5;
                if (i7 >= i6) {
                    return;
                }
                i5 = d4.c.h(str, i7, i6, "/\\");
                boolean z4 = i5 < i6;
                q(str, i7, i5, z4, true);
                if (z4) {
                    i5++;
                }
            }
        }

        public c4.r.b t(java.lang.String str) {
            java.util.Objects.requireNonNull(str, "scheme == null");
            if (str.equalsIgnoreCase("http")) {
                this.f3207a = "http";
            } else {
                if (!str.equalsIgnoreCase("https")) {
                    throw new java.lang.IllegalArgumentException("unexpected scheme: " + str);
                }
                this.f3207a = "https";
            }
            return this;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(this.f3207a);
            sb.append("://");
            if (!this.f3208b.isEmpty() || !this.f3209c.isEmpty()) {
                sb.append(this.f3208b);
                if (!this.f3209c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f3209c);
                }
                sb.append('@');
            }
            if (this.f3210d.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f3210d);
                sb.append(']');
            } else {
                sb.append(this.f3210d);
            }
            int iF = f();
            if (iF != c4.r.h(this.f3207a)) {
                sb.append(':');
                sb.append(iF);
            }
            c4.r.u(sb, this.f3212f);
            if (this.f3213g != null) {
                sb.append('?');
                c4.r.q(sb, this.f3213g);
            }
            if (this.f3214h != null) {
                sb.append('#');
                sb.append(this.f3214h);
            }
            return sb.toString();
        }
    }

    public /* synthetic */ r(c4.r.b bVar, c4.r.a aVar) {
        this(bVar);
    }

    public static java.util.List<java.lang.String> C(java.lang.String str) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int i5 = 0;
        while (i5 <= str.length()) {
            int iIndexOf = str.indexOf(38, i5);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i5);
            if (iIndexOf2 == -1 || iIndexOf2 > iIndexOf) {
                arrayList.add(str.substring(i5, iIndexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i5, iIndexOf2));
                arrayList.add(str.substring(iIndexOf2 + 1, iIndexOf));
            }
            i5 = iIndexOf + 1;
        }
        return arrayList;
    }

    public static java.lang.String d(java.lang.String str, int i5, int i6, java.lang.String str2, boolean z4, boolean z5, boolean z6, boolean z7) {
        int iCharCount = i5;
        while (iCharCount < i6) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt >= 32 && iCodePointAt != 127 && (iCodePointAt < 128 || !z7)) {
                if (str2.indexOf(iCodePointAt) == -1 && ((iCodePointAt != 37 || (z4 && (!z5 || z(str, iCharCount, i6)))) && (iCodePointAt != 43 || !z6))) {
                    iCharCount += java.lang.Character.charCount(iCodePointAt);
                }
            }
            okio.Buffer buffer = new okio.Buffer();
            buffer.writeUtf8(str, i5, iCharCount);
            f(buffer, str, iCharCount, i6, str2, z4, z5, z6, z7);
            return buffer.readUtf8();
        }
        return str.substring(i5, i6);
    }

    public static java.lang.String e(java.lang.String str, java.lang.String str2, boolean z4, boolean z5, boolean z6, boolean z7) {
        return d(str, 0, str.length(), str2, z4, z5, z6, z7);
    }

    public static void f(okio.Buffer buffer, java.lang.String str, int i5, int i6, java.lang.String str2, boolean z4, boolean z5, boolean z6, boolean z7) {
        okio.Buffer buffer2 = null;
        while (i5 < i6) {
            int iCodePointAt = str.codePointAt(i5);
            if (!z4 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z6) {
                    buffer.writeUtf8(z4 ? "+" : "%2B");
                } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z7) || str2.indexOf(iCodePointAt) != -1 || (iCodePointAt == 37 && (!z4 || (z5 && !z(str, i5, i6)))))) {
                    if (buffer2 == null) {
                        buffer2 = new okio.Buffer();
                    }
                    buffer2.writeUtf8CodePoint(iCodePointAt);
                    while (!buffer2.exhausted()) {
                        int i7 = buffer2.readByte() & 255;
                        buffer.writeByte(37);
                        char[] cArr = f3197j;
                        buffer.writeByte((int) cArr[(i7 >> 4) & 15]);
                        buffer.writeByte((int) cArr[i7 & 15]);
                    }
                } else {
                    buffer.writeUtf8CodePoint(iCodePointAt);
                }
            }
            i5 += java.lang.Character.charCount(iCodePointAt);
        }
    }

    public static int g(char c5) {
        if (c5 >= '0' && c5 <= '9') {
            return c5 - '0';
        }
        char c6 = 'a';
        if (c5 < 'a' || c5 > 'f') {
            c6 = 'A';
            if (c5 < 'A' || c5 > 'F') {
                return -1;
            }
        }
        return (c5 - c6) + 10;
    }

    public static int h(java.lang.String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    public static void q(java.lang.StringBuilder sb, java.util.List<java.lang.String> list) {
        int size = list.size();
        for (int i5 = 0; i5 < size; i5 += 2) {
            java.lang.String str = list.get(i5);
            java.lang.String str2 = list.get(i5 + 1);
            if (i5 > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    public static c4.r t(java.lang.String str) {
        c4.r.b bVar = new c4.r.b();
        if (bVar.l(null, str) == c4.r.b.a.SUCCESS) {
            return bVar.b();
        }
        return null;
    }

    public static void u(java.lang.StringBuilder sb, java.util.List<java.lang.String> list) {
        int size = list.size();
        for (int i5 = 0; i5 < size; i5++) {
            sb.append('/');
            sb.append(list.get(i5));
        }
    }

    public static java.lang.String v(java.lang.String str, int i5, int i6, boolean z4) {
        for (int i7 = i5; i7 < i6; i7++) {
            char cCharAt = str.charAt(i7);
            if (cCharAt == '%' || (cCharAt == '+' && z4)) {
                okio.Buffer buffer = new okio.Buffer();
                buffer.writeUtf8(str, i5, i7);
                y(buffer, str, i7, i6, z4);
                return buffer.readUtf8();
            }
        }
        return str.substring(i5, i6);
    }

    public static java.lang.String w(java.lang.String str, boolean z4) {
        return v(str, 0, str.length(), z4);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0039  */
    public static void y(okio.Buffer buffer, java.lang.String str, int i5, int i6, boolean z4) {
        int i7;
        while (i5 < i6) {
            int iCodePointAt = str.codePointAt(i5);
            if (iCodePointAt == 37 && (i7 = i5 + 2) < i6) {
                int iG = g(str.charAt(i5 + 1));
                int iG2 = g(str.charAt(i7));
                if (iG == -1 || iG2 == -1) {
                    buffer.writeUtf8CodePoint(iCodePointAt);
                } else {
                    buffer.writeByte((iG << 4) + iG2);
                    i5 = i7;
                }
            } else if (iCodePointAt == 43 && z4) {
                buffer.writeByte(32);
            } else {
                buffer.writeUtf8CodePoint(iCodePointAt);
            }
            i5 += java.lang.Character.charCount(iCodePointAt);
        }
    }

    public static boolean z(java.lang.String str, int i5, int i6) {
        int i7 = i5 + 2;
        return i7 < i6 && str.charAt(i5) == '%' && g(str.charAt(i5 + 1)) != -1 && g(str.charAt(i7)) != -1;
    }

    public int A() {
        return this.f3202e;
    }

    public java.lang.String B() {
        if (this.f3204g == null) {
            return null;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        q(sb, this.f3204g);
        return sb.toString();
    }

    public c4.r D(java.lang.String str) {
        c4.r.b bVarS = s(str);
        if (bVarS != null) {
            return bVarS.b();
        }
        return null;
    }

    public java.lang.String E() {
        return this.f3198a;
    }

    public java.net.URI F() {
        java.lang.String string = r().r().toString();
        try {
            return new java.net.URI(string);
        } catch (java.net.URISyntaxException e5) {
            try {
                return java.net.URI.create(string.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (java.lang.Exception unused) {
                throw new java.lang.RuntimeException(e5);
            }
        }
    }

    public java.net.URL G() {
        try {
            return new java.net.URL(this.f3206i);
        } catch (java.net.MalformedURLException e5) {
            throw new java.lang.RuntimeException(e5);
        }
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof c4.r) && ((c4.r) obj).f3206i.equals(this.f3206i);
    }

    public int hashCode() {
        return this.f3206i.hashCode();
    }

    public java.lang.String i() {
        if (this.f3205h == null) {
            return null;
        }
        return this.f3206i.substring(this.f3206i.indexOf(35) + 1);
    }

    public java.lang.String j() {
        if (this.f3200c.isEmpty()) {
            return "";
        }
        return this.f3206i.substring(this.f3206i.indexOf(58, this.f3198a.length() + 3) + 1, this.f3206i.indexOf(64));
    }

    public java.lang.String k() {
        int iIndexOf = this.f3206i.indexOf(47, this.f3198a.length() + 3);
        java.lang.String str = this.f3206i;
        return this.f3206i.substring(iIndexOf, d4.c.h(str, iIndexOf, str.length(), "?#"));
    }

    public java.util.List<java.lang.String> l() {
        int iIndexOf = this.f3206i.indexOf(47, this.f3198a.length() + 3);
        java.lang.String str = this.f3206i;
        int iH = d4.c.h(str, iIndexOf, str.length(), "?#");
        java.util.ArrayList arrayList = new java.util.ArrayList();
        while (iIndexOf < iH) {
            int i5 = iIndexOf + 1;
            int iG = d4.c.g(this.f3206i, i5, iH, '/');
            arrayList.add(this.f3206i.substring(i5, iG));
            iIndexOf = iG;
        }
        return arrayList;
    }

    public java.lang.String m() {
        if (this.f3204g == null) {
            return null;
        }
        int iIndexOf = this.f3206i.indexOf(63) + 1;
        java.lang.String str = this.f3206i;
        return this.f3206i.substring(iIndexOf, d4.c.g(str, iIndexOf + 1, str.length(), '#'));
    }

    public java.lang.String n() {
        if (this.f3199b.isEmpty()) {
            return "";
        }
        int length = this.f3198a.length() + 3;
        java.lang.String str = this.f3206i;
        return this.f3206i.substring(length, d4.c.h(str, length, str.length(), ":@"));
    }

    public java.lang.String o() {
        return this.f3201d;
    }

    public boolean p() {
        return this.f3198a.equals("https");
    }

    public c4.r.b r() {
        c4.r.b bVar = new c4.r.b();
        bVar.f3207a = this.f3198a;
        bVar.f3208b = n();
        bVar.f3209c = j();
        bVar.f3210d = this.f3201d;
        bVar.f3211e = this.f3202e != h(this.f3198a) ? this.f3202e : -1;
        bVar.f3212f.clear();
        bVar.f3212f.addAll(l());
        bVar.g(m());
        bVar.f3214h = i();
        return bVar;
    }

    public c4.r.b s(java.lang.String str) {
        c4.r.b bVar = new c4.r.b();
        if (bVar.l(this, str) == c4.r.b.a.SUCCESS) {
            return bVar;
        }
        return null;
    }

    public java.lang.String toString() {
        return this.f3206i;
    }

    public final java.util.List<java.lang.String> x(java.util.List<java.lang.String> list, boolean z4) {
        java.util.ArrayList arrayList = new java.util.ArrayList(list.size());
        java.util.Iterator<java.lang.String> it = list.iterator();
        while (it.hasNext()) {
            java.lang.String next = it.next();
            arrayList.add(next != null ? w(next, z4) : null);
        }
        return java.util.Collections.unmodifiableList(arrayList);
    }

    public r(c4.r.b bVar) {
        this.f3198a = bVar.f3207a;
        this.f3199b = w(bVar.f3208b, false);
        this.f3200c = w(bVar.f3209c, false);
        this.f3201d = bVar.f3210d;
        this.f3202e = bVar.f();
        this.f3203f = x(bVar.f3212f, false);
        java.util.List<java.lang.String> list = bVar.f3213g;
        this.f3204g = list != null ? x(list, true) : null;
        java.lang.String str = bVar.f3214h;
        this.f3205h = str != null ? w(str, false) : null;
        this.f3206i = bVar.toString();
    }
}
