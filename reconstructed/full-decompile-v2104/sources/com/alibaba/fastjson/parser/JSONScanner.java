package com.alibaba.fastjson.parser;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class JSONScanner extends com.alibaba.fastjson.parser.JSONLexerBase {
    private final int len;
    private final java.lang.String text;

    public JSONScanner(java.lang.String str) {
        this(str, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE);
    }

    public static boolean charArrayCompare(java.lang.String str, int i5, char[] cArr) {
        int length = cArr.length;
        if (length + i5 > str.length()) {
            return false;
        }
        for (int i6 = 0; i6 < length; i6++) {
            if (cArr[i6] != str.charAt(i5 + i6)) {
                return false;
            }
        }
        return true;
    }

    public static boolean checkDate(char c5, char c6, char c7, char c8, char c9, char c10, int i5, int i6) {
        if (c5 >= '0' && c5 <= '9' && c6 >= '0' && c6 <= '9' && c7 >= '0' && c7 <= '9' && c8 >= '0' && c8 <= '9') {
            if (c9 == '0') {
                if (c10 < '1' || c10 > '9') {
                    return false;
                }
            } else if (c9 != '1' || (c10 != '0' && c10 != '1' && c10 != '2')) {
                return false;
            }
            if (i5 == 48) {
                return i6 >= 49 && i6 <= 57;
            }
            if (i5 != 49 && i5 != 50) {
                return i5 == 51 && (i6 == 48 || i6 == 49);
            }
            if (i6 >= 48 && i6 <= 57) {
                return true;
            }
        }
        return false;
    }

    private boolean checkTime(char c5, char c6, char c7, char c8, char c9, char c10) {
        if (c5 == '0') {
            if (c6 < '0' || c6 > '9') {
                return false;
            }
        } else {
            if (c5 != '1') {
                if (c5 == '2' && c6 >= '0' && c6 <= '4') {
                }
                return false;
            }
            if (c6 < '0' || c6 > '9') {
                return false;
            }
        }
        if (c7 < '0' || c7 > '5') {
            if (c7 != '6' || c8 != '0') {
                return false;
            }
        } else if (c8 < '0' || c8 > '9') {
            return false;
        }
        if (c9 < '0' || c9 > '5') {
            return c9 == '6' && c10 == '0';
        }
        return c10 >= '0' && c10 <= '9';
    }

    private void setCalendar(char c5, char c6, char c7, char c8, char c9, char c10, char c11, char c12) {
        java.util.Calendar calendar = java.util.Calendar.getInstance(this.timeZone, this.locale);
        this.calendar = calendar;
        calendar.set(1, ((c5 - '0') * com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO) + ((c6 - '0') * 100) + ((c7 - '0') * 10) + (c8 - '0'));
        this.calendar.set(2, (((c9 - '0') * 10) + (c10 - '0')) - 1);
        this.calendar.set(5, ((c11 - '0') * 10) + (c12 - '0'));
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final java.lang.String addSymbol(int i5, int i6, int i7, com.alibaba.fastjson.parser.SymbolTable symbolTable) {
        return symbolTable.addSymbol(this.text, i5, i6, i7);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void arrayCopy(int i5, char[] cArr, int i6, int i7) {
        this.text.getChars(i5, i7 + i5, cArr, i6);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public byte[] bytesValue() {
        if (this.token != 26) {
            return !this.hasSpecial ? com.alibaba.fastjson.util.IOUtils.decodeBase64(this.text, this.np + 1, this.sp) : com.alibaba.fastjson.util.IOUtils.decodeBase64(new java.lang.String(this.sbuf, 0, this.sp));
        }
        int i5 = this.np + 1;
        int i6 = this.sp;
        if (i6 % 2 != 0) {
            throw new com.alibaba.fastjson.JSONException("illegal state. " + i6);
        }
        int i7 = i6 / 2;
        byte[] bArr = new byte[i7];
        for (int i8 = 0; i8 < i7; i8++) {
            int i9 = (i8 * 2) + i5;
            char cCharAt = this.text.charAt(i9);
            char cCharAt2 = this.text.charAt(i9 + 1);
            char c5 = '0';
            int i10 = cCharAt - (cCharAt <= '9' ? '0' : '7');
            if (cCharAt2 > '9') {
                c5 = '7';
            }
            bArr[i8] = (byte) ((i10 << 4) | (cCharAt2 - c5));
        }
        return bArr;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char charAt(int i5) {
        return i5 >= this.len ? com.alibaba.fastjson.parser.JSONLexer.EOI : this.text.charAt(i5);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void copyTo(int i5, int i6, char[] cArr) {
        this.text.getChars(i5, i6 + i5, cArr, 0);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final java.math.BigDecimal decimalValue() {
        char cCharAt = charAt((this.np + this.sp) - 1);
        int i5 = this.sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i5--;
        }
        if (i5 > 65535) {
            throw new com.alibaba.fastjson.JSONException("decimal overflow");
        }
        int i6 = this.np;
        char[] cArr = this.sbuf;
        if (i5 < cArr.length) {
            this.text.getChars(i6, i6 + i5, cArr, 0);
            return new java.math.BigDecimal(this.sbuf, 0, i5, java.math.MathContext.UNLIMITED);
        }
        char[] cArr2 = new char[i5];
        this.text.getChars(i6, i6 + i5, cArr2, 0);
        return new java.math.BigDecimal(cArr2, 0, i5, java.math.MathContext.UNLIMITED);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final int indexOf(char c5, int i5) {
        return this.text.indexOf(c5, i5);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public java.lang.String info() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        int i5 = 0;
        int i6 = 1;
        int i7 = 1;
        while (i5 < this.bp) {
            if (this.text.charAt(i5) == '\n') {
                i6++;
                i7 = 1;
            }
            i5++;
            i7++;
        }
        sb.append("pos ");
        sb.append(this.bp);
        sb.append(", line ");
        sb.append(i6);
        sb.append(", column ");
        sb.append(i7);
        if (this.text.length() < 65535) {
            sb.append(this.text);
        } else {
            sb.append(this.text.substring(0, 65535));
        }
        return sb.toString();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean isEOF() {
        int i5 = this.bp;
        int i6 = this.len;
        if (i5 != i6) {
            return this.ch == 26 && i5 + 1 >= i6;
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean matchField2(char[] cArr) {
        while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(this.ch)) {
            next();
        }
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return false;
        }
        int length = this.bp + cArr.length;
        int i5 = length + 1;
        char cCharAt = this.text.charAt(length);
        while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
            cCharAt = this.text.charAt(i5);
            i5++;
        }
        if (cCharAt != ':') {
            this.matchStat = -2;
            return false;
        }
        this.bp = i5;
        this.ch = charAt(i5);
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final char next() {
        int i5 = this.bp + 1;
        this.bp = i5;
        char cCharAt = i5 >= this.len ? com.alibaba.fastjson.parser.JSONLexer.EOI : this.text.charAt(i5);
        this.ch = cCharAt;
        return cCharAt;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.String numberString() {
        char cCharAt = charAt((this.np + this.sp) - 1);
        int i5 = this.sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i5--;
        }
        return subString(this.np, i5);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public java.util.Date scanDate(char c5) {
        char cCharAt;
        long j5;
        java.util.Date date;
        int i5;
        boolean z4 = false;
        this.matchStat = 0;
        int i6 = this.bp;
        char c6 = this.ch;
        int i7 = i6 + 1;
        char cCharAt2 = charAt(i6);
        if (cCharAt2 == '\"') {
            int iIndexOf = indexOf('\"', i7);
            if (iIndexOf == -1) {
                throw new com.alibaba.fastjson.JSONException("unclosed str");
            }
            this.bp = i7;
            if (!scanISO8601DateIfMatch(false, iIndexOf - i7)) {
                this.bp = i6;
                this.ch = c6;
                this.matchStat = -1;
                return null;
            }
            date = this.calendar.getTime();
            cCharAt = charAt(iIndexOf + 1);
            this.bp = i6;
            while (cCharAt != ',' && cCharAt != ']') {
                if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
                    this.bp = i6;
                    this.ch = c6;
                    this.matchStat = -1;
                    return null;
                }
                iIndexOf++;
                cCharAt = charAt(iIndexOf + 1);
            }
            this.bp = iIndexOf + 1;
            this.ch = cCharAt;
        } else {
            char c7 = '9';
            char c8 = '0';
            if (cCharAt2 != '-' && (cCharAt2 < '0' || cCharAt2 > '9')) {
                if (cCharAt2 == 'n') {
                    int i8 = i7 + 1;
                    if (charAt(i7) == 'u') {
                        int i9 = i8 + 1;
                        if (charAt(i8) == 'l') {
                            int i10 = i9 + 1;
                            if (charAt(i9) == 'l') {
                                cCharAt = charAt(i10);
                                this.bp = i10;
                                date = null;
                            }
                        }
                    }
                }
                this.bp = i6;
                this.ch = c6;
                this.matchStat = -1;
                return null;
            }
            if (cCharAt2 == '-') {
                cCharAt2 = charAt(i7);
                i7++;
                z4 = true;
            }
            if (cCharAt2 < '0' || cCharAt2 > '9') {
                cCharAt = cCharAt2;
                j5 = 0;
            } else {
                j5 = cCharAt2 - '0';
                while (true) {
                    i5 = i7 + 1;
                    cCharAt = charAt(i7);
                    if (cCharAt < c8 || cCharAt > c7) {
                        break;
                    }
                    j5 = (j5 * 10) + ((long) (cCharAt - '0'));
                    i7 = i5;
                    c7 = '9';
                    c8 = '0';
                }
                if (cCharAt == ',' || cCharAt == ']') {
                    this.bp = i5 - 1;
                }
            }
            if (j5 < 0) {
                this.bp = i6;
                this.ch = c6;
                this.matchStat = -1;
                return null;
            }
            if (z4) {
                j5 = -j5;
            }
            date = new java.util.Date(j5);
        }
        if (cCharAt == ',') {
            int i11 = this.bp + 1;
            this.bp = i11;
            this.ch = charAt(i11);
            this.matchStat = 3;
            return date;
        }
        int i12 = this.bp + 1;
        this.bp = i12;
        char cCharAt3 = charAt(i12);
        if (cCharAt3 == ',') {
            this.token = 16;
            int i13 = this.bp + 1;
            this.bp = i13;
            this.ch = charAt(i13);
        } else if (cCharAt3 == ']') {
            this.token = 15;
            int i14 = this.bp + 1;
            this.bp = i14;
            this.ch = charAt(i14);
        } else if (cCharAt3 == '}') {
            this.token = 13;
            int i15 = this.bp + 1;
            this.bp = i15;
            this.ch = charAt(i15);
        } else {
            if (cCharAt3 != 26) {
                this.bp = i6;
                this.ch = c6;
                this.matchStat = -1;
                return null;
            }
            this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
            this.token = 20;
        }
        this.matchStat = 4;
        return date;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00c0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x00c4 -> B:52:0x00b4). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public double scanDouble(char r22) {
        /*
            Method dump skipped, instruction units count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanDouble(char):double");
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0166  */
    /* JADX WARN: Code duplicated, block: B:103:0x016c A[LOOP:0: B:78:0x00ed->B:103:0x016c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:108:0x0108 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:0x0177 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:112:0x0163 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x0125 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:115:0x0137 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:0x014b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0104  */
    /* JADX WARN: Code duplicated, block: B:86:0x0121  */
    /* JADX WARN: Code duplicated, block: B:89:0x0135 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:91:0x0147  */
    /* JADX WARN: Code duplicated, block: B:96:0x0153  */
    /* JADX WARN: Code duplicated, block: B:98:0x0159 A[LOOP:1: B:84:0x0111->B:98:0x0159, LOOP_END] */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean scanFieldBoolean(char[] cArr) {
        char cCharAt;
        boolean z4;
        char cCharAt2;
        this.matchStat = 0;
        if (!charArrayCompare(this.text, this.bp, cArr)) {
            this.matchStat = -2;
            return false;
        }
        int i5 = this.bp;
        int length = cArr.length + i5;
        int i6 = length + 1;
        char cCharAt3 = charAt(length);
        boolean z5 = cCharAt3 == '\"';
        if (z5) {
            int i7 = i6 + 1;
            char cCharAt4 = charAt(i6);
            i6 = i7;
            cCharAt3 = cCharAt4;
        }
        if (cCharAt3 != 't') {
            if (cCharAt3 == 'f') {
                int i8 = i6 + 1;
                if (charAt(i6) != 'a') {
                    this.matchStat = -1;
                    return false;
                }
                int i9 = i8 + 1;
                if (charAt(i8) != 'l') {
                    this.matchStat = -1;
                    return false;
                }
                int i10 = i9 + 1;
                if (charAt(i9) != 's') {
                    this.matchStat = -1;
                    return false;
                }
                int i11 = i10 + 1;
                if (charAt(i10) != 'e') {
                    this.matchStat = -1;
                    return false;
                }
                if (z5) {
                    int i12 = i11 + 1;
                    if (charAt(i11) != '\"') {
                        this.matchStat = -1;
                        return false;
                    }
                    i11 = i12;
                }
                this.bp = i11;
                cCharAt = charAt(i11);
            } else if (cCharAt3 == '1') {
                if (z5) {
                    int i13 = i6 + 1;
                    if (charAt(i6) != '\"') {
                        this.matchStat = -1;
                        return false;
                    }
                    i6 = i13;
                }
                this.bp = i6;
                cCharAt = charAt(i6);
            } else {
                if (cCharAt3 != '0') {
                    this.matchStat = -1;
                    return false;
                }
                if (z5) {
                    int i14 = i6 + 1;
                    if (charAt(i6) != '\"') {
                        this.matchStat = -1;
                        return false;
                    }
                    i6 = i14;
                }
                this.bp = i6;
                cCharAt = charAt(i6);
            }
            z4 = false;
            while (cCharAt != ',') {
                if (cCharAt == '}') {
                    int i15 = this.bp + 1;
                    this.bp = i15;
                    cCharAt2 = charAt(i15);
                    while (cCharAt2 != ',') {
                        if (cCharAt2 == ']') {
                            this.token = 15;
                            int i16 = this.bp + 1;
                            this.bp = i16;
                            this.ch = charAt(i16);
                        } else if (cCharAt2 == '}') {
                            this.token = 13;
                            int i17 = this.bp + 1;
                            this.bp = i17;
                            this.ch = charAt(i17);
                        } else if (cCharAt2 == 26) {
                            this.token = 20;
                        } else {
                            if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt2)) {
                                this.matchStat = -1;
                                return false;
                            }
                            int i18 = this.bp + 1;
                            this.bp = i18;
                            cCharAt2 = charAt(i18);
                        }
                        this.matchStat = 4;
                        return z4;
                    }
                    this.token = 16;
                    int i19 = this.bp + 1;
                    this.bp = i19;
                    this.ch = charAt(i19);
                    this.matchStat = 4;
                    return z4;
                }
                if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
                    this.bp = i5;
                    charAt(i5);
                    this.matchStat = -1;
                    return false;
                }
                int i20 = this.bp + 1;
                this.bp = i20;
                cCharAt = charAt(i20);
            }
            int i21 = this.bp + 1;
            this.bp = i21;
            this.ch = charAt(i21);
            this.matchStat = 3;
            this.token = 16;
            return z4;
        }
        int i22 = i6 + 1;
        if (charAt(i6) != 'r') {
            this.matchStat = -1;
            return false;
        }
        int i23 = i22 + 1;
        if (charAt(i22) != 'u') {
            this.matchStat = -1;
            return false;
        }
        int i24 = i23 + 1;
        if (charAt(i23) != 'e') {
            this.matchStat = -1;
            return false;
        }
        if (z5) {
            int i25 = i24 + 1;
            if (charAt(i24) != '\"') {
                this.matchStat = -1;
                return false;
            }
            i24 = i25;
        }
        this.bp = i24;
        cCharAt = charAt(i24);
        z4 = true;
        while (cCharAt != ',') {
            if (cCharAt == '}') {
                int i110 = this.bp + 1;
                this.bp = i110;
                cCharAt2 = charAt(i110);
                while (cCharAt2 != ',') {
                    if (cCharAt2 == ']') {
                        this.token = 15;
                        int i111 = this.bp + 1;
                        this.bp = i111;
                        this.ch = charAt(i111);
                    } else if (cCharAt2 == '}') {
                        this.token = 13;
                        int i112 = this.bp + 1;
                        this.bp = i112;
                        this.ch = charAt(i112);
                    } else if (cCharAt2 == 26) {
                        this.token = 20;
                    } else {
                        if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt2)) {
                            this.matchStat = -1;
                            return false;
                        }
                        int i113 = this.bp + 1;
                        this.bp = i113;
                        cCharAt2 = charAt(i113);
                    }
                    this.matchStat = 4;
                    return z4;
                }
                this.token = 16;
                int i114 = this.bp + 1;
                this.bp = i114;
                this.ch = charAt(i114);
                this.matchStat = 4;
                return z4;
            }
            if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
                this.bp = i5;
                charAt(i5);
                this.matchStat = -1;
                return false;
            }
            int i26 = this.bp + 1;
            this.bp = i26;
            cCharAt = charAt(i26);
        }
        int i27 = this.bp + 1;
        this.bp = i27;
        this.ch = charAt(i27);
        this.matchStat = 3;
        this.token = 16;
        return z4;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public java.util.Date scanFieldDate(char[] cArr) {
        char cCharAt;
        long j5;
        char cCharAt2;
        java.util.Date date;
        int i5;
        boolean z4 = false;
        this.matchStat = 0;
        int i6 = this.bp;
        char c5 = this.ch;
        if (!charArrayCompare(this.text, i6, cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = this.bp + cArr.length;
        int i7 = length + 1;
        char cCharAt3 = charAt(length);
        if (cCharAt3 == '\"') {
            int iIndexOf = indexOf('\"', i7);
            if (iIndexOf == -1) {
                throw new com.alibaba.fastjson.JSONException("unclosed str");
            }
            this.bp = i7;
            if (!scanISO8601DateIfMatch(false, iIndexOf - i7)) {
                this.bp = i6;
                this.matchStat = -1;
                return null;
            }
            date = this.calendar.getTime();
            cCharAt2 = charAt(iIndexOf + 1);
            this.bp = i6;
            while (cCharAt2 != ',' && cCharAt2 != '}') {
                if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt2)) {
                    this.matchStat = -1;
                    return null;
                }
                iIndexOf++;
                cCharAt2 = charAt(iIndexOf + 1);
            }
            this.bp = iIndexOf + 1;
            this.ch = cCharAt2;
        } else {
            char c6 = '9';
            char c7 = '0';
            if (cCharAt3 != '-' && (cCharAt3 < '0' || cCharAt3 > '9')) {
                this.matchStat = -1;
                return null;
            }
            if (cCharAt3 == '-') {
                cCharAt3 = charAt(i7);
                i7++;
                z4 = true;
            }
            if (cCharAt3 < '0' || cCharAt3 > '9') {
                cCharAt = cCharAt3;
                j5 = 0;
            } else {
                j5 = cCharAt3 - '0';
                while (true) {
                    i5 = i7 + 1;
                    cCharAt = charAt(i7);
                    if (cCharAt < c7 || cCharAt > c6) {
                        break;
                    }
                    j5 = (j5 * 10) + ((long) (cCharAt - '0'));
                    i7 = i5;
                    c6 = '9';
                    c7 = '0';
                }
                if (cCharAt == ',' || cCharAt == '}') {
                    this.bp = i5 - 1;
                }
            }
            if (j5 < 0) {
                this.matchStat = -1;
                return null;
            }
            if (z4) {
                j5 = -j5;
            }
            cCharAt2 = cCharAt;
            date = new java.util.Date(j5);
        }
        if (cCharAt2 == ',') {
            int i8 = this.bp + 1;
            this.bp = i8;
            this.ch = charAt(i8);
            this.matchStat = 3;
            this.token = 16;
            return date;
        }
        int i9 = this.bp + 1;
        this.bp = i9;
        char cCharAt4 = charAt(i9);
        if (cCharAt4 == ',') {
            this.token = 16;
            int i10 = this.bp + 1;
            this.bp = i10;
            this.ch = charAt(i10);
        } else if (cCharAt4 == ']') {
            this.token = 15;
            int i11 = this.bp + 1;
            this.bp = i11;
            this.ch = charAt(i11);
        } else if (cCharAt4 == '}') {
            this.token = 13;
            int i12 = this.bp + 1;
            this.bp = i12;
            this.ch = charAt(i12);
        } else {
            if (cCharAt4 != 26) {
                this.bp = i6;
                this.ch = c5;
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
        }
        this.matchStat = 4;
        return date;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public int scanFieldInt(char[] cArr) {
        int i5;
        char cCharAt;
        this.matchStat = 0;
        int i6 = this.bp;
        char c5 = this.ch;
        if (!charArrayCompare(this.text, i6, cArr)) {
            this.matchStat = -2;
            return 0;
        }
        int length = this.bp + cArr.length;
        int i7 = length + 1;
        char cCharAt2 = charAt(length);
        boolean z4 = cCharAt2 == '\"';
        if (z4) {
            cCharAt2 = charAt(i7);
            i7++;
        }
        boolean z5 = cCharAt2 == '-';
        if (z5) {
            cCharAt2 = charAt(i7);
            i7++;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            this.matchStat = -1;
            return 0;
        }
        int i8 = cCharAt2 - '0';
        while (true) {
            i5 = i7 + 1;
            cCharAt = charAt(i7);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            int i9 = i8 * 10;
            if (i9 < i8) {
                this.matchStat = -1;
                return 0;
            }
            i8 = i9 + (cCharAt - '0');
            i7 = i5;
        }
        if (cCharAt == '.') {
            this.matchStat = -1;
            return 0;
        }
        if (i8 < 0) {
            this.matchStat = -1;
            return 0;
        }
        if (z4) {
            if (cCharAt != '\"') {
                this.matchStat = -1;
                return 0;
            }
            int i10 = i5 + 1;
            char cCharAt3 = charAt(i5);
            i5 = i10;
            cCharAt = cCharAt3;
        }
        while (cCharAt != ',' && cCharAt != '}') {
            if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
                this.matchStat = -1;
                return 0;
            }
            int i11 = i5 + 1;
            char cCharAt4 = charAt(i5);
            i5 = i11;
            cCharAt = cCharAt4;
        }
        int i12 = i5 - 1;
        this.bp = i12;
        if (cCharAt == ',') {
            int i13 = i12 + 1;
            this.bp = i13;
            this.ch = charAt(i13);
            this.matchStat = 3;
            this.token = 16;
            return z5 ? -i8 : i8;
        }
        if (cCharAt == '}') {
            int i14 = i12 + 1;
            this.bp = i14;
            char cCharAt5 = charAt(i14);
            while (true) {
                if (cCharAt5 == ',') {
                    this.token = 16;
                    int i15 = this.bp + 1;
                    this.bp = i15;
                    this.ch = charAt(i15);
                    break;
                }
                if (cCharAt5 == ']') {
                    this.token = 15;
                    int i16 = this.bp + 1;
                    this.bp = i16;
                    this.ch = charAt(i16);
                    break;
                }
                if (cCharAt5 == '}') {
                    this.token = 13;
                    int i17 = this.bp + 1;
                    this.bp = i17;
                    this.ch = charAt(i17);
                    break;
                }
                if (cCharAt5 == 26) {
                    this.token = 20;
                    break;
                }
                if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt5)) {
                    this.bp = i6;
                    this.ch = c5;
                    this.matchStat = -1;
                    return 0;
                }
                int i18 = this.bp + 1;
                this.bp = i18;
                cCharAt5 = charAt(i18);
            }
            this.matchStat = 4;
        }
        return z5 ? -i8 : i8;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public long scanFieldLong(char[] cArr) {
        boolean z4;
        int i5;
        char cCharAt;
        this.matchStat = 0;
        int i6 = this.bp;
        char c5 = this.ch;
        if (!charArrayCompare(this.text, i6, cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = this.bp + cArr.length;
        int i7 = length + 1;
        char cCharAt2 = charAt(length);
        boolean z5 = cCharAt2 == '\"';
        if (z5) {
            cCharAt2 = charAt(i7);
            i7++;
        }
        if (cCharAt2 == '-') {
            z4 = true;
            cCharAt2 = charAt(i7);
            i7++;
        } else {
            z4 = false;
        }
        if (cCharAt2 >= '0') {
            char c6 = '9';
            if (cCharAt2 <= '9') {
                long j5 = cCharAt2 - '0';
                while (true) {
                    i5 = i7 + 1;
                    cCharAt = charAt(i7);
                    if (cCharAt < '0' || cCharAt > c6) {
                        break;
                    }
                    j5 = (j5 * 10) + ((long) (cCharAt - '0'));
                    i7 = i5;
                    c6 = '9';
                }
                if (cCharAt == '.') {
                    this.matchStat = -1;
                    return 0L;
                }
                if (z5) {
                    if (cCharAt != '\"') {
                        this.matchStat = -1;
                        return 0L;
                    }
                    int i8 = i5 + 1;
                    char cCharAt3 = charAt(i5);
                    i5 = i8;
                    cCharAt = cCharAt3;
                }
                if (cCharAt == ',' || cCharAt == '}') {
                    this.bp = i5 - 1;
                }
                if (!(j5 >= 0 || (j5 == Long.MIN_VALUE && z4))) {
                    this.bp = i6;
                    this.ch = c5;
                    this.matchStat = -1;
                    return 0L;
                }
                while (cCharAt != ',') {
                    if (cCharAt == '}') {
                        int i9 = this.bp + 1;
                        this.bp = i9;
                        char cCharAt4 = charAt(i9);
                        while (true) {
                            if (cCharAt4 == ',') {
                                this.token = 16;
                                int i10 = this.bp + 1;
                                this.bp = i10;
                                this.ch = charAt(i10);
                                break;
                            }
                            if (cCharAt4 == ']') {
                                this.token = 15;
                                int i11 = this.bp + 1;
                                this.bp = i11;
                                this.ch = charAt(i11);
                                break;
                            }
                            if (cCharAt4 == '}') {
                                this.token = 13;
                                int i12 = this.bp + 1;
                                this.bp = i12;
                                this.ch = charAt(i12);
                                break;
                            }
                            if (cCharAt4 == 26) {
                                this.token = 20;
                                break;
                            }
                            if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt4)) {
                                this.bp = i6;
                                this.ch = c5;
                                this.matchStat = -1;
                                return 0L;
                            }
                            int i13 = this.bp + 1;
                            this.bp = i13;
                            cCharAt4 = charAt(i13);
                        }
                        this.matchStat = 4;
                        return z4 ? -j5 : j5;
                    }
                    if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
                        this.matchStat = -1;
                        return 0L;
                    }
                    this.bp = i5;
                    int i14 = i5 + 1;
                    char cCharAt5 = charAt(i5);
                    i5 = i14;
                    cCharAt = cCharAt5;
                }
                int i15 = this.bp + 1;
                this.bp = i15;
                this.ch = charAt(i15);
                this.matchStat = 3;
                this.token = 16;
                return z4 ? -j5 : j5;
            }
        }
        this.bp = i6;
        this.ch = c5;
        this.matchStat = -1;
        return 0L;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public java.lang.String scanFieldString(char[] cArr) {
        this.matchStat = 0;
        int i5 = this.bp;
        char c5 = this.ch;
        while (!charArrayCompare(this.text, this.bp, cArr)) {
            if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(this.ch)) {
                this.matchStat = -2;
                return stringDefaultValue();
            }
            next();
            while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(this.ch)) {
                next();
            }
        }
        int length = this.bp + cArr.length;
        int i6 = length + 1;
        char cCharAt = charAt(length);
        int i7 = 0;
        if (cCharAt != '\"') {
            while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
                i7++;
                int i8 = i6 + 1;
                char cCharAt2 = charAt(i6);
                i6 = i8;
                cCharAt = cCharAt2;
            }
            if (cCharAt != '\"') {
                this.matchStat = -1;
                return stringDefaultValue();
            }
        }
        int iIndexOf = indexOf('\"', i6);
        if (iIndexOf == -1) {
            throw new com.alibaba.fastjson.JSONException("unclosed str");
        }
        java.lang.String strSubString = subString(i6, iIndexOf - i6);
        if (strSubString.indexOf(92) != -1) {
            while (true) {
                int i9 = 0;
                for (int i10 = iIndexOf - 1; i10 >= 0 && charAt(i10) == '\\'; i10--) {
                    i9++;
                }
                if (i9 % 2 == 0) {
                    break;
                }
                iIndexOf = indexOf('\"', iIndexOf + 1);
            }
            int i11 = this.bp;
            int length2 = iIndexOf - (((cArr.length + i11) + 1) + i7);
            strSubString = com.alibaba.fastjson.parser.JSONLexerBase.readString(sub_chars(i11 + cArr.length + 1 + i7, length2), length2);
        }
        if ((this.features & com.alibaba.fastjson.parser.Feature.TrimStringFieldValue.mask) != 0) {
            strSubString = strSubString.trim();
        }
        char cCharAt3 = charAt(iIndexOf + 1);
        while (cCharAt3 != ',' && cCharAt3 != '}') {
            if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt3)) {
                this.matchStat = -1;
                return stringDefaultValue();
            }
            iIndexOf++;
            cCharAt3 = charAt(iIndexOf + 1);
        }
        int i12 = iIndexOf + 1;
        this.bp = i12;
        this.ch = cCharAt3;
        if (cCharAt3 == ',') {
            int i13 = i12 + 1;
            this.bp = i13;
            this.ch = charAt(i13);
            this.matchStat = 3;
            return strSubString;
        }
        int i14 = i12 + 1;
        this.bp = i14;
        char cCharAt4 = charAt(i14);
        if (cCharAt4 == ',') {
            this.token = 16;
            int i15 = this.bp + 1;
            this.bp = i15;
            this.ch = charAt(i15);
        } else if (cCharAt4 == ']') {
            this.token = 15;
            int i16 = this.bp + 1;
            this.bp = i16;
            this.ch = charAt(i16);
        } else if (cCharAt4 == '}') {
            this.token = 13;
            int i17 = this.bp + 1;
            this.bp = i17;
            this.ch = charAt(i17);
        } else {
            if (cCharAt4 != 26) {
                this.bp = i5;
                this.ch = c5;
                this.matchStat = -1;
                return stringDefaultValue();
            }
            this.token = 20;
        }
        this.matchStat = 4;
        return strSubString;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public java.util.Collection<java.lang.String> scanFieldStringArray(char[] cArr, java.lang.Class<?> cls) {
        int i5;
        int i6;
        char cCharAt;
        java.util.Collection<java.lang.String> collection;
        char cCharAt2;
        char cCharAt3;
        int i7;
        this.matchStat = 0;
        while (true) {
            char c5 = this.ch;
            if (c5 != '\n' && c5 != ' ') {
                break;
            }
            int i8 = this.bp + 1;
            this.bp = i8;
            this.ch = i8 >= this.len ? (char) 26 : this.text.charAt(i8);
        }
        if (!charArrayCompare(this.text, this.bp, cArr)) {
            this.matchStat = -2;
            return null;
        }
        java.util.Collection<java.lang.String> collectionNewCollectionByType = newCollectionByType(cls);
        int i9 = this.bp;
        char c6 = this.ch;
        int length = cArr.length + i9;
        int i10 = length + 1;
        int i11 = -1;
        if (charAt(length) == '[') {
            int i12 = i10 + 1;
            char cCharAt4 = charAt(i10);
            while (true) {
                if (cCharAt4 == '\"') {
                    int iIndexOf = indexOf('\"', i12);
                    if (iIndexOf == i11) {
                        throw new com.alibaba.fastjson.JSONException("unclosed str");
                    }
                    java.lang.String strSubString = subString(i12, iIndexOf - i12);
                    if (strSubString.indexOf(92) != i11) {
                        while (true) {
                            int i13 = 0;
                            for (int i14 = iIndexOf - 1; i14 >= 0 && charAt(i14) == '\\'; i14--) {
                                i13++;
                            }
                            if (i13 % 2 == 0) {
                                break;
                            }
                            iIndexOf = indexOf('\"', iIndexOf + 1);
                        }
                        int i15 = iIndexOf - i12;
                        strSubString = com.alibaba.fastjson.parser.JSONLexerBase.readString(sub_chars(i12, i15), i15);
                    }
                    int i16 = iIndexOf + 1;
                    i7 = i16 + 1;
                    cCharAt3 = charAt(i16);
                    collectionNewCollectionByType.add(strSubString);
                } else {
                    if (cCharAt4 != 'n' || !this.text.startsWith("ull", i12)) {
                        if (cCharAt4 != ']' || collectionNewCollectionByType.size() != 0) {
                            this.matchStat = -1;
                            return null;
                        }
                        i6 = i12 + 1;
                        cCharAt2 = charAt(i12);
                        break;
                    }
                    int i17 = i12 + 3;
                    cCharAt3 = charAt(i17);
                    collectionNewCollectionByType.add(null);
                    i7 = i17 + 1;
                }
                if (cCharAt3 != ',') {
                    if (cCharAt3 != ']') {
                        this.matchStat = -1;
                        return null;
                    }
                    i6 = i7 + 1;
                    cCharAt2 = charAt(i7);
                    while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt2)) {
                        int i18 = i6 + 1;
                        char cCharAt5 = charAt(i6);
                        i6 = i18;
                        cCharAt2 = cCharAt5;
                    }
                    break;
                }
                cCharAt4 = charAt(i7);
                i12 = i7 + 1;
                i11 = -1;
            }
            collection = collectionNewCollectionByType;
            cCharAt = cCharAt2;
            i5 = 3;
        } else {
            if (!this.text.startsWith("ull", i10)) {
                this.matchStat = -1;
                return null;
            }
            i5 = 3;
            int i19 = i10 + 3;
            i6 = i19 + 1;
            cCharAt = charAt(i19);
            collection = null;
        }
        this.bp = i6;
        if (cCharAt == ',') {
            this.ch = charAt(i6);
            this.matchStat = i5;
            return collection;
        }
        if (cCharAt != '}') {
            this.ch = c6;
            this.bp = i9;
            this.matchStat = -1;
            return null;
        }
        char cCharAt6 = charAt(i6);
        while (cCharAt6 != ',') {
            if (cCharAt6 == ']') {
                this.token = 15;
                int i20 = this.bp + 1;
                this.bp = i20;
                this.ch = charAt(i20);
            } else if (cCharAt6 == '}') {
                this.token = 13;
                int i21 = this.bp + 1;
                this.bp = i21;
                this.ch = charAt(i21);
            } else if (cCharAt6 == 26) {
                this.token = 20;
                this.ch = cCharAt6;
            } else {
                boolean z4 = false;
                while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt6)) {
                    int i22 = i6 + 1;
                    char cCharAt7 = charAt(i6);
                    this.bp = i22;
                    z4 = true;
                    cCharAt6 = cCharAt7;
                    i6 = i22;
                }
                if (!z4) {
                    this.matchStat = -1;
                    return null;
                }
            }
            this.matchStat = 4;
            return collection;
        }
        this.token = 16;
        int i23 = this.bp + 1;
        this.bp = i23;
        this.ch = charAt(i23);
        this.matchStat = 4;
        return collection;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public long scanFieldSymbol(char[] cArr) {
        this.matchStat = 0;
        while (!charArrayCompare(this.text, this.bp, cArr)) {
            if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(this.ch)) {
                this.matchStat = -2;
                return 0L;
            }
            next();
            while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(this.ch)) {
                next();
            }
        }
        int length = this.bp + cArr.length;
        int i5 = length + 1;
        char cCharAt = charAt(length);
        if (cCharAt != '\"') {
            while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
                cCharAt = charAt(i5);
                i5++;
            }
            if (cCharAt != '\"') {
                this.matchStat = -1;
                return 0L;
            }
        }
        long j5 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode;
        while (true) {
            int i6 = i5 + 1;
            char cCharAt2 = charAt(i5);
            if (cCharAt2 == '\"') {
                this.bp = i6;
                char cCharAt3 = charAt(i6);
                this.ch = cCharAt3;
                while (cCharAt3 != ',') {
                    if (cCharAt3 == '}') {
                        next();
                        skipWhitespace();
                        char current = getCurrent();
                        if (current == ',') {
                            this.token = 16;
                            int i7 = this.bp + 1;
                            this.bp = i7;
                            this.ch = charAt(i7);
                        } else if (current == ']') {
                            this.token = 15;
                            int i8 = this.bp + 1;
                            this.bp = i8;
                            this.ch = charAt(i8);
                        } else if (current == '}') {
                            this.token = 13;
                            int i9 = this.bp + 1;
                            this.bp = i9;
                            this.ch = charAt(i9);
                        } else {
                            if (current != 26) {
                                this.matchStat = -1;
                                return 0L;
                            }
                            this.token = 20;
                        }
                        this.matchStat = 4;
                        return j5;
                    }
                    if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt3)) {
                        this.matchStat = -1;
                        return 0L;
                    }
                    int i10 = this.bp + 1;
                    this.bp = i10;
                    cCharAt3 = charAt(i10);
                }
                int i11 = this.bp + 1;
                this.bp = i11;
                this.ch = charAt(i11);
                this.matchStat = 3;
                return j5;
            }
            if (i6 > this.len) {
                this.matchStat = -1;
                return 0L;
            }
            j5 = (j5 ^ ((long) cCharAt2)) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
            i5 = i6;
        }
    }

    public boolean scanISO8601DateIfMatch() {
        return scanISO8601DateIfMatch(true);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final int scanInt(char c5) {
        int i5;
        char cCharAt;
        this.matchStat = 0;
        int i6 = this.bp;
        int i7 = i6 + 1;
        char cCharAt2 = charAt(i6);
        while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt2)) {
            cCharAt2 = charAt(i7);
            i7++;
        }
        boolean z4 = cCharAt2 == '\"';
        if (z4) {
            cCharAt2 = charAt(i7);
            i7++;
        }
        boolean z5 = cCharAt2 == '-';
        if (z5) {
            cCharAt2 = charAt(i7);
            i7++;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            if (cCharAt2 == 'n') {
                int i8 = i7 + 1;
                if (charAt(i7) == 'u') {
                    int i9 = i8 + 1;
                    if (charAt(i8) == 'l') {
                        int i10 = i9 + 1;
                        if (charAt(i9) == 'l') {
                            this.matchStat = 5;
                            int i11 = i10 + 1;
                            char cCharAt3 = charAt(i10);
                            if (z4 && cCharAt3 == '\"') {
                                int i12 = i11 + 1;
                                char cCharAt4 = charAt(i11);
                                i11 = i12;
                                cCharAt3 = cCharAt4;
                            }
                            while (cCharAt3 != ',') {
                                if (cCharAt3 == ']') {
                                    this.bp = i11;
                                    this.ch = charAt(i11);
                                    this.matchStat = 5;
                                    this.token = 15;
                                    return 0;
                                }
                                if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt3)) {
                                    this.matchStat = -1;
                                    return 0;
                                }
                                int i13 = i11 + 1;
                                char cCharAt5 = charAt(i11);
                                i11 = i13;
                                cCharAt3 = cCharAt5;
                            }
                            this.bp = i11;
                            this.ch = charAt(i11);
                            this.matchStat = 5;
                            this.token = 16;
                            return 0;
                        }
                    }
                }
            }
            this.matchStat = -1;
            return 0;
        }
        int i14 = cCharAt2 - '0';
        while (true) {
            i5 = i7 + 1;
            cCharAt = charAt(i7);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            int i15 = i14 * 10;
            if (i15 < i14) {
                throw new com.alibaba.fastjson.JSONException("parseInt error : " + subString(i6, i5 - 1));
            }
            i14 = i15 + (cCharAt - '0');
            i7 = i5;
        }
        if (cCharAt == '.') {
            this.matchStat = -1;
            return 0;
        }
        if (z4) {
            if (cCharAt != '\"') {
                this.matchStat = -1;
                return 0;
            }
            cCharAt = charAt(i5);
            i5++;
        }
        if (i14 < 0) {
            this.matchStat = -1;
            return 0;
        }
        while (cCharAt != c5) {
            if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
                this.matchStat = -1;
                return z5 ? -i14 : i14;
            }
            cCharAt = charAt(i5);
            i5++;
        }
        this.bp = i5;
        this.ch = charAt(i5);
        this.matchStat = 3;
        this.token = 16;
        return z5 ? -i14 : i14;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public long scanLong(char c5) {
        int i5;
        char cCharAt;
        boolean z4 = false;
        this.matchStat = 0;
        int i6 = this.bp;
        int i7 = i6 + 1;
        char cCharAt2 = charAt(i6);
        boolean z5 = cCharAt2 == '\"';
        if (z5) {
            int i8 = i7 + 1;
            char cCharAt3 = charAt(i7);
            i7 = i8;
            cCharAt2 = cCharAt3;
        }
        boolean z6 = cCharAt2 == '-';
        if (z6) {
            int i9 = i7 + 1;
            char cCharAt4 = charAt(i7);
            i7 = i9;
            cCharAt2 = cCharAt4;
        }
        char c6 = '0';
        if (cCharAt2 >= '0' && cCharAt2 <= '9') {
            long j5 = cCharAt2 - '0';
            while (true) {
                i5 = i7 + 1;
                cCharAt = charAt(i7);
                if (cCharAt < c6 || cCharAt > '9') {
                    break;
                }
                j5 = (j5 * 10) + ((long) (cCharAt - '0'));
                i7 = i5;
                c6 = '0';
            }
            if (cCharAt == '.') {
                this.matchStat = -1;
                return 0L;
            }
            if (z5) {
                if (cCharAt != '\"') {
                    this.matchStat = -1;
                    return 0L;
                }
                cCharAt = charAt(i5);
                i5++;
            }
            if (j5 >= 0 || (j5 == Long.MIN_VALUE && z6)) {
                z4 = true;
            }
            if (!z4) {
                this.matchStat = -1;
                return 0L;
            }
            while (cCharAt != c5) {
                if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
                    this.matchStat = -1;
                    return j5;
                }
                cCharAt = charAt(i5);
                i5++;
            }
            this.bp = i5;
            this.ch = charAt(i5);
            this.matchStat = 3;
            this.token = 16;
            return z6 ? -j5 : j5;
        }
        if (cCharAt2 == 'n') {
            int i10 = i7 + 1;
            if (charAt(i7) == 'u') {
                int i11 = i10 + 1;
                if (charAt(i10) == 'l') {
                    int i12 = i11 + 1;
                    if (charAt(i11) == 'l') {
                        this.matchStat = 5;
                        int i13 = i12 + 1;
                        char cCharAt5 = charAt(i12);
                        if (z5 && cCharAt5 == '\"') {
                            int i14 = i13 + 1;
                            char cCharAt6 = charAt(i13);
                            i13 = i14;
                            cCharAt5 = cCharAt6;
                        }
                        while (cCharAt5 != ',') {
                            if (cCharAt5 == ']') {
                                this.bp = i13;
                                this.ch = charAt(i13);
                                this.matchStat = 5;
                                this.token = 15;
                                return 0L;
                            }
                            if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt5)) {
                                this.matchStat = -1;
                                return 0L;
                            }
                            int i15 = i13 + 1;
                            char cCharAt7 = charAt(i13);
                            i13 = i15;
                            cCharAt5 = cCharAt7;
                        }
                        this.bp = i13;
                        this.ch = charAt(i13);
                        this.matchStat = 5;
                        this.token = 16;
                        return 0L;
                    }
                }
            }
        }
        this.matchStat = -1;
        return 0L;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public java.lang.String scanTypeName(com.alibaba.fastjson.parser.SymbolTable symbolTable) {
        int iIndexOf;
        if (!this.text.startsWith("\"@type\":\"", this.bp) || (iIndexOf = this.text.indexOf(34, this.bp + 9)) == -1) {
            return null;
        }
        int i5 = this.bp + 9;
        this.bp = i5;
        int iCharAt = 0;
        while (i5 < iIndexOf) {
            iCharAt = (iCharAt * 31) + this.text.charAt(i5);
            i5++;
        }
        int i6 = this.bp;
        java.lang.String strAddSymbol = addSymbol(i6, iIndexOf - i6, iCharAt, symbolTable);
        char cCharAt = this.text.charAt(iIndexOf + 1);
        if (cCharAt != ',' && cCharAt != ']') {
            return null;
        }
        int i7 = iIndexOf + 2;
        this.bp = i7;
        this.ch = this.text.charAt(i7);
        return strAddSymbol;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean seekArrayToItem(int i5) {
        if (i5 < 0) {
            throw new java.lang.IllegalArgumentException("index must > 0, but " + i5);
        }
        int i6 = this.token;
        if (i6 == 20) {
            return false;
        }
        if (i6 != 14) {
            throw new java.lang.UnsupportedOperationException();
        }
        int i7 = 0;
        while (true) {
            boolean z4 = true;
            if (i7 >= i5) {
                nextToken();
                return true;
            }
            skipWhitespace();
            char c5 = this.ch;
            if (c5 == '\"' || c5 == '\'') {
                skipString();
                char c6 = this.ch;
                if (c6 != ',') {
                    if (c6 != ']') {
                        throw new com.alibaba.fastjson.JSONException("illegal json.");
                    }
                    next();
                    nextToken(16);
                    return false;
                }
                next();
            } else {
                if (c5 == '{') {
                    next();
                    this.token = 12;
                    skipObject(false);
                } else if (c5 == '[') {
                    next();
                    this.token = 14;
                    skipArray(false);
                } else {
                    int i8 = this.bp + 1;
                    while (true) {
                        if (i8 >= this.text.length()) {
                            z4 = false;
                            break;
                        }
                        char cCharAt = this.text.charAt(i8);
                        if (cCharAt == ',') {
                            int i9 = i8 + 1;
                            this.bp = i9;
                            this.ch = charAt(i9);
                            break;
                        }
                        if (cCharAt == ']') {
                            int i10 = i8 + 1;
                            this.bp = i10;
                            this.ch = charAt(i10);
                            nextToken();
                            return false;
                        }
                        i8++;
                    }
                    if (!z4) {
                        throw new com.alibaba.fastjson.JSONException("illegal json.");
                    }
                }
                int i11 = this.token;
                if (i11 != 16) {
                    if (i11 == 15) {
                        return false;
                    }
                    throw new java.lang.UnsupportedOperationException();
                }
            }
            i7++;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public int seekObjectToField(long j5, boolean z4) {
        char c5;
        int i5 = this.token;
        int i6 = -1;
        if (i5 == 20) {
            return -1;
        }
        if (i5 != 13) {
            int i7 = 15;
            if (i5 != 15) {
                int i8 = 16;
                if (i5 != 12 && i5 != 16) {
                    throw new java.lang.UnsupportedOperationException(com.alibaba.fastjson.parser.JSONToken.name(this.token));
                }
                while (true) {
                    char c6 = this.ch;
                    if (c6 == '}') {
                        next();
                        nextToken();
                        return i6;
                    }
                    if (c6 == 26) {
                        return i6;
                    }
                    if (c6 != '\"') {
                        skipWhitespace();
                    }
                    if (this.ch != '\"') {
                        throw new java.lang.UnsupportedOperationException();
                    }
                    long j6 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode;
                    int i9 = this.bp + 1;
                    while (i9 < this.text.length()) {
                        char cCharAt = this.text.charAt(i9);
                        if (cCharAt == '\\') {
                            i9++;
                            if (i9 == this.text.length()) {
                                throw new com.alibaba.fastjson.JSONException("unclosed str, " + info());
                            }
                            cCharAt = this.text.charAt(i9);
                        }
                        if (cCharAt == '\"') {
                            int i10 = i9 + 1;
                            this.bp = i10;
                            this.ch = i10 >= this.text.length() ? (char) 26 : this.text.charAt(this.bp);
                            break;
                        }
                        j6 = (j6 ^ ((long) cCharAt)) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
                        i9++;
                    }
                    if (j6 == j5) {
                        if (this.ch != ':') {
                            skipWhitespace();
                        }
                        if (this.ch != ':') {
                            return 3;
                        }
                        int i11 = this.bp + 1;
                        this.bp = i11;
                        char cCharAt2 = i11 >= this.text.length() ? com.alibaba.fastjson.parser.JSONLexer.EOI : this.text.charAt(i11);
                        this.ch = cCharAt2;
                        if (cCharAt2 == ',') {
                            int i12 = this.bp + 1;
                            this.bp = i12;
                            this.ch = i12 >= this.text.length() ? com.alibaba.fastjson.parser.JSONLexer.EOI : this.text.charAt(i12);
                            this.token = i8;
                            return 3;
                        }
                        if (cCharAt2 == ']') {
                            int i13 = this.bp + 1;
                            this.bp = i13;
                            this.ch = i13 >= this.text.length() ? com.alibaba.fastjson.parser.JSONLexer.EOI : this.text.charAt(i13);
                            this.token = i7;
                            return 3;
                        }
                        if (cCharAt2 == '}') {
                            int i14 = this.bp + 1;
                            this.bp = i14;
                            this.ch = i14 >= this.text.length() ? com.alibaba.fastjson.parser.JSONLexer.EOI : this.text.charAt(i14);
                            this.token = 13;
                            return 3;
                        }
                        if (cCharAt2 < '0' || cCharAt2 > '9') {
                            nextToken(2);
                            return 3;
                        }
                        this.sp = 0;
                        this.pos = this.bp;
                        scanNumber();
                        return 3;
                    }
                    if (this.ch != ':') {
                        skipWhitespace();
                    }
                    if (this.ch != ':') {
                        throw new com.alibaba.fastjson.JSONException("illegal json, " + info());
                    }
                    int i15 = this.bp + 1;
                    this.bp = i15;
                    char cCharAt3 = i15 >= this.text.length() ? com.alibaba.fastjson.parser.JSONLexer.EOI : this.text.charAt(i15);
                    this.ch = cCharAt3;
                    if (cCharAt3 != '\"' && cCharAt3 != '\'' && cCharAt3 != '{' && cCharAt3 != '[' && cCharAt3 != '0' && cCharAt3 != '1' && cCharAt3 != '2' && cCharAt3 != '3' && cCharAt3 != '4' && cCharAt3 != '5' && cCharAt3 != '6' && cCharAt3 != '7' && cCharAt3 != '8' && cCharAt3 != '9' && cCharAt3 != '+' && cCharAt3 != '-') {
                        skipWhitespace();
                    }
                    char c7 = this.ch;
                    if (c7 == '-' || c7 == '+' || (c7 >= '0' && c7 <= '9')) {
                        next();
                        while (true) {
                            c5 = this.ch;
                            if (c5 < '0' || c5 > '9') {
                                break;
                            }
                            next();
                        }
                        if (c5 == '.') {
                            next();
                            while (true) {
                                char c8 = this.ch;
                                if (c8 < '0' || c8 > '9') {
                                    break;
                                }
                                next();
                            }
                        }
                        char c9 = this.ch;
                        if (c9 == 'E' || c9 == 'e') {
                            next();
                            char c10 = this.ch;
                            if (c10 == '-' || c10 == '+') {
                                next();
                            }
                            while (true) {
                                char c11 = this.ch;
                                if (c11 < '0' || c11 > '9') {
                                    break;
                                }
                                next();
                            }
                        }
                        if (this.ch != ',') {
                            skipWhitespace();
                        }
                        if (this.ch == ',') {
                            next();
                        }
                    } else if (c7 == '\"') {
                        skipString();
                        char c12 = this.ch;
                        if (c12 != ',' && c12 != '}') {
                            skipWhitespace();
                        }
                        if (this.ch == ',') {
                            next();
                        }
                    } else if (c7 == 't') {
                        next();
                        if (this.ch == 'r') {
                            next();
                            if (this.ch == 'u') {
                                next();
                                if (this.ch == 'e') {
                                    next();
                                }
                            }
                        }
                        char c13 = this.ch;
                        if (c13 != ',' && c13 != '}') {
                            skipWhitespace();
                        }
                        if (this.ch == ',') {
                            next();
                        }
                    } else if (c7 == 'n') {
                        next();
                        if (this.ch == 'u') {
                            next();
                            if (this.ch == 'l') {
                                next();
                                if (this.ch == 'l') {
                                    next();
                                }
                            }
                        }
                        char c14 = this.ch;
                        if (c14 != ',' && c14 != '}') {
                            skipWhitespace();
                        }
                        if (this.ch == ',') {
                            next();
                        }
                    } else if (c7 == 'f') {
                        next();
                        if (this.ch == 'a') {
                            next();
                            if (this.ch == 'l') {
                                next();
                                if (this.ch == 's') {
                                    next();
                                    if (this.ch == 'e') {
                                        next();
                                    }
                                }
                            }
                        }
                        char c15 = this.ch;
                        if (c15 != ',' && c15 != '}') {
                            skipWhitespace();
                        }
                        if (this.ch == ',') {
                            next();
                        }
                    } else if (c7 == '{') {
                        int i16 = this.bp + 1;
                        this.bp = i16;
                        this.ch = i16 >= this.text.length() ? com.alibaba.fastjson.parser.JSONLexer.EOI : this.text.charAt(i16);
                        if (z4) {
                            this.token = 12;
                            return 1;
                        }
                        skipObject(false);
                        if (this.token == 13) {
                            return -1;
                        }
                    } else {
                        if (c7 != '[') {
                            throw new java.lang.UnsupportedOperationException();
                        }
                        next();
                        if (z4) {
                            this.token = 14;
                            return 2;
                        }
                        skipArray(false);
                        if (this.token == 13) {
                            return -1;
                        }
                    }
                    i6 = -1;
                    i7 = 15;
                    i8 = 16;
                }
            }
        }
        nextToken();
        return -1;
    }

    public void setTime(char c5, char c6, char c7, char c8, char c9, char c10) {
        this.calendar.set(11, ((c5 - '0') * 10) + (c6 - '0'));
        this.calendar.set(12, ((c7 - '0') * 10) + (c8 - '0'));
        this.calendar.set(13, ((c9 - '0') * 10) + (c10 - '0'));
    }

    public void setTimeZone(char c5, char c6, char c7) {
        setTimeZone(c5, c6, c7, '0', '0');
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipArray() {
        skipArray(false);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipObject() {
        skipObject(false);
    }

    public final void skipString() {
        if (this.ch != '\"') {
            throw new java.lang.UnsupportedOperationException();
        }
        int i5 = this.bp;
        while (true) {
            i5++;
            if (i5 >= this.text.length()) {
                throw new com.alibaba.fastjson.JSONException("unclosed str");
            }
            char cCharAt = this.text.charAt(i5);
            if (cCharAt == '\\') {
                if (i5 < this.len - 1) {
                    i5++;
                }
            } else if (cCharAt == '\"') {
                java.lang.String str = this.text;
                int i6 = i5 + 1;
                this.bp = i6;
                this.ch = str.charAt(i6);
                return;
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.String stringVal() {
        return !this.hasSpecial ? subString(this.np + 1, this.sp) : new java.lang.String(this.sbuf, 0, this.sp);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final java.lang.String subString(int i5, int i6) {
        if (!com.alibaba.fastjson.util.ASMUtils.IS_ANDROID) {
            return this.text.substring(i5, i6 + i5);
        }
        char[] cArr = this.sbuf;
        if (i6 < cArr.length) {
            this.text.getChars(i5, i5 + i6, cArr, 0);
            return new java.lang.String(this.sbuf, 0, i6);
        }
        char[] cArr2 = new char[i6];
        this.text.getChars(i5, i6 + i5, cArr2, 0);
        return new java.lang.String(cArr2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char[] sub_chars(int i5, int i6) {
        if (com.alibaba.fastjson.util.ASMUtils.IS_ANDROID) {
            char[] cArr = this.sbuf;
            if (i6 < cArr.length) {
                this.text.getChars(i5, i6 + i5, cArr, 0);
                return this.sbuf;
            }
        }
        char[] cArr2 = new char[i6];
        this.text.getChars(i5, i6 + i5, cArr2, 0);
        return cArr2;
    }

    public JSONScanner(java.lang.String str, int i5) {
        super(i5);
        this.text = str;
        this.len = str.length();
        this.bp = -1;
        next();
        if (this.ch == 65279) {
            next();
        }
    }

    public boolean scanISO8601DateIfMatch(boolean z4) {
        return scanISO8601DateIfMatch(z4, this.len - this.bp);
    }

    public void setTimeZone(char c5, char c6, char c7, char c8, char c9) {
        int i5 = ((((c6 - '0') * 10) + (c7 - '0')) * 3600 * com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO) + ((((c8 - '0') * 10) + (c9 - '0')) * 60 * com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO);
        if (c5 == '-') {
            i5 = -i5;
        }
        if (this.calendar.getTimeZone().getRawOffset() != i5) {
            this.calendar.setTimeZone(new java.util.SimpleTimeZone(i5, java.lang.Integer.toString(i5)));
        }
    }

    public final void skipArray(boolean z4) {
        int i5 = this.bp;
        boolean z5 = false;
        int i6 = 0;
        while (i5 < this.text.length()) {
            char cCharAt = this.text.charAt(i5);
            if (cCharAt == '\\') {
                if (i5 >= this.len - 1) {
                    this.ch = cCharAt;
                    this.bp = i5;
                    throw new com.alibaba.fastjson.JSONException("illegal str, " + info());
                }
                i5++;
            } else if (cCharAt == '\"') {
                z5 = !z5;
            } else if (cCharAt != '[') {
                char cCharAt2 = com.alibaba.fastjson.parser.JSONLexer.EOI;
                if (cCharAt == '{' && z4) {
                    int i7 = this.bp + 1;
                    this.bp = i7;
                    if (i7 < this.text.length()) {
                        cCharAt2 = this.text.charAt(i7);
                    }
                    this.ch = cCharAt2;
                    skipObject(z4);
                } else if (cCharAt == ']' && !z5 && (i6 = i6 - 1) == -1) {
                    int i8 = i5 + 1;
                    this.bp = i8;
                    if (i8 == this.text.length()) {
                        this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                        this.token = 20;
                        return;
                    } else {
                        this.ch = this.text.charAt(this.bp);
                        nextToken(16);
                        return;
                    }
                }
            } else if (!z5) {
                i6++;
            }
            i5++;
        }
        if (i5 != this.text.length()) {
            return;
        }
        throw new com.alibaba.fastjson.JSONException("illegal str, " + info());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipObject(boolean z4) {
        int i5 = this.bp;
        boolean z5 = false;
        int i6 = 0;
        while (i5 < this.text.length()) {
            char cCharAt = this.text.charAt(i5);
            if (cCharAt == '\\') {
                if (i5 >= this.len - 1) {
                    this.ch = cCharAt;
                    this.bp = i5;
                    throw new com.alibaba.fastjson.JSONException("illegal str, " + info());
                }
                i5++;
            } else if (cCharAt == '\"') {
                z5 = !z5;
            } else if (cCharAt != '{') {
                if (cCharAt == '}' && !z5 && (i6 = i6 - 1) == -1) {
                    int i7 = i5 + 1;
                    this.bp = i7;
                    int length = this.text.length();
                    char cCharAt2 = com.alibaba.fastjson.parser.JSONLexer.EOI;
                    if (i7 == length) {
                        this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                        this.token = 20;
                        return;
                    }
                    char cCharAt3 = this.text.charAt(this.bp);
                    this.ch = cCharAt3;
                    if (cCharAt3 == ',') {
                        this.token = 16;
                        int i8 = this.bp + 1;
                        this.bp = i8;
                        if (i8 < this.text.length()) {
                            cCharAt2 = this.text.charAt(i8);
                        }
                        this.ch = cCharAt2;
                        return;
                    }
                    if (cCharAt3 == '}') {
                        this.token = 13;
                        next();
                        return;
                    } else if (cCharAt3 != ']') {
                        nextToken(16);
                        return;
                    } else {
                        this.token = 15;
                        next();
                        return;
                    }
                }
            } else if (!z5) {
                i6++;
            }
            i5++;
        }
        for (int i9 = 0; i9 < this.bp; i9++) {
            if (i9 < this.text.length() && this.text.charAt(i9) == ' ') {
                i5++;
            }
        }
        if (i5 != this.text.length()) {
            return;
        }
        throw new com.alibaba.fastjson.JSONException("illegal str, " + info());
    }

    private boolean scanISO8601DateIfMatch(boolean z4, int i5) {
        int i6;
        boolean z5;
        char c5;
        char cCharAt;
        char c6;
        char c7;
        char c8;
        int i7;
        int i8;
        int i9;
        int i10;
        char c9;
        char c10;
        char cCharAt2;
        char c11;
        char c12;
        char c13;
        int i11;
        int i12;
        char c14;
        int i13;
        char cCharAt3;
        char cCharAt4;
        char cCharAt5;
        int i14;
        char cCharAt6;
        char cCharAt7;
        char cCharAt8;
        if (i5 < 8) {
            return false;
        }
        char cCharAt9 = charAt(this.bp);
        char cCharAt10 = charAt(this.bp + 1);
        char cCharAt11 = charAt(this.bp + 2);
        int i15 = 3;
        char cCharAt12 = charAt(this.bp + 3);
        char cCharAt13 = charAt(this.bp + 4);
        int i16 = 5;
        char cCharAt14 = charAt(this.bp + 5);
        char cCharAt15 = charAt(this.bp + 6);
        char cCharAt16 = charAt(this.bp + 7);
        if (!z4) {
            if (i5 > 13) {
                char cCharAt17 = charAt((this.bp + i5) - 1);
                char cCharAt18 = charAt((this.bp + i5) - 2);
                if (cCharAt9 == '/' && cCharAt10 == 'D' && cCharAt11 == 'a' && cCharAt12 == 't' && cCharAt13 == 'e' && cCharAt14 == '(' && cCharAt17 == '/' && cCharAt18 == ')') {
                    int i17 = -1;
                    for (int i18 = 6; i18 < i5; i18++) {
                        char cCharAt19 = charAt(this.bp + i18);
                        if (cCharAt19 != '+') {
                            if (cCharAt19 < '0' || cCharAt19 > '9') {
                                break;
                            }
                        } else {
                            i17 = i18;
                        }
                    }
                    if (i17 == -1) {
                        return false;
                    }
                    int i19 = this.bp;
                    int i20 = i19 + 6;
                    long j5 = java.lang.Long.parseLong(subString(i20, (i19 + i17) - i20));
                    java.util.Calendar calendar = java.util.Calendar.getInstance(this.timeZone, this.locale);
                    this.calendar = calendar;
                    calendar.setTimeInMillis(j5);
                    this.token = 5;
                    return true;
                }
            }
            i16 = 5;
        }
        if (i5 == 8 || i5 == 14) {
            i6 = i16;
            z5 = false;
            c5 = ':';
        } else {
            if (!(i5 == 16 && ((cCharAt8 = charAt(this.bp + 10)) == 'T' || cCharAt8 == ' ')) && (i5 != 17 || charAt(this.bp + 6) == '-')) {
                if (i5 < 9) {
                    return false;
                }
                char cCharAt20 = charAt(this.bp + 8);
                char cCharAt21 = charAt(this.bp + 9);
                if ((cCharAt13 == '-' && cCharAt16 == '-') || (cCharAt13 == '/' && cCharAt16 == '/')) {
                    if (cCharAt21 == ' ') {
                        c14 = '0';
                        i12 = 9;
                        cCharAt10 = cCharAt20;
                        cCharAt14 = cCharAt15;
                        cCharAt11 = cCharAt11;
                    } else {
                        i12 = 10;
                        c14 = cCharAt20;
                        cCharAt14 = cCharAt15;
                        cCharAt11 = cCharAt11;
                        cCharAt14 = cCharAt14;
                        cCharAt10 = cCharAt10;
                        cCharAt10 = cCharAt21;
                    }
                } else if (cCharAt13 == '-' && cCharAt15 == '-') {
                    if (cCharAt20 == ' ') {
                        cCharAt14 = '0';
                        i12 = 8;
                        cCharAt10 = cCharAt16;
                        cCharAt12 = cCharAt12;
                        c14 = '0';
                    } else {
                        cCharAt14 = '0';
                        i12 = 9;
                        cCharAt14 = cCharAt14;
                        cCharAt10 = cCharAt10;
                        cCharAt10 = cCharAt20;
                        c14 = cCharAt16;
                        cCharAt12 = cCharAt12;
                    }
                } else if ((cCharAt11 == '.' && cCharAt14 == '.') || (cCharAt11 == '-' && cCharAt14 == '-')) {
                    cCharAt10 = cCharAt16;
                    cCharAt12 = cCharAt21;
                    cCharAt14 = cCharAt12;
                    c14 = cCharAt9;
                    i12 = 10;
                    cCharAt14 = cCharAt13;
                    cCharAt9 = cCharAt15;
                    cCharAt11 = cCharAt20;
                } else {
                    if (cCharAt20 == 'T') {
                        cCharAt14 = cCharAt13;
                        cCharAt14 = cCharAt14;
                        cCharAt9 = cCharAt9;
                        cCharAt10 = cCharAt10;
                        i12 = 8;
                        cCharAt10 = cCharAt16;
                        cCharAt12 = cCharAt12;
                        c14 = cCharAt15;
                    } else {
                        if (cCharAt13 != 24180 && cCharAt13 != 45380) {
                            return false;
                        }
                        if (cCharAt16 != 26376 && cCharAt16 != 50900) {
                            if (cCharAt15 != 26376 && cCharAt15 != 50900) {
                                return false;
                            }
                            if (cCharAt20 == 26085 || cCharAt20 == 51068) {
                                i12 = 10;
                                cCharAt14 = '0';
                                cCharAt10 = cCharAt16;
                                cCharAt12 = cCharAt12;
                                c14 = '0';
                            } else {
                                if (cCharAt21 != 26085 && cCharAt21 != 51068) {
                                    return false;
                                }
                                i12 = 10;
                                cCharAt14 = '0';
                                cCharAt14 = cCharAt14;
                                cCharAt10 = cCharAt10;
                                cCharAt10 = cCharAt20;
                                c14 = cCharAt16;
                                cCharAt12 = cCharAt12;
                            }
                        } else if (cCharAt21 == 26085 || cCharAt21 == 51068) {
                            i12 = 10;
                            c14 = '0';
                            cCharAt10 = cCharAt20;
                            cCharAt14 = cCharAt15;
                        } else {
                            if (charAt(this.bp + 10) != 26085 && charAt(this.bp + 10) != 51068) {
                                return false;
                            }
                            i12 = 11;
                            c14 = cCharAt20;
                            cCharAt14 = cCharAt15;
                            cCharAt11 = cCharAt11;
                            cCharAt14 = cCharAt14;
                            cCharAt10 = cCharAt10;
                            cCharAt10 = cCharAt21;
                        }
                    }
                    cCharAt11 = cCharAt11;
                }
                if (!checkDate(cCharAt9, cCharAt10, cCharAt11, cCharAt12, cCharAt14, cCharAt14, c14, cCharAt10)) {
                    return false;
                }
                setCalendar(cCharAt9, cCharAt10, cCharAt11, cCharAt12, cCharAt14, cCharAt14, c14, cCharAt10);
                char cCharAt22 = charAt(this.bp + i12);
                char c15 = 'T';
                if (cCharAt22 == 'T') {
                    if (i5 == 16 && i12 == 8 && charAt(this.bp + 15) == 'Z') {
                        char cCharAt23 = charAt(this.bp + i12 + 1);
                        char cCharAt24 = charAt(this.bp + i12 + 2);
                        char cCharAt25 = charAt(this.bp + i12 + 3);
                        char cCharAt26 = charAt(this.bp + i12 + 4);
                        char cCharAt27 = charAt(this.bp + i12 + 5);
                        char cCharAt28 = charAt(this.bp + i12 + 6);
                        if (!checkTime(cCharAt23, cCharAt24, cCharAt25, cCharAt26, cCharAt27, cCharAt28)) {
                            return false;
                        }
                        setTime(cCharAt23, cCharAt24, cCharAt25, cCharAt26, cCharAt27, cCharAt28);
                        this.calendar.set(14, 0);
                        if (this.calendar.getTimeZone().getRawOffset() != 0) {
                            java.lang.String[] availableIDs = java.util.TimeZone.getAvailableIDs(0);
                            if (availableIDs.length > 0) {
                                this.calendar.setTimeZone(java.util.TimeZone.getTimeZone(availableIDs[0]));
                            }
                        }
                        this.token = 5;
                        return true;
                    }
                    c15 = 'T';
                }
                if (cCharAt22 != c15 && (cCharAt22 != ' ' || z4)) {
                    if (cCharAt22 != '\"' && cCharAt22 != 26 && cCharAt22 != 26085 && cCharAt22 != 51068) {
                        if ((cCharAt22 != '+' && cCharAt22 != '-') || this.len != i12 + 6 || charAt(this.bp + i12 + 3) != ':' || charAt(this.bp + i12 + 4) != '0' || charAt(this.bp + i12 + 5) != '0') {
                            return false;
                        }
                        setTime('0', '0', '0', '0', '0', '0');
                        this.calendar.set(14, 0);
                        setTimeZone(cCharAt22, charAt(this.bp + i12 + 1), charAt(this.bp + i12 + 2));
                        return true;
                    }
                    this.calendar.set(11, 0);
                    this.calendar.set(12, 0);
                    this.calendar.set(13, 0);
                    this.calendar.set(14, 0);
                    int i21 = this.bp + i12;
                    this.bp = i21;
                    this.ch = charAt(i21);
                    this.token = 5;
                    return true;
                }
                if (i5 < i12 + 9 || charAt(this.bp + i12 + 3) != ':' || charAt(this.bp + i12 + 6) != ':') {
                    return false;
                }
                char cCharAt29 = charAt(this.bp + i12 + 1);
                char cCharAt30 = charAt(this.bp + i12 + 2);
                char cCharAt31 = charAt(this.bp + i12 + 4);
                char cCharAt32 = charAt(this.bp + i12 + 5);
                char cCharAt33 = charAt(this.bp + i12 + 7);
                char cCharAt34 = charAt(this.bp + i12 + 8);
                if (!checkTime(cCharAt29, cCharAt30, cCharAt31, cCharAt32, cCharAt33, cCharAt34)) {
                    return false;
                }
                setTime(cCharAt29, cCharAt30, cCharAt31, cCharAt32, cCharAt33, cCharAt34);
                int i22 = -1;
                if (charAt(this.bp + i12 + 9) == '.') {
                    int i23 = i12 + 11;
                    if (i5 < i23 || (cCharAt5 = charAt(this.bp + i12 + 10)) < '0' || cCharAt5 > '9') {
                        return false;
                    }
                    int i24 = cCharAt5 - '0';
                    if (i5 <= i23 || (cCharAt7 = charAt(this.bp + i12 + 11)) < '0' || cCharAt7 > '9') {
                        i14 = 1;
                    } else {
                        i24 = (i24 * 10) + (cCharAt7 - '0');
                        i14 = 2;
                    }
                    if (i14 != 2 || (cCharAt6 = charAt(this.bp + i12 + 12)) < '0' || cCharAt6 > '9') {
                        i13 = i24;
                        i22 = i14;
                    } else {
                        i13 = (cCharAt6 - '0') + (i24 * 10);
                        i22 = 3;
                    }
                } else {
                    i13 = 0;
                }
                this.calendar.set(14, i13);
                char cCharAt35 = charAt(this.bp + i12 + 10 + i22);
                if (cCharAt35 == ' ') {
                    i22++;
                    cCharAt35 = charAt(this.bp + i12 + 10 + i22);
                }
                int i25 = i22;
                char c16 = cCharAt35;
                if (c16 == '+' || c16 == '-') {
                    char cCharAt36 = charAt(this.bp + i12 + 10 + i25 + 1);
                    if (cCharAt36 < '0' || cCharAt36 > '1' || (cCharAt3 = charAt(this.bp + i12 + 10 + i25 + 2)) < '0' || cCharAt3 > '9') {
                        return false;
                    }
                    char cCharAt37 = charAt(this.bp + i12 + 10 + i25 + 3);
                    char c17 = '3';
                    if (cCharAt37 == ':') {
                        char cCharAt38 = charAt(this.bp + i12 + 10 + i25 + 4);
                        cCharAt4 = charAt(this.bp + i12 + 10 + i25 + 5);
                        if (cCharAt38 == '4' && cCharAt4 == '5') {
                            if (cCharAt36 != '1' || (cCharAt3 != '2' && cCharAt3 != '3')) {
                                if (cCharAt36 != '0') {
                                    return false;
                                }
                                if (cCharAt3 != '5' && cCharAt3 != '8') {
                                    return false;
                                }
                            }
                        } else if ((cCharAt38 != '0' && cCharAt38 != '3') || cCharAt4 != '0') {
                            return false;
                        }
                        c17 = cCharAt38;
                        i15 = 6;
                    } else {
                        if (cCharAt37 == '0') {
                            char cCharAt39 = charAt(this.bp + i12 + 10 + i25 + 4);
                            if (cCharAt39 != '0' && cCharAt39 != '3') {
                                return false;
                            }
                            c17 = cCharAt39;
                        } else {
                            if (cCharAt37 != '3' || charAt(this.bp + i12 + 10 + i25 + 4) != '0') {
                                if (cCharAt37 == '4' && charAt(this.bp + i12 + 10 + i25 + 4) == '5') {
                                    cCharAt4 = '5';
                                    i15 = 5;
                                    c17 = '4';
                                } else {
                                    c17 = '0';
                                }
                            }
                            cCharAt4 = '0';
                        }
                        i15 = 5;
                        cCharAt4 = '0';
                    }
                    setTimeZone(c16, cCharAt36, cCharAt3, c17, cCharAt4);
                } else if (c16 == 'Z') {
                    if (this.calendar.getTimeZone().getRawOffset() != 0) {
                        java.lang.String[] availableIDs2 = java.util.TimeZone.getAvailableIDs(0);
                        if (availableIDs2.length > 0) {
                            this.calendar.setTimeZone(java.util.TimeZone.getTimeZone(availableIDs2[0]));
                        }
                    }
                    i15 = 1;
                } else {
                    i15 = 0;
                }
                int i26 = i12 + 10 + i25 + i15;
                char cCharAt40 = charAt(this.bp + i26);
                if (cCharAt40 != 26 && cCharAt40 != '\"') {
                    return false;
                }
                int i27 = this.bp + i26;
                this.bp = i27;
                this.ch = charAt(i27);
                this.token = 5;
                return true;
            }
            z5 = false;
            c5 = ':';
            i6 = 5;
        }
        if (z4) {
            return z5;
        }
        char cCharAt41 = charAt(this.bp + 8);
        boolean z6 = cCharAt13 == '-' && cCharAt16 == '-';
        boolean z7 = z6 && i5 == 16;
        boolean z8 = z6 && i5 == 17;
        if (z8 || z7) {
            cCharAt = charAt(this.bp + 9);
            c6 = cCharAt14;
            c7 = cCharAt15;
            c8 = cCharAt41;
        } else if (cCharAt13 == '-' && cCharAt15 == '-') {
            c7 = cCharAt14;
            cCharAt = cCharAt16;
            c6 = '0';
            c8 = '0';
        } else {
            c6 = cCharAt13;
            c7 = cCharAt14;
            c8 = cCharAt15;
            cCharAt = cCharAt16;
        }
        if (!checkDate(cCharAt9, cCharAt10, cCharAt11, cCharAt12, c6, c7, c8, cCharAt)) {
            return false;
        }
        setCalendar(cCharAt9, cCharAt10, cCharAt11, cCharAt12, c6, c7, c8, cCharAt);
        if (i5 != 8) {
            char cCharAt42 = charAt(this.bp + 9);
            char cCharAt43 = charAt(this.bp + 10);
            char cCharAt44 = charAt(this.bp + 11);
            char cCharAt45 = charAt(this.bp + 12);
            char cCharAt46 = charAt(this.bp + 13);
            if ((z8 && cCharAt43 == 'T' && cCharAt46 == c5 && charAt(this.bp + 16) == 'Z') || (z7 && ((cCharAt43 == ' ' || cCharAt43 == 'T') && cCharAt46 == c5))) {
                char cCharAt47 = charAt(this.bp + 14);
                cCharAt2 = charAt(this.bp + 15);
                c10 = cCharAt47;
                c12 = cCharAt44;
                c9 = cCharAt45;
                c11 = '0';
                c13 = '0';
            } else {
                c9 = cCharAt42;
                c10 = cCharAt43;
                cCharAt2 = cCharAt44;
                c11 = cCharAt45;
                c12 = cCharAt41;
                c13 = cCharAt46;
            }
            if (!checkTime(c12, c9, c10, cCharAt2, c11, c13)) {
                return false;
            }
            if (i5 != 17 || z8) {
                i11 = 0;
            } else {
                char cCharAt48 = charAt(this.bp + 14);
                char cCharAt49 = charAt(this.bp + 15);
                char cCharAt50 = charAt(this.bp + 16);
                if (cCharAt48 < '0' || cCharAt48 > '9' || cCharAt49 < '0' || cCharAt49 > '9' || cCharAt50 < '0' || cCharAt50 > '9') {
                    return false;
                }
                i11 = ((cCharAt48 - '0') * 100) + ((cCharAt49 - '0') * 10) + (cCharAt50 - '0');
            }
            i8 = (c13 - '0') + ((c11 - '0') * 10);
            i10 = ((c12 - '0') * 10) + (c9 - '0');
            i9 = i11;
            i7 = ((c10 - '0') * 10) + (cCharAt2 - '0');
        } else {
            i7 = 0;
            i8 = 0;
            i9 = 0;
            i10 = 0;
        }
        this.calendar.set(11, i10);
        this.calendar.set(12, i7);
        this.calendar.set(13, i8);
        this.calendar.set(14, i9);
        this.token = i6;
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final boolean charArrayCompare(char[] cArr) {
        return charArrayCompare(this.text, this.bp, cArr);
    }

    public JSONScanner(char[] cArr, int i5) {
        this(cArr, i5, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONScanner(char[] cArr, int i5, int i6) {
        this(new java.lang.String(cArr, 0, i5), i6);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public java.lang.String[] scanFieldStringArray(char[] cArr, int i5, com.alibaba.fastjson.parser.SymbolTable symbolTable) {
        int i6;
        char cCharAt;
        int i7 = this.bp;
        char c5 = this.ch;
        while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(this.ch)) {
            next();
        }
        if (cArr != null) {
            this.matchStat = 0;
            if (!charArrayCompare(cArr)) {
                this.matchStat = -2;
                return null;
            }
            int length = this.bp + cArr.length;
            int i8 = length + 1;
            char cCharAt2 = this.text.charAt(length);
            while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt2)) {
                cCharAt2 = this.text.charAt(i8);
                i8++;
            }
            if (cCharAt2 == ':') {
                i6 = i8 + 1;
                cCharAt = this.text.charAt(i8);
                while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
                    cCharAt = this.text.charAt(i6);
                    i6++;
                }
            } else {
                this.matchStat = -1;
                return null;
            }
        } else {
            i6 = this.bp + 1;
            cCharAt = this.ch;
        }
        if (cCharAt == '[') {
            this.bp = i6;
            this.ch = this.text.charAt(i6);
            java.lang.String[] strArr = i5 >= 0 ? new java.lang.String[i5] : new java.lang.String[4];
            int i9 = 0;
            while (true) {
                if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(this.ch)) {
                    next();
                } else {
                    if (this.ch != '\"') {
                        this.bp = i7;
                        this.ch = c5;
                        this.matchStat = -1;
                        return null;
                    }
                    java.lang.String strScanSymbol = scanSymbol(symbolTable, '\"');
                    if (i9 == strArr.length) {
                        java.lang.String[] strArr2 = new java.lang.String[strArr.length + (strArr.length >> 1) + 1];
                        java.lang.System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
                        strArr = strArr2;
                    }
                    int i10 = i9 + 1;
                    strArr[i9] = strScanSymbol;
                    while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(this.ch)) {
                        next();
                    }
                    if (this.ch == ',') {
                        next();
                        i9 = i10;
                    } else {
                        if (strArr.length != i10) {
                            java.lang.String[] strArr3 = new java.lang.String[i10];
                            java.lang.System.arraycopy(strArr, 0, strArr3, 0, i10);
                            strArr = strArr3;
                        }
                        while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(this.ch)) {
                            next();
                        }
                        if (this.ch == ']') {
                            next();
                            return strArr;
                        }
                        this.bp = i7;
                        this.ch = c5;
                        this.matchStat = -1;
                        return null;
                    }
                }
            }
        } else {
            if (cCharAt == 'n' && this.text.startsWith("ull", this.bp + 1)) {
                int i11 = this.bp + 4;
                this.bp = i11;
                this.ch = this.text.charAt(i11);
                return null;
            }
            this.matchStat = -1;
            return null;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public int seekObjectToField(long[] jArr) {
        char c5;
        int i5 = this.token;
        if (i5 != 12 && i5 != 16) {
            throw new java.lang.UnsupportedOperationException();
        }
        while (true) {
            char c6 = this.ch;
            if (c6 == '}') {
                next();
                nextToken();
                this.matchStat = -1;
                return -1;
            }
            char cCharAt = com.alibaba.fastjson.parser.JSONLexer.EOI;
            if (c6 == 26) {
                this.matchStat = -1;
                return -1;
            }
            if (c6 != '\"') {
                skipWhitespace();
            }
            if (this.ch == '\"') {
                long j5 = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode;
                int i6 = this.bp;
                while (true) {
                    i6++;
                    if (i6 >= this.text.length()) {
                        break;
                    }
                    char cCharAt2 = this.text.charAt(i6);
                    if (cCharAt2 == '\\') {
                        i6++;
                        if (i6 != this.text.length()) {
                            cCharAt2 = this.text.charAt(i6);
                        } else {
                            throw new com.alibaba.fastjson.JSONException("unclosed str, " + info());
                        }
                    }
                    if (cCharAt2 == '\"') {
                        int i7 = i6 + 1;
                        this.bp = i7;
                        this.ch = i7 >= this.text.length() ? (char) 26 : this.text.charAt(this.bp);
                        break;
                    }
                    j5 = (j5 ^ ((long) cCharAt2)) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
                }
                int i8 = 0;
                while (true) {
                    if (i8 >= jArr.length) {
                        i8 = -1;
                        break;
                    }
                    if (j5 == jArr[i8]) {
                        break;
                    }
                    i8++;
                }
                if (i8 != -1) {
                    if (this.ch != ':') {
                        skipWhitespace();
                    }
                    if (this.ch == ':') {
                        int i9 = this.bp + 1;
                        this.bp = i9;
                        char cCharAt3 = i9 >= this.text.length() ? (char) 26 : this.text.charAt(i9);
                        this.ch = cCharAt3;
                        if (cCharAt3 == ',') {
                            int i10 = this.bp + 1;
                            this.bp = i10;
                            if (i10 < this.text.length()) {
                                cCharAt = this.text.charAt(i10);
                            }
                            this.ch = cCharAt;
                            this.token = 16;
                        } else if (cCharAt3 == ']') {
                            int i11 = this.bp + 1;
                            this.bp = i11;
                            if (i11 < this.text.length()) {
                                cCharAt = this.text.charAt(i11);
                            }
                            this.ch = cCharAt;
                            this.token = 15;
                        } else if (cCharAt3 == '}') {
                            int i12 = this.bp + 1;
                            this.bp = i12;
                            if (i12 < this.text.length()) {
                                cCharAt = this.text.charAt(i12);
                            }
                            this.ch = cCharAt;
                            this.token = 13;
                        } else if (cCharAt3 >= '0' && cCharAt3 <= '9') {
                            this.sp = 0;
                            this.pos = this.bp;
                            scanNumber();
                        } else {
                            nextToken(2);
                        }
                    }
                    this.matchStat = 3;
                    return i8;
                }
                if (this.ch != ':') {
                    skipWhitespace();
                }
                if (this.ch == ':') {
                    int i13 = this.bp + 1;
                    this.bp = i13;
                    char cCharAt4 = i13 >= this.text.length() ? (char) 26 : this.text.charAt(i13);
                    this.ch = cCharAt4;
                    if (cCharAt4 != '\"' && cCharAt4 != '\'' && cCharAt4 != '{' && cCharAt4 != '[' && cCharAt4 != '0' && cCharAt4 != '1' && cCharAt4 != '2' && cCharAt4 != '3' && cCharAt4 != '4' && cCharAt4 != '5' && cCharAt4 != '6' && cCharAt4 != '7' && cCharAt4 != '8' && cCharAt4 != '9' && cCharAt4 != '+' && cCharAt4 != '-') {
                        skipWhitespace();
                    }
                    char c7 = this.ch;
                    if (c7 == '-' || c7 == '+' || (c7 >= '0' && c7 <= '9')) {
                        next();
                        while (true) {
                            c5 = this.ch;
                            if (c5 < '0' || c5 > '9') {
                                break;
                            }
                            next();
                        }
                        if (c5 == '.') {
                            next();
                            while (true) {
                                char c8 = this.ch;
                                if (c8 < '0' || c8 > '9') {
                                    break;
                                }
                                next();
                            }
                        }
                        char c9 = this.ch;
                        if (c9 == 'E' || c9 == 'e') {
                            next();
                            char c10 = this.ch;
                            if (c10 == '-' || c10 == '+') {
                                next();
                            }
                            while (true) {
                                char c11 = this.ch;
                                if (c11 < '0' || c11 > '9') {
                                    break;
                                }
                                next();
                            }
                        }
                        if (this.ch != ',') {
                            skipWhitespace();
                        }
                        if (this.ch == ',') {
                            next();
                        }
                    } else if (c7 == '\"') {
                        skipString();
                        char c12 = this.ch;
                        if (c12 != ',' && c12 != '}') {
                            skipWhitespace();
                        }
                        if (this.ch == ',') {
                            next();
                        }
                    } else if (c7 == '{') {
                        int i14 = this.bp + 1;
                        this.bp = i14;
                        if (i14 < this.text.length()) {
                            cCharAt = this.text.charAt(i14);
                        }
                        this.ch = cCharAt;
                        skipObject(false);
                    } else if (c7 == '[') {
                        next();
                        skipArray(false);
                    } else {
                        throw new java.lang.UnsupportedOperationException();
                    }
                } else {
                    throw new com.alibaba.fastjson.JSONException("illegal json, " + info());
                }
            } else {
                throw new java.lang.UnsupportedOperationException();
            }
        }
    }
}
