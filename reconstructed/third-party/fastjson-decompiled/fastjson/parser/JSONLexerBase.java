package com.alibaba.fastjson.parser;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class JSONLexerBase implements com.alibaba.fastjson.parser.JSONLexer, java.io.Closeable {
    public static final int INT_MULTMIN_RADIX_TEN = -214748364;
    public static final long MULTMIN_RADIX_TEN = -922337203685477580L;
    public int bp;
    public char ch;
    public int eofPos;
    public int features;
    public boolean hasSpecial;
    public int np;
    public int pos;
    public char[] sbuf;
    public int sp;
    public java.lang.String stringDefaultValue;
    public int token;
    private static final java.lang.ThreadLocal<char[]> SBUF_LOCAL = new java.lang.ThreadLocal<>();
    public static final char[] typeFieldName = ("\"" + com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY + "\":\"").toCharArray();
    public static final int[] digits = new int[103];
    public java.util.Calendar calendar = null;
    public java.util.TimeZone timeZone = com.alibaba.fastjson.JSON.defaultTimeZone;
    public java.util.Locale locale = com.alibaba.fastjson.JSON.defaultLocale;
    public int matchStat = 0;
    public int nanos = 0;

    static {
        for (int i5 = 48; i5 <= 57; i5++) {
            digits[i5] = i5 - 48;
        }
        for (int i6 = 97; i6 <= 102; i6++) {
            digits[i6] = (i6 - 97) + 10;
        }
        for (int i7 = 65; i7 <= 70; i7++) {
            digits[i7] = (i7 - 65) + 10;
        }
    }

    public JSONLexerBase(int i5) {
        this.stringDefaultValue = null;
        this.features = i5;
        if ((i5 & com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.stringDefaultValue = "";
        }
        char[] cArr = SBUF_LOCAL.get();
        this.sbuf = cArr;
        if (cArr == null) {
            this.sbuf = new char[512];
        }
    }

    public static boolean isWhitespace(char c5) {
        return c5 <= ' ' && (c5 == ' ' || c5 == '\n' || c5 == '\r' || c5 == '\t' || c5 == '\f' || c5 == '\b');
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00e8  */
    public static java.lang.String readString(char[] cArr, int i5) {
        int i6;
        char[] cArr2 = new char[i5];
        int i7 = 0;
        int i8 = 0;
        while (i7 < i5) {
            char c5 = cArr[i7];
            if (c5 != '\\') {
                cArr2[i8] = c5;
                i8++;
            } else {
                i7++;
                char c6 = cArr[i7];
                if (c6 == '\"') {
                    i6 = i8 + 1;
                    cArr2[i8] = '\"';
                } else if (c6 == '\'') {
                    i6 = i8 + 1;
                    cArr2[i8] = '\'';
                } else if (c6 == 'F') {
                    i6 = i8 + 1;
                    cArr2[i8] = '\f';
                } else if (c6 == '\\') {
                    i6 = i8 + 1;
                    cArr2[i8] = '\\';
                } else if (c6 == 'b') {
                    i6 = i8 + 1;
                    cArr2[i8] = '\b';
                } else if (c6 == 'f') {
                    i6 = i8 + 1;
                    cArr2[i8] = '\f';
                } else if (c6 == 'n') {
                    i6 = i8 + 1;
                    cArr2[i8] = '\n';
                } else if (c6 == 'r') {
                    i6 = i8 + 1;
                    cArr2[i8] = '\r';
                } else if (c6 != 'x') {
                    switch (c6) {
                        case '/':
                            i6 = i8 + 1;
                            cArr2[i8] = '/';
                            break;
                        case '0':
                            i6 = i8 + 1;
                            cArr2[i8] = 0;
                            break;
                        case '1':
                            i6 = i8 + 1;
                            cArr2[i8] = 1;
                            break;
                        case '2':
                            i6 = i8 + 1;
                            cArr2[i8] = 2;
                            break;
                        case '3':
                            i6 = i8 + 1;
                            cArr2[i8] = 3;
                            break;
                        case '4':
                            i6 = i8 + 1;
                            cArr2[i8] = 4;
                            break;
                        case '5':
                            i6 = i8 + 1;
                            cArr2[i8] = 5;
                            break;
                        case '6':
                            i6 = i8 + 1;
                            cArr2[i8] = 6;
                            break;
                        case '7':
                            i6 = i8 + 1;
                            cArr2[i8] = 7;
                            break;
                        default:
                            switch (c6) {
                                case 't':
                                    i6 = i8 + 1;
                                    cArr2[i8] = '\t';
                                    break;
                                case 'u':
                                    i6 = i8 + 1;
                                    int i9 = i7 + 1;
                                    int i10 = i9 + 1;
                                    int i11 = i10 + 1;
                                    i7 = i11 + 1;
                                    cArr2[i8] = (char) java.lang.Integer.parseInt(new java.lang.String(new char[]{cArr[i9], cArr[i10], cArr[i11], cArr[i7]}), 16);
                                    break;
                                case 'v':
                                    i6 = i8 + 1;
                                    cArr2[i8] = 11;
                                    break;
                                default:
                                    throw new com.alibaba.fastjson.JSONException("unclosed.str.lit");
                            }
                            break;
                    }
                } else {
                    i6 = i8 + 1;
                    int[] iArr = digits;
                    int i12 = i7 + 1;
                    int i13 = iArr[cArr[i12]] * 16;
                    i7 = i12 + 1;
                    cArr2[i8] = (char) (i13 + iArr[cArr[i7]]);
                }
                i8 = i6;
            }
            i7++;
        }
        return new java.lang.String(cArr2, 0, i8);
    }

    private void scanStringSingleQuote() {
        this.np = this.bp;
        this.hasSpecial = false;
        while (true) {
            char next = next();
            if (next == '\'') {
                this.token = 4;
                next();
                return;
            }
            if (next != 26) {
                boolean z4 = true;
                if (next == '\\') {
                    if (!this.hasSpecial) {
                        this.hasSpecial = true;
                        int i5 = this.sp;
                        char[] cArr = this.sbuf;
                        if (i5 > cArr.length) {
                            char[] cArr2 = new char[i5 * 2];
                            java.lang.System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                            this.sbuf = cArr2;
                        }
                        copyTo(this.np + 1, this.sp, this.sbuf);
                    }
                    char next2 = next();
                    if (next2 == '\"') {
                        putChar('\"');
                    } else if (next2 != '\'') {
                        if (next2 != 'F') {
                            if (next2 == '\\') {
                                putChar('\\');
                            } else if (next2 == 'b') {
                                putChar('\b');
                            } else if (next2 != 'f') {
                                if (next2 == 'n') {
                                    putChar('\n');
                                } else if (next2 == 'r') {
                                    putChar('\r');
                                } else if (next2 != 'x') {
                                    switch (next2) {
                                        case '/':
                                            putChar('/');
                                            break;
                                        case '0':
                                            putChar((char) 0);
                                            break;
                                        case '1':
                                            putChar((char) 1);
                                            break;
                                        case '2':
                                            putChar((char) 2);
                                            break;
                                        case '3':
                                            putChar((char) 3);
                                            break;
                                        case '4':
                                            putChar((char) 4);
                                            break;
                                        case '5':
                                            putChar((char) 5);
                                            break;
                                        case '6':
                                            putChar((char) 6);
                                            break;
                                        case '7':
                                            putChar((char) 7);
                                            break;
                                        default:
                                            switch (next2) {
                                                case 't':
                                                    putChar('\t');
                                                    break;
                                                case 'u':
                                                    putChar((char) java.lang.Integer.parseInt(new java.lang.String(new char[]{next(), next(), next(), next()}), 16));
                                                    break;
                                                case 'v':
                                                    putChar((char) 11);
                                                    break;
                                                default:
                                                    this.ch = next2;
                                                    throw new com.alibaba.fastjson.JSONException("unclosed single-quote string");
                                            }
                                            break;
                                    }
                                } else {
                                    char next3 = next();
                                    char next4 = next();
                                    boolean z5 = (next3 >= '0' && next3 <= '9') || (next3 >= 'a' && next3 <= 'f') || (next3 >= 'A' && next3 <= 'F');
                                    if ((next4 < '0' || next4 > '9') && ((next4 < 'a' || next4 > 'f') && (next4 < 'A' || next4 > 'F'))) {
                                        z4 = false;
                                    }
                                    if (!z5 || !z4) {
                                        throw new com.alibaba.fastjson.JSONException("invalid escape character \\x" + next3 + next4);
                                    }
                                    int[] iArr = digits;
                                    putChar((char) ((iArr[next3] * 16) + iArr[next4]));
                                }
                            }
                        }
                        putChar('\f');
                    } else {
                        putChar('\'');
                    }
                } else if (this.hasSpecial) {
                    int i6 = this.sp;
                    char[] cArr3 = this.sbuf;
                    if (i6 == cArr3.length) {
                        putChar(next);
                    } else {
                        this.sp = i6 + 1;
                        cArr3[i6] = next;
                    }
                } else {
                    this.sp++;
                }
            } else {
                if (isEOF()) {
                    throw new com.alibaba.fastjson.JSONException("unclosed single-quote string");
                }
                putChar(com.alibaba.fastjson.parser.JSONLexer.EOI);
            }
        }
    }

    public abstract java.lang.String addSymbol(int i5, int i6, int i7, com.alibaba.fastjson.parser.SymbolTable symbolTable);

    public abstract void arrayCopy(int i5, char[] cArr, int i6, int i7);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract byte[] bytesValue();

    public abstract boolean charArrayCompare(char[] cArr);

    public abstract char charAt(int i5);

    @Override // com.alibaba.fastjson.parser.JSONLexer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        char[] cArr = this.sbuf;
        if (cArr.length <= 8192) {
            SBUF_LOCAL.set(cArr);
        }
        this.sbuf = null;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void config(com.alibaba.fastjson.parser.Feature feature, boolean z4) {
        int iConfig = com.alibaba.fastjson.parser.Feature.config(this.features, feature, z4);
        this.features = iConfig;
        if ((iConfig & com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.stringDefaultValue = "";
        }
    }

    public abstract void copyTo(int i5, int i6, char[] cArr);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.Number decimalValue(boolean z4) {
        char cCharAt = charAt((this.np + this.sp) - 1);
        try {
            if (cCharAt == 'F') {
                return java.lang.Float.valueOf(java.lang.Float.parseFloat(numberString()));
            }
            if (cCharAt == 'D') {
                return java.lang.Double.valueOf(java.lang.Double.parseDouble(numberString()));
            }
            return z4 ? decimalValue() : java.lang.Double.valueOf(doubleValue());
        } catch (java.lang.NumberFormatException e5) {
            throw new com.alibaba.fastjson.JSONException(e5.getMessage() + ", " + info());
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract java.math.BigDecimal decimalValue();

    public double doubleValue() {
        return java.lang.Double.parseDouble(numberString());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public float floatValue() {
        char cCharAt;
        java.lang.String strNumberString = numberString();
        float f5 = java.lang.Float.parseFloat(strNumberString);
        if ((f5 != 0.0f && f5 != Float.POSITIVE_INFINITY) || (cCharAt = strNumberString.charAt(0)) <= '0' || cCharAt > '9') {
            return f5;
        }
        throw new com.alibaba.fastjson.JSONException("float overflow : " + strNumberString);
    }

    public java.util.Calendar getCalendar() {
        return this.calendar;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final char getCurrent() {
        return this.ch;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public int getFeatures() {
        return this.features;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public java.util.Locale getLocale() {
        return this.locale;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public java.util.TimeZone getTimeZone() {
        return this.timeZone;
    }

    public abstract int indexOf(char c5, int i5);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public java.lang.String info() {
        return "";
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int intValue() {
        int i5;
        boolean z4;
        int i6 = 0;
        if (this.np == -1) {
            this.np = 0;
        }
        int i7 = this.np;
        int i8 = this.sp + i7;
        if (charAt(i7) == '-') {
            i5 = Integer.MIN_VALUE;
            i7++;
            z4 = true;
        } else {
            i5 = -2147483647;
            z4 = false;
        }
        if (i7 < i8) {
            i6 = -(charAt(i7) - '0');
            i7++;
        }
        while (i7 < i8) {
            int i9 = i7 + 1;
            char cCharAt = charAt(i7);
            if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B') {
                i7 = i9;
                break;
            }
            int i10 = cCharAt - '0';
            if (i6 < -214748364) {
                throw new java.lang.NumberFormatException(numberString());
            }
            int i11 = i6 * 10;
            if (i11 < i5 + i10) {
                throw new java.lang.NumberFormatException(numberString());
            }
            i6 = i11 - i10;
            i7 = i9;
        }
        if (!z4) {
            return -i6;
        }
        if (i7 > this.np + 1) {
            return i6;
        }
        throw new java.lang.NumberFormatException(numberString());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.Number integerValue() throws java.lang.NumberFormatException {
        long j5;
        long j6;
        boolean z4 = false;
        if (this.np == -1) {
            this.np = 0;
        }
        int i5 = this.np;
        int i6 = this.sp + i5;
        char c5 = ' ';
        char cCharAt = charAt(i6 - 1);
        if (cCharAt == 'B') {
            i6--;
            c5 = 'B';
        } else if (cCharAt == 'L') {
            i6--;
            c5 = 'L';
        } else if (cCharAt == 'S') {
            i6--;
            c5 = 'S';
        }
        if (charAt(this.np) == '-') {
            j5 = Long.MIN_VALUE;
            i5++;
            z4 = true;
        } else {
            j5 = -9223372036854775807L;
        }
        long j7 = MULTMIN_RADIX_TEN;
        if (i5 < i6) {
            j6 = -(charAt(i5) - '0');
            i5++;
        } else {
            j6 = 0;
        }
        while (i5 < i6) {
            int i7 = i5 + 1;
            int iCharAt = charAt(i5) - '0';
            if (j6 < j7) {
                return new java.math.BigInteger(numberString(), 10);
            }
            long j8 = j6 * 10;
            long j9 = iCharAt;
            if (j8 < j5 + j9) {
                return new java.math.BigInteger(numberString(), 10);
            }
            j6 = j8 - j9;
            i5 = i7;
            j7 = MULTMIN_RADIX_TEN;
        }
        if (!z4) {
            long j10 = -j6;
            if (j10 > 2147483647L || c5 == 'L') {
                return java.lang.Long.valueOf(j10);
            }
            if (c5 == 'S') {
                return java.lang.Short.valueOf((short) j10);
            }
            return c5 == 'B' ? java.lang.Byte.valueOf((byte) j10) : java.lang.Integer.valueOf((int) j10);
        }
        if (i5 <= this.np + 1) {
            throw new com.alibaba.fastjson.JSONException("illegal number format : " + numberString());
        }
        if (j6 < -2147483648L || c5 == 'L') {
            return java.lang.Long.valueOf(j6);
        }
        if (c5 == 'S') {
            return java.lang.Short.valueOf((short) j6);
        }
        return c5 == 'B' ? java.lang.Byte.valueOf((byte) j6) : java.lang.Integer.valueOf((int) j6);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public boolean isBlankInput() {
        int i5 = 0;
        while (true) {
            char cCharAt = charAt(i5);
            if (cCharAt == 26) {
                this.token = 20;
                return true;
            }
            if (!isWhitespace(cCharAt)) {
                return false;
            }
            i5++;
        }
    }

    public abstract boolean isEOF();

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isEnabled(com.alibaba.fastjson.parser.Feature feature) {
        return isEnabled(feature.mask);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isRef() {
        return this.sp == 4 && charAt(this.np + 1) == '$' && charAt(this.np + 2) == 'r' && charAt(this.np + 3) == 'e' && charAt(this.np + 4) == 'f';
    }

    public void lexError(java.lang.String str, java.lang.Object... objArr) {
        this.token = 1;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0038  */
    /* JADX WARN: Code duplicated, block: B:33:0x0074  */
    /* JADX WARN: Code duplicated, block: B:35:0x0079 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x007a  */
    /* JADX WARN: Code duplicated, block: B:38:0x0084  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x005b -> B:12:0x0032). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final long longValue() throws java.lang.NumberFormatException {
        long j5;
        long j6;
        int i5;
        char cCharAt;
        boolean z4 = false;
        if (this.np == -1) {
            this.np = 0;
        }
        int i6 = this.np;
        int i7 = this.sp + i6;
        if (charAt(i6) == '-') {
            j5 = Long.MIN_VALUE;
            i6++;
            z4 = true;
        } else {
            j5 = -9223372036854775807L;
        }
        if (i6 >= i7) {
            j6 = 0;
            if (i6 < i7) {
                i5 = i6 + 1;
                cCharAt = charAt(i6);
                if (cCharAt != 'L' || cCharAt == 'S' || cCharAt == 'B') {
                    i6 = i5;
                } else {
                    int i8 = cCharAt - '0';
                    if (j6 < MULTMIN_RADIX_TEN) {
                        throw new java.lang.NumberFormatException(numberString());
                    }
                    long j7 = j6 * 10;
                    long j8 = i8;
                    if (j7 < j5 + j8) {
                        throw new java.lang.NumberFormatException(numberString());
                    }
                    j6 = j7 - j8;
                }
            }
            if (z4) {
                return -j6;
            }
            if (i6 > this.np + 1) {
                return j6;
            }
            throw new java.lang.NumberFormatException(numberString());
        }
        i5 = i6 + 1;
        j6 = -(charAt(i6) - '0');
        i6 = i5;
        if (i6 < i7) {
            i5 = i6 + 1;
            cCharAt = charAt(i6);
            if (cCharAt != 'L') {
            }
            i6 = i5;
        }
        if (z4) {
            return -j6;
        }
        if (i6 > this.np + 1) {
            return j6;
        }
        throw new java.lang.NumberFormatException(numberString());
    }

    public final boolean matchField(char[] cArr) {
        while (!charArrayCompare(cArr)) {
            if (!isWhitespace(this.ch)) {
                return false;
            }
            next();
        }
        int length = this.bp + cArr.length;
        this.bp = length;
        char cCharAt = charAt(length);
        this.ch = cCharAt;
        if (cCharAt == '{') {
            next();
            this.token = 12;
        } else if (cCharAt == '[') {
            next();
            this.token = 14;
        } else if (cCharAt == 'S' && charAt(this.bp + 1) == 'e' && charAt(this.bp + 2) == 't' && charAt(this.bp + 3) == '[') {
            int i5 = this.bp + 3;
            this.bp = i5;
            this.ch = charAt(i5);
            this.token = 21;
        } else {
            nextToken();
        }
        return true;
    }

    public boolean matchField2(char[] cArr) {
        throw new java.lang.UnsupportedOperationException();
    }

    public final int matchStat() {
        return this.matchStat;
    }

    public java.util.Collection<java.lang.String> newCollectionByType(java.lang.Class<?> cls) {
        if (cls.isAssignableFrom(java.util.HashSet.class)) {
            return new java.util.HashSet();
        }
        if (cls.isAssignableFrom(java.util.ArrayList.class)) {
            return new java.util.ArrayList();
        }
        if (cls.isAssignableFrom(java.util.LinkedList.class)) {
            return new java.util.LinkedList();
        }
        try {
            return (java.util.Collection) cls.newInstance();
        } catch (java.lang.Exception e5) {
            throw new com.alibaba.fastjson.JSONException(e5.getMessage(), e5);
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract char next();

    public final void nextIdent() {
        while (isWhitespace(this.ch)) {
            next();
        }
        char c5 = this.ch;
        if (c5 == '_' || c5 == '$' || java.lang.Character.isLetter(c5)) {
            scanIdent();
        } else {
            nextToken();
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextToken() {
        this.sp = 0;
        while (true) {
            this.pos = this.bp;
            char c5 = this.ch;
            if (c5 == '/') {
                skipComment();
            } else {
                if (c5 == '\"') {
                    scanString();
                    return;
                }
                if (c5 == ',') {
                    next();
                    this.token = 16;
                    return;
                }
                if (c5 >= '0' && c5 <= '9') {
                    scanNumber();
                    return;
                }
                if (c5 == '-') {
                    scanNumber();
                    return;
                }
                switch (c5) {
                    case '\b':
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                        next();
                        break;
                    case '\'':
                        if (!isEnabled(com.alibaba.fastjson.parser.Feature.AllowSingleQuotes)) {
                            throw new com.alibaba.fastjson.JSONException("Feature.AllowSingleQuotes is false");
                        }
                        scanStringSingleQuote();
                        return;
                    case '(':
                        next();
                        this.token = 10;
                        return;
                    case ')':
                        next();
                        this.token = 11;
                        return;
                    case '+':
                        next();
                        scanNumber();
                        return;
                    case '.':
                        next();
                        this.token = 25;
                        return;
                    case ':':
                        next();
                        this.token = 17;
                        return;
                    case ';':
                        next();
                        this.token = 24;
                        return;
                    case 'N':
                    case 'S':
                    case 'T':
                    case 'u':
                        scanIdent();
                        return;
                    case '[':
                        next();
                        this.token = 14;
                        return;
                    case ']':
                        next();
                        this.token = 15;
                        return;
                    case 'f':
                        scanFalse();
                        return;
                    case 'n':
                        scanNullOrNew();
                        return;
                    case 't':
                        scanTrue();
                        return;
                    case 'x':
                        scanHex();
                        return;
                    case '{':
                        next();
                        this.token = 12;
                        return;
                    case '}':
                        next();
                        this.token = 13;
                        return;
                    default:
                        if (isEOF()) {
                            if (this.token == 20) {
                                throw new com.alibaba.fastjson.JSONException("EOF error");
                            }
                            this.token = 20;
                            int i5 = this.bp;
                            this.pos = i5;
                            this.eofPos = i5;
                            return;
                        }
                        char c6 = this.ch;
                        if (c6 > 31 && c6 != 127) {
                            lexError("illegal.char", java.lang.String.valueOf((int) c6));
                            next();
                            return;
                        }
                        next();
                        break;
                        break;
                }
            }
        }
    }

    public final void nextTokenWithChar(char c5) {
        this.sp = 0;
        while (true) {
            char c6 = this.ch;
            if (c6 == c5) {
                next();
                nextToken();
                return;
            }
            if (c6 != ' ' && c6 != '\n' && c6 != '\r' && c6 != '\t' && c6 != '\f' && c6 != '\b') {
                throw new com.alibaba.fastjson.JSONException("not match " + c5 + " - " + this.ch + ", info : " + info());
            }
            next();
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextTokenWithColon() {
        nextTokenWithChar(':');
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract java.lang.String numberString();

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int pos() {
        return this.pos;
    }

    public final void putChar(char c5) {
        int i5 = this.sp;
        char[] cArr = this.sbuf;
        if (i5 >= cArr.length) {
            int length = cArr.length * 2;
            if (length < i5) {
                length = i5 + 1;
            }
            char[] cArr2 = new char[length];
            java.lang.System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
            this.sbuf = cArr2;
        }
        char[] cArr3 = this.sbuf;
        int i6 = this.sp;
        this.sp = i6 + 1;
        cArr3[i6] = c5;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void resetStringPosition() {
        this.sp = 0;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:45:0x00bc A[SYNTHETIC] */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    public boolean scanBoolean(char c5) {
        boolean z4 = false;
        this.matchStat = 0;
        char cCharAt = charAt(this.bp + 0);
        int i5 = 5;
        if (cCharAt != 't') {
            if (cCharAt == 'f') {
                if (charAt(this.bp + 1) != 'a' || charAt(this.bp + 1 + 1) != 'l' || charAt(this.bp + 1 + 2) != 's' || charAt(this.bp + 1 + 3) != 'e') {
                    this.matchStat = -1;
                    return false;
                }
                cCharAt = charAt(this.bp + 5);
                i5 = 6;
            } else if (cCharAt == '1') {
                cCharAt = charAt(this.bp + 1);
                i5 = 2;
            } else if (cCharAt == '0') {
                cCharAt = charAt(this.bp + 1);
                i5 = 2;
            } else {
                i5 = 1;
            }
            while (cCharAt != c5) {
                if (isWhitespace(cCharAt)) {
                    this.matchStat = -1;
                    return z4;
                }
                int i6 = i5 + 1;
                cCharAt = charAt(this.bp + i5);
                i5 = i6;
            }
            int i7 = this.bp + i5;
            this.bp = i7;
            this.ch = charAt(i7);
            this.matchStat = 3;
            return z4;
        }
        if (charAt(this.bp + 1) != 'r' || charAt(this.bp + 1 + 1) != 'u' || charAt(this.bp + 1 + 2) != 'e') {
            this.matchStat = -1;
            return false;
        }
        cCharAt = charAt(this.bp + 4);
        z4 = true;
        while (cCharAt != c5) {
            if (isWhitespace(cCharAt)) {
                this.matchStat = -1;
                return z4;
            }
            int i8 = i5 + 1;
            cCharAt = charAt(this.bp + i5);
            i5 = i8;
        }
        int i9 = this.bp + i5;
        this.bp = i9;
        this.ch = charAt(i9);
        this.matchStat = 3;
        return z4;
    }

    public java.util.Date scanDate(char c5) {
        long j5;
        int i5;
        java.util.Date date;
        boolean z4 = false;
        this.matchStat = 0;
        char cCharAt = charAt(this.bp + 0);
        int i6 = 5;
        if (cCharAt == '\"') {
            int iIndexOf = indexOf('\"', this.bp + 1);
            if (iIndexOf == -1) {
                throw new com.alibaba.fastjson.JSONException("unclosed str");
            }
            int i7 = this.bp + 1;
            java.lang.String strSubString = subString(i7, iIndexOf - i7);
            if (strSubString.indexOf(92) != -1) {
                while (true) {
                    int i8 = 0;
                    for (int i9 = iIndexOf - 1; i9 >= 0 && charAt(i9) == '\\'; i9--) {
                        i8++;
                    }
                    if (i8 % 2 == 0) {
                        break;
                    }
                    iIndexOf = indexOf('\"', iIndexOf + 1);
                }
                int i10 = this.bp;
                int i11 = iIndexOf - (i10 + 1);
                strSubString = readString(sub_chars(i10 + 1, i11), i11);
            }
            int i12 = this.bp;
            int i13 = (iIndexOf - (i12 + 1)) + 1 + 1;
            int i14 = i13 + 1;
            cCharAt = charAt(i12 + i13);
            com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(strSubString);
            try {
                if (!jSONScanner.scanISO8601DateIfMatch(false)) {
                    this.matchStat = -1;
                    jSONScanner.close();
                    return null;
                }
                date = jSONScanner.getCalendar().getTime();
                jSONScanner.close();
                i6 = i14;
            } catch (java.lang.Throwable th) {
                jSONScanner.close();
                throw th;
            }
        } else {
            char c6 = '9';
            int i15 = 2;
            if (cCharAt == '-' || (cCharAt >= '0' && cCharAt <= '9')) {
                if (cCharAt == '-') {
                    cCharAt = charAt(this.bp + 1);
                    z4 = true;
                } else {
                    i15 = 1;
                }
                if (cCharAt < '0' || cCharAt > '9') {
                    j5 = 0;
                    i5 = i15;
                } else {
                    j5 = cCharAt - '0';
                    while (true) {
                        i5 = i15 + 1;
                        cCharAt = charAt(this.bp + i15);
                        if (cCharAt < '0' || cCharAt > c6) {
                            break;
                        }
                        j5 = (j5 * 10) + ((long) (cCharAt - '0'));
                        i15 = i5;
                        c6 = '9';
                    }
                }
                if (j5 < 0) {
                    this.matchStat = -1;
                    return null;
                }
                if (z4) {
                    j5 = -j5;
                }
                date = new java.util.Date(j5);
                i6 = i5;
            } else {
                if (cCharAt != 'n' || charAt(this.bp + 1) != 'u' || charAt(this.bp + 1 + 1) != 'l' || charAt(this.bp + 1 + 2) != 'l') {
                    this.matchStat = -1;
                    return null;
                }
                this.matchStat = 5;
                cCharAt = charAt(this.bp + 4);
                date = null;
            }
        }
        if (cCharAt == ',') {
            int i16 = this.bp + i6;
            this.bp = i16;
            this.ch = charAt(i16);
            this.matchStat = 3;
            this.token = 16;
            return date;
        }
        if (cCharAt != ']') {
            this.matchStat = -1;
            return null;
        }
        int i17 = i6 + 1;
        char cCharAt2 = charAt(this.bp + i6);
        if (cCharAt2 == ',') {
            this.token = 16;
            int i18 = this.bp + i17;
            this.bp = i18;
            this.ch = charAt(i18);
        } else if (cCharAt2 == ']') {
            this.token = 15;
            int i19 = this.bp + i17;
            this.bp = i19;
            this.ch = charAt(i19);
        } else if (cCharAt2 == '}') {
            this.token = 13;
            int i20 = this.bp + i17;
            this.bp = i20;
            this.ch = charAt(i20);
        } else {
            if (cCharAt2 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
            this.bp += i17 - 1;
            this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
        }
        this.matchStat = 4;
        return date;
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00ad A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x00af -> B:50:0x009d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    public java.math.BigDecimal scanDecimal(char r19) {
        /*
            Method dump skipped, instruction units count: 487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanDecimal(char):java.math.BigDecimal");
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00c7 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x00c9 -> B:53:0x00b7). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    public double scanDouble(char r21) {
        /*
            Method dump skipped, instruction units count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanDouble(char):double");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public java.lang.Enum<?> scanEnum(java.lang.Class<?> cls, com.alibaba.fastjson.parser.SymbolTable symbolTable, char c5) {
        java.lang.String strScanSymbolWithSeperator = scanSymbolWithSeperator(symbolTable, c5);
        if (strScanSymbolWithSeperator == null) {
            return null;
        }
        return java.lang.Enum.valueOf(cls, strScanSymbolWithSeperator);
    }

    public long scanEnumSymbol(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int i5 = length + 1;
        if (charAt(this.bp + length) != '\"') {
            this.matchStat = -1;
            return 0L;
        }
        long j5 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode;
        while (true) {
            int i6 = i5 + 1;
            char cCharAt = charAt(this.bp + i5);
            if (cCharAt == '\"') {
                int i7 = i6 + 1;
                char cCharAt2 = charAt(this.bp + i6);
                if (cCharAt2 == ',') {
                    int i8 = this.bp + i7;
                    this.bp = i8;
                    this.ch = charAt(i8);
                    this.matchStat = 3;
                    return j5;
                }
                if (cCharAt2 != '}') {
                    this.matchStat = -1;
                    return 0L;
                }
                int i9 = i7 + 1;
                char cCharAt3 = charAt(this.bp + i7);
                if (cCharAt3 == ',') {
                    this.token = 16;
                    int i10 = this.bp + i9;
                    this.bp = i10;
                    this.ch = charAt(i10);
                } else if (cCharAt3 == ']') {
                    this.token = 15;
                    int i11 = this.bp + i9;
                    this.bp = i11;
                    this.ch = charAt(i11);
                } else if (cCharAt3 == '}') {
                    this.token = 13;
                    int i12 = this.bp + i9;
                    this.bp = i12;
                    this.ch = charAt(i12);
                } else {
                    if (cCharAt3 != 26) {
                        this.matchStat = -1;
                        return 0L;
                    }
                    this.token = 20;
                    this.bp += i9 - 1;
                    this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                }
                this.matchStat = 4;
                return j5;
            }
            j5 = (j5 ^ ((long) ((cCharAt < 'A' || cCharAt > 'Z') ? cCharAt : cCharAt + ' '))) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
            if (cCharAt == '\\') {
                this.matchStat = -1;
                return 0L;
            }
            i5 = i6;
        }
    }

    public final void scanFalse() {
        if (this.ch != 'f') {
            throw new com.alibaba.fastjson.JSONException("error parse false");
        }
        next();
        if (this.ch != 'a') {
            throw new com.alibaba.fastjson.JSONException("error parse false");
        }
        next();
        if (this.ch != 'l') {
            throw new com.alibaba.fastjson.JSONException("error parse false");
        }
        next();
        if (this.ch != 's') {
            throw new com.alibaba.fastjson.JSONException("error parse false");
        }
        next();
        if (this.ch != 'e') {
            throw new com.alibaba.fastjson.JSONException("error parse false");
        }
        next();
        char c5 = this.ch;
        if (c5 != ' ' && c5 != ',' && c5 != '}' && c5 != ']' && c5 != '\n' && c5 != '\r' && c5 != '\t' && c5 != 26 && c5 != '\f' && c5 != '\b' && c5 != ':' && c5 != '/') {
            throw new com.alibaba.fastjson.JSONException("scan false error");
        }
        this.token = 7;
    }

    public java.math.BigInteger scanFieldBigInteger(char[] cArr) {
        int i5;
        char cCharAt;
        boolean z4;
        int length;
        int i6;
        java.math.BigInteger bigInteger;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length2 = cArr.length;
        int i7 = length2 + 1;
        char cCharAt2 = charAt(this.bp + length2);
        boolean z5 = cCharAt2 == '\"';
        if (z5) {
            cCharAt2 = charAt(this.bp + i7);
            i7++;
        }
        boolean z6 = cCharAt2 == '-';
        if (z6) {
            cCharAt2 = charAt(this.bp + i7);
            i7++;
        }
        if (cCharAt2 >= '0') {
            char c5 = '9';
            if (cCharAt2 <= '9') {
                long j5 = cCharAt2 - '0';
                while (true) {
                    i5 = i7 + 1;
                    cCharAt = charAt(this.bp + i7);
                    if (cCharAt < '0' || cCharAt > c5) {
                        z4 = false;
                        break;
                    }
                    long j6 = (10 * j5) + ((long) (cCharAt - '0'));
                    if (j6 < j5) {
                        z4 = true;
                        break;
                    }
                    j5 = j6;
                    i7 = i5;
                    c5 = '9';
                }
                if (!z5) {
                    int i8 = this.bp;
                    length = cArr.length + i8;
                    i6 = ((i8 + i5) - length) - 1;
                } else {
                    if (cCharAt != '\"') {
                        this.matchStat = -1;
                        return null;
                    }
                    int i9 = i5 + 1;
                    cCharAt = charAt(this.bp + i5);
                    int i10 = this.bp;
                    length = cArr.length + i10 + 1;
                    i6 = ((i10 + i9) - length) - 2;
                    i5 = i9;
                }
                if (!z4 && (i6 < 20 || (z6 && i6 < 21))) {
                    if (z6) {
                        j5 = -j5;
                    }
                    bigInteger = java.math.BigInteger.valueOf(j5);
                } else {
                    if (i6 > 65535) {
                        throw new com.alibaba.fastjson.JSONException("scanInteger overflow");
                    }
                    bigInteger = new java.math.BigInteger(subString(length, i6), 10);
                }
                if (cCharAt == ',') {
                    int i11 = this.bp + i5;
                    this.bp = i11;
                    this.ch = charAt(i11);
                    this.matchStat = 3;
                    this.token = 16;
                    return bigInteger;
                }
                if (cCharAt != '}') {
                    this.matchStat = -1;
                    return null;
                }
                int i12 = i5 + 1;
                char cCharAt3 = charAt(this.bp + i5);
                if (cCharAt3 == ',') {
                    this.token = 16;
                    int i13 = this.bp + i12;
                    this.bp = i13;
                    this.ch = charAt(i13);
                } else if (cCharAt3 == ']') {
                    this.token = 15;
                    int i14 = this.bp + i12;
                    this.bp = i14;
                    this.ch = charAt(i14);
                } else if (cCharAt3 == '}') {
                    this.token = 13;
                    int i15 = this.bp + i12;
                    this.bp = i15;
                    this.ch = charAt(i15);
                } else {
                    if (cCharAt3 != 26) {
                        this.matchStat = -1;
                        return null;
                    }
                    this.token = 20;
                    this.bp += i12 - 1;
                    this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                }
                this.matchStat = 4;
                return bigInteger;
            }
        }
        if (cCharAt2 != 'n' || charAt(this.bp + i7) != 'u' || charAt(this.bp + i7 + 1) != 'l' || charAt(this.bp + i7 + 2) != 'l') {
            this.matchStat = -1;
            return null;
        }
        this.matchStat = 5;
        int i16 = i7 + 3;
        int i17 = i16 + 1;
        char cCharAt4 = charAt(this.bp + i16);
        if (z5 && cCharAt4 == '\"') {
            cCharAt4 = charAt(this.bp + i17);
            i17++;
        }
        while (cCharAt4 != ',') {
            if (cCharAt4 == '}') {
                int i18 = this.bp + i17;
                this.bp = i18;
                this.ch = charAt(i18);
                this.matchStat = 5;
                this.token = 13;
                return null;
            }
            if (!isWhitespace(cCharAt4)) {
                this.matchStat = -1;
                return null;
            }
            cCharAt4 = charAt(this.bp + i17);
            i17++;
        }
        int i19 = this.bp + i17;
        this.bp = i19;
        this.ch = charAt(i19);
        this.matchStat = 5;
        this.token = 16;
        return null;
    }

    public boolean scanFieldBoolean(char[] cArr) {
        boolean z4;
        int i5;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return false;
        }
        int length = cArr.length;
        int i6 = length + 1;
        char cCharAt = charAt(this.bp + length);
        if (cCharAt == 't') {
            int i7 = i6 + 1;
            if (charAt(this.bp + i6) != 'r') {
                this.matchStat = -1;
                return false;
            }
            int i8 = i7 + 1;
            if (charAt(this.bp + i7) != 'u') {
                this.matchStat = -1;
                return false;
            }
            i5 = i8 + 1;
            if (charAt(this.bp + i8) != 'e') {
                this.matchStat = -1;
                return false;
            }
            z4 = true;
        } else {
            if (cCharAt != 'f') {
                this.matchStat = -1;
                return false;
            }
            int i9 = i6 + 1;
            if (charAt(this.bp + i6) != 'a') {
                this.matchStat = -1;
                return false;
            }
            int i10 = i9 + 1;
            if (charAt(this.bp + i9) != 'l') {
                this.matchStat = -1;
                return false;
            }
            int i11 = i10 + 1;
            if (charAt(this.bp + i10) != 's') {
                this.matchStat = -1;
                return false;
            }
            int i12 = i11 + 1;
            if (charAt(this.bp + i11) != 'e') {
                this.matchStat = -1;
                return false;
            }
            z4 = false;
            i5 = i12;
        }
        int i13 = i5 + 1;
        char cCharAt2 = charAt(this.bp + i5);
        if (cCharAt2 == ',') {
            int i14 = this.bp + i13;
            this.bp = i14;
            this.ch = charAt(i14);
            this.matchStat = 3;
            this.token = 16;
            return z4;
        }
        if (cCharAt2 != '}') {
            this.matchStat = -1;
            return false;
        }
        int i15 = i13 + 1;
        char cCharAt3 = charAt(this.bp + i13);
        if (cCharAt3 == ',') {
            this.token = 16;
            int i16 = this.bp + i15;
            this.bp = i16;
            this.ch = charAt(i16);
        } else if (cCharAt3 == ']') {
            this.token = 15;
            int i17 = this.bp + i15;
            this.bp = i17;
            this.ch = charAt(i17);
        } else if (cCharAt3 == '}') {
            this.token = 13;
            int i18 = this.bp + i15;
            this.bp = i18;
            this.ch = charAt(i18);
        } else {
            if (cCharAt3 != 26) {
                this.matchStat = -1;
                return false;
            }
            this.token = 20;
            this.bp += i15 - 1;
            this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
        }
        this.matchStat = 4;
        return z4;
    }

    public java.util.Date scanFieldDate(char[] cArr) {
        int i5;
        long j5;
        java.util.Date date;
        int i6;
        char cCharAt;
        boolean z4 = false;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int i7 = length + 1;
        char cCharAt2 = charAt(this.bp + length);
        if (cCharAt2 == '\"') {
            int iIndexOf = indexOf('\"', this.bp + cArr.length + 1);
            if (iIndexOf == -1) {
                throw new com.alibaba.fastjson.JSONException("unclosed str");
            }
            int length2 = this.bp + cArr.length + 1;
            java.lang.String strSubString = subString(length2, iIndexOf - length2);
            if (strSubString.indexOf(92) != -1) {
                while (true) {
                    int i8 = 0;
                    for (int i9 = iIndexOf - 1; i9 >= 0 && charAt(i9) == '\\'; i9--) {
                        i8++;
                    }
                    if (i8 % 2 == 0) {
                        break;
                    }
                    iIndexOf = indexOf('\"', iIndexOf + 1);
                }
                int i10 = this.bp;
                int length3 = iIndexOf - ((cArr.length + i10) + 1);
                strSubString = readString(sub_chars(i10 + cArr.length + 1, length3), length3);
            }
            int i11 = this.bp;
            int length4 = i7 + (iIndexOf - ((cArr.length + i11) + 1)) + 1;
            i5 = length4 + 1;
            cCharAt2 = charAt(i11 + length4);
            com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(strSubString);
            try {
                if (!jSONScanner.scanISO8601DateIfMatch(false)) {
                    this.matchStat = -1;
                    jSONScanner.close();
                    return null;
                }
                date = jSONScanner.getCalendar().getTime();
                jSONScanner.close();
            } catch (java.lang.Throwable th) {
                jSONScanner.close();
                throw th;
            }
        } else {
            if (cCharAt2 != '-' && (cCharAt2 < '0' || cCharAt2 > '9')) {
                this.matchStat = -1;
                return null;
            }
            if (cCharAt2 == '-') {
                cCharAt2 = charAt(this.bp + i7);
                i7++;
                z4 = true;
            }
            if (cCharAt2 < '0' || cCharAt2 > '9') {
                i5 = i7;
                j5 = 0;
            } else {
                j5 = cCharAt2 - '0';
                while (true) {
                    i6 = i7 + 1;
                    cCharAt = charAt(this.bp + i7);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    j5 = (j5 * 10) + ((long) (cCharAt - '0'));
                    i7 = i6;
                }
                cCharAt2 = cCharAt;
                i5 = i6;
            }
            if (j5 < 0) {
                this.matchStat = -1;
                return null;
            }
            if (z4) {
                j5 = -j5;
            }
            date = new java.util.Date(j5);
        }
        if (cCharAt2 == ',') {
            int i12 = this.bp + i5;
            this.bp = i12;
            this.ch = charAt(i12);
            this.matchStat = 3;
            return date;
        }
        if (cCharAt2 != '}') {
            this.matchStat = -1;
            return null;
        }
        int i13 = i5 + 1;
        char cCharAt3 = charAt(this.bp + i5);
        if (cCharAt3 == ',') {
            this.token = 16;
            int i14 = this.bp + i13;
            this.bp = i14;
            this.ch = charAt(i14);
        } else if (cCharAt3 == ']') {
            this.token = 15;
            int i15 = this.bp + i13;
            this.bp = i15;
            this.ch = charAt(i15);
        } else if (cCharAt3 == '}') {
            this.token = 13;
            int i16 = this.bp + i13;
            this.bp = i16;
            this.ch = charAt(i16);
        } else {
            if (cCharAt3 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
            this.bp += i13 - 1;
            this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
        }
        this.matchStat = 4;
        return date;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00b8 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x00ba -> B:52:0x00a8). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public java.math.BigDecimal scanFieldDecimal(char[] r18) {
        /*
            Method dump skipped, instruction units count: 513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldDecimal(char[]):java.math.BigDecimal");
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00dc A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x00de -> B:55:0x00ca). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final double scanFieldDouble(char[] r24) {
        /*
            Method dump skipped, instruction units count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldDouble(char[]):double");
    }

    public final float scanFieldFloat(char[] cArr) {
        int i5;
        char cCharAt;
        boolean z4;
        long j5;
        int length;
        int i6;
        float f5;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0.0f;
        }
        int length2 = cArr.length;
        int i7 = length2 + 1;
        char cCharAt2 = charAt(this.bp + length2);
        boolean z5 = cCharAt2 == '\"';
        if (z5) {
            cCharAt2 = charAt(this.bp + i7);
            i7++;
        }
        boolean z6 = cCharAt2 == '-';
        if (z6) {
            cCharAt2 = charAt(this.bp + i7);
            i7++;
        }
        if (cCharAt2 >= '0') {
            char c5 = '9';
            if (cCharAt2 <= '9') {
                long j6 = cCharAt2 - '0';
                while (true) {
                    i5 = i7 + 1;
                    cCharAt = charAt(this.bp + i7);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    j6 = (j6 * 10) + ((long) (cCharAt - '0'));
                    i7 = i5;
                }
                if (cCharAt == '.') {
                    int i8 = i5 + 1;
                    char cCharAt3 = charAt(this.bp + i5);
                    if (cCharAt3 < '0' || cCharAt3 > '9') {
                        this.matchStat = -1;
                        return 0.0f;
                    }
                    z4 = z5;
                    j6 = (j6 * 10) + ((long) (cCharAt3 - '0'));
                    j5 = 10;
                    while (true) {
                        i5 = i8 + 1;
                        cCharAt = charAt(this.bp + i8);
                        if (cCharAt < '0' || cCharAt > c5) {
                            break;
                        }
                        j6 = (j6 * 10) + ((long) (cCharAt - '0'));
                        j5 *= 10;
                        i8 = i5;
                        c5 = '9';
                    }
                } else {
                    z4 = z5;
                    j5 = 1;
                }
                boolean z7 = cCharAt == 'e' || cCharAt == 'E';
                if (z7) {
                    int i9 = i5 + 1;
                    cCharAt = charAt(this.bp + i5);
                    if (cCharAt == '+' || cCharAt == '-') {
                        int i10 = i9 + 1;
                        cCharAt = charAt(this.bp + i9);
                        i5 = i10;
                    } else {
                        i5 = i9;
                    }
                    while (cCharAt >= '0' && cCharAt <= '9') {
                        int i11 = i5 + 1;
                        cCharAt = charAt(this.bp + i5);
                        i5 = i11;
                    }
                }
                if (!z4) {
                    int i12 = this.bp;
                    length = cArr.length + i12;
                    i6 = ((i12 + i5) - length) - 1;
                } else {
                    if (cCharAt != '\"') {
                        this.matchStat = -1;
                        return 0.0f;
                    }
                    int i13 = i5 + 1;
                    cCharAt = charAt(this.bp + i5);
                    int i14 = this.bp;
                    length = cArr.length + i14 + 1;
                    i6 = ((i14 + i13) - length) - 2;
                    i5 = i13;
                }
                if (z7 || i6 >= 17) {
                    f5 = java.lang.Float.parseFloat(subString(length, i6));
                } else {
                    f5 = (float) (j6 / j5);
                    if (z6) {
                        f5 = -f5;
                    }
                }
                if (cCharAt == ',') {
                    int i15 = this.bp + i5;
                    this.bp = i15;
                    this.ch = charAt(i15);
                    this.matchStat = 3;
                    this.token = 16;
                    return f5;
                }
                if (cCharAt != '}') {
                    this.matchStat = -1;
                    return 0.0f;
                }
                int i16 = i5 + 1;
                char cCharAt4 = charAt(this.bp + i5);
                if (cCharAt4 == ',') {
                    this.token = 16;
                    int i17 = this.bp + i16;
                    this.bp = i17;
                    this.ch = charAt(i17);
                } else if (cCharAt4 == ']') {
                    this.token = 15;
                    int i18 = this.bp + i16;
                    this.bp = i18;
                    this.ch = charAt(i18);
                } else if (cCharAt4 == '}') {
                    this.token = 13;
                    int i19 = this.bp + i16;
                    this.bp = i19;
                    this.ch = charAt(i19);
                } else {
                    if (cCharAt4 != 26) {
                        this.matchStat = -1;
                        return 0.0f;
                    }
                    this.bp += i16 - 1;
                    this.token = 20;
                    this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                }
                this.matchStat = 4;
                return f5;
            }
        }
        boolean z8 = z5;
        if (cCharAt2 != 'n' || charAt(this.bp + i7) != 'u' || charAt(this.bp + i7 + 1) != 'l' || charAt(this.bp + i7 + 2) != 'l') {
            this.matchStat = -1;
            return 0.0f;
        }
        this.matchStat = 5;
        int i20 = i7 + 3;
        int i21 = i20 + 1;
        char cCharAt5 = charAt(this.bp + i20);
        if (z8 && cCharAt5 == '\"') {
            cCharAt5 = charAt(this.bp + i21);
            i21++;
        }
        while (cCharAt5 != ',') {
            if (cCharAt5 == '}') {
                int i22 = this.bp + i21;
                this.bp = i22;
                this.ch = charAt(i22);
                this.matchStat = 5;
                this.token = 13;
                return 0.0f;
            }
            if (!isWhitespace(cCharAt5)) {
                this.matchStat = -1;
                return 0.0f;
            }
            cCharAt5 = charAt(this.bp + i21);
            i21++;
        }
        int i23 = this.bp + i21;
        this.bp = i23;
        this.ch = charAt(i23);
        this.matchStat = 5;
        this.token = 16;
        return 0.0f;
    }

    public final float[] scanFieldFloatArray(char[] cArr) {
        int i5;
        char cCharAt;
        int i6;
        float f5;
        float[] fArr;
        char c5;
        boolean z4;
        char cCharAt2;
        boolean z5 = false;
        this.matchStat = 0;
        float[] fArr2 = null;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int i7 = length + 1;
        if (charAt(this.bp + length) != '[') {
            this.matchStat = -2;
            return null;
        }
        int i8 = i7 + 1;
        char cCharAt3 = charAt(this.bp + i7);
        float[] fArr3 = new float[16];
        int i9 = 0;
        while (true) {
            int i10 = this.bp;
            int i11 = (i10 + i8) - 1;
            boolean z6 = cCharAt3 == '-' ? true : z5;
            if (z6) {
                int i12 = i8 + 1;
                char cCharAt4 = charAt(i10 + i8);
                i8 = i12;
                cCharAt3 = cCharAt4;
            }
            if (cCharAt3 < '0' || cCharAt3 > '9') {
                break;
            }
            int i13 = cCharAt3 - '0';
            while (true) {
                i5 = i8 + 1;
                cCharAt = charAt(this.bp + i8);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                i13 = (i13 * 10) + (cCharAt - '0');
                i8 = i5;
            }
            if (cCharAt == '.' ? true : z5) {
                int i14 = i5 + 1;
                char cCharAt5 = charAt(this.bp + i5);
                if (cCharAt5 < '0' || cCharAt5 > '9') {
                    this.matchStat = -1;
                    return fArr2;
                }
                i13 = (i13 * 10) + (cCharAt5 - '0');
                int i15 = 10;
                while (true) {
                    i5 = i14 + 1;
                    cCharAt2 = charAt(this.bp + i14);
                    if (cCharAt2 < '0' || cCharAt2 > '9') {
                        break;
                    }
                    i13 = (i13 * 10) + (cCharAt2 - '0');
                    i15 *= 10;
                    i14 = i5;
                }
                int i16 = i15;
                cCharAt = cCharAt2;
                i6 = i16;
            } else {
                i6 = 1;
            }
            boolean z7 = cCharAt == 'e' || cCharAt == 'E';
            if (z7) {
                int i17 = i5 + 1;
                cCharAt = charAt(this.bp + i5);
                if (cCharAt == '+' || cCharAt == '-') {
                    int i18 = i17 + 1;
                    cCharAt = charAt(this.bp + i17);
                    i5 = i18;
                } else {
                    i5 = i17;
                }
                while (cCharAt >= '0' && cCharAt <= '9') {
                    int i19 = i5 + 1;
                    cCharAt = charAt(this.bp + i5);
                    i5 = i19;
                }
            }
            int i20 = ((this.bp + i5) - i11) - 1;
            if (z7 || i20 >= 10) {
                f5 = java.lang.Float.parseFloat(subString(i11, i20));
            } else {
                f5 = i13 / i6;
                if (z6) {
                    f5 = -f5;
                }
            }
            if (i9 >= fArr3.length) {
                float[] fArr4 = new float[(fArr3.length * 3) / 2];
                java.lang.System.arraycopy(fArr3, 0, fArr4, 0, i9);
                fArr3 = fArr4;
            }
            int i21 = i9 + 1;
            fArr3[i9] = f5;
            if (cCharAt == ',') {
                i8 = i5 + 1;
                c5 = 16;
                z4 = false;
                cCharAt3 = charAt(this.bp + i5);
                fArr = null;
            } else {
                if (cCharAt == ']') {
                    int i22 = i5 + 1;
                    char cCharAt6 = charAt(this.bp + i5);
                    if (i21 != fArr3.length) {
                        float[] fArr5 = new float[i21];
                        java.lang.System.arraycopy(fArr3, 0, fArr5, 0, i21);
                        fArr3 = fArr5;
                    }
                    if (cCharAt6 == ',') {
                        this.bp += i22 - 1;
                        next();
                        this.matchStat = 3;
                        this.token = 16;
                        return fArr3;
                    }
                    if (cCharAt6 != '}') {
                        this.matchStat = -1;
                        return null;
                    }
                    int i23 = i22 + 1;
                    char cCharAt7 = charAt(this.bp + i22);
                    if (cCharAt7 == ',') {
                        this.token = 16;
                        this.bp += i23 - 1;
                        next();
                    } else if (cCharAt7 == ']') {
                        this.token = 15;
                        this.bp += i23 - 1;
                        next();
                    } else if (cCharAt7 == '}') {
                        this.token = 13;
                        this.bp += i23 - 1;
                        next();
                    } else {
                        if (cCharAt7 != 26) {
                            this.matchStat = -1;
                            return null;
                        }
                        this.bp += i23 - 1;
                        this.token = 20;
                        this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                    }
                    this.matchStat = 4;
                    return fArr3;
                }
                fArr = null;
                c5 = 16;
                z4 = false;
                cCharAt3 = cCharAt;
                i8 = i5;
            }
            i9 = i21;
            fArr2 = fArr;
            z5 = z4;
        }
        float[] fArr6 = fArr2;
        this.matchStat = -1;
        return fArr6;
    }

    public final float[][] scanFieldFloatArray2(char[] cArr) {
        int i5;
        char cCharAt;
        int i6;
        int i7;
        float f5;
        int i8;
        int i9;
        char cCharAt2;
        int i10 = 0;
        this.matchStat = 0;
        float[][] fArr = null;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int i11 = length + 1;
        char c5 = '[';
        if (charAt(this.bp + length) != '[') {
            this.matchStat = -2;
            return null;
        }
        int i12 = i11 + 1;
        char cCharAt3 = charAt(this.bp + i11);
        int i13 = 16;
        float[][] fArr2 = new float[16][];
        int i14 = 0;
        while (cCharAt3 == c5) {
            int i15 = i12 + 1;
            char cCharAt4 = charAt(this.bp + i12);
            float[] fArr3 = new float[i13];
            int i16 = i10;
            while (true) {
                int i17 = this.bp;
                int i18 = (i17 + i15) - 1;
                int i19 = cCharAt4 == '-' ? 1 : i10;
                if (i19 != 0) {
                    char cCharAt5 = charAt(i17 + i15);
                    i15++;
                    cCharAt4 = cCharAt5;
                }
                if (cCharAt4 < '0' || cCharAt4 > '9') {
                    this.matchStat = -1;
                    return null;
                }
                int i20 = cCharAt4 - '0';
                while (true) {
                    i5 = i15 + 1;
                    cCharAt = charAt(this.bp + i15);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    i20 = (i20 * 10) + (cCharAt - '0');
                    i15 = i5;
                }
                if (cCharAt == '.') {
                    int i21 = i5 + 1;
                    char cCharAt6 = charAt(this.bp + i5);
                    if (cCharAt6 < '0' || cCharAt6 > '9') {
                        this.matchStat = -1;
                        return fArr;
                    }
                    int i22 = (i20 * 10) + (cCharAt6 - '0');
                    int i23 = 10;
                    while (true) {
                        i5 = i21 + 1;
                        cCharAt2 = charAt(this.bp + i21);
                        if (cCharAt2 < '0' || cCharAt2 > '9') {
                            break;
                        }
                        i22 = (i22 * 10) + (cCharAt2 - '0');
                        i23 *= 10;
                        i21 = i5;
                    }
                    int i24 = i22;
                    i7 = i23;
                    cCharAt = cCharAt2;
                    i6 = i24;
                } else {
                    i6 = i20;
                    i7 = 1;
                }
                boolean z4 = cCharAt == 'e' || cCharAt == 'E';
                if (z4) {
                    int i25 = i5 + 1;
                    cCharAt = charAt(this.bp + i5);
                    if (cCharAt == '+' || cCharAt == '-') {
                        int i26 = i25 + 1;
                        cCharAt = charAt(this.bp + i25);
                        i5 = i26;
                    } else {
                        i5 = i25;
                    }
                    while (cCharAt >= '0' && cCharAt <= '9') {
                        int i27 = i5 + 1;
                        cCharAt = charAt(this.bp + i5);
                        i5 = i27;
                    }
                }
                int i28 = ((this.bp + i5) - i18) - 1;
                if (z4 || i28 >= 10) {
                    f5 = java.lang.Float.parseFloat(subString(i18, i28));
                } else {
                    f5 = i6 / i7;
                    if (i19 != 0) {
                        f5 = -f5;
                    }
                }
                if (i16 >= fArr3.length) {
                    float[] fArr4 = new float[(fArr3.length * 3) / 2];
                    java.lang.System.arraycopy(fArr3, 0, fArr4, 0, i16);
                    fArr3 = fArr4;
                }
                i8 = i16 + 1;
                fArr3[i16] = f5;
                if (cCharAt == ',') {
                    cCharAt = charAt(this.bp + i5);
                    i15 = i5 + 1;
                } else {
                    if (cCharAt == ']') {
                        break;
                    }
                    i15 = i5;
                }
                i16 = i8;
                fArr = null;
                cCharAt4 = cCharAt;
                i10 = 0;
            }
            int i29 = i5 + 1;
            char cCharAt7 = charAt(this.bp + i5);
            if (i8 != fArr3.length) {
                float[] fArr5 = new float[i8];
                i9 = 0;
                java.lang.System.arraycopy(fArr3, 0, fArr5, 0, i8);
                fArr3 = fArr5;
            } else {
                i9 = 0;
            }
            if (i14 >= fArr2.length) {
                float[][] fArr6 = new float[(fArr2.length * 3) / 2][];
                java.lang.System.arraycopy(fArr3, i9, fArr6, i9, i8);
                fArr2 = fArr6;
            }
            int i30 = i14 + 1;
            fArr2[i14] = fArr3;
            if (cCharAt7 == ',') {
                i12 = i29 + 1;
                cCharAt3 = charAt(this.bp + i29);
            } else {
                if (cCharAt7 == ']') {
                    i12 = i29 + 1;
                    cCharAt3 = charAt(this.bp + i29);
                    i14 = i30;
                    break;
                }
                cCharAt3 = cCharAt7;
                i12 = i29;
            }
            i14 = i30;
            i10 = 0;
            fArr = null;
            c5 = '[';
            i13 = 16;
        }
        if (i14 != fArr2.length) {
            float[][] fArr7 = new float[i14][];
            java.lang.System.arraycopy(fArr2, 0, fArr7, 0, i14);
            fArr2 = fArr7;
        }
        if (cCharAt3 == ',') {
            this.bp += i12 - 1;
            next();
            this.matchStat = 3;
            this.token = 16;
            return fArr2;
        }
        if (cCharAt3 != '}') {
            this.matchStat = -1;
            return null;
        }
        int i31 = i12 + 1;
        char cCharAt8 = charAt(this.bp + i12);
        if (cCharAt8 == ',') {
            this.token = 16;
            this.bp += i31 - 1;
            next();
        } else if (cCharAt8 == ']') {
            this.token = 15;
            this.bp += i31 - 1;
            next();
        } else if (cCharAt8 == '}') {
            this.token = 13;
            this.bp += i31 - 1;
            next();
        } else {
            if (cCharAt8 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.bp += i31 - 1;
            this.token = 20;
            this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
        }
        this.matchStat = 4;
        return fArr2;
    }

    public int scanFieldInt(char[] cArr) {
        int i5;
        char cCharAt;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0;
        }
        int length = cArr.length;
        int i6 = length + 1;
        char cCharAt2 = charAt(this.bp + length);
        boolean z4 = cCharAt2 == '-';
        if (z4) {
            cCharAt2 = charAt(this.bp + i6);
            i6++;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            this.matchStat = -1;
            return 0;
        }
        int i7 = cCharAt2 - '0';
        while (true) {
            i5 = i6 + 1;
            cCharAt = charAt(this.bp + i6);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            i7 = (i7 * 10) + (cCharAt - '0');
            i6 = i5;
        }
        if (cCharAt == '.') {
            this.matchStat = -1;
            return 0;
        }
        if ((i7 < 0 || i5 > cArr.length + 14) && !(i7 == Integer.MIN_VALUE && i5 == 17 && z4)) {
            this.matchStat = -1;
            return 0;
        }
        if (cCharAt == ',') {
            int i8 = this.bp + i5;
            this.bp = i8;
            this.ch = charAt(i8);
            this.matchStat = 3;
            this.token = 16;
            return z4 ? -i7 : i7;
        }
        if (cCharAt != '}') {
            this.matchStat = -1;
            return 0;
        }
        int i9 = i5 + 1;
        char cCharAt3 = charAt(this.bp + i5);
        if (cCharAt3 == ',') {
            this.token = 16;
            int i10 = this.bp + i9;
            this.bp = i10;
            this.ch = charAt(i10);
        } else if (cCharAt3 == ']') {
            this.token = 15;
            int i11 = this.bp + i9;
            this.bp = i11;
            this.ch = charAt(i11);
        } else if (cCharAt3 == '}') {
            this.token = 13;
            int i12 = this.bp + i9;
            this.bp = i12;
            this.ch = charAt(i12);
        } else {
            if (cCharAt3 != 26) {
                this.matchStat = -1;
                return 0;
            }
            this.token = 20;
            this.bp += i9 - 1;
            this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
        }
        this.matchStat = 4;
        return z4 ? -i7 : i7;
    }

    public final int[] scanFieldIntArray(char[] cArr) {
        boolean z4;
        int i5;
        char cCharAt;
        int i6;
        int i7;
        char cCharAt2;
        this.matchStat = 0;
        int[] iArr = null;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int i8 = length + 1;
        if (charAt(this.bp + length) != '[') {
            this.matchStat = -2;
            return null;
        }
        int i9 = i8 + 1;
        char cCharAt3 = charAt(this.bp + i8);
        int[] iArr2 = new int[16];
        if (cCharAt3 == ']') {
            i7 = i9 + 1;
            cCharAt2 = charAt(this.bp + i9);
            i6 = 0;
        } else {
            int i10 = 0;
            while (true) {
                if (cCharAt3 == '-') {
                    cCharAt3 = charAt(this.bp + i9);
                    i9++;
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (cCharAt3 < '0' || cCharAt3 > '9') {
                    int[] iArr3 = iArr;
                    this.matchStat = -1;
                    return iArr3;
                }
                int i11 = cCharAt3 - '0';
                while (true) {
                    i5 = i9 + 1;
                    cCharAt = charAt(this.bp + i9);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    i11 = (i11 * 10) + (cCharAt - '0');
                    i9 = i5;
                }
                if (i10 >= iArr2.length) {
                    int[] iArr4 = new int[(iArr2.length * 3) / 2];
                    java.lang.System.arraycopy(iArr2, 0, iArr4, 0, i10);
                    iArr2 = iArr4;
                }
                i6 = i10 + 1;
                if (z4) {
                    i11 = -i11;
                }
                iArr2[i10] = i11;
                if (cCharAt == ',') {
                    char cCharAt4 = charAt(this.bp + i5);
                    i5++;
                    cCharAt = cCharAt4;
                } else if (cCharAt == ']') {
                    i7 = i5 + 1;
                    cCharAt2 = charAt(this.bp + i5);
                    break;
                }
                i10 = i6;
                iArr = null;
                cCharAt3 = cCharAt;
                i9 = i5;
            }
        }
        if (i6 != iArr2.length) {
            int[] iArr5 = new int[i6];
            java.lang.System.arraycopy(iArr2, 0, iArr5, 0, i6);
            iArr2 = iArr5;
        }
        if (cCharAt2 == ',') {
            this.bp += i7 - 1;
            next();
            this.matchStat = 3;
            this.token = 16;
            return iArr2;
        }
        if (cCharAt2 != '}') {
            this.matchStat = -1;
            return null;
        }
        int i12 = i7 + 1;
        char cCharAt5 = charAt(this.bp + i7);
        if (cCharAt5 == ',') {
            this.token = 16;
            this.bp += i12 - 1;
            next();
        } else if (cCharAt5 == ']') {
            this.token = 15;
            this.bp += i12 - 1;
            next();
        } else if (cCharAt5 == '}') {
            this.token = 13;
            this.bp += i12 - 1;
            next();
        } else {
            if (cCharAt5 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.bp += i12 - 1;
            this.token = 20;
            this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
        }
        this.matchStat = 4;
        return iArr2;
    }

    public long scanFieldLong(char[] cArr) {
        boolean z4;
        int i5;
        char cCharAt;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int i6 = length + 1;
        char cCharAt2 = charAt(this.bp + length);
        if (cCharAt2 == '-') {
            cCharAt2 = charAt(this.bp + i6);
            i6++;
            z4 = true;
        } else {
            z4 = false;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            this.matchStat = -1;
            return 0L;
        }
        long j5 = cCharAt2 - '0';
        while (true) {
            i5 = i6 + 1;
            cCharAt = charAt(this.bp + i6);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            j5 = (j5 * 10) + ((long) (cCharAt - '0'));
            i6 = i5;
        }
        if (cCharAt == '.') {
            this.matchStat = -1;
            return 0L;
        }
        if (!(i5 - cArr.length < 21 && (j5 >= 0 || (j5 == Long.MIN_VALUE && z4)))) {
            this.matchStat = -1;
            return 0L;
        }
        if (cCharAt == ',') {
            int i7 = this.bp + i5;
            this.bp = i7;
            this.ch = charAt(i7);
            this.matchStat = 3;
            this.token = 16;
            return z4 ? -j5 : j5;
        }
        if (cCharAt != '}') {
            this.matchStat = -1;
            return 0L;
        }
        int i8 = i5 + 1;
        char cCharAt3 = charAt(this.bp + i5);
        if (cCharAt3 == ',') {
            this.token = 16;
            int i9 = this.bp + i8;
            this.bp = i9;
            this.ch = charAt(i9);
        } else if (cCharAt3 == ']') {
            this.token = 15;
            int i10 = this.bp + i8;
            this.bp = i10;
            this.ch = charAt(i10);
        } else if (cCharAt3 == '}') {
            this.token = 13;
            int i11 = this.bp + i8;
            this.bp = i11;
            this.ch = charAt(i11);
        } else {
            if (cCharAt3 != 26) {
                this.matchStat = -1;
                return 0L;
            }
            this.token = 20;
            this.bp += i8 - 1;
            this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
        }
        this.matchStat = 4;
        return z4 ? -j5 : j5;
    }

    public java.lang.String scanFieldString(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return stringDefaultValue();
        }
        int length = cArr.length;
        int i5 = length + 1;
        if (charAt(this.bp + length) != '\"') {
            this.matchStat = -1;
            return stringDefaultValue();
        }
        int iIndexOf = indexOf('\"', this.bp + cArr.length + 1);
        if (iIndexOf == -1) {
            throw new com.alibaba.fastjson.JSONException("unclosed str");
        }
        int length2 = this.bp + cArr.length + 1;
        java.lang.String strSubString = subString(length2, iIndexOf - length2);
        if (strSubString.indexOf(92) != -1) {
            while (true) {
                int i6 = 0;
                for (int i7 = iIndexOf - 1; i7 >= 0 && charAt(i7) == '\\'; i7--) {
                    i6++;
                }
                if (i6 % 2 == 0) {
                    break;
                }
                iIndexOf = indexOf('\"', iIndexOf + 1);
            }
            int i8 = this.bp;
            int length3 = iIndexOf - ((cArr.length + i8) + 1);
            strSubString = readString(sub_chars(i8 + cArr.length + 1, length3), length3);
        }
        int i9 = this.bp;
        int length4 = i5 + (iIndexOf - ((cArr.length + i9) + 1)) + 1;
        int i10 = length4 + 1;
        char cCharAt = charAt(i9 + length4);
        if (cCharAt == ',') {
            int i11 = this.bp + i10;
            this.bp = i11;
            this.ch = charAt(i11);
            this.matchStat = 3;
            return strSubString;
        }
        if (cCharAt != '}') {
            this.matchStat = -1;
            return stringDefaultValue();
        }
        int i12 = i10 + 1;
        char cCharAt2 = charAt(this.bp + i10);
        if (cCharAt2 == ',') {
            this.token = 16;
            int i13 = this.bp + i12;
            this.bp = i13;
            this.ch = charAt(i13);
        } else if (cCharAt2 == ']') {
            this.token = 15;
            int i14 = this.bp + i12;
            this.bp = i14;
            this.ch = charAt(i14);
        } else if (cCharAt2 == '}') {
            this.token = 13;
            int i15 = this.bp + i12;
            this.bp = i15;
            this.ch = charAt(i15);
        } else {
            if (cCharAt2 != 26) {
                this.matchStat = -1;
                return stringDefaultValue();
            }
            this.token = 20;
            this.bp += i12 - 1;
            this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
        }
        this.matchStat = 4;
        return strSubString;
    }

    public java.util.Collection<java.lang.String> scanFieldStringArray(char[] cArr, java.lang.Class<?> cls) {
        char cCharAt;
        int i5;
        char cCharAt2;
        int i6;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        java.util.Collection<java.lang.String> collectionNewCollectionByType = newCollectionByType(cls);
        int length = cArr.length;
        int i7 = length + 1;
        if (charAt(this.bp + length) != '[') {
            this.matchStat = -1;
            return null;
        }
        int i8 = i7 + 1;
        char cCharAt3 = charAt(this.bp + i7);
        while (true) {
            if (cCharAt3 == '\"') {
                int iIndexOf = indexOf('\"', this.bp + i8);
                if (iIndexOf == -1) {
                    throw new com.alibaba.fastjson.JSONException("unclosed str");
                }
                int i9 = this.bp + i8;
                java.lang.String strSubString = subString(i9, iIndexOf - i9);
                if (strSubString.indexOf(92) != -1) {
                    while (true) {
                        int i10 = 0;
                        for (int i11 = iIndexOf - 1; i11 >= 0 && charAt(i11) == '\\'; i11--) {
                            i10++;
                        }
                        if (i10 % 2 == 0) {
                            break;
                        }
                        iIndexOf = indexOf('\"', iIndexOf + 1);
                    }
                    int i12 = this.bp;
                    int i13 = iIndexOf - (i12 + i8);
                    strSubString = readString(sub_chars(i12 + i8, i13), i13);
                }
                int i14 = this.bp;
                int i15 = i8 + (iIndexOf - (i14 + i8)) + 1;
                i6 = i15 + 1;
                cCharAt2 = charAt(i14 + i15);
                collectionNewCollectionByType.add(strSubString);
            } else {
                if (cCharAt3 != 'n' || charAt(this.bp + i8) != 'u' || charAt(this.bp + i8 + 1) != 'l' || charAt(this.bp + i8 + 2) != 'l') {
                    if (cCharAt3 != ']' || collectionNewCollectionByType.size() != 0) {
                        throw new com.alibaba.fastjson.JSONException("illega str");
                    }
                    cCharAt = charAt(this.bp + i8);
                    i5 = i8 + 1;
                    break;
                }
                int i16 = i8 + 3;
                int i17 = i16 + 1;
                cCharAt2 = charAt(this.bp + i16);
                collectionNewCollectionByType.add(null);
                i6 = i17;
            }
            if (cCharAt2 != ',') {
                if (cCharAt2 != ']') {
                    this.matchStat = -1;
                    return null;
                }
                i5 = i6 + 1;
                cCharAt = charAt(this.bp + i6);
                break;
            }
            int i18 = i6 + 1;
            cCharAt3 = charAt(this.bp + i6);
            i8 = i18;
        }
        if (cCharAt == ',') {
            int i19 = this.bp + i5;
            this.bp = i19;
            this.ch = charAt(i19);
            this.matchStat = 3;
            return collectionNewCollectionByType;
        }
        if (cCharAt != '}') {
            this.matchStat = -1;
            return null;
        }
        int i20 = i5 + 1;
        char cCharAt4 = charAt(this.bp + i5);
        if (cCharAt4 == ',') {
            this.token = 16;
            int i21 = this.bp + i20;
            this.bp = i21;
            this.ch = charAt(i21);
        } else if (cCharAt4 == ']') {
            this.token = 15;
            int i22 = this.bp + i20;
            this.bp = i22;
            this.ch = charAt(i22);
        } else if (cCharAt4 == '}') {
            this.token = 13;
            int i23 = this.bp + i20;
            this.bp = i23;
            this.ch = charAt(i23);
        } else {
            if (cCharAt4 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.bp += i20 - 1;
            this.token = 20;
            this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
        }
        this.matchStat = 4;
        return collectionNewCollectionByType;
    }

    public long scanFieldSymbol(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int i5 = length + 1;
        if (charAt(this.bp + length) != '\"') {
            this.matchStat = -1;
            return 0L;
        }
        long j5 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode;
        while (true) {
            int i6 = i5 + 1;
            char cCharAt = charAt(this.bp + i5);
            if (cCharAt == '\"') {
                int i7 = i6 + 1;
                char cCharAt2 = charAt(this.bp + i6);
                if (cCharAt2 == ',') {
                    int i8 = this.bp + i7;
                    this.bp = i8;
                    this.ch = charAt(i8);
                    this.matchStat = 3;
                    return j5;
                }
                if (cCharAt2 != '}') {
                    this.matchStat = -1;
                    return 0L;
                }
                int i9 = i7 + 1;
                char cCharAt3 = charAt(this.bp + i7);
                if (cCharAt3 == ',') {
                    this.token = 16;
                    int i10 = this.bp + i9;
                    this.bp = i10;
                    this.ch = charAt(i10);
                } else if (cCharAt3 == ']') {
                    this.token = 15;
                    int i11 = this.bp + i9;
                    this.bp = i11;
                    this.ch = charAt(i11);
                } else if (cCharAt3 == '}') {
                    this.token = 13;
                    int i12 = this.bp + i9;
                    this.bp = i12;
                    this.ch = charAt(i12);
                } else {
                    if (cCharAt3 != 26) {
                        this.matchStat = -1;
                        return 0L;
                    }
                    this.token = 20;
                    this.bp += i9 - 1;
                    this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                }
                this.matchStat = 4;
                return j5;
            }
            j5 = (j5 ^ ((long) cCharAt)) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
            if (cCharAt == '\\') {
                this.matchStat = -1;
                return 0L;
            }
            i5 = i6;
        }
    }

    public java.util.UUID scanFieldUUID(char[] cArr) {
        char cCharAt;
        int i5;
        java.util.UUID uuid;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int i19 = length + 1;
        char cCharAt2 = charAt(this.bp + length);
        char c5 = 4;
        if (cCharAt2 != '\"') {
            if (cCharAt2 == 'n') {
                int i20 = i19 + 1;
                if (charAt(this.bp + i19) == 'u') {
                    int i21 = i20 + 1;
                    if (charAt(this.bp + i20) == 'l') {
                        int i22 = i21 + 1;
                        if (charAt(this.bp + i21) == 'l') {
                            cCharAt = charAt(this.bp + i22);
                            i5 = i22 + 1;
                            uuid = null;
                        }
                    }
                }
            }
            this.matchStat = -1;
            return null;
        }
        int iIndexOf = indexOf('\"', this.bp + cArr.length + 1);
        if (iIndexOf == -1) {
            throw new com.alibaba.fastjson.JSONException("unclosed str");
        }
        int length2 = this.bp + cArr.length + 1;
        int i23 = iIndexOf - length2;
        char c6 = 'F';
        char c7 = 'f';
        char c8 = 'A';
        char c9 = '0';
        if (i23 == 36) {
            int i24 = 0;
            long j5 = 0;
            while (i24 < 8) {
                char cCharAt3 = charAt(length2 + i24);
                if (cCharAt3 < '0' || cCharAt3 > '9') {
                    if (cCharAt3 >= 'a' && cCharAt3 <= 'f') {
                        i17 = cCharAt3 - 'a';
                    } else {
                        if (cCharAt3 < 'A' || cCharAt3 > c6) {
                            this.matchStat = -2;
                            return null;
                        }
                        i17 = cCharAt3 - 'A';
                    }
                    i18 = i17 + 10;
                } else {
                    i18 = cCharAt3 - '0';
                }
                j5 = (j5 << 4) | ((long) i18);
                i24++;
                iIndexOf = iIndexOf;
                c6 = 'F';
            }
            int i25 = iIndexOf;
            int i26 = 9;
            int i27 = 13;
            while (i26 < i27) {
                char cCharAt4 = charAt(length2 + i26);
                if (cCharAt4 < '0' || cCharAt4 > '9') {
                    if (cCharAt4 >= 'a' && cCharAt4 <= 'f') {
                        i15 = cCharAt4 - 'a';
                    } else {
                        if (cCharAt4 < c8 || cCharAt4 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i15 = cCharAt4 - 'A';
                    }
                    i16 = i15 + 10;
                } else {
                    i16 = cCharAt4 - '0';
                }
                j5 = (j5 << c5) | ((long) i16);
                i26++;
                i27 = 13;
                c8 = 'A';
                c5 = 4;
            }
            long j6 = j5;
            for (int i28 = 14; i28 < 18; i28++) {
                char cCharAt5 = charAt(length2 + i28);
                if (cCharAt5 < '0' || cCharAt5 > '9') {
                    if (cCharAt5 >= 'a' && cCharAt5 <= 'f') {
                        i13 = cCharAt5 - 'a';
                    } else {
                        if (cCharAt5 < 'A' || cCharAt5 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i13 = cCharAt5 - 'A';
                    }
                    i14 = i13 + 10;
                } else {
                    i14 = cCharAt5 - '0';
                }
                j6 = (j6 << 4) | ((long) i14);
            }
            long j7 = 0;
            for (int i29 = 19; i29 < 23; i29++) {
                char cCharAt6 = charAt(length2 + i29);
                if (cCharAt6 < '0' || cCharAt6 > '9') {
                    if (cCharAt6 >= 'a' && cCharAt6 <= 'f') {
                        i11 = cCharAt6 - 'a';
                    } else {
                        if (cCharAt6 < 'A' || cCharAt6 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i11 = cCharAt6 - 'A';
                    }
                    i12 = i11 + 10;
                } else {
                    i12 = cCharAt6 - '0';
                }
                j7 = (j7 << 4) | ((long) i12);
            }
            int i30 = 24;
            long j8 = j7;
            int i31 = 36;
            while (i30 < i31) {
                char cCharAt7 = charAt(length2 + i30);
                if (cCharAt7 < c9 || cCharAt7 > '9') {
                    if (cCharAt7 >= 'a' && cCharAt7 <= c7) {
                        i9 = cCharAt7 - 'a';
                    } else {
                        if (cCharAt7 < 'A' || cCharAt7 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i9 = cCharAt7 - 'A';
                    }
                    i10 = i9 + 10;
                } else {
                    i10 = cCharAt7 - '0';
                }
                j8 = (j8 << 4) | ((long) i10);
                i30++;
                i19 = i19;
                i31 = 36;
                c9 = '0';
                c7 = 'f';
            }
            uuid = new java.util.UUID(j6, j8);
            int i32 = this.bp;
            int length3 = i19 + (i25 - ((cArr.length + i32) + 1)) + 1;
            i5 = length3 + 1;
            cCharAt = charAt(i32 + length3);
        } else {
            if (i23 != 32) {
                this.matchStat = -1;
                return null;
            }
            long j9 = 0;
            for (int i33 = 0; i33 < 16; i33++) {
                char cCharAt8 = charAt(length2 + i33);
                if (cCharAt8 < '0' || cCharAt8 > '9') {
                    if (cCharAt8 >= 'a' && cCharAt8 <= 'f') {
                        i7 = cCharAt8 - 'a';
                    } else {
                        if (cCharAt8 < 'A' || cCharAt8 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i7 = cCharAt8 - 'A';
                    }
                    i8 = i7 + 10;
                } else {
                    i8 = cCharAt8 - '0';
                }
                j9 = (j9 << 4) | ((long) i8);
            }
            int i34 = 16;
            long j10 = 0;
            for (int i35 = 32; i34 < i35; i35 = 32) {
                char cCharAt9 = charAt(length2 + i34);
                if (cCharAt9 < '0' || cCharAt9 > '9') {
                    if (cCharAt9 >= 'a' && cCharAt9 <= 'f') {
                        i6 = (cCharAt9 - 'a') + 10;
                    } else {
                        if (cCharAt9 < 'A' || cCharAt9 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i6 = (cCharAt9 - 'A') + 10;
                    }
                    j10 = (j10 << 4) | ((long) i6);
                    i34++;
                } else {
                    i6 = cCharAt9 - '0';
                }
                j10 = (j10 << 4) | ((long) i6);
                i34++;
            }
            uuid = new java.util.UUID(j9, j10);
            int i36 = this.bp;
            int length4 = i19 + (iIndexOf - ((cArr.length + i36) + 1)) + 1;
            i5 = length4 + 1;
            cCharAt = charAt(i36 + length4);
        }
        if (cCharAt == ',') {
            int i37 = this.bp + i5;
            this.bp = i37;
            this.ch = charAt(i37);
            this.matchStat = 3;
            return uuid;
        }
        if (cCharAt != '}') {
            this.matchStat = -1;
            return null;
        }
        int i38 = i5 + 1;
        char cCharAt10 = charAt(this.bp + i5);
        if (cCharAt10 == ',') {
            this.token = 16;
            int i39 = this.bp + i38;
            this.bp = i39;
            this.ch = charAt(i39);
        } else if (cCharAt10 == ']') {
            this.token = 15;
            int i40 = this.bp + i38;
            this.bp = i40;
            this.ch = charAt(i40);
        } else if (cCharAt10 == '}') {
            this.token = 13;
            int i41 = this.bp + i38;
            this.bp = i41;
            this.ch = charAt(i41);
        } else {
            if (cCharAt10 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
            this.bp += i38 - 1;
            this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
        }
        this.matchStat = 4;
        return uuid;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final float scanFloat(char c5) {
        int i5;
        int i6;
        char cCharAt;
        int i7;
        int i8;
        float f5;
        this.matchStat = 0;
        char cCharAt2 = charAt(this.bp + 0);
        boolean z4 = cCharAt2 == '\"';
        if (z4) {
            cCharAt2 = charAt(this.bp + 1);
            i5 = 2;
        } else {
            i5 = 1;
        }
        boolean z5 = cCharAt2 == '-';
        if (z5) {
            cCharAt2 = charAt(this.bp + i5);
            i5++;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            if (cCharAt2 != 'n' || charAt(this.bp + i5) != 'u' || charAt(this.bp + i5 + 1) != 'l' || charAt(this.bp + i5 + 2) != 'l') {
                this.matchStat = -1;
                return 0.0f;
            }
            this.matchStat = 5;
            int i9 = i5 + 3;
            int i10 = i9 + 1;
            char cCharAt3 = charAt(this.bp + i9);
            if (z4 && cCharAt3 == '\"') {
                cCharAt3 = charAt(this.bp + i10);
                i10++;
            }
            while (cCharAt3 != ',') {
                if (cCharAt3 == ']') {
                    int i11 = this.bp + i10;
                    this.bp = i11;
                    this.ch = charAt(i11);
                    this.matchStat = 5;
                    this.token = 15;
                    return 0.0f;
                }
                if (!isWhitespace(cCharAt3)) {
                    this.matchStat = -1;
                    return 0.0f;
                }
                cCharAt3 = charAt(this.bp + i10);
                i10++;
            }
            int i12 = this.bp + i10;
            this.bp = i12;
            this.ch = charAt(i12);
            this.matchStat = 5;
            this.token = 16;
            return 0.0f;
        }
        long j5 = cCharAt2 - '0';
        while (true) {
            i6 = i5 + 1;
            cCharAt = charAt(this.bp + i5);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            j5 = (j5 * 10) + ((long) (cCharAt - '0'));
            i5 = i6;
        }
        long j6 = 1;
        if (cCharAt == '.') {
            int i13 = i6 + 1;
            char cCharAt4 = charAt(this.bp + i6);
            if (cCharAt4 < '0' || cCharAt4 > '9') {
                this.matchStat = -1;
                return 0.0f;
            }
            j5 = (j5 * 10) + ((long) (cCharAt4 - '0'));
            j6 = 10;
            while (true) {
                i6 = i13 + 1;
                cCharAt = charAt(this.bp + i13);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                j5 = (j5 * 10) + ((long) (cCharAt - '0'));
                j6 *= 10;
                i13 = i6;
            }
        }
        long j7 = j6;
        boolean z6 = cCharAt == 'e' || cCharAt == 'E';
        if (z6) {
            int i14 = i6 + 1;
            char cCharAt5 = charAt(this.bp + i6);
            if (cCharAt5 == '+' || cCharAt5 == '-') {
                int i15 = i14 + 1;
                cCharAt = charAt(this.bp + i14);
                i6 = i15;
            } else {
                i6 = i14;
                cCharAt = cCharAt5;
            }
            while (cCharAt >= '0' && cCharAt <= '9') {
                int i16 = i6 + 1;
                cCharAt = charAt(this.bp + i6);
                i6 = i16;
            }
        }
        if (!z4) {
            i7 = this.bp;
            i8 = ((i7 + i6) - i7) - 1;
        } else {
            if (cCharAt != '\"') {
                this.matchStat = -1;
                return 0.0f;
            }
            int i17 = i6 + 1;
            cCharAt = charAt(this.bp + i6);
            int i18 = this.bp;
            i7 = i18 + 1;
            i8 = ((i18 + i17) - i7) - 2;
            i6 = i17;
        }
        if (z6 || i8 >= 17) {
            f5 = java.lang.Float.parseFloat(subString(i7, i8));
        } else {
            f5 = (float) (j5 / j7);
            if (z5) {
                f5 = -f5;
            }
        }
        if (cCharAt != c5) {
            this.matchStat = -1;
            return f5;
        }
        int i19 = this.bp + i6;
        this.bp = i19;
        this.ch = charAt(i19);
        this.matchStat = 3;
        this.token = 16;
        return f5;
    }

    public final void scanHex() {
        char next;
        if (this.ch != 'x') {
            throw new com.alibaba.fastjson.JSONException("illegal state. " + this.ch);
        }
        next();
        if (this.ch != '\'') {
            throw new com.alibaba.fastjson.JSONException("illegal state. " + this.ch);
        }
        this.np = this.bp;
        next();
        if (this.ch == '\'') {
            next();
            this.token = 26;
            return;
        }
        while (true) {
            next = next();
            if ((next < '0' || next > '9') && (next < 'A' || next > 'F')) {
                break;
            } else {
                this.sp++;
            }
        }
        if (next == '\'') {
            this.sp++;
            next();
            this.token = 26;
        } else {
            throw new com.alibaba.fastjson.JSONException("illegal state. " + next);
        }
    }

    public final void scanIdent() {
        this.np = this.bp - 1;
        this.hasSpecial = false;
        do {
            this.sp++;
            next();
        } while (java.lang.Character.isLetterOrDigit(this.ch));
        java.lang.String strStringVal = stringVal();
        if ("null".equalsIgnoreCase(strStringVal)) {
            this.token = 8;
            return;
        }
        if ("new".equals(strStringVal)) {
            this.token = 9;
            return;
        }
        if ("true".equals(strStringVal)) {
            this.token = 6;
            return;
        }
        if ("false".equals(strStringVal)) {
            this.token = 7;
            return;
        }
        if ("undefined".equals(strStringVal)) {
            this.token = 23;
            return;
        }
        if ("Set".equals(strStringVal)) {
            this.token = 21;
        } else if ("TreeSet".equals(strStringVal)) {
            this.token = 22;
        } else {
            this.token = 18;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public int scanInt(char c5) {
        int i5;
        int i6;
        char cCharAt;
        this.matchStat = 0;
        char cCharAt2 = charAt(this.bp + 0);
        boolean z4 = cCharAt2 == '\"';
        if (z4) {
            cCharAt2 = charAt(this.bp + 1);
            i5 = 2;
        } else {
            i5 = 1;
        }
        boolean z5 = cCharAt2 == '-';
        if (z5) {
            cCharAt2 = charAt(this.bp + i5);
            i5++;
        }
        if (cCharAt2 >= '0' && cCharAt2 <= '9') {
            int i7 = cCharAt2 - '0';
            while (true) {
                i6 = i5 + 1;
                cCharAt = charAt(this.bp + i5);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                i7 = (i7 * 10) + (cCharAt - '0');
                i5 = i6;
            }
            if (cCharAt == '.') {
                this.matchStat = -1;
                return 0;
            }
            if (i7 < 0) {
                this.matchStat = -1;
                return 0;
            }
            while (cCharAt != c5) {
                if (!isWhitespace(cCharAt)) {
                    this.matchStat = -1;
                    return z5 ? -i7 : i7;
                }
                char cCharAt3 = charAt(this.bp + i6);
                i6++;
                cCharAt = cCharAt3;
            }
            int i8 = this.bp + i6;
            this.bp = i8;
            this.ch = charAt(i8);
            this.matchStat = 3;
            this.token = 16;
            return z5 ? -i7 : i7;
        }
        if (cCharAt2 != 'n' || charAt(this.bp + i5) != 'u' || charAt(this.bp + i5 + 1) != 'l' || charAt(this.bp + i5 + 2) != 'l') {
            this.matchStat = -1;
            return 0;
        }
        this.matchStat = 5;
        int i9 = i5 + 3;
        int i10 = i9 + 1;
        char cCharAt4 = charAt(this.bp + i9);
        if (z4 && cCharAt4 == '\"') {
            int i11 = i10 + 1;
            cCharAt4 = charAt(this.bp + i10);
            i10 = i11;
        }
        while (cCharAt4 != ',') {
            if (cCharAt4 == ']') {
                int i12 = this.bp + i10;
                this.bp = i12;
                this.ch = charAt(i12);
                this.matchStat = 5;
                this.token = 15;
                return 0;
            }
            if (!isWhitespace(cCharAt4)) {
                this.matchStat = -1;
                return 0;
            }
            int i13 = i10 + 1;
            cCharAt4 = charAt(this.bp + i10);
            i10 = i13;
        }
        int i14 = this.bp + i10;
        this.bp = i14;
        this.ch = charAt(i14);
        this.matchStat = 5;
        this.token = 16;
        return 0;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public long scanLong(char c5) {
        int i5;
        int i6;
        char cCharAt;
        this.matchStat = 0;
        char cCharAt2 = charAt(this.bp + 0);
        boolean z4 = cCharAt2 == '\"';
        if (z4) {
            cCharAt2 = charAt(this.bp + 1);
            i5 = 2;
        } else {
            i5 = 1;
        }
        boolean z5 = cCharAt2 == '-';
        if (z5) {
            cCharAt2 = charAt(this.bp + i5);
            i5++;
        }
        if (cCharAt2 >= '0' && cCharAt2 <= '9') {
            long j5 = cCharAt2 - '0';
            while (true) {
                i6 = i5 + 1;
                cCharAt = charAt(this.bp + i5);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                j5 = (j5 * 10) + ((long) (cCharAt - '0'));
                i5 = i6;
            }
            if (cCharAt == '.') {
                this.matchStat = -1;
                return 0L;
            }
            if (!(j5 >= 0 || (j5 == Long.MIN_VALUE && z5))) {
                throw new java.lang.NumberFormatException(subString(this.bp, i6 - 1));
            }
            if (z4) {
                if (cCharAt != '\"') {
                    this.matchStat = -1;
                    return 0L;
                }
                cCharAt = charAt(this.bp + i6);
                i6++;
            }
            while (cCharAt != c5) {
                if (!isWhitespace(cCharAt)) {
                    this.matchStat = -1;
                    return j5;
                }
                cCharAt = charAt(this.bp + i6);
                i6++;
            }
            int i7 = this.bp + i6;
            this.bp = i7;
            this.ch = charAt(i7);
            this.matchStat = 3;
            this.token = 16;
            return z5 ? -j5 : j5;
        }
        if (cCharAt2 != 'n' || charAt(this.bp + i5) != 'u' || charAt(this.bp + i5 + 1) != 'l' || charAt(this.bp + i5 + 2) != 'l') {
            this.matchStat = -1;
            return 0L;
        }
        this.matchStat = 5;
        int i8 = i5 + 3;
        int i9 = i8 + 1;
        char cCharAt3 = charAt(this.bp + i8);
        if (z4 && cCharAt3 == '\"') {
            int i10 = i9 + 1;
            cCharAt3 = charAt(this.bp + i9);
            i9 = i10;
        }
        while (cCharAt3 != ',') {
            if (cCharAt3 == ']') {
                int i11 = this.bp + i9;
                this.bp = i11;
                this.ch = charAt(i11);
                this.matchStat = 5;
                this.token = 15;
                return 0L;
            }
            if (!isWhitespace(cCharAt3)) {
                this.matchStat = -1;
                return 0L;
            }
            int i12 = i9 + 1;
            cCharAt3 = charAt(this.bp + i9);
            i9 = i12;
        }
        int i13 = this.bp + i9;
        this.bp = i13;
        this.ch = charAt(i13);
        this.matchStat = 5;
        this.token = 16;
        return 0L;
    }

    public final void scanNullOrNew() {
        scanNullOrNew(true);
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:53:0x00c5  */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void scanNumber() {
        char c5;
        char c6;
        this.np = this.bp;
        boolean z4 = true;
        if (this.ch == '-') {
            this.sp++;
            next();
        }
        while (true) {
            c5 = this.ch;
            if (c5 < '0' || c5 > '9') {
                break;
            }
            this.sp++;
            next();
        }
        boolean z5 = false;
        if (c5 == '.') {
            this.sp++;
            next();
            while (true) {
                char c7 = this.ch;
                if (c7 < '0' || c7 > '9') {
                    break;
                }
                this.sp++;
                next();
            }
            z5 = true;
        }
        int i5 = this.sp;
        if (i5 > 65535) {
            throw new com.alibaba.fastjson.JSONException("scanNumber overflow");
        }
        char c8 = this.ch;
        if (c8 != 'L' && c8 != 'S' && c8 != 'B') {
            if (c8 == 'F' || c8 == 'D') {
                this.sp = i5 + 1;
                next();
            } else if (c8 == 'e' || c8 == 'E') {
                this.sp = i5 + 1;
                next();
                char c9 = this.ch;
                if (c9 == '+' || c9 == '-') {
                    this.sp++;
                    next();
                }
                while (true) {
                    c6 = this.ch;
                    if (c6 < '0' || c6 > '9') {
                        break;
                    }
                    this.sp++;
                    next();
                }
                if (c6 == 'D' || c6 == 'F') {
                    this.sp++;
                    next();
                }
            }
            if (z4) {
                this.token = 3;
            } else {
                this.token = 2;
            }
        }
        this.sp = i5 + 1;
        next();
        z4 = z5;
        if (z4) {
            this.token = 3;
        } else {
            this.token = 2;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void scanString() {
        this.np = this.bp;
        this.hasSpecial = false;
        while (true) {
            char next = next();
            if (next == '\"') {
                this.token = 4;
                this.ch = next();
                return;
            }
            if (next != 26) {
                boolean z4 = true;
                if (next == '\\') {
                    if (!this.hasSpecial) {
                        this.hasSpecial = true;
                        int i5 = this.sp;
                        char[] cArr = this.sbuf;
                        if (i5 >= cArr.length) {
                            int length = cArr.length * 2;
                            if (i5 <= length) {
                                i5 = length;
                            }
                            char[] cArr2 = new char[i5];
                            java.lang.System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                            this.sbuf = cArr2;
                        }
                        copyTo(this.np + 1, this.sp, this.sbuf);
                    }
                    char next2 = next();
                    if (next2 == '\"') {
                        putChar('\"');
                    } else if (next2 != '\'') {
                        if (next2 != 'F') {
                            if (next2 == '\\') {
                                putChar('\\');
                            } else if (next2 == 'b') {
                                putChar('\b');
                            } else if (next2 != 'f') {
                                if (next2 == 'n') {
                                    putChar('\n');
                                } else if (next2 == 'r') {
                                    putChar('\r');
                                } else if (next2 != 'x') {
                                    switch (next2) {
                                        case '/':
                                            putChar('/');
                                            break;
                                        case '0':
                                            putChar((char) 0);
                                            break;
                                        case '1':
                                            putChar((char) 1);
                                            break;
                                        case '2':
                                            putChar((char) 2);
                                            break;
                                        case '3':
                                            putChar((char) 3);
                                            break;
                                        case '4':
                                            putChar((char) 4);
                                            break;
                                        case '5':
                                            putChar((char) 5);
                                            break;
                                        case '6':
                                            putChar((char) 6);
                                            break;
                                        case '7':
                                            putChar((char) 7);
                                            break;
                                        default:
                                            switch (next2) {
                                                case 't':
                                                    putChar('\t');
                                                    break;
                                                case 'u':
                                                    putChar((char) java.lang.Integer.parseInt(new java.lang.String(new char[]{next(), next(), next(), next()}), 16));
                                                    break;
                                                case 'v':
                                                    putChar((char) 11);
                                                    break;
                                                default:
                                                    this.ch = next2;
                                                    throw new com.alibaba.fastjson.JSONException("unclosed string : " + next2);
                                            }
                                            break;
                                    }
                                } else {
                                    char next3 = next();
                                    char next4 = next();
                                    boolean z5 = (next3 >= '0' && next3 <= '9') || (next3 >= 'a' && next3 <= 'f') || (next3 >= 'A' && next3 <= 'F');
                                    if ((next4 < '0' || next4 > '9') && ((next4 < 'a' || next4 > 'f') && (next4 < 'A' || next4 > 'F'))) {
                                        z4 = false;
                                    }
                                    if (!z5 || !z4) {
                                        throw new com.alibaba.fastjson.JSONException("invalid escape character \\x" + next3 + next4);
                                    }
                                    int[] iArr = digits;
                                    putChar((char) ((iArr[next3] * 16) + iArr[next4]));
                                }
                            }
                        }
                        putChar('\f');
                    } else {
                        putChar('\'');
                    }
                } else if (this.hasSpecial) {
                    int i6 = this.sp;
                    char[] cArr3 = this.sbuf;
                    if (i6 == cArr3.length) {
                        putChar(next);
                    } else {
                        this.sp = i6 + 1;
                        cArr3[i6] = next;
                    }
                } else {
                    this.sp++;
                }
            } else {
                if (isEOF()) {
                    throw new com.alibaba.fastjson.JSONException("unclosed string : " + next);
                }
                putChar(com.alibaba.fastjson.parser.JSONLexer.EOI);
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void scanStringArray(java.util.Collection<java.lang.String> collection, char c5) {
        int i5;
        char cCharAt;
        int i6;
        char cCharAt2;
        this.matchStat = 0;
        char cCharAt3 = charAt(this.bp + 0);
        char c6 = 'u';
        char c7 = 'n';
        if (cCharAt3 == 'n' && charAt(this.bp + 1) == 'u' && charAt(this.bp + 1 + 1) == 'l' && charAt(this.bp + 1 + 2) == 'l' && charAt(this.bp + 1 + 3) == c5) {
            int i7 = this.bp + 5;
            this.bp = i7;
            this.ch = charAt(i7);
            this.matchStat = 5;
            return;
        }
        if (cCharAt3 != '[') {
            this.matchStat = -1;
            return;
        }
        char cCharAt4 = charAt(this.bp + 1);
        int i8 = 2;
        while (true) {
            if (cCharAt4 == c7 && charAt(this.bp + i8) == c6 && charAt(this.bp + i8 + 1) == 'l' && charAt(this.bp + i8 + 2) == 'l') {
                int i9 = i8 + 3;
                i5 = i9 + 1;
                cCharAt = charAt(this.bp + i9);
                collection.add(null);
            } else {
                if (cCharAt4 == ']' && collection.size() == 0) {
                    i6 = i8 + 1;
                    cCharAt2 = charAt(this.bp + i8);
                    break;
                }
                if (cCharAt4 != '\"') {
                    this.matchStat = -1;
                    return;
                }
                int i10 = this.bp + i8;
                int iIndexOf = indexOf('\"', i10);
                if (iIndexOf == -1) {
                    throw new com.alibaba.fastjson.JSONException("unclosed str");
                }
                java.lang.String strSubString = subString(this.bp + i8, iIndexOf - i10);
                if (strSubString.indexOf(92) != -1) {
                    while (true) {
                        int i11 = 0;
                        for (int i12 = iIndexOf - 1; i12 >= 0 && charAt(i12) == '\\'; i12--) {
                            i11++;
                        }
                        if (i11 % 2 == 0) {
                            break;
                        } else {
                            iIndexOf = indexOf('\"', iIndexOf + 1);
                        }
                    }
                    int i13 = iIndexOf - i10;
                    strSubString = readString(sub_chars(this.bp + i8, i13), i13);
                }
                int i14 = this.bp;
                int i15 = i8 + (iIndexOf - (i14 + i8)) + 1;
                i5 = i15 + 1;
                cCharAt = charAt(i14 + i15);
                collection.add(strSubString);
            }
            if (cCharAt != ',') {
                if (cCharAt == ']') {
                    i6 = i5 + 1;
                    cCharAt2 = charAt(this.bp + i5);
                    break;
                } else {
                    this.matchStat = -1;
                    return;
                }
            }
            i8 = i5 + 1;
            cCharAt4 = charAt(this.bp + i5);
            c6 = 'u';
            c7 = 'n';
        }
        if (cCharAt2 != c5) {
            this.matchStat = -1;
            return;
        }
        int i16 = this.bp + i6;
        this.bp = i16;
        this.ch = charAt(i16);
        this.matchStat = 3;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.String scanSymbol(com.alibaba.fastjson.parser.SymbolTable symbolTable) {
        skipWhitespace();
        char c5 = this.ch;
        if (c5 == '\"') {
            return scanSymbol(symbolTable, '\"');
        }
        if (c5 == '\'') {
            if (isEnabled(com.alibaba.fastjson.parser.Feature.AllowSingleQuotes)) {
                return scanSymbol(symbolTable, '\'');
            }
            throw new com.alibaba.fastjson.JSONException("syntax error");
        }
        if (c5 == '}') {
            next();
            this.token = 13;
            return null;
        }
        if (c5 == ',') {
            next();
            this.token = 16;
            return null;
        }
        if (c5 == 26) {
            this.token = 20;
            return null;
        }
        if (isEnabled(com.alibaba.fastjson.parser.Feature.AllowUnQuotedFieldNames)) {
            return scanSymbolUnQuoted(symbolTable);
        }
        throw new com.alibaba.fastjson.JSONException("syntax error");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.String scanSymbolUnQuoted(com.alibaba.fastjson.parser.SymbolTable symbolTable) {
        if (this.token == 1 && this.pos == 0 && this.bp == 1) {
            this.bp = 0;
        }
        boolean[] zArr = com.alibaba.fastjson.util.IOUtils.firstIdentifierFlags;
        int i5 = this.ch;
        if (!(i5 >= zArr.length || zArr[i5])) {
            throw new com.alibaba.fastjson.JSONException("illegal identifier : " + this.ch + info());
        }
        boolean[] zArr2 = com.alibaba.fastjson.util.IOUtils.identifierFlags;
        this.np = this.bp;
        this.sp = 1;
        while (true) {
            char next = next();
            if (next < zArr2.length && !zArr2[next]) {
                break;
            }
            i5 = (i5 * 31) + next;
            this.sp++;
        }
        this.ch = charAt(this.bp);
        this.token = 18;
        if (this.sp == 4 && i5 == 3392903 && charAt(this.np) == 'n' && charAt(this.np + 1) == 'u' && charAt(this.np + 2) == 'l' && charAt(this.np + 3) == 'l') {
            return null;
        }
        return symbolTable == null ? subString(this.np, this.sp) : addSymbol(this.np, this.sp, i5, symbolTable);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public java.lang.String scanSymbolWithSeperator(com.alibaba.fastjson.parser.SymbolTable symbolTable, char c5) {
        int i5 = 0;
        this.matchStat = 0;
        char cCharAt = charAt(this.bp + 0);
        if (cCharAt == 'n') {
            if (charAt(this.bp + 1) != 'u' || charAt(this.bp + 1 + 1) != 'l' || charAt(this.bp + 1 + 2) != 'l') {
                this.matchStat = -1;
                return null;
            }
            if (charAt(this.bp + 4) != c5) {
                this.matchStat = -1;
                return null;
            }
            int i6 = this.bp + 5;
            this.bp = i6;
            this.ch = charAt(i6);
            this.matchStat = 3;
            return null;
        }
        if (cCharAt != '\"') {
            this.matchStat = -1;
            return null;
        }
        int i7 = 1;
        while (true) {
            int i8 = i7 + 1;
            char cCharAt2 = charAt(this.bp + i7);
            if (cCharAt2 == '\"') {
                int i9 = this.bp;
                int i10 = i9 + 0 + 1;
                java.lang.String strAddSymbol = addSymbol(i10, ((i9 + i8) - i10) - 1, i5, symbolTable);
                int i11 = i8 + 1;
                char cCharAt3 = charAt(this.bp + i8);
                while (cCharAt3 != c5) {
                    if (!isWhitespace(cCharAt3)) {
                        this.matchStat = -1;
                        return strAddSymbol;
                    }
                    cCharAt3 = charAt(this.bp + i11);
                    i11++;
                }
                int i12 = this.bp + i11;
                this.bp = i12;
                this.ch = charAt(i12);
                this.matchStat = 3;
                return strAddSymbol;
            }
            i5 = (i5 * 31) + cCharAt2;
            if (cCharAt2 == '\\') {
                this.matchStat = -1;
                return null;
            }
            i7 = i8;
        }
    }

    public final void scanTrue() {
        if (this.ch != 't') {
            throw new com.alibaba.fastjson.JSONException("error parse true");
        }
        next();
        if (this.ch != 'r') {
            throw new com.alibaba.fastjson.JSONException("error parse true");
        }
        next();
        if (this.ch != 'u') {
            throw new com.alibaba.fastjson.JSONException("error parse true");
        }
        next();
        if (this.ch != 'e') {
            throw new com.alibaba.fastjson.JSONException("error parse true");
        }
        next();
        char c5 = this.ch;
        if (c5 != ' ' && c5 != ',' && c5 != '}' && c5 != ']' && c5 != '\n' && c5 != '\r' && c5 != '\t' && c5 != 26 && c5 != '\f' && c5 != '\b' && c5 != ':' && c5 != '/') {
            throw new com.alibaba.fastjson.JSONException("scan true error");
        }
        this.token = 6;
    }

    public final int scanType(java.lang.String str) {
        this.matchStat = 0;
        char[] cArr = typeFieldName;
        if (!charArrayCompare(cArr)) {
            return -2;
        }
        int length = this.bp + cArr.length;
        int length2 = str.length();
        for (int i5 = 0; i5 < length2; i5++) {
            if (str.charAt(i5) != charAt(length + i5)) {
                return -1;
            }
        }
        int i6 = length + length2;
        if (charAt(i6) != '\"') {
            return -1;
        }
        int i7 = i6 + 1;
        char cCharAt = charAt(i7);
        this.ch = cCharAt;
        if (cCharAt == ',') {
            int i8 = i7 + 1;
            this.ch = charAt(i8);
            this.bp = i8;
            this.token = 16;
            return 3;
        }
        if (cCharAt == '}') {
            i7++;
            char cCharAt2 = charAt(i7);
            this.ch = cCharAt2;
            if (cCharAt2 == ',') {
                this.token = 16;
                i7++;
                this.ch = charAt(i7);
            } else if (cCharAt2 == ']') {
                this.token = 15;
                i7++;
                this.ch = charAt(i7);
            } else if (cCharAt2 == '}') {
                this.token = 13;
                i7++;
                this.ch = charAt(i7);
            } else {
                if (cCharAt2 != 26) {
                    return -1;
                }
                this.token = 20;
            }
            this.matchStat = 4;
        }
        this.bp = i7;
        return this.matchStat;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public java.lang.String scanTypeName(com.alibaba.fastjson.parser.SymbolTable symbolTable) {
        return null;
    }

    public java.util.UUID scanUUID(char c5) {
        int i5;
        char cCharAt;
        java.util.UUID uuid;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        this.matchStat = 0;
        char cCharAt2 = charAt(this.bp + 0);
        int i19 = 13;
        char c6 = 4;
        if (cCharAt2 == '\"') {
            int iIndexOf = indexOf('\"', this.bp + 1);
            if (iIndexOf == -1) {
                throw new com.alibaba.fastjson.JSONException("unclosed str");
            }
            int i20 = this.bp + 1;
            int i21 = iIndexOf - i20;
            char c7 = 'f';
            char c8 = 'A';
            char c9 = 'a';
            if (i21 == 36) {
                int i22 = 0;
                long j5 = 0;
                while (i22 < 8) {
                    char cCharAt3 = charAt(i20 + i22);
                    if (cCharAt3 < '0' || cCharAt3 > '9') {
                        if (cCharAt3 >= 'a' && cCharAt3 <= c7) {
                            i17 = cCharAt3 - 'a';
                        } else {
                            if (cCharAt3 < 'A' || cCharAt3 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i17 = cCharAt3 - 'A';
                        }
                        i18 = i17 + 10;
                    } else {
                        i18 = cCharAt3 - '0';
                    }
                    j5 = (j5 << 4) | ((long) i18);
                    i22++;
                    c7 = 'f';
                }
                int i23 = 9;
                while (i23 < i19) {
                    char cCharAt4 = charAt(i20 + i23);
                    if (cCharAt4 < '0' || cCharAt4 > '9') {
                        if (cCharAt4 >= 'a' && cCharAt4 <= 'f') {
                            i15 = cCharAt4 - 'a';
                        } else {
                            if (cCharAt4 < c8 || cCharAt4 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i15 = cCharAt4 - 'A';
                        }
                        i16 = i15 + 10;
                    } else {
                        i16 = cCharAt4 - '0';
                    }
                    j5 = (j5 << 4) | ((long) i16);
                    i23++;
                    i19 = 13;
                    c8 = 'A';
                }
                long j6 = j5;
                for (int i24 = 14; i24 < 18; i24++) {
                    char cCharAt5 = charAt(i20 + i24);
                    if (cCharAt5 < '0' || cCharAt5 > '9') {
                        if (cCharAt5 >= 'a' && cCharAt5 <= 'f') {
                            i13 = cCharAt5 - 'a';
                        } else {
                            if (cCharAt5 < 'A' || cCharAt5 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i13 = cCharAt5 - 'A';
                        }
                        i14 = i13 + 10;
                    } else {
                        i14 = cCharAt5 - '0';
                    }
                    j6 = (j6 << 4) | ((long) i14);
                }
                int i25 = 19;
                long j7 = 0;
                while (i25 < 23) {
                    char cCharAt6 = charAt(i20 + i25);
                    if (cCharAt6 < '0' || cCharAt6 > '9') {
                        if (cCharAt6 >= c9 && cCharAt6 <= 'f') {
                            i11 = cCharAt6 - 'a';
                        } else {
                            if (cCharAt6 < 'A' || cCharAt6 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i11 = cCharAt6 - 'A';
                        }
                        i12 = i11 + 10;
                    } else {
                        i12 = cCharAt6 - '0';
                    }
                    j7 = (j7 << c6) | ((long) i12);
                    i25++;
                    c9 = 'a';
                    c6 = 4;
                }
                long j8 = j7;
                for (int i26 = 24; i26 < 36; i26++) {
                    char cCharAt7 = charAt(i20 + i26);
                    if (cCharAt7 < '0' || cCharAt7 > '9') {
                        if (cCharAt7 >= 'a' && cCharAt7 <= 'f') {
                            i9 = cCharAt7 - 'a';
                        } else {
                            if (cCharAt7 < 'A' || cCharAt7 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i9 = cCharAt7 - 'A';
                        }
                        i10 = i9 + 10;
                    } else {
                        i10 = cCharAt7 - '0';
                    }
                    j8 = (j8 << 4) | ((long) i10);
                }
                uuid = new java.util.UUID(j6, j8);
                int i27 = this.bp;
                int i28 = 1 + (iIndexOf - (i27 + 1)) + 1;
                i5 = i28 + 1;
                cCharAt = charAt(i27 + i28);
            } else {
                if (i21 != 32) {
                    this.matchStat = -1;
                    return null;
                }
                long j9 = 0;
                for (int i29 = 0; i29 < 16; i29++) {
                    char cCharAt8 = charAt(i20 + i29);
                    if (cCharAt8 < '0' || cCharAt8 > '9') {
                        if (cCharAt8 >= 'a' && cCharAt8 <= 'f') {
                            i7 = cCharAt8 - 'a';
                        } else {
                            if (cCharAt8 < 'A' || cCharAt8 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i7 = cCharAt8 - 'A';
                        }
                        i8 = i7 + 10;
                    } else {
                        i8 = cCharAt8 - '0';
                    }
                    j9 = (j9 << 4) | ((long) i8);
                }
                int i30 = 16;
                long j10 = 0;
                for (int i31 = 32; i30 < i31; i31 = 32) {
                    char cCharAt9 = charAt(i20 + i30);
                    if (cCharAt9 >= '0' && cCharAt9 <= '9') {
                        i6 = cCharAt9 - '0';
                    } else if (cCharAt9 >= 'a' && cCharAt9 <= 'f') {
                        i6 = (cCharAt9 - 'a') + 10;
                    } else {
                        if (cCharAt9 < 'A' || cCharAt9 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i6 = (cCharAt9 - 'A') + 10;
                    }
                    j10 = (j10 << 4) | ((long) i6);
                    i30++;
                }
                uuid = new java.util.UUID(j9, j10);
                int i32 = this.bp;
                int i33 = 1 + (iIndexOf - (i32 + 1)) + 1;
                i5 = i33 + 1;
                cCharAt = charAt(i32 + i33);
            }
        } else {
            if (cCharAt2 != 'n' || charAt(this.bp + 1) != 'u' || charAt(this.bp + 2) != 'l' || charAt(this.bp + 3) != 'l') {
                this.matchStat = -1;
                return null;
            }
            i5 = 5;
            cCharAt = charAt(this.bp + 4);
            uuid = null;
        }
        if (cCharAt == ',') {
            int i34 = this.bp + i5;
            this.bp = i34;
            this.ch = charAt(i34);
            this.matchStat = 3;
            return uuid;
        }
        if (cCharAt != ']') {
            this.matchStat = -1;
            return null;
        }
        int i35 = i5 + 1;
        char cCharAt10 = charAt(this.bp + i5);
        if (cCharAt10 == ',') {
            this.token = 16;
            int i36 = this.bp + i35;
            this.bp = i36;
            this.ch = charAt(i36);
        } else if (cCharAt10 == ']') {
            this.token = 15;
            int i37 = this.bp + i35;
            this.bp = i37;
            this.ch = charAt(i37);
        } else if (cCharAt10 == '}') {
            this.token = 13;
            int i38 = this.bp + i35;
            this.bp = i38;
            this.ch = charAt(i38);
        } else {
            if (cCharAt10 != 26) {
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
            this.bp += i35 - 1;
            this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
        }
        this.matchStat = 4;
        return uuid;
    }

    public boolean seekArrayToItem(int i5) {
        throw new java.lang.UnsupportedOperationException();
    }

    public int seekObjectToField(long j5, boolean z4) {
        throw new java.lang.UnsupportedOperationException();
    }

    public int seekObjectToFieldDeepScan(long j5) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setFeatures(int i5) {
        this.features = i5;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setLocale(java.util.Locale locale) {
        this.locale = locale;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setTimeZone(java.util.TimeZone timeZone) {
        this.timeZone = timeZone;
    }

    public void setToken(int i5) {
        this.token = i5;
    }

    public void skipArray() {
        throw new java.lang.UnsupportedOperationException();
    }

    public void skipComment() {
        char c5;
        next();
        char c6 = this.ch;
        if (c6 == '/') {
            do {
                next();
                c5 = this.ch;
                if (c5 == '\n') {
                    next();
                    return;
                }
            } while (c5 != 26);
            return;
        }
        if (c6 != '*') {
            throw new com.alibaba.fastjson.JSONException("invalid comment");
        }
        next();
        while (true) {
            char c7 = this.ch;
            if (c7 == 26) {
                return;
            }
            if (c7 == '*') {
                next();
                if (this.ch == '/') {
                    next();
                    return;
                }
            } else {
                next();
            }
        }
    }

    public void skipObject() {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void skipWhitespace() {
        while (true) {
            char c5 = this.ch;
            if (c5 > '/') {
                return;
            }
            if (c5 == ' ' || c5 == '\r' || c5 == '\n' || c5 == '\t' || c5 == '\f' || c5 == '\b') {
                next();
            } else if (c5 != '/') {
                return;
            } else {
                skipComment();
            }
        }
    }

    public final java.lang.String stringDefaultValue() {
        return this.stringDefaultValue;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract java.lang.String stringVal();

    public abstract java.lang.String subString(int i5, int i6);

    public abstract char[] sub_chars(int i5, int i6);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int token() {
        return this.token;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.String tokenName() {
        return com.alibaba.fastjson.parser.JSONToken.name(this.token);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isEnabled(int i5) {
        return (i5 & this.features) != 0;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextTokenWithColon(int i5) {
        nextTokenWithChar(':');
    }

    public final void scanNullOrNew(boolean z4) {
        if (this.ch != 'n') {
            throw new com.alibaba.fastjson.JSONException("error parse null or new");
        }
        next();
        char c5 = this.ch;
        if (c5 != 'u') {
            if (c5 != 'e') {
                throw new com.alibaba.fastjson.JSONException("error parse new");
            }
            next();
            if (this.ch != 'w') {
                throw new com.alibaba.fastjson.JSONException("error parse new");
            }
            next();
            char c6 = this.ch;
            if (c6 != ' ' && c6 != ',' && c6 != '}' && c6 != ']' && c6 != '\n' && c6 != '\r' && c6 != '\t' && c6 != 26 && c6 != '\f' && c6 != '\b') {
                throw new com.alibaba.fastjson.JSONException("scan new error");
            }
            this.token = 9;
            return;
        }
        next();
        if (this.ch != 'l') {
            throw new com.alibaba.fastjson.JSONException("error parse null");
        }
        next();
        if (this.ch != 'l') {
            throw new com.alibaba.fastjson.JSONException("error parse null");
        }
        next();
        char c7 = this.ch;
        if (c7 != ' ' && c7 != ',' && c7 != '}' && c7 != ']' && c7 != '\n' && c7 != '\r' && c7 != '\t' && c7 != 26 && ((c7 != ':' || !z4) && c7 != '\f' && c7 != '\b')) {
            throw new com.alibaba.fastjson.JSONException("scan null error");
        }
        this.token = 8;
    }

    public int seekObjectToField(long[] jArr) {
        throw new java.lang.UnsupportedOperationException();
    }

    public void skipObject(boolean z4) {
        throw new java.lang.UnsupportedOperationException();
    }

    public final boolean isEnabled(int i5, int i6) {
        return ((this.features & i6) == 0 && (i5 & i6) == 0) ? false : true;
    }

    public int matchField(long j5) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.String scanSymbol(com.alibaba.fastjson.parser.SymbolTable symbolTable, char c5) {
        java.lang.String strAddSymbol;
        this.np = this.bp;
        this.sp = 0;
        boolean z4 = false;
        int i5 = 0;
        while (true) {
            char next = next();
            if (next == c5) {
                this.token = 4;
                if (!z4) {
                    int i6 = this.np;
                    strAddSymbol = addSymbol(i6 == -1 ? 0 : i6 + 1, this.sp, i5, symbolTable);
                } else {
                    strAddSymbol = symbolTable.addSymbol(this.sbuf, 0, this.sp, i5);
                }
                this.sp = 0;
                next();
                return strAddSymbol;
            }
            if (next == 26) {
                throw new com.alibaba.fastjson.JSONException("unclosed.str");
            }
            if (next == '\\') {
                if (!z4) {
                    int i7 = this.sp;
                    char[] cArr = this.sbuf;
                    if (i7 >= cArr.length) {
                        int length = cArr.length * 2;
                        if (i7 <= length) {
                            i7 = length;
                        }
                        char[] cArr2 = new char[i7];
                        java.lang.System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        this.sbuf = cArr2;
                    }
                    arrayCopy(this.np + 1, this.sbuf, 0, this.sp);
                    z4 = true;
                }
                char next2 = next();
                if (next2 == '\"') {
                    i5 = (i5 * 31) + 34;
                    putChar('\"');
                } else if (next2 != '\'') {
                    if (next2 != 'F') {
                        if (next2 == '\\') {
                            i5 = (i5 * 31) + 92;
                            putChar('\\');
                        } else if (next2 == 'b') {
                            i5 = (i5 * 31) + 8;
                            putChar('\b');
                        } else if (next2 != 'f') {
                            if (next2 == 'n') {
                                i5 = (i5 * 31) + 10;
                                putChar('\n');
                            } else if (next2 == 'r') {
                                i5 = (i5 * 31) + 13;
                                putChar('\r');
                            } else if (next2 != 'x') {
                                switch (next2) {
                                    case '/':
                                        i5 = (i5 * 31) + 47;
                                        putChar('/');
                                        break;
                                    case '0':
                                        i5 = (i5 * 31) + next2;
                                        putChar((char) 0);
                                        break;
                                    case '1':
                                        i5 = (i5 * 31) + next2;
                                        putChar((char) 1);
                                        break;
                                    case '2':
                                        i5 = (i5 * 31) + next2;
                                        putChar((char) 2);
                                        break;
                                    case '3':
                                        i5 = (i5 * 31) + next2;
                                        putChar((char) 3);
                                        break;
                                    case '4':
                                        i5 = (i5 * 31) + next2;
                                        putChar((char) 4);
                                        break;
                                    case '5':
                                        i5 = (i5 * 31) + next2;
                                        putChar((char) 5);
                                        break;
                                    case '6':
                                        i5 = (i5 * 31) + next2;
                                        putChar((char) 6);
                                        break;
                                    case '7':
                                        i5 = (i5 * 31) + next2;
                                        putChar((char) 7);
                                        break;
                                    default:
                                        switch (next2) {
                                            case 't':
                                                i5 = (i5 * 31) + 9;
                                                putChar('\t');
                                                break;
                                            case 'u':
                                                int i8 = java.lang.Integer.parseInt(new java.lang.String(new char[]{next(), next(), next(), next()}), 16);
                                                i5 = (i5 * 31) + i8;
                                                putChar((char) i8);
                                                break;
                                            case 'v':
                                                i5 = (i5 * 31) + 11;
                                                putChar((char) 11);
                                                break;
                                            default:
                                                this.ch = next2;
                                                throw new com.alibaba.fastjson.JSONException("unclosed.str.lit");
                                        }
                                        break;
                                }
                            } else {
                                char next3 = next();
                                this.ch = next3;
                                char next4 = next();
                                this.ch = next4;
                                int[] iArr = digits;
                                char c6 = (char) ((iArr[next3] * 16) + iArr[next4]);
                                i5 = (i5 * 31) + c6;
                                putChar(c6);
                            }
                        }
                    }
                    i5 = (i5 * 31) + 12;
                    putChar('\f');
                } else {
                    i5 = (i5 * 31) + 39;
                    putChar('\'');
                }
            } else {
                i5 = (i5 * 31) + next;
                if (!z4) {
                    this.sp++;
                } else {
                    int i9 = this.sp;
                    char[] cArr3 = this.sbuf;
                    if (i9 == cArr3.length) {
                        putChar(next);
                    } else {
                        this.sp = i9 + 1;
                        cArr3[i9] = next;
                    }
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:108:0x007b A[SYNTHETIC] */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextToken(int i5) {
        this.sp = 0;
        while (true) {
            if (i5 == 2) {
                char c5 = this.ch;
                if (c5 >= '0' && c5 <= '9') {
                    this.pos = this.bp;
                    scanNumber();
                    return;
                }
                if (c5 == '\"') {
                    this.pos = this.bp;
                    scanString();
                    return;
                } else if (c5 == '[') {
                    this.token = 14;
                    next();
                    return;
                } else if (c5 == '{') {
                    this.token = 12;
                    next();
                    return;
                }
            } else if (i5 == 4) {
                char c6 = this.ch;
                if (c6 == '\"') {
                    this.pos = this.bp;
                    scanString();
                    return;
                }
                if (c6 >= '0' && c6 <= '9') {
                    this.pos = this.bp;
                    scanNumber();
                    return;
                } else if (c6 == '[') {
                    this.token = 14;
                    next();
                    return;
                } else if (c6 == '{') {
                    this.token = 12;
                    next();
                    return;
                }
            } else if (i5 != 12) {
                if (i5 == 18) {
                    nextIdent();
                    return;
                }
                if (i5 != 20) {
                    switch (i5) {
                        case 14:
                            char c7 = this.ch;
                            if (c7 == '[') {
                                this.token = 14;
                                next();
                            } else if (c7 == '{') {
                                this.token = 12;
                                next();
                            }
                            break;
                        case 15:
                            if (this.ch == ']') {
                                this.token = 15;
                                next();
                            }
                            if (this.ch == 26) {
                                this.token = 20;
                            }
                            break;
                        case 16:
                            char c8 = this.ch;
                            if (c8 == ',') {
                                this.token = 16;
                                next();
                            } else if (c8 == '}') {
                                this.token = 13;
                                next();
                            } else if (c8 == ']') {
                                this.token = 15;
                                next();
                            } else if (c8 == 26) {
                                this.token = 20;
                            } else if (c8 == 'n') {
                                scanNullOrNew(false);
                            }
                            break;
                    }
                    return;
                }
                if (this.ch == 26) {
                    this.token = 20;
                    return;
                }
            } else {
                char c9 = this.ch;
                if (c9 == '{') {
                    this.token = 12;
                    next();
                    return;
                } else if (c9 == '[') {
                    this.token = 14;
                    next();
                    return;
                }
            }
            char c10 = this.ch;
            if (c10 != ' ' && c10 != '\n' && c10 != '\r' && c10 != '\t' && c10 != '\f' && c10 != '\b') {
                nextToken();
                return;
            }
            next();
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public java.lang.String scanString(char c5) {
        this.matchStat = 0;
        char cCharAt = charAt(this.bp + 0);
        if (cCharAt == 'n') {
            if (charAt(this.bp + 1) == 'u' && charAt(this.bp + 1 + 1) == 'l' && charAt(this.bp + 1 + 2) == 'l') {
                if (charAt(this.bp + 4) == c5) {
                    int i5 = this.bp + 5;
                    this.bp = i5;
                    this.ch = charAt(i5);
                    this.matchStat = 3;
                    return null;
                }
                this.matchStat = -1;
                return null;
            }
            this.matchStat = -1;
            return null;
        }
        int i6 = 1;
        while (cCharAt != '\"') {
            if (isWhitespace(cCharAt)) {
                cCharAt = charAt(this.bp + i6);
                i6++;
            } else {
                this.matchStat = -1;
                return stringDefaultValue();
            }
        }
        int i7 = this.bp + i6;
        int iIndexOf = indexOf('\"', i7);
        if (iIndexOf != -1) {
            java.lang.String strSubString = subString(this.bp + i6, iIndexOf - i7);
            if (strSubString.indexOf(92) != -1) {
                while (true) {
                    int i8 = 0;
                    for (int i9 = iIndexOf - 1; i9 >= 0 && charAt(i9) == '\\'; i9--) {
                        i8++;
                    }
                    if (i8 % 2 == 0) {
                        break;
                    }
                    iIndexOf = indexOf('\"', iIndexOf + 1);
                }
                int i10 = iIndexOf - i7;
                strSubString = readString(sub_chars(this.bp + 1, i10), i10);
            }
            int i11 = i6 + (iIndexOf - i7) + 1;
            int i12 = i11 + 1;
            char cCharAt2 = charAt(this.bp + i11);
            while (cCharAt2 != c5) {
                if (!isWhitespace(cCharAt2)) {
                    if (cCharAt2 == ']') {
                        int i13 = this.bp + i12;
                        this.bp = i13;
                        this.ch = charAt(i13);
                        this.matchStat = -1;
                    }
                    return strSubString;
                }
                cCharAt2 = charAt(this.bp + i12);
                i12++;
            }
            int i14 = this.bp + i12;
            this.bp = i14;
            this.ch = charAt(i14);
            this.matchStat = 3;
            this.token = 16;
            return strSubString;
        }
        throw new com.alibaba.fastjson.JSONException("unclosed str");
    }

    public java.lang.String[] scanFieldStringArray(char[] cArr, int i5, com.alibaba.fastjson.parser.SymbolTable symbolTable) {
        throw new java.lang.UnsupportedOperationException();
    }
}
