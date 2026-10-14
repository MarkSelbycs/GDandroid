package y2;

/* JADX INFO: compiled from: JsonReader.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a implements java.io.Closeable {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final char[] f6846u = ")]}'\n".toCharArray();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.io.Reader f6847a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f6855i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f6856o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public java.lang.String f6857p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int[] f6858q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public java.lang.String[] f6860s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int[] f6861t;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f6848b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final char[] f6849c = new char[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6850d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f6851e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6852f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6853g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6854h = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f6859r = 0 + 1;

    /* JADX INFO: renamed from: y2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: JsonReader.java */
    public static class C0108a extends u2.e {
        @Override // u2.e
        public void a(y2.a aVar) throws java.io.IOException {
            if (aVar instanceof v2.e) {
                ((v2.e) aVar).x0();
                return;
            }
            int i5 = aVar.f6854h;
            if (i5 == 0) {
                i5 = aVar.i();
            }
            if (i5 == 13) {
                aVar.f6854h = 9;
                return;
            }
            if (i5 == 12) {
                aVar.f6854h = 8;
                return;
            }
            if (i5 == 14) {
                aVar.f6854h = 10;
                return;
            }
            throw new java.lang.IllegalStateException("Expected a name but was " + aVar.V() + "  at line " + aVar.q() + " column " + aVar.o() + " path " + aVar.q0());
        }
    }

    static {
        u2.e.f6338a = new y2.a.C0108a();
    }

    public a(java.io.Reader reader) {
        int[] iArr = new int[32];
        this.f6858q = iArr;
        iArr[0] = 6;
        this.f6860s = new java.lang.String[32];
        this.f6861t = new int[32];
        java.util.Objects.requireNonNull(reader, "in == null");
        this.f6847a = reader;
    }

    public long C() throws java.io.IOException {
        int i5 = this.f6854h;
        if (i5 == 0) {
            i5 = i();
        }
        if (i5 == 15) {
            this.f6854h = 0;
            int[] iArr = this.f6861t;
            int i6 = this.f6859r - 1;
            iArr[i6] = iArr[i6] + 1;
            return this.f6855i;
        }
        if (i5 == 16) {
            this.f6857p = new java.lang.String(this.f6849c, this.f6850d, this.f6856o);
            this.f6850d += this.f6856o;
        } else {
            if (i5 != 8 && i5 != 9) {
                throw new java.lang.IllegalStateException("Expected a long but was " + V() + " at line " + q() + " column " + o() + " path " + q0());
            }
            java.lang.String strM = M(i5 == 8 ? '\'' : '\"');
            this.f6857p = strM;
            try {
                long j5 = java.lang.Long.parseLong(strM);
                this.f6854h = 0;
                int[] iArr2 = this.f6861t;
                int i7 = this.f6859r - 1;
                iArr2[i7] = iArr2[i7] + 1;
                return j5;
            } catch (java.lang.NumberFormatException unused) {
            }
        }
        this.f6854h = 11;
        double d5 = java.lang.Double.parseDouble(this.f6857p);
        long j6 = (long) d5;
        if (j6 == d5) {
            this.f6857p = null;
            this.f6854h = 0;
            int[] iArr3 = this.f6861t;
            int i8 = this.f6859r - 1;
            iArr3[i8] = iArr3[i8] + 1;
            return j6;
        }
        throw new java.lang.NumberFormatException("Expected a long but was " + this.f6857p + " at line " + q() + " column " + o() + " path " + q0());
    }

    public java.lang.String H() throws java.io.IOException {
        java.lang.String strM;
        int i5 = this.f6854h;
        if (i5 == 0) {
            i5 = i();
        }
        if (i5 == 14) {
            strM = R();
        } else if (i5 == 12) {
            strM = M('\'');
        } else {
            if (i5 != 13) {
                throw new java.lang.IllegalStateException("Expected a name but was " + V() + " at line " + q() + " column " + o() + " path " + q0());
            }
            strM = M('\"');
        }
        this.f6854h = 0;
        this.f6860s[this.f6859r - 1] = strM;
        return strM;
    }

    public final int I(boolean z4) throws java.io.IOException {
        char[] cArr = this.f6849c;
        int i5 = this.f6850d;
        int i6 = this.f6851e;
        while (true) {
            if (i5 == i6) {
                this.f6850d = i5;
                if (!n(1)) {
                    if (!z4) {
                        return -1;
                    }
                    throw new java.io.EOFException("End of input at line " + q() + " column " + o());
                }
                i5 = this.f6850d;
                i6 = this.f6851e;
            }
            int i7 = i5 + 1;
            char c5 = cArr[i5];
            if (c5 == '\n') {
                this.f6852f++;
                this.f6853g = i7;
            } else if (c5 != ' ' && c5 != '\r' && c5 != '\t') {
                if (c5 == '/') {
                    this.f6850d = i7;
                    if (i7 == i6) {
                        this.f6850d = i7 - 1;
                        boolean zN = n(2);
                        this.f6850d++;
                        if (!zN) {
                            return c5;
                        }
                    }
                    f();
                    int i8 = this.f6850d;
                    char c6 = cArr[i8];
                    if (c6 == '*') {
                        this.f6850d = i8 + 1;
                        if (!i0("*/")) {
                            throw r0("Unterminated comment");
                        }
                        i5 = this.f6850d + 2;
                        i6 = this.f6851e;
                    } else {
                        if (c6 != '/') {
                            return c5;
                        }
                        this.f6850d = i8 + 1;
                        j0();
                        i5 = this.f6850d;
                        i6 = this.f6851e;
                    }
                } else {
                    if (c5 != '#') {
                        this.f6850d = i7;
                        return c5;
                    }
                    this.f6850d = i7;
                    f();
                    j0();
                    i5 = this.f6850d;
                    i6 = this.f6851e;
                }
            }
            i5 = i7;
        }
    }

    public void K() throws java.io.IOException {
        int i5 = this.f6854h;
        if (i5 == 0) {
            i5 = i();
        }
        if (i5 == 7) {
            this.f6854h = 0;
            int[] iArr = this.f6861t;
            int i6 = this.f6859r - 1;
            iArr[i6] = iArr[i6] + 1;
            return;
        }
        throw new java.lang.IllegalStateException("Expected null but was " + V() + " at line " + q() + " column " + o() + " path " + q0());
    }

    public final java.lang.String M(char c5) throws java.io.IOException {
        int i5;
        char[] cArr = this.f6849c;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        do {
            int i6 = this.f6850d;
            int i7 = this.f6851e;
            while (true) {
                int i8 = i7;
                i5 = i6;
                while (true) {
                    if (i6 < i8) {
                        int i9 = i6 + 1;
                        char c6 = cArr[i6];
                        if (c6 == c5) {
                            this.f6850d = i9;
                            sb.append(cArr, i5, (i9 - i5) - 1);
                            return sb.toString();
                        }
                        if (c6 == '\\') {
                            this.f6850d = i9;
                            sb.append(cArr, i5, (i9 - i5) - 1);
                            sb.append(b0());
                            i6 = this.f6850d;
                            i7 = this.f6851e;
                        } else {
                            if (c6 == '\n') {
                                this.f6852f++;
                                this.f6853g = i9;
                            }
                            i6 = i9;
                        }
                    }
                }
            }
            sb.append(cArr, i5, i6 - i5);
            this.f6850d = i6;
        } while (n(1));
        throw r0("Unterminated string");
    }

    public java.lang.String P() throws java.io.IOException {
        java.lang.String str;
        int i5 = this.f6854h;
        if (i5 == 0) {
            i5 = i();
        }
        if (i5 == 10) {
            str = R();
        } else if (i5 == 8) {
            str = M('\'');
        } else if (i5 == 9) {
            str = M('\"');
        } else if (i5 == 11) {
            str = this.f6857p;
            this.f6857p = null;
        } else if (i5 == 15) {
            str = java.lang.Long.toString(this.f6855i);
        } else {
            if (i5 != 16) {
                throw new java.lang.IllegalStateException("Expected a string but was " + V() + " at line " + q() + " column " + o() + " path " + q0());
            }
            str = new java.lang.String(this.f6849c, this.f6850d, this.f6856o);
            this.f6850d += this.f6856o;
        }
        this.f6854h = 0;
        int[] iArr = this.f6861t;
        int i6 = this.f6859r - 1;
        iArr[i6] = iArr[i6] + 1;
        return str;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0044. Please report as an issue. */
    public final java.lang.String R() throws java.io.IOException {
        java.lang.String string;
        int i5 = 0;
        java.lang.StringBuilder sb = null;
        while (true) {
            int i6 = 0;
            while (true) {
                int i7 = this.f6850d;
                if (i7 + i6 < this.f6851e) {
                    char c5 = this.f6849c[i7 + i6];
                    if (c5 != '\t' && c5 != '\n' && c5 != '\f' && c5 != '\r' && c5 != ' ') {
                        if (c5 != '#') {
                            if (c5 != ',') {
                                if (c5 != '/' && c5 != '=') {
                                    if (c5 != '{' && c5 != '}' && c5 != ':') {
                                        if (c5 != ';') {
                                            switch (c5) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i6++;
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        f();
                    }
                    i5 = i6;
                } else if (i6 >= this.f6849c.length) {
                    if (sb == null) {
                        sb = new java.lang.StringBuilder();
                    }
                    sb.append(this.f6849c, this.f6850d, i6);
                    this.f6850d += i6;
                    if (!n(1)) {
                    }
                } else if (!n(i6 + 1)) {
                    i5 = i6;
                }
                if (sb == null) {
                    string = new java.lang.String(this.f6849c, this.f6850d, i5);
                } else {
                    sb.append(this.f6849c, this.f6850d, i5);
                    string = sb.toString();
                }
                this.f6850d += i5;
                return string;
            }
        }
    }

    public y2.b V() throws java.io.IOException {
        int i5 = this.f6854h;
        if (i5 == 0) {
            i5 = i();
        }
        switch (i5) {
            case 1:
                return y2.b.BEGIN_OBJECT;
            case 2:
                return y2.b.END_OBJECT;
            case 3:
                return y2.b.BEGIN_ARRAY;
            case 4:
                return y2.b.END_ARRAY;
            case 5:
            case 6:
                return y2.b.BOOLEAN;
            case 7:
                return y2.b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return y2.b.STRING;
            case 12:
            case 13:
            case 14:
                return y2.b.NAME;
            case 15:
            case 16:
                return y2.b.NUMBER;
            case 17:
                return y2.b.END_DOCUMENT;
            default:
                throw new java.lang.AssertionError();
        }
    }

    public final int X() throws java.io.IOException {
        int i5;
        java.lang.String str;
        java.lang.String str2;
        char c5 = this.f6849c[this.f6850d];
        if (c5 == 't' || c5 == 'T') {
            i5 = 5;
            str = "true";
            str2 = "TRUE";
        } else if (c5 == 'f' || c5 == 'F') {
            i5 = 6;
            str = "false";
            str2 = "FALSE";
        } else {
            if (c5 != 'n' && c5 != 'N') {
                return 0;
            }
            i5 = 7;
            str = "null";
            str2 = "NULL";
        }
        int length = str.length();
        for (int i6 = 1; i6 < length; i6++) {
            if (this.f6850d + i6 >= this.f6851e && !n(i6 + 1)) {
                return 0;
            }
            char c6 = this.f6849c[this.f6850d + i6];
            if (c6 != str.charAt(i6) && c6 != str2.charAt(i6)) {
                return 0;
            }
        }
        if ((this.f6850d + length < this.f6851e || n(length + 1)) && u(this.f6849c[this.f6850d + length])) {
            return 0;
        }
        this.f6850d += length;
        this.f6854h = i5;
        return i5;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x00f2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    /* JADX WARN: Code duplicated, block: B:87:0x00db  */
    /* JADX WARN: Code duplicated, block: B:89:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:94:0x00e7  */
    public final int Y() throws java.io.IOException {
        char c5;
        char c6;
        char[] cArr = this.f6849c;
        int i5 = this.f6850d;
        int i6 = this.f6851e;
        int i7 = 0;
        boolean z4 = true;
        int i8 = 0;
        char c7 = 0;
        boolean z5 = false;
        long j5 = 0;
        while (true) {
            if (i5 + i8 != i6) {
                c5 = cArr[i5 + i8];
                c6 = 3;
                if (c5 != '+') {
                    if (c5 != 'E' || c5 == 'e') {
                        i7 = 0;
                        if (c7 == 2 && c7 != 4) {
                            return 0;
                        }
                        c7 = 5;
                    } else if (c5 == '-') {
                        c6 = 6;
                        i7 = 0;
                        if (c7 == 0) {
                            c7 = 1;
                            z5 = true;
                        } else if (c7 != 5) {
                            return 0;
                        }
                    } else if (c5 == '.') {
                        i7 = 0;
                        if (c7 != 2) {
                            return 0;
                        }
                    } else {
                        if (c5 < '0' || c5 > '9') {
                            if (!u(c5)) {
                                break;
                            }
                            return 0;
                        }
                        if (c7 == 1 || c7 == 0) {
                            j5 = -(c5 - '0');
                            c7 = 2;
                        } else if (c7 == 2) {
                            if (j5 == 0) {
                                return 0;
                            }
                            long j6 = (10 * j5) - ((long) (c5 - '0'));
                            z4 &= j5 > com.alibaba.fastjson.parser.JSONLexerBase.MULTMIN_RADIX_TEN || (j5 == com.alibaba.fastjson.parser.JSONLexerBase.MULTMIN_RADIX_TEN && j6 < j5);
                            j5 = j6;
                        } else if (c7 == 3) {
                            i7 = 0;
                            c7 = 4;
                        } else if (c7 == 5 || c7 == 6) {
                            i7 = 0;
                            c7 = 7;
                        }
                        i7 = 0;
                    }
                    i8++;
                } else {
                    c6 = 6;
                    i7 = 0;
                    if (c7 != 5) {
                        return 0;
                    }
                }
                c7 = c6;
                i8++;
            } else {
                if (i8 == cArr.length) {
                    return i7;
                }
                if (!n(i8 + 1)) {
                    break;
                }
                i5 = this.f6850d;
                i6 = this.f6851e;
                c5 = cArr[i5 + i8];
                c6 = 3;
                if (c5 != '+') {
                    if (c5 != 'E') {
                        i7 = 0;
                        if (c7 == 2) {
                        }
                        c7 = 5;
                    } else {
                        i7 = 0;
                        if (c7 == 2) {
                        }
                        c7 = 5;
                    }
                    i8++;
                } else {
                    c6 = 6;
                    i7 = 0;
                    if (c7 != 5) {
                        return 0;
                    }
                }
                c7 = c6;
                i8++;
            }
        }
        if (c7 == 2 && z4 && (j5 != Long.MIN_VALUE || z5)) {
            if (!z5) {
                j5 = -j5;
            }
            this.f6855i = j5;
            this.f6850d += i8;
            this.f6854h = 15;
            return 15;
        }
        if (c7 != 2 && c7 != 4 && c7 != 7) {
            return 0;
        }
        this.f6856o = i8;
        this.f6854h = 16;
        return 16;
    }

    public final void Z(int i5) {
        int i6 = this.f6859r;
        int[] iArr = this.f6858q;
        if (i6 == iArr.length) {
            int[] iArr2 = new int[i6 * 2];
            int[] iArr3 = new int[i6 * 2];
            java.lang.String[] strArr = new java.lang.String[i6 * 2];
            java.lang.System.arraycopy(iArr, 0, iArr2, 0, i6);
            java.lang.System.arraycopy(this.f6861t, 0, iArr3, 0, this.f6859r);
            java.lang.System.arraycopy(this.f6860s, 0, strArr, 0, this.f6859r);
            this.f6858q = iArr2;
            this.f6861t = iArr3;
            this.f6860s = strArr;
        }
        int[] iArr4 = this.f6858q;
        int i7 = this.f6859r;
        this.f6859r = i7 + 1;
        iArr4[i7] = i5;
    }

    public final char b0() throws java.io.IOException {
        int i5;
        int i6;
        if (this.f6850d == this.f6851e && !n(1)) {
            throw r0("Unterminated escape sequence");
        }
        char[] cArr = this.f6849c;
        int i7 = this.f6850d;
        int i8 = i7 + 1;
        this.f6850d = i8;
        char c5 = cArr[i7];
        if (c5 == '\n') {
            this.f6852f++;
            this.f6853g = i8;
        } else {
            if (c5 == 'b') {
                return '\b';
            }
            if (c5 == 'f') {
                return '\f';
            }
            if (c5 == 'n') {
                return '\n';
            }
            if (c5 == 'r') {
                return '\r';
            }
            if (c5 == 't') {
                return '\t';
            }
            if (c5 == 'u') {
                if (i8 + 4 > this.f6851e && !n(4)) {
                    throw r0("Unterminated escape sequence");
                }
                char c6 = 0;
                int i9 = this.f6850d;
                int i10 = i9 + 4;
                while (i9 < i10) {
                    char c7 = this.f6849c[i9];
                    char c8 = (char) (c6 << 4);
                    if (c7 < '0' || c7 > '9') {
                        if (c7 >= 'a' && c7 <= 'f') {
                            i5 = c7 - 'a';
                        } else {
                            if (c7 < 'A' || c7 > 'F') {
                                throw new java.lang.NumberFormatException("\\u" + new java.lang.String(this.f6849c, this.f6850d, 4));
                            }
                            i5 = c7 - 'A';
                        }
                        i6 = i5 + 10;
                    } else {
                        i6 = c7 - '0';
                    }
                    c6 = (char) (c8 + i6);
                    i9++;
                }
                this.f6850d += 4;
                return c6;
            }
        }
        return c5;
    }

    public void c() throws java.io.IOException {
        int i5 = this.f6854h;
        if (i5 == 0) {
            i5 = i();
        }
        if (i5 == 3) {
            Z(1);
            this.f6861t[this.f6859r - 1] = 0;
            this.f6854h = 0;
            return;
        }
        throw new java.lang.IllegalStateException("Expected BEGIN_ARRAY but was " + V() + " at line " + q() + " column " + o() + " path " + q0());
    }

    public final void c0(boolean z4) {
        this.f6848b = z4;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        this.f6854h = 0;
        this.f6858q[0] = 8;
        this.f6859r = 1;
        this.f6847a.close();
    }

    public void e() throws java.io.IOException {
        int i5 = this.f6854h;
        if (i5 == 0) {
            i5 = i();
        }
        if (i5 == 1) {
            Z(3);
            this.f6854h = 0;
            return;
        }
        throw new java.lang.IllegalStateException("Expected BEGIN_OBJECT but was " + V() + " at line " + q() + " column " + o() + " path " + q0());
    }

    public final void f() throws java.io.IOException {
        if (!this.f6848b) {
            throw r0("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    public final void h() throws java.io.IOException {
        I(true);
        int i5 = this.f6850d - 1;
        this.f6850d = i5;
        char[] cArr = f6846u;
        if (i5 + cArr.length > this.f6851e && !n(cArr.length)) {
            return;
        }
        int i6 = 0;
        while (true) {
            char[] cArr2 = f6846u;
            if (i6 >= cArr2.length) {
                this.f6850d += cArr2.length;
                return;
            } else if (this.f6849c[this.f6850d + i6] != cArr2[i6]) {
                return;
            } else {
                i6++;
            }
        }
    }

    public final void h0(char c5) throws java.io.IOException {
        char[] cArr = this.f6849c;
        do {
            int i5 = this.f6850d;
            int i6 = this.f6851e;
            while (i5 < i6) {
                int i7 = i5 + 1;
                char c6 = cArr[i5];
                if (c6 == c5) {
                    this.f6850d = i7;
                    return;
                }
                if (c6 == '\\') {
                    this.f6850d = i7;
                    b0();
                    i5 = this.f6850d;
                    i6 = this.f6851e;
                } else {
                    if (c6 == '\n') {
                        this.f6852f++;
                        this.f6853g = i7;
                    }
                    i5 = i7;
                }
            }
            this.f6850d = i5;
        } while (n(1));
        throw r0("Unterminated string");
    }

    public int i() throws java.io.IOException {
        int I;
        int[] iArr = this.f6858q;
        int i5 = this.f6859r;
        int i6 = iArr[i5 - 1];
        if (i6 == 1) {
            iArr[i5 - 1] = 2;
        } else if (i6 == 2) {
            int I2 = I(true);
            if (I2 != 44) {
                if (I2 != 59) {
                    if (I2 != 93) {
                        throw r0("Unterminated array");
                    }
                    this.f6854h = 4;
                    return 4;
                }
                f();
            }
        } else {
            if (i6 == 3 || i6 == 5) {
                iArr[i5 - 1] = 4;
                if (i6 == 5 && (I = I(true)) != 44) {
                    if (I != 59) {
                        if (I != 125) {
                            throw r0("Unterminated object");
                        }
                        this.f6854h = 2;
                        return 2;
                    }
                    f();
                }
                int I3 = I(true);
                if (I3 == 34) {
                    this.f6854h = 13;
                    return 13;
                }
                if (I3 == 39) {
                    f();
                    this.f6854h = 12;
                    return 12;
                }
                if (I3 == 125) {
                    if (i6 == 5) {
                        throw r0("Expected name");
                    }
                    this.f6854h = 2;
                    return 2;
                }
                f();
                this.f6850d--;
                if (!u((char) I3)) {
                    throw r0("Expected name");
                }
                this.f6854h = 14;
                return 14;
            }
            if (i6 == 4) {
                iArr[i5 - 1] = 5;
                int I4 = I(true);
                if (I4 != 58) {
                    if (I4 != 61) {
                        throw r0("Expected ':'");
                    }
                    f();
                    if (this.f6850d < this.f6851e || n(1)) {
                        char[] cArr = this.f6849c;
                        int i7 = this.f6850d;
                        if (cArr[i7] == '>') {
                            this.f6850d = i7 + 1;
                        }
                    }
                }
            } else if (i6 == 6) {
                if (this.f6848b) {
                    h();
                }
                this.f6858q[this.f6859r - 1] = 7;
            } else if (i6 == 7) {
                if (I(false) == -1) {
                    this.f6854h = 17;
                    return 17;
                }
                f();
                this.f6850d--;
            } else if (i6 == 8) {
                throw new java.lang.IllegalStateException("JsonReader is closed");
            }
        }
        int I5 = I(true);
        if (I5 == 34) {
            this.f6854h = 9;
            return 9;
        }
        if (I5 == 39) {
            f();
            this.f6854h = 8;
            return 8;
        }
        if (I5 != 44 && I5 != 59) {
            if (I5 == 91) {
                this.f6854h = 3;
                return 3;
            }
            if (I5 != 93) {
                if (I5 == 123) {
                    this.f6854h = 1;
                    return 1;
                }
                this.f6850d--;
                int iX = X();
                if (iX != 0) {
                    return iX;
                }
                int iY = Y();
                if (iY != 0) {
                    return iY;
                }
                if (!u(this.f6849c[this.f6850d])) {
                    throw r0("Expected value");
                }
                f();
                this.f6854h = 10;
                return 10;
            }
            if (i6 == 1) {
                this.f6854h = 4;
                return 4;
            }
        }
        if (i6 != 1 && i6 != 2) {
            throw r0("Unexpected value");
        }
        f();
        this.f6850d--;
        this.f6854h = 7;
        return 7;
    }

    public final boolean i0(java.lang.String str) throws java.io.IOException {
        while (true) {
            if (this.f6850d + str.length() > this.f6851e && !n(str.length())) {
                return false;
            }
            char[] cArr = this.f6849c;
            int i5 = this.f6850d;
            if (cArr[i5] != '\n') {
                for (int i6 = 0; i6 < str.length(); i6++) {
                    if (this.f6849c[this.f6850d + i6] == str.charAt(i6)) {
                    }
                }
                return true;
            }
            this.f6852f++;
            this.f6853g = i5 + 1;
            this.f6850d++;
        }
    }

    public void j() throws java.io.IOException {
        int i5 = this.f6854h;
        if (i5 == 0) {
            i5 = i();
        }
        if (i5 == 4) {
            int i6 = this.f6859r - 1;
            this.f6859r = i6;
            int[] iArr = this.f6861t;
            int i7 = i6 - 1;
            iArr[i7] = iArr[i7] + 1;
            this.f6854h = 0;
            return;
        }
        throw new java.lang.IllegalStateException("Expected END_ARRAY but was " + V() + " at line " + q() + " column " + o() + " path " + q0());
    }

    public final void j0() throws java.io.IOException {
        char c5;
        do {
            if (this.f6850d >= this.f6851e && !n(1)) {
                return;
            }
            char[] cArr = this.f6849c;
            int i5 = this.f6850d;
            int i6 = i5 + 1;
            this.f6850d = i6;
            c5 = cArr[i5];
            if (c5 == '\n') {
                this.f6852f++;
                this.f6853g = i6;
                return;
            }
        } while (c5 != '\r');
    }

    public final void k0() throws java.io.IOException {
        do {
            int i5 = 0;
            while (true) {
                int i6 = this.f6850d;
                if (i6 + i5 < this.f6851e) {
                    char c5 = this.f6849c[i6 + i5];
                    if (c5 != '\t' && c5 != '\n' && c5 != '\f' && c5 != '\r' && c5 != ' ') {
                        if (c5 != '#') {
                            if (c5 != ',') {
                                if (c5 != '/' && c5 != '=') {
                                    if (c5 != '{' && c5 != '}' && c5 != ':') {
                                        if (c5 != ';') {
                                            switch (c5) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i5++;
                                                    break;
                                            }
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                        f();
                    }
                    this.f6850d += i5;
                    return;
                }
                this.f6850d = i6 + i5;
            }
        } while (n(1));
    }

    public void l() throws java.io.IOException {
        int i5 = this.f6854h;
        if (i5 == 0) {
            i5 = i();
        }
        if (i5 == 2) {
            int i6 = this.f6859r - 1;
            this.f6859r = i6;
            this.f6860s[i6] = null;
            int[] iArr = this.f6861t;
            int i7 = i6 - 1;
            iArr[i7] = iArr[i7] + 1;
            this.f6854h = 0;
            return;
        }
        throw new java.lang.IllegalStateException("Expected END_OBJECT but was " + V() + " at line " + q() + " column " + o() + " path " + q0());
    }

    public void m0() throws java.io.IOException {
        int i5 = 0;
        do {
            int i6 = this.f6854h;
            if (i6 == 0) {
                i6 = i();
            }
            if (i6 == 3) {
                Z(1);
            } else {
                if (i6 == 1) {
                    Z(3);
                } else if (i6 == 4 || i6 == 2) {
                    this.f6859r--;
                    i5--;
                } else if (i6 == 14 || i6 == 10) {
                    k0();
                } else if (i6 == 8 || i6 == 12) {
                    h0('\'');
                } else if (i6 == 9 || i6 == 13) {
                    h0('\"');
                } else if (i6 == 16) {
                    this.f6850d += this.f6856o;
                }
                this.f6854h = 0;
            }
            i5++;
            this.f6854h = 0;
        } while (i5 != 0);
        int[] iArr = this.f6861t;
        int i7 = this.f6859r;
        int i8 = i7 - 1;
        iArr[i8] = iArr[i8] + 1;
        this.f6860s[i7 - 1] = "null";
    }

    public final boolean n(int i5) throws java.io.IOException {
        int i6;
        int i7;
        char[] cArr = this.f6849c;
        int i8 = this.f6853g;
        int i9 = this.f6850d;
        this.f6853g = i8 - i9;
        int i10 = this.f6851e;
        if (i10 != i9) {
            int i11 = i10 - i9;
            this.f6851e = i11;
            java.lang.System.arraycopy(cArr, i9, cArr, 0, i11);
        } else {
            this.f6851e = 0;
        }
        this.f6850d = 0;
        do {
            java.io.Reader reader = this.f6847a;
            int i12 = this.f6851e;
            int i13 = reader.read(cArr, i12, cArr.length - i12);
            if (i13 == -1) {
                return false;
            }
            i6 = this.f6851e + i13;
            this.f6851e = i6;
            if (this.f6852f == 0 && (i7 = this.f6853g) == 0 && i6 > 0 && cArr[0] == 65279) {
                this.f6850d++;
                this.f6853g = i7 + 1;
                i5++;
            }
        } while (i6 < i5);
        return true;
    }

    public int o() {
        return (this.f6850d - this.f6853g) + 1;
    }

    public int q() {
        return this.f6852f + 1;
    }

    public java.lang.String q0() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append('$');
        int i5 = this.f6859r;
        for (int i6 = 0; i6 < i5; i6++) {
            int i7 = this.f6858q[i6];
            if (i7 == 1 || i7 == 2) {
                sb.append('[');
                sb.append(this.f6861t[i6]);
                sb.append(']');
            } else if (i7 == 3 || i7 == 4 || i7 == 5) {
                sb.append('.');
                java.lang.String[] strArr = this.f6860s;
                if (strArr[i6] != null) {
                    sb.append(strArr[i6]);
                }
            }
        }
        return sb.toString();
    }

    public boolean r() throws java.io.IOException {
        int i5 = this.f6854h;
        if (i5 == 0) {
            i5 = i();
        }
        return (i5 == 2 || i5 == 4) ? false : true;
    }

    public final java.io.IOException r0(java.lang.String str) throws java.io.IOException {
        throw new y2.d(str + " at line " + q() + " column " + o() + " path " + q0());
    }

    public final boolean s() {
        return this.f6848b;
    }

    public java.lang.String toString() {
        return getClass().getSimpleName() + " at line " + q() + " column " + o();
    }

    public final boolean u(char c5) throws java.io.IOException {
        if (c5 == '\t' || c5 == '\n' || c5 == '\f' || c5 == '\r' || c5 == ' ') {
            return false;
        }
        if (c5 != '#') {
            if (c5 == ',') {
                return false;
            }
            if (c5 != '/' && c5 != '=') {
                if (c5 == '{' || c5 == '}' || c5 == ':') {
                    return false;
                }
                if (c5 != ';') {
                    switch (c5) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        f();
        return false;
    }

    public boolean x() throws java.io.IOException {
        int i5 = this.f6854h;
        if (i5 == 0) {
            i5 = i();
        }
        if (i5 == 5) {
            this.f6854h = 0;
            int[] iArr = this.f6861t;
            int i6 = this.f6859r - 1;
            iArr[i6] = iArr[i6] + 1;
            return true;
        }
        if (i5 == 6) {
            this.f6854h = 0;
            int[] iArr2 = this.f6861t;
            int i7 = this.f6859r - 1;
            iArr2[i7] = iArr2[i7] + 1;
            return false;
        }
        throw new java.lang.IllegalStateException("Expected a boolean but was " + V() + " at line " + q() + " column " + o() + " path " + q0());
    }

    public double y() throws java.io.IOException {
        int i5 = this.f6854h;
        if (i5 == 0) {
            i5 = i();
        }
        if (i5 == 15) {
            this.f6854h = 0;
            int[] iArr = this.f6861t;
            int i6 = this.f6859r - 1;
            iArr[i6] = iArr[i6] + 1;
            return this.f6855i;
        }
        if (i5 == 16) {
            this.f6857p = new java.lang.String(this.f6849c, this.f6850d, this.f6856o);
            this.f6850d += this.f6856o;
        } else if (i5 == 8 || i5 == 9) {
            this.f6857p = M(i5 == 8 ? '\'' : '\"');
        } else if (i5 == 10) {
            this.f6857p = R();
        } else if (i5 != 11) {
            throw new java.lang.IllegalStateException("Expected a double but was " + V() + " at line " + q() + " column " + o() + " path " + q0());
        }
        this.f6854h = 11;
        double d5 = java.lang.Double.parseDouble(this.f6857p);
        if (this.f6848b || !(java.lang.Double.isNaN(d5) || java.lang.Double.isInfinite(d5))) {
            this.f6857p = null;
            this.f6854h = 0;
            int[] iArr2 = this.f6861t;
            int i7 = this.f6859r - 1;
            iArr2[i7] = iArr2[i7] + 1;
            return d5;
        }
        throw new y2.d("JSON forbids NaN and infinities: " + d5 + " at line " + q() + " column " + o() + " path " + q0());
    }

    public int z() throws java.io.IOException {
        int i5 = this.f6854h;
        if (i5 == 0) {
            i5 = i();
        }
        if (i5 == 15) {
            long j5 = this.f6855i;
            int i6 = (int) j5;
            if (j5 == i6) {
                this.f6854h = 0;
                int[] iArr = this.f6861t;
                int i7 = this.f6859r - 1;
                iArr[i7] = iArr[i7] + 1;
                return i6;
            }
            throw new java.lang.NumberFormatException("Expected an int but was " + this.f6855i + " at line " + q() + " column " + o() + " path " + q0());
        }
        if (i5 == 16) {
            this.f6857p = new java.lang.String(this.f6849c, this.f6850d, this.f6856o);
            this.f6850d += this.f6856o;
        } else {
            if (i5 != 8 && i5 != 9) {
                throw new java.lang.IllegalStateException("Expected an int but was " + V() + " at line " + q() + " column " + o() + " path " + q0());
            }
            java.lang.String strM = M(i5 == 8 ? '\'' : '\"');
            this.f6857p = strM;
            try {
                int i8 = java.lang.Integer.parseInt(strM);
                this.f6854h = 0;
                int[] iArr2 = this.f6861t;
                int i9 = this.f6859r - 1;
                iArr2[i9] = iArr2[i9] + 1;
                return i8;
            } catch (java.lang.NumberFormatException unused) {
            }
        }
        this.f6854h = 11;
        double d5 = java.lang.Double.parseDouble(this.f6857p);
        int i10 = (int) d5;
        if (i10 == d5) {
            this.f6857p = null;
            this.f6854h = 0;
            int[] iArr3 = this.f6861t;
            int i11 = this.f6859r - 1;
            iArr3[i11] = iArr3[i11] + 1;
            return i10;
        }
        throw new java.lang.NumberFormatException("Expected an int but was " + this.f6857p + " at line " + q() + " column " + o() + " path " + q0());
    }
}
