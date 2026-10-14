package com.alibaba.fastjson;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class JSONValidator implements java.lang.Cloneable, java.io.Closeable {
    public char ch;
    public boolean eof;
    public com.alibaba.fastjson.JSONValidator.Type type;
    private java.lang.Boolean validateResult;
    public int pos = -1;
    public int count = 0;
    public boolean supportMultiValue = false;

    public static class ReaderValidator extends com.alibaba.fastjson.JSONValidator {
        private static final java.lang.ThreadLocal<char[]> bufLocal = new java.lang.ThreadLocal<>();
        private char[] buf;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final java.io.Reader f3317r;
        private int end = -1;
        private int readCount = 0;

        public ReaderValidator(java.io.Reader reader) {
            this.f3317r = reader;
            java.lang.ThreadLocal<char[]> threadLocal = bufLocal;
            char[] cArr = threadLocal.get();
            this.buf = cArr;
            if (cArr != null) {
                threadLocal.set(null);
            } else {
                this.buf = new char[8192];
            }
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            bufLocal.set(this.buf);
            this.f3317r.close();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public void next() {
            int i5 = this.pos;
            if (i5 < this.end) {
                char[] cArr = this.buf;
                int i6 = i5 + 1;
                this.pos = i6;
                this.ch = cArr[i6];
                return;
            }
            if (this.eof) {
                return;
            }
            try {
                java.io.Reader reader = this.f3317r;
                char[] cArr2 = this.buf;
                int i7 = reader.read(cArr2, 0, cArr2.length);
                this.readCount++;
                if (i7 > 0) {
                    this.ch = this.buf[0];
                    this.pos = 0;
                    this.end = i7 - 1;
                } else {
                    if (i7 == -1) {
                        this.pos = 0;
                        this.end = 0;
                        this.buf = null;
                        this.ch = (char) 0;
                        this.eof = true;
                        return;
                    }
                    this.pos = 0;
                    this.end = 0;
                    this.buf = null;
                    this.ch = (char) 0;
                    this.eof = true;
                    throw new com.alibaba.fastjson.JSONException("read error");
                }
            } catch (java.io.IOException unused) {
                throw new com.alibaba.fastjson.JSONException("read error");
            }
        }
    }

    public enum Type {
        Object,
        Array,
        Value
    }

    public static class UTF16Validator extends com.alibaba.fastjson.JSONValidator {
        private final java.lang.String str;

        public UTF16Validator(java.lang.String str) {
            this.str = str;
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public final void fieldName() {
            char cCharAt;
            int i5 = this.pos;
            do {
                i5++;
                if (i5 >= this.str.length() || (cCharAt = this.str.charAt(i5)) == '\\') {
                    next();
                    while (true) {
                        char c5 = this.ch;
                        if (c5 == '\\') {
                            next();
                            if (this.ch == 'u') {
                                next();
                                next();
                                next();
                                next();
                                next();
                            } else {
                                next();
                            }
                        } else if (c5 == '\"') {
                            next();
                            return;
                        } else if (this.eof) {
                            return;
                        } else {
                            next();
                        }
                    }
                }
            } while (cCharAt != '\"');
            int i6 = i5 + 1;
            this.ch = this.str.charAt(i6);
            this.pos = i6;
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public void next() {
            int i5 = this.pos + 1;
            this.pos = i5;
            if (i5 < this.str.length()) {
                this.ch = this.str.charAt(this.pos);
            } else {
                this.ch = (char) 0;
                this.eof = true;
            }
        }
    }

    public static class UTF8InputStreamValidator extends com.alibaba.fastjson.JSONValidator {
        private static final java.lang.ThreadLocal<byte[]> bufLocal = new java.lang.ThreadLocal<>();
        private byte[] buf;
        private final java.io.InputStream is;
        private int end = -1;
        private int readCount = 0;

        public UTF8InputStreamValidator(java.io.InputStream inputStream) {
            this.is = inputStream;
            java.lang.ThreadLocal<byte[]> threadLocal = bufLocal;
            byte[] bArr = threadLocal.get();
            this.buf = bArr;
            if (bArr != null) {
                threadLocal.set(null);
            } else {
                this.buf = new byte[8192];
            }
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            bufLocal.set(this.buf);
            this.is.close();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public void next() {
            int i5 = this.pos;
            if (i5 < this.end) {
                byte[] bArr = this.buf;
                int i6 = i5 + 1;
                this.pos = i6;
                this.ch = (char) bArr[i6];
                return;
            }
            if (this.eof) {
                return;
            }
            try {
                java.io.InputStream inputStream = this.is;
                byte[] bArr2 = this.buf;
                int i7 = inputStream.read(bArr2, 0, bArr2.length);
                this.readCount++;
                if (i7 > 0) {
                    this.ch = (char) this.buf[0];
                    this.pos = 0;
                    this.end = i7 - 1;
                } else {
                    if (i7 == -1) {
                        this.pos = 0;
                        this.end = 0;
                        this.buf = null;
                        this.ch = (char) 0;
                        this.eof = true;
                        return;
                    }
                    this.pos = 0;
                    this.end = 0;
                    this.buf = null;
                    this.ch = (char) 0;
                    this.eof = true;
                    throw new com.alibaba.fastjson.JSONException("read error");
                }
            } catch (java.io.IOException unused) {
                throw new com.alibaba.fastjson.JSONException("read error");
            }
        }
    }

    public static class UTF8Validator extends com.alibaba.fastjson.JSONValidator {
        private final byte[] bytes;

        public UTF8Validator(byte[] bArr) {
            this.bytes = bArr;
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public void next() {
            int i5 = this.pos + 1;
            this.pos = i5;
            byte[] bArr = this.bytes;
            if (i5 < bArr.length) {
                this.ch = (char) bArr[i5];
            } else {
                this.ch = (char) 0;
                this.eof = true;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:127:0x017d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:130:0x0183  */
    /* JADX WARN: Code duplicated, block: B:132:0x018a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:141:0x019c  */
    /* JADX WARN: Code duplicated, block: B:145:0x01a7 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:146:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:149:0x01b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:153:0x01b9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:179:0x017f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:185:0x01bf A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    private boolean any() {
        char c5;
        char c6;
        char c7;
        char c8;
        char c9;
        char c10;
        char c11;
        char c12;
        char c13;
        char c14 = this.ch;
        if (c14 == '\"') {
            next();
            while (!this.eof) {
                char c15 = this.ch;
                if (c15 == '\\') {
                    next();
                    if (this.ch == 'u') {
                        next();
                        next();
                        next();
                        next();
                        next();
                    } else {
                        next();
                    }
                } else {
                    if (c15 == '\"') {
                        next();
                        this.type = com.alibaba.fastjson.JSONValidator.Type.Value;
                        return true;
                    }
                    next();
                }
            }
            return false;
        }
        if (c14 != '+' && c14 != '-') {
            if (c14 == '[') {
                next();
                skipWhiteSpace();
                if (this.ch == ']') {
                    next();
                    this.type = com.alibaba.fastjson.JSONValidator.Type.Array;
                    return true;
                }
                while (any()) {
                    skipWhiteSpace();
                    char c16 = this.ch;
                    if (c16 != ',') {
                        if (c16 != ']') {
                            return false;
                        }
                        next();
                        this.type = com.alibaba.fastjson.JSONValidator.Type.Array;
                        return true;
                    }
                    next();
                    skipWhiteSpace();
                }
                return false;
            }
            if (c14 == 'f') {
                next();
                if (this.ch != 'a') {
                    return false;
                }
                next();
                if (this.ch != 'l') {
                    return false;
                }
                next();
                if (this.ch != 's') {
                    return false;
                }
                next();
                if (this.ch != 'e') {
                    return false;
                }
                next();
                if (!isWhiteSpace(this.ch) && (c11 = this.ch) != ',' && c11 != ']' && c11 != '}' && c11 != 0) {
                    return false;
                }
                this.type = com.alibaba.fastjson.JSONValidator.Type.Value;
                return true;
            }
            if (c14 == 'n') {
                next();
                if (this.ch != 'u') {
                    return false;
                }
                next();
                if (this.ch != 'l') {
                    return false;
                }
                next();
                if (this.ch != 'l') {
                    return false;
                }
                next();
                if (!isWhiteSpace(this.ch) && (c12 = this.ch) != ',' && c12 != ']' && c12 != '}' && c12 != 0) {
                    return false;
                }
                this.type = com.alibaba.fastjson.JSONValidator.Type.Value;
                return true;
            }
            if (c14 == 't') {
                next();
                if (this.ch != 'r') {
                    return false;
                }
                next();
                if (this.ch != 'u') {
                    return false;
                }
                next();
                if (this.ch != 'e') {
                    return false;
                }
                next();
                if (!isWhiteSpace(this.ch) && (c13 = this.ch) != ',' && c13 != ']' && c13 != '}' && c13 != 0) {
                    return false;
                }
                this.type = com.alibaba.fastjson.JSONValidator.Type.Value;
                return true;
            }
            if (c14 == '{') {
                next();
                while (isWhiteSpace(this.ch)) {
                    next();
                }
                if (this.ch == '}') {
                    next();
                    this.type = com.alibaba.fastjson.JSONValidator.Type.Object;
                    return true;
                }
                while (this.ch == '\"') {
                    fieldName();
                    skipWhiteSpace();
                    if (this.ch != ':') {
                        break;
                    }
                    next();
                    skipWhiteSpace();
                    if (!any()) {
                        return false;
                    }
                    skipWhiteSpace();
                    char c17 = this.ch;
                    if (c17 != ',') {
                        if (c17 != '}') {
                            break;
                        }
                        next();
                        this.type = com.alibaba.fastjson.JSONValidator.Type.Object;
                        return true;
                    }
                    next();
                    skipWhiteSpace();
                }
                return false;
            }
            switch (c14) {
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    break;
                default:
                    return false;
            }
        }
        if (c14 == '-' || c14 == '+') {
            next();
            skipWhiteSpace();
            char c18 = this.ch;
            if (c18 >= '0' && c18 <= '9') {
                do {
                    next();
                    c5 = this.ch;
                    if (c5 >= '0') {
                    }
                    if (c5 == '.') {
                        next();
                        c10 = this.ch;
                        if (c10 >= '0' || c10 > '9') {
                            return false;
                        }
                        while (true) {
                            char c19 = this.ch;
                            if (c19 >= '0' && c19 <= '9') {
                                next();
                            }
                        }
                    }
                    c6 = this.ch;
                    if (c6 != 'e' || c6 == 'E') {
                        next();
                        c7 = this.ch;
                        if (c7 != '-' || c7 == '+') {
                            next();
                        }
                        c8 = this.ch;
                        if (c8 >= '0' && c8 <= '9') {
                            next();
                            while (true) {
                                c9 = this.ch;
                                if (c9 < '0' && c9 <= '9') {
                                    next();
                                }
                            }
                        }
                    }
                    this.type = com.alibaba.fastjson.JSONValidator.Type.Value;
                    return true;
                } while (c5 <= '9');
                if (c5 == '.') {
                    next();
                    c10 = this.ch;
                    if (c10 >= '0') {
                    }
                    return false;
                }
                c6 = this.ch;
                if (c6 != 'e') {
                }
                next();
                c7 = this.ch;
                if (c7 != '-') {
                    next();
                } else {
                    next();
                }
                c8 = this.ch;
                if (c8 >= '0') {
                    next();
                    while (true) {
                        c9 = this.ch;
                        if (c9 < '0') {
                        }
                        this.type = com.alibaba.fastjson.JSONValidator.Type.Value;
                        return true;
                        next();
                    }
                }
            }
        } else {
            do {
                next();
                c5 = this.ch;
                if (c5 >= '0') {
                }
                if (c5 == '.') {
                    next();
                    c10 = this.ch;
                    if (c10 >= '0') {
                    }
                    return false;
                }
                c6 = this.ch;
                if (c6 != 'e') {
                }
                next();
                c7 = this.ch;
                if (c7 != '-') {
                    next();
                } else {
                    next();
                }
                c8 = this.ch;
                if (c8 >= '0') {
                    next();
                    while (true) {
                        c9 = this.ch;
                        if (c9 < '0') {
                        }
                        this.type = com.alibaba.fastjson.JSONValidator.Type.Value;
                        return true;
                        next();
                    }
                }
            } while (c5 <= '9');
            if (c5 == '.') {
                next();
                c10 = this.ch;
                if (c10 >= '0') {
                }
                return false;
            }
            c6 = this.ch;
            if (c6 != 'e') {
            }
            next();
            c7 = this.ch;
            if (c7 != '-') {
                next();
            } else {
                next();
            }
            c8 = this.ch;
            if (c8 >= '0') {
                next();
                while (true) {
                    c9 = this.ch;
                    if (c9 < '0') {
                    }
                    this.type = com.alibaba.fastjson.JSONValidator.Type.Value;
                    return true;
                    next();
                }
            }
        }
        return false;
    }

    public static com.alibaba.fastjson.JSONValidator from(java.lang.String str) {
        return new com.alibaba.fastjson.JSONValidator.UTF16Validator(str);
    }

    public static com.alibaba.fastjson.JSONValidator fromUtf8(byte[] bArr) {
        return new com.alibaba.fastjson.JSONValidator.UTF8Validator(bArr);
    }

    public static final boolean isWhiteSpace(char c5) {
        return c5 == ' ' || c5 == '\t' || c5 == '\r' || c5 == '\n' || c5 == '\f' || c5 == '\b';
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
    }

    public void fieldName() {
        next();
        while (true) {
            char c5 = this.ch;
            if (c5 == '\\') {
                next();
                if (this.ch == 'u') {
                    next();
                    next();
                    next();
                    next();
                    next();
                } else {
                    next();
                }
            } else {
                if (c5 == '\"') {
                    next();
                    return;
                }
                next();
            }
        }
    }

    public com.alibaba.fastjson.JSONValidator.Type getType() {
        if (this.type == null) {
            validate();
        }
        return this.type;
    }

    public boolean isSupportMultiValue() {
        return this.supportMultiValue;
    }

    public abstract void next();

    public com.alibaba.fastjson.JSONValidator setSupportMultiValue(boolean z4) {
        this.supportMultiValue = z4;
        return this;
    }

    public void skipWhiteSpace() {
        while (isWhiteSpace(this.ch)) {
            next();
        }
    }

    public boolean string() {
        next();
        while (!this.eof) {
            char c5 = this.ch;
            if (c5 == '\\') {
                next();
                if (this.ch == 'u') {
                    next();
                    next();
                    next();
                    next();
                    next();
                } else {
                    next();
                }
            } else {
                if (c5 == '\"') {
                    next();
                    return true;
                }
                next();
            }
        }
        return false;
    }

    public boolean validate() {
        java.lang.Boolean bool = this.validateResult;
        if (bool != null) {
            return bool.booleanValue();
        }
        while (any()) {
            skipWhiteSpace();
            this.count++;
            if (this.eof) {
                this.validateResult = java.lang.Boolean.TRUE;
                return true;
            }
            if (!this.supportMultiValue) {
                this.validateResult = java.lang.Boolean.FALSE;
                return false;
            }
            skipWhiteSpace();
            if (this.eof) {
                this.validateResult = java.lang.Boolean.TRUE;
                return true;
            }
        }
        this.validateResult = java.lang.Boolean.FALSE;
        return false;
    }

    public static com.alibaba.fastjson.JSONValidator from(java.io.Reader reader) {
        return new com.alibaba.fastjson.JSONValidator.ReaderValidator(reader);
    }

    public static com.alibaba.fastjson.JSONValidator fromUtf8(java.io.InputStream inputStream) {
        return new com.alibaba.fastjson.JSONValidator.UTF8InputStreamValidator(inputStream);
    }
}
