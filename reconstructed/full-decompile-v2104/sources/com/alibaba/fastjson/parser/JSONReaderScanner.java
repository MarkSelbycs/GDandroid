package com.alibaba.fastjson.parser;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class JSONReaderScanner extends com.alibaba.fastjson.parser.JSONLexerBase {
    private static final java.lang.ThreadLocal<char[]> BUF_LOCAL = new java.lang.ThreadLocal<>();
    private char[] buf;
    private int bufLength;
    private java.io.Reader reader;

    public JSONReaderScanner(java.lang.String str) {
        this(str, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final java.lang.String addSymbol(int i5, int i6, int i7, com.alibaba.fastjson.parser.SymbolTable symbolTable) {
        return symbolTable.addSymbol(this.buf, i5, i6, i7);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void arrayCopy(int i5, char[] cArr, int i6, int i7) {
        java.lang.System.arraycopy(this.buf, i5, cArr, i6, i7);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public byte[] bytesValue() {
        if (this.token != 26) {
            return com.alibaba.fastjson.util.IOUtils.decodeBase64(this.buf, this.np + 1, this.sp);
        }
        throw new com.alibaba.fastjson.JSONException("TODO");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final boolean charArrayCompare(char[] cArr) {
        for (int i5 = 0; i5 < cArr.length; i5++) {
            if (charAt(this.bp + i5) != cArr[i5]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char charAt(int i5) {
        int i6 = this.bufLength;
        if (i5 >= i6) {
            if (i6 == -1) {
                return i5 < this.sp ? this.buf[i5] : com.alibaba.fastjson.parser.JSONLexer.EOI;
            }
            int i7 = this.bp;
            if (i7 == 0) {
                char[] cArr = this.buf;
                int length = (cArr.length * 3) / 2;
                char[] cArr2 = new char[length];
                java.lang.System.arraycopy(cArr, i7, cArr2, 0, i6);
                int i8 = this.bufLength;
                try {
                    this.bufLength += this.reader.read(cArr2, i8, length - i8);
                    this.buf = cArr2;
                } catch (java.io.IOException e5) {
                    throw new com.alibaba.fastjson.JSONException(e5.getMessage(), e5);
                }
            } else {
                int i9 = i6 - i7;
                if (i9 > 0) {
                    char[] cArr3 = this.buf;
                    java.lang.System.arraycopy(cArr3, i7, cArr3, 0, i9);
                }
                try {
                    java.io.Reader reader = this.reader;
                    char[] cArr4 = this.buf;
                    int i10 = reader.read(cArr4, i9, cArr4.length - i9);
                    this.bufLength = i10;
                    if (i10 == 0) {
                        throw new com.alibaba.fastjson.JSONException("illegal state, textLength is zero");
                    }
                    if (i10 == -1) {
                        return com.alibaba.fastjson.parser.JSONLexer.EOI;
                    }
                    this.bufLength = i10 + i9;
                    int i11 = this.bp;
                    i5 -= i11;
                    this.np -= i11;
                    this.bp = 0;
                } catch (java.io.IOException e6) {
                    throw new com.alibaba.fastjson.JSONException(e6.getMessage(), e6);
                }
            }
        }
        return this.buf[i5];
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        char[] cArr = this.buf;
        if (cArr.length <= 65536) {
            BUF_LOCAL.set(cArr);
        }
        this.buf = null;
        com.alibaba.fastjson.util.IOUtils.close(this.reader);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void copyTo(int i5, int i6, char[] cArr) {
        java.lang.System.arraycopy(this.buf, i5, cArr, 0, i6);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final java.math.BigDecimal decimalValue() {
        int i5 = this.np;
        if (i5 == -1) {
            i5 = 0;
        }
        char cCharAt = charAt((this.sp + i5) - 1);
        int i6 = this.sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i6--;
        }
        if (i6 <= 65535) {
            return new java.math.BigDecimal(this.buf, i5, i6, java.math.MathContext.UNLIMITED);
        }
        throw new com.alibaba.fastjson.JSONException("decimal overflow");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final int indexOf(char c5, int i5) {
        int i6 = i5 - this.bp;
        while (true) {
            char cCharAt = charAt(this.bp + i6);
            if (c5 == cCharAt) {
                return i6 + this.bp;
            }
            if (cCharAt == 26) {
                return -1;
            }
            i6++;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final boolean isBlankInput() {
        int i5 = 0;
        while (true) {
            char c5 = this.buf[i5];
            if (c5 == 26) {
                this.token = 20;
                return true;
            }
            if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(c5)) {
                return false;
            }
            i5++;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean isEOF() {
        if (this.bufLength == -1) {
            return true;
        }
        int i5 = this.bp;
        char[] cArr = this.buf;
        if (i5 != cArr.length) {
            return this.ch == 26 && i5 + 1 >= cArr.length;
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final char next() {
        int i5 = this.bp + 1;
        this.bp = i5;
        int i6 = this.bufLength;
        if (i5 >= i6) {
            if (i6 == -1) {
                return com.alibaba.fastjson.parser.JSONLexer.EOI;
            }
            int i7 = this.sp;
            if (i7 > 0) {
                int i8 = i6 - i7;
                if (this.ch == '\"' && i8 > 0) {
                    i8--;
                }
                char[] cArr = this.buf;
                java.lang.System.arraycopy(cArr, i8, cArr, 0, i7);
            }
            this.np = -1;
            int i9 = this.sp;
            this.bp = i9;
            try {
                char[] cArr2 = this.buf;
                int length = cArr2.length - i9;
                if (length == 0) {
                    char[] cArr3 = new char[cArr2.length * 2];
                    java.lang.System.arraycopy(cArr2, 0, cArr3, 0, cArr2.length);
                    this.buf = cArr3;
                    length = cArr3.length - i9;
                }
                int i10 = this.reader.read(this.buf, this.bp, length);
                this.bufLength = i10;
                if (i10 == 0) {
                    throw new com.alibaba.fastjson.JSONException("illegal stat, textLength is zero");
                }
                if (i10 == -1) {
                    this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                    return com.alibaba.fastjson.parser.JSONLexer.EOI;
                }
                this.bufLength = i10 + this.bp;
                i5 = i9;
            } catch (java.io.IOException e5) {
                throw new com.alibaba.fastjson.JSONException(e5.getMessage(), e5);
            }
        }
        char c5 = this.buf[i5];
        this.ch = c5;
        return c5;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.String numberString() {
        int i5 = this.np;
        if (i5 == -1) {
            i5 = 0;
        }
        char cCharAt = charAt((this.sp + i5) - 1);
        int i6 = this.sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i6--;
        }
        return new java.lang.String(this.buf, i5, i6);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.String stringVal() {
        if (this.hasSpecial) {
            return new java.lang.String(this.sbuf, 0, this.sp);
        }
        int i5 = this.np + 1;
        if (i5 < 0) {
            throw new java.lang.IllegalStateException();
        }
        char[] cArr = this.buf;
        int length = cArr.length;
        int i6 = this.sp;
        if (i5 <= length - i6) {
            return new java.lang.String(cArr, i5, i6);
        }
        throw new java.lang.IllegalStateException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final java.lang.String subString(int i5, int i6) {
        if (i6 >= 0) {
            return new java.lang.String(this.buf, i5, i6);
        }
        throw new java.lang.StringIndexOutOfBoundsException(i6);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char[] sub_chars(int i5, int i6) {
        if (i6 < 0) {
            throw new java.lang.StringIndexOutOfBoundsException(i6);
        }
        if (i5 == 0) {
            return this.buf;
        }
        char[] cArr = new char[i6];
        java.lang.System.arraycopy(this.buf, i5, cArr, 0, i6);
        return cArr;
    }

    public JSONReaderScanner(java.lang.String str, int i5) {
        this(new java.io.StringReader(str), i5);
    }

    public JSONReaderScanner(char[] cArr, int i5) {
        this(cArr, i5, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONReaderScanner(java.io.Reader reader) {
        this(reader, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONReaderScanner(java.io.Reader reader, int i5) {
        super(i5);
        this.reader = reader;
        java.lang.ThreadLocal<char[]> threadLocal = BUF_LOCAL;
        char[] cArr = threadLocal.get();
        this.buf = cArr;
        if (cArr != null) {
            threadLocal.set(null);
        }
        if (this.buf == null) {
            this.buf = new char[16384];
        }
        try {
            this.bufLength = reader.read(this.buf);
            this.bp = -1;
            next();
            if (this.ch == 65279) {
                next();
            }
        } catch (java.io.IOException e5) {
            throw new com.alibaba.fastjson.JSONException(e5.getMessage(), e5);
        }
    }

    public JSONReaderScanner(char[] cArr, int i5, int i6) {
        this(new java.io.CharArrayReader(cArr, 0, i5), i6);
    }
}
