package com.alibaba.fastjson.serializer;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class SerializeWriter extends java.io.Writer {
    private static int BUFFER_THRESHOLD;
    public static final int nonDirectFeatures;
    public boolean beanToArray;
    public boolean browserSecure;
    public char[] buf;
    public int count;
    public boolean disableCircularReferenceDetect;
    public int features;
    public char keySeperator;
    public int maxBufSize;
    public boolean notWriteDefaultValue;
    public boolean quoteFieldNames;
    public long sepcialBits;
    public boolean sortField;
    public boolean useSingleQuotes;
    public boolean writeDirect;
    public boolean writeEnumUsingName;
    public boolean writeEnumUsingToString;
    public boolean writeNonStringValueAsString;
    private final java.io.Writer writer;
    private static final java.lang.ThreadLocal<char[]> bufLocal = new java.lang.ThreadLocal<>();
    private static final java.lang.ThreadLocal<byte[]> bytesBufLocal = new java.lang.ThreadLocal<>();
    private static final char[] VALUE_TRUE = ":true".toCharArray();
    private static final char[] VALUE_FALSE = ":false".toCharArray();

    static {
        int i5;
        BUFFER_THRESHOLD = 131072;
        try {
            java.lang.String stringProperty = com.alibaba.fastjson.util.IOUtils.getStringProperty("fastjson.serializer_buffer_threshold");
            if (stringProperty != null && stringProperty.length() > 0 && (i5 = java.lang.Integer.parseInt(stringProperty)) >= 64 && i5 <= 65536) {
                BUFFER_THRESHOLD = i5 * 1024;
            }
        } catch (java.lang.Throwable unused) {
        }
        nonDirectFeatures = com.alibaba.fastjson.serializer.SerializerFeature.UseSingleQuotes.mask | 0 | com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible.mask | com.alibaba.fastjson.serializer.SerializerFeature.PrettyFormat.mask | com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingToString.mask | com.alibaba.fastjson.serializer.SerializerFeature.WriteNonStringValueAsString.mask | com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial.mask | com.alibaba.fastjson.serializer.SerializerFeature.IgnoreErrorGetter.mask | com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName.mask | com.alibaba.fastjson.serializer.SerializerFeature.NotWriteDefaultValue.mask;
    }

    public SerializeWriter() {
        this((java.io.Writer) null);
    }

    private int encodeToUTF8(java.io.OutputStream outputStream) throws java.io.IOException {
        int i5 = (int) (((double) this.count) * 3.0d);
        java.lang.ThreadLocal<byte[]> threadLocal = bytesBufLocal;
        byte[] bArr = threadLocal.get();
        if (bArr == null) {
            bArr = new byte[8192];
            threadLocal.set(bArr);
        }
        byte[] bArr2 = bArr.length < i5 ? new byte[i5] : bArr;
        int iEncodeUTF8 = com.alibaba.fastjson.util.IOUtils.encodeUTF8(this.buf, 0, this.count, bArr2);
        outputStream.write(bArr2, 0, iEncodeUTF8);
        if (bArr2 != bArr && bArr2.length <= BUFFER_THRESHOLD) {
            threadLocal.set(bArr2);
        }
        return iEncodeUTF8;
    }

    private byte[] encodeToUTF8Bytes() {
        int i5 = (int) (((double) this.count) * 3.0d);
        java.lang.ThreadLocal<byte[]> threadLocal = bytesBufLocal;
        byte[] bArr = threadLocal.get();
        if (bArr == null) {
            bArr = new byte[8192];
            threadLocal.set(bArr);
        }
        byte[] bArr2 = bArr.length < i5 ? new byte[i5] : bArr;
        int iEncodeUTF8 = com.alibaba.fastjson.util.IOUtils.encodeUTF8(this.buf, 0, this.count, bArr2);
        byte[] bArr3 = new byte[iEncodeUTF8];
        java.lang.System.arraycopy(bArr2, 0, bArr3, 0, iEncodeUTF8);
        if (bArr2 != bArr && bArr2.length <= BUFFER_THRESHOLD) {
            threadLocal.set(bArr2);
        }
        return bArr3;
    }

    private void writeEnumFieldValue(char c5, java.lang.String str, java.lang.String str2) {
        if (this.useSingleQuotes) {
            writeFieldValue(c5, str, str2);
        } else {
            writeFieldValueStringWithDoubleQuote(c5, str, str2);
        }
    }

    private void writeKeyWithSingleQuoteIfHasSpecial(java.lang.String str) {
        byte[] bArr = com.alibaba.fastjson.util.IOUtils.specicalFlags_singleQuotes;
        int length = str.length();
        boolean z4 = true;
        int i5 = this.count + length + 1;
        int i6 = 0;
        if (i5 > this.buf.length) {
            if (this.writer != null) {
                if (length == 0) {
                    write(39);
                    write(39);
                    write(58);
                    return;
                }
                int i7 = 0;
                while (true) {
                    if (i7 < length) {
                        char cCharAt = str.charAt(i7);
                        if (cCharAt < bArr.length && bArr[cCharAt] != 0) {
                            break;
                        } else {
                            i7++;
                        }
                    } else {
                        z4 = false;
                        break;
                    }
                }
                if (z4) {
                    write(39);
                }
                while (i6 < length) {
                    char cCharAt2 = str.charAt(i6);
                    if (cCharAt2 >= bArr.length || bArr[cCharAt2] == 0) {
                        write(cCharAt2);
                    } else {
                        write(92);
                        write(com.alibaba.fastjson.util.IOUtils.replaceChars[cCharAt2]);
                    }
                    i6++;
                }
                if (z4) {
                    write(39);
                }
                write(58);
                return;
            }
            expandCapacity(i5);
        }
        if (length == 0) {
            int i8 = this.count;
            if (i8 + 3 > this.buf.length) {
                expandCapacity(i8 + 3);
            }
            char[] cArr = this.buf;
            int i9 = this.count;
            int i10 = i9 + 1;
            this.count = i10;
            cArr[i9] = '\'';
            int i11 = i10 + 1;
            this.count = i11;
            cArr[i10] = '\'';
            this.count = i11 + 1;
            cArr[i11] = ':';
            return;
        }
        int i12 = this.count;
        int i13 = i12 + length;
        str.getChars(0, length, this.buf, i12);
        this.count = i5;
        int i14 = i12;
        boolean z5 = false;
        while (i14 < i13) {
            char[] cArr2 = this.buf;
            char c5 = cArr2[i14];
            if (c5 < bArr.length && bArr[c5] != 0) {
                if (z5) {
                    i5++;
                    if (i5 > cArr2.length) {
                        expandCapacity(i5);
                    }
                    this.count = i5;
                    char[] cArr3 = this.buf;
                    int i15 = i14 + 1;
                    java.lang.System.arraycopy(cArr3, i15, cArr3, i14 + 2, i13 - i14);
                    char[] cArr4 = this.buf;
                    cArr4[i14] = '\\';
                    cArr4[i15] = com.alibaba.fastjson.util.IOUtils.replaceChars[c5];
                    i13++;
                    i14 = i15;
                } else {
                    i5 += 3;
                    if (i5 > cArr2.length) {
                        expandCapacity(i5);
                    }
                    this.count = i5;
                    char[] cArr5 = this.buf;
                    int i16 = i14 + 1;
                    java.lang.System.arraycopy(cArr5, i16, cArr5, i14 + 3, (i13 - i14) - 1);
                    char[] cArr6 = this.buf;
                    java.lang.System.arraycopy(cArr6, i6, cArr6, 1, i14);
                    char[] cArr7 = this.buf;
                    cArr7[i12] = '\'';
                    cArr7[i16] = '\\';
                    int i17 = i16 + 1;
                    cArr7[i17] = com.alibaba.fastjson.util.IOUtils.replaceChars[c5];
                    i13 += 2;
                    cArr7[this.count - 2] = '\'';
                    i14 = i17;
                    z5 = true;
                }
            }
            i14++;
            i6 = 0;
        }
        this.buf[i5 - 1] = ':';
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.writer != null && this.count > 0) {
            flush();
        }
        char[] cArr = this.buf;
        if (cArr.length <= BUFFER_THRESHOLD) {
            bufLocal.set(cArr);
        }
        this.buf = null;
    }

    public void computeFeatures() {
        long j5;
        int i5 = this.features;
        boolean z4 = (com.alibaba.fastjson.serializer.SerializerFeature.QuoteFieldNames.mask & i5) != 0;
        this.quoteFieldNames = z4;
        boolean z5 = (com.alibaba.fastjson.serializer.SerializerFeature.UseSingleQuotes.mask & i5) != 0;
        this.useSingleQuotes = z5;
        this.sortField = (com.alibaba.fastjson.serializer.SerializerFeature.SortField.mask & i5) != 0;
        this.disableCircularReferenceDetect = (com.alibaba.fastjson.serializer.SerializerFeature.DisableCircularReferenceDetect.mask & i5) != 0;
        boolean z6 = (com.alibaba.fastjson.serializer.SerializerFeature.BeanToArray.mask & i5) != 0;
        this.beanToArray = z6;
        this.writeNonStringValueAsString = (com.alibaba.fastjson.serializer.SerializerFeature.WriteNonStringValueAsString.mask & i5) != 0;
        this.notWriteDefaultValue = (com.alibaba.fastjson.serializer.SerializerFeature.NotWriteDefaultValue.mask & i5) != 0;
        boolean z7 = (com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingName.mask & i5) != 0;
        this.writeEnumUsingName = z7;
        this.writeEnumUsingToString = (com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingToString.mask & i5) != 0;
        this.writeDirect = z4 && (nonDirectFeatures & i5) == 0 && (z6 || z7);
        this.keySeperator = z5 ? '\'' : '\"';
        boolean z8 = (com.alibaba.fastjson.serializer.SerializerFeature.BrowserSecure.mask & i5) != 0;
        this.browserSecure = z8;
        if (z8) {
            j5 = 5764610843043954687L;
        } else {
            j5 = (i5 & com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial.mask) != 0 ? 140758963191807L : 21474836479L;
        }
        this.sepcialBits = j5;
    }

    public void config(com.alibaba.fastjson.serializer.SerializerFeature serializerFeature, boolean z4) {
        if (z4) {
            int mask = this.features | serializerFeature.getMask();
            this.features = mask;
            com.alibaba.fastjson.serializer.SerializerFeature serializerFeature2 = com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingToString;
            if (serializerFeature == serializerFeature2) {
                this.features = (~com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingName.getMask()) & mask;
            } else if (serializerFeature == com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingName) {
                this.features = (~serializerFeature2.getMask()) & mask;
            }
        } else {
            this.features = (~serializerFeature.getMask()) & this.features;
        }
        computeFeatures();
    }

    public void expandCapacity(int i5) {
        java.lang.ThreadLocal<char[]> threadLocal;
        char[] cArr;
        int i6 = this.maxBufSize;
        if (i6 != -1 && i5 >= i6) {
            throw new com.alibaba.fastjson.JSONException("serialize exceeded MAX_OUTPUT_LENGTH=" + this.maxBufSize + ", minimumCapacity=" + i5);
        }
        char[] cArr2 = this.buf;
        int length = cArr2.length + (cArr2.length >> 1) + 1;
        if (length >= i5) {
            i5 = length;
        }
        char[] cArr3 = new char[i5];
        java.lang.System.arraycopy(cArr2, 0, cArr3, 0, this.count);
        if (this.buf.length < BUFFER_THRESHOLD && ((cArr = (threadLocal = bufLocal).get()) == null || cArr.length < this.buf.length)) {
            threadLocal.set(this.buf);
        }
        this.buf = cArr3;
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        java.io.Writer writer = this.writer;
        if (writer == null) {
            return;
        }
        try {
            writer.write(this.buf, 0, this.count);
            this.writer.flush();
            this.count = 0;
        } catch (java.io.IOException e5) {
            throw new com.alibaba.fastjson.JSONException(e5.getMessage(), e5);
        }
    }

    public int getBufferLength() {
        return this.buf.length;
    }

    public int getMaxBufSize() {
        return this.maxBufSize;
    }

    public boolean isEnabled(com.alibaba.fastjson.serializer.SerializerFeature serializerFeature) {
        return (serializerFeature.mask & this.features) != 0;
    }

    public boolean isNotWriteDefaultValue() {
        return this.notWriteDefaultValue;
    }

    public boolean isSortField() {
        return this.sortField;
    }

    public void reset() {
        this.count = 0;
    }

    public void setMaxBufSize(int i5) {
        if (i5 >= this.buf.length) {
            this.maxBufSize = i5;
            return;
        }
        throw new com.alibaba.fastjson.JSONException("must > " + this.buf.length);
    }

    public int size() {
        return this.count;
    }

    public byte[] toBytes(java.lang.String str) {
        return toBytes((str == null || "UTF-8".equals(str)) ? com.alibaba.fastjson.util.IOUtils.UTF8 : java.nio.charset.Charset.forName(str));
    }

    public char[] toCharArray() {
        if (this.writer != null) {
            throw new java.lang.UnsupportedOperationException("writer not null");
        }
        int i5 = this.count;
        char[] cArr = new char[i5];
        java.lang.System.arraycopy(this.buf, 0, cArr, 0, i5);
        return cArr;
    }

    public char[] toCharArrayForSpringWebSocket() {
        if (this.writer != null) {
            throw new java.lang.UnsupportedOperationException("writer not null");
        }
        int i5 = this.count;
        char[] cArr = new char[i5 - 2];
        java.lang.System.arraycopy(this.buf, 1, cArr, 0, i5 - 2);
        return cArr;
    }

    public java.lang.String toString() {
        return new java.lang.String(this.buf, 0, this.count);
    }

    @Override // java.io.Writer
    public void write(int i5) {
        int i6 = 1;
        int i7 = this.count + 1;
        if (i7 <= this.buf.length) {
            i6 = i7;
        } else if (this.writer == null) {
            expandCapacity(i7);
            i6 = i7;
        } else {
            flush();
        }
        this.buf[this.count] = (char) i5;
        this.count = i6;
    }

    public void writeByteArray(byte[] bArr) {
        if (isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName.mask)) {
            writeHex(bArr);
            return;
        }
        int length = bArr.length;
        boolean z4 = this.useSingleQuotes;
        char c5 = z4 ? '\'' : '\"';
        if (length == 0) {
            write(z4 ? "''" : "\"\"");
            return;
        }
        char[] cArr = com.alibaba.fastjson.util.IOUtils.CA;
        int i5 = (length / 3) * 3;
        int i6 = length - 1;
        int i7 = this.count;
        int i8 = (((i6 / 3) + 1) << 2) + i7 + 2;
        if (i8 > this.buf.length) {
            if (this.writer != null) {
                write(c5);
                int i9 = 0;
                while (i9 < i5) {
                    int i10 = i9 + 1;
                    int i11 = i10 + 1;
                    int i12 = ((bArr[i9] & 255) << 16) | ((bArr[i10] & 255) << 8) | (bArr[i11] & 255);
                    write(cArr[(i12 >>> 18) & 63]);
                    write(cArr[(i12 >>> 12) & 63]);
                    write(cArr[(i12 >>> 6) & 63]);
                    write(cArr[i12 & 63]);
                    i9 = i11 + 1;
                }
                int i13 = length - i5;
                if (i13 > 0) {
                    int i14 = ((bArr[i5] & 255) << 10) | (i13 == 2 ? (bArr[i6] & 255) << 2 : 0);
                    write(cArr[i14 >> 12]);
                    write(cArr[(i14 >>> 6) & 63]);
                    write(i13 == 2 ? cArr[i14 & 63] : '=');
                    write(61);
                }
                write(c5);
                return;
            }
            expandCapacity(i8);
        }
        this.count = i8;
        int i15 = i7 + 1;
        this.buf[i7] = c5;
        int i16 = 0;
        while (i16 < i5) {
            int i17 = i16 + 1;
            int i18 = i17 + 1;
            int i19 = ((bArr[i16] & 255) << 16) | ((bArr[i17] & 255) << 8);
            int i20 = i18 + 1;
            int i21 = i19 | (bArr[i18] & 255);
            char[] cArr2 = this.buf;
            int i22 = i15 + 1;
            cArr2[i15] = cArr[(i21 >>> 18) & 63];
            int i23 = i22 + 1;
            cArr2[i22] = cArr[(i21 >>> 12) & 63];
            int i24 = i23 + 1;
            cArr2[i23] = cArr[(i21 >>> 6) & 63];
            i15 = i24 + 1;
            cArr2[i24] = cArr[i21 & 63];
            i16 = i20;
        }
        int i25 = length - i5;
        if (i25 > 0) {
            int i26 = ((bArr[i5] & 255) << 10) | (i25 == 2 ? (bArr[i6] & 255) << 2 : 0);
            char[] cArr3 = this.buf;
            cArr3[i8 - 5] = cArr[i26 >> 12];
            cArr3[i8 - 4] = cArr[(i26 >>> 6) & 63];
            cArr3[i8 - 3] = i25 == 2 ? cArr[i26 & 63] : '=';
            cArr3[i8 - 2] = '=';
        }
        this.buf[i8 - 1] = c5;
    }

    public void writeDouble(double d5, boolean z4) {
        if (java.lang.Double.isNaN(d5) || java.lang.Double.isInfinite(d5)) {
            writeNull();
            return;
        }
        int i5 = this.count + 24;
        if (i5 > this.buf.length) {
            if (this.writer != null) {
                java.lang.String string = com.alibaba.fastjson.util.RyuDouble.toString(d5);
                write(string, 0, string.length());
                if (z4 && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName)) {
                    write(68);
                    return;
                }
                return;
            }
            expandCapacity(i5);
        }
        this.count += com.alibaba.fastjson.util.RyuDouble.toString(d5, this.buf, this.count);
        if (z4 && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName)) {
            write(68);
        }
    }

    public void writeEnum(java.lang.Enum<?> r5) {
        if (r5 == null) {
            writeNull();
            return;
        }
        java.lang.String string = null;
        if (this.writeEnumUsingName && !this.writeEnumUsingToString) {
            string = r5.name();
        } else if (this.writeEnumUsingToString) {
            string = r5.toString();
        }
        if (string == null) {
            writeInt(r5.ordinal());
            return;
        }
        int i5 = isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.UseSingleQuotes) ? 39 : 34;
        write(i5);
        write(string);
        write(i5);
    }

    public void writeFieldName(java.lang.String str) {
        writeFieldName(str, false);
    }

    public void writeFieldNameDirect(java.lang.String str) {
        int length = str.length();
        int i5 = this.count + length + 3;
        if (i5 > this.buf.length) {
            expandCapacity(i5);
        }
        int i6 = this.count;
        char[] cArr = this.buf;
        cArr[i6] = '\"';
        str.getChars(0, length, cArr, i6 + 1);
        this.count = i5;
        char[] cArr2 = this.buf;
        cArr2[i5 - 2] = '\"';
        cArr2[i5 - 1] = ':';
    }

    public void writeFieldValue(char c5, java.lang.String str, char c6) {
        write(c5);
        writeFieldName(str);
        if (c6 == 0) {
            writeString("\u0000");
        } else {
            writeString(java.lang.Character.toString(c6));
        }
    }

    public void writeFieldValueStringWithDoubleQuote(char c5, java.lang.String str, java.lang.String str2) {
        int length = str.length();
        int i5 = this.count;
        int length2 = str2.length();
        int i6 = i5 + length + length2 + 6;
        if (i6 > this.buf.length) {
            if (this.writer != null) {
                write(c5);
                writeStringWithDoubleQuote(str, ':');
                writeStringWithDoubleQuote(str2, (char) 0);
                return;
            }
            expandCapacity(i6);
        }
        char[] cArr = this.buf;
        int i7 = this.count;
        cArr[i7] = c5;
        int i8 = i7 + 2;
        int i9 = i8 + length;
        cArr[i7 + 1] = '\"';
        str.getChars(0, length, cArr, i8);
        this.count = i6;
        char[] cArr2 = this.buf;
        cArr2[i9] = '\"';
        int i10 = i9 + 1;
        int i11 = i10 + 1;
        cArr2[i10] = ':';
        cArr2[i11] = '\"';
        str2.getChars(0, length2, cArr2, i11 + 1);
        this.buf[this.count - 1] = '\"';
    }

    /* JADX WARN: Code duplicated, block: B:53:0x00d4  */
    public void writeFieldValueStringWithDoubleQuoteCheck(char c5, java.lang.String str, java.lang.String str2) {
        int length;
        int i5;
        int i6;
        int length2 = str.length();
        int i7 = this.count;
        if (str2 == null) {
            i5 = i7 + length2 + 8;
            length = 4;
        } else {
            length = str2.length();
            i5 = i7 + length2 + length + 6;
        }
        if (i5 > this.buf.length) {
            if (this.writer != null) {
                write(c5);
                writeStringWithDoubleQuote(str, ':');
                writeStringWithDoubleQuote(str2, (char) 0);
                return;
            }
            expandCapacity(i5);
        }
        char[] cArr = this.buf;
        int i8 = this.count;
        cArr[i8] = c5;
        int i9 = i8 + 2;
        int i10 = i9 + length2;
        cArr[i8 + 1] = '\"';
        str.getChars(0, length2, cArr, i9);
        this.count = i5;
        char[] cArr2 = this.buf;
        cArr2[i10] = '\"';
        int i11 = i10 + 1;
        int i12 = i11 + 1;
        cArr2[i11] = ':';
        if (str2 == null) {
            int i13 = i12 + 1;
            cArr2[i12] = 'n';
            int i14 = i13 + 1;
            cArr2[i13] = 'u';
            cArr2[i14] = 'l';
            cArr2[i14 + 1] = 'l';
            return;
        }
        int i15 = i12 + 1;
        cArr2[i12] = '\"';
        int i16 = i15 + length;
        str2.getChars(0, length, cArr2, i15);
        int i17 = -1;
        int i18 = -1;
        int i19 = -1;
        int i20 = 0;
        char c6 = 0;
        for (int i21 = i15; i21 < i16; i21++) {
            char c7 = this.buf[i21];
            if (c7 < ']') {
                if ((c7 < '@' && (this.sepcialBits & (1 << c7)) != 0) || c7 == '\\') {
                    i20++;
                    if (c7 == '(' || c7 == ')' || c7 == '<' || c7 == '>') {
                        i5 += 4;
                    } else {
                        byte[] bArr = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes;
                        if (c7 < bArr.length && bArr[c7] == 4) {
                            i5 += 4;
                        }
                    }
                    i17 = -1;
                    if (i18 == -1) {
                        i18 = i21;
                        i19 = i18;
                    } else {
                        i19 = i21;
                    }
                    c6 = c7;
                } else {
                    i17 = -1;
                }
            } else if (c7 >= 127 && (c7 == 8232 || c7 == 8233 || c7 < 160)) {
                if (i18 == i17) {
                    i18 = i21;
                }
                i20++;
                i5 += 4;
                i19 = i21;
                c6 = c7;
            }
        }
        if (i20 > 0) {
            int i22 = i5 + i20;
            if (i22 > this.buf.length) {
                expandCapacity(i22);
            }
            this.count = i22;
            if (i20 == 1) {
                if (c6 == 8232) {
                    int i23 = i19 + 1;
                    char[] cArr3 = this.buf;
                    java.lang.System.arraycopy(cArr3, i23, cArr3, i19 + 6, (i16 - i19) - 1);
                    char[] cArr4 = this.buf;
                    cArr4[i19] = '\\';
                    cArr4[i23] = 'u';
                    int i24 = i23 + 1;
                    cArr4[i24] = '2';
                    int i25 = i24 + 1;
                    cArr4[i25] = '0';
                    int i26 = i25 + 1;
                    cArr4[i26] = '2';
                    cArr4[i26 + 1] = '8';
                } else if (c6 == 8233) {
                    int i27 = i19 + 1;
                    char[] cArr5 = this.buf;
                    java.lang.System.arraycopy(cArr5, i27, cArr5, i19 + 6, (i16 - i19) - 1);
                    char[] cArr6 = this.buf;
                    cArr6[i19] = '\\';
                    cArr6[i27] = 'u';
                    int i28 = i27 + 1;
                    cArr6[i28] = '2';
                    int i29 = i28 + 1;
                    cArr6[i29] = '0';
                    int i30 = i29 + 1;
                    cArr6[i30] = '2';
                    cArr6[i30 + 1] = '9';
                } else if (c6 == '(' || c6 == ')' || c6 == '<' || c6 == '>') {
                    int i31 = i19 + 1;
                    char[] cArr7 = this.buf;
                    java.lang.System.arraycopy(cArr7, i31, cArr7, i19 + 6, (i16 - i19) - 1);
                    char[] cArr8 = this.buf;
                    cArr8[i19] = '\\';
                    int i32 = i31 + 1;
                    cArr8[i31] = 'u';
                    int i33 = i32 + 1;
                    char[] cArr9 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                    cArr8[i32] = cArr9[(c6 >>> '\f') & 15];
                    int i34 = i33 + 1;
                    cArr8[i33] = cArr9[(c6 >>> '\b') & 15];
                    cArr8[i34] = cArr9[(c6 >>> 4) & 15];
                    cArr8[i34 + 1] = cArr9[c6 & 15];
                } else {
                    byte[] bArr2 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes;
                    if (c6 >= bArr2.length || bArr2[c6] != 4) {
                        int i35 = i19 + 1;
                        char[] cArr10 = this.buf;
                        java.lang.System.arraycopy(cArr10, i35, cArr10, i19 + 2, (i16 - i19) - 1);
                        char[] cArr11 = this.buf;
                        cArr11[i19] = '\\';
                        cArr11[i35] = com.alibaba.fastjson.util.IOUtils.replaceChars[c6];
                    } else {
                        int i36 = i19 + 1;
                        char[] cArr12 = this.buf;
                        java.lang.System.arraycopy(cArr12, i36, cArr12, i19 + 6, (i16 - i19) - 1);
                        char[] cArr13 = this.buf;
                        cArr13[i19] = '\\';
                        int i37 = i36 + 1;
                        cArr13[i36] = 'u';
                        int i38 = i37 + 1;
                        char[] cArr14 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                        cArr13[i37] = cArr14[(c6 >>> '\f') & 15];
                        int i39 = i38 + 1;
                        cArr13[i38] = cArr14[(c6 >>> '\b') & 15];
                        cArr13[i39] = cArr14[(c6 >>> 4) & 15];
                        cArr13[i39 + 1] = cArr14[c6 & 15];
                    }
                }
            } else if (i20 > 1) {
                for (int i40 = i18 - i15; i40 < str2.length(); i40++) {
                    char cCharAt = str2.charAt(i40);
                    if (this.browserSecure) {
                        if (cCharAt != '(' && cCharAt != ')') {
                            if (cCharAt == '<' || cCharAt == '>') {
                            }
                        }
                        char[] cArr15 = this.buf;
                        int i41 = i18 + 1;
                        cArr15[i18] = '\\';
                        int i42 = i41 + 1;
                        cArr15[i41] = 'u';
                        int i43 = i42 + 1;
                        char[] cArr16 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                        cArr15[i42] = cArr16[(cCharAt >>> '\f') & 15];
                        int i44 = i43 + 1;
                        cArr15[i43] = cArr16[(cCharAt >>> '\b') & 15];
                        int i45 = i44 + 1;
                        cArr15[i44] = cArr16[(cCharAt >>> 4) & 15];
                        i18 = i45 + 1;
                        cArr15[i45] = cArr16[cCharAt & 15];
                    }
                    byte[] bArr3 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes;
                    if ((cCharAt >= bArr3.length || bArr3[cCharAt] == 0) && !(cCharAt == '/' && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                        if (cCharAt == 8232 || cCharAt == 8233) {
                            char[] cArr17 = this.buf;
                            int i46 = i18 + 1;
                            cArr17[i18] = '\\';
                            int i47 = i46 + 1;
                            cArr17[i46] = 'u';
                            int i48 = i47 + 1;
                            char[] cArr18 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                            cArr17[i47] = cArr18[(cCharAt >>> '\f') & 15];
                            int i49 = i48 + 1;
                            cArr17[i48] = cArr18[(cCharAt >>> '\b') & 15];
                            int i50 = i49 + 1;
                            cArr17[i49] = cArr18[(cCharAt >>> 4) & 15];
                            i18 = i50 + 1;
                            cArr17[i50] = cArr18[cCharAt & 15];
                        } else {
                            this.buf[i18] = cCharAt;
                            i18++;
                        }
                    } else {
                        char[] cArr19 = this.buf;
                        int i51 = i18 + 1;
                        cArr19[i18] = '\\';
                        if (bArr3[cCharAt] == 4) {
                            int i52 = i51 + 1;
                            cArr19[i51] = 'u';
                            int i53 = i52 + 1;
                            char[] cArr20 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                            cArr19[i52] = cArr20[(cCharAt >>> '\f') & 15];
                            int i54 = i53 + 1;
                            cArr19[i53] = cArr20[(cCharAt >>> '\b') & 15];
                            int i55 = i54 + 1;
                            cArr19[i54] = cArr20[(cCharAt >>> 4) & 15];
                            i6 = i55 + 1;
                            cArr19[i55] = cArr20[cCharAt & 15];
                        } else {
                            i6 = i51 + 1;
                            cArr19[i51] = com.alibaba.fastjson.util.IOUtils.replaceChars[cCharAt];
                        }
                        i18 = i6;
                    }
                }
            }
        }
        this.buf[this.count - 1] = '\"';
    }

    public void writeFloat(float f5, boolean z4) {
        if (f5 != f5 || f5 == Float.POSITIVE_INFINITY || f5 == Float.NEGATIVE_INFINITY) {
            writeNull();
            return;
        }
        int i5 = this.count + 15;
        if (i5 > this.buf.length) {
            if (this.writer != null) {
                java.lang.String string = com.alibaba.fastjson.util.RyuFloat.toString(f5);
                write(string, 0, string.length());
                if (z4 && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName)) {
                    write(70);
                    return;
                }
                return;
            }
            expandCapacity(i5);
        }
        this.count += com.alibaba.fastjson.util.RyuFloat.toString(f5, this.buf, this.count);
        if (z4 && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName)) {
            write(70);
        }
    }

    public void writeHex(byte[] bArr) {
        int length = this.count + (bArr.length * 2) + 3;
        if (length > this.buf.length) {
            expandCapacity(length);
        }
        char[] cArr = this.buf;
        int i5 = this.count;
        int i6 = i5 + 1;
        this.count = i6;
        cArr[i5] = 'x';
        this.count = i6 + 1;
        cArr[i6] = '\'';
        for (byte b5 : bArr) {
            int i7 = b5 & 255;
            int i8 = i7 >> 4;
            int i9 = i7 & 15;
            char[] cArr2 = this.buf;
            int i10 = this.count;
            int i11 = i10 + 1;
            this.count = i11;
            int i12 = 48;
            cArr2[i10] = (char) (i8 + (i8 < 10 ? 48 : 55));
            this.count = i11 + 1;
            if (i9 >= 10) {
                i12 = 55;
            }
            cArr2[i11] = (char) (i9 + i12);
        }
        char[] cArr3 = this.buf;
        int i13 = this.count;
        this.count = i13 + 1;
        cArr3[i13] = '\'';
    }

    public void writeInt(int i5) {
        if (i5 == Integer.MIN_VALUE) {
            write("-2147483648");
            return;
        }
        int iStringSize = i5 < 0 ? com.alibaba.fastjson.util.IOUtils.stringSize(-i5) + 1 : com.alibaba.fastjson.util.IOUtils.stringSize(i5);
        int i6 = this.count + iStringSize;
        if (i6 > this.buf.length) {
            if (this.writer != null) {
                char[] cArr = new char[iStringSize];
                com.alibaba.fastjson.util.IOUtils.getChars(i5, iStringSize, cArr);
                write(cArr, 0, iStringSize);
                return;
            }
            expandCapacity(i6);
        }
        com.alibaba.fastjson.util.IOUtils.getChars(i5, i6, this.buf);
        this.count = i6;
    }

    public void writeLong(long j5) {
        boolean z4 = isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible) && !isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName) && (j5 > 9007199254740991L || j5 < -9007199254740991L);
        if (j5 == Long.MIN_VALUE) {
            if (z4) {
                write("\"-9223372036854775808\"");
                return;
            } else {
                write("-9223372036854775808");
                return;
            }
        }
        int iStringSize = j5 < 0 ? com.alibaba.fastjson.util.IOUtils.stringSize(-j5) + 1 : com.alibaba.fastjson.util.IOUtils.stringSize(j5);
        int i5 = this.count + iStringSize;
        if (z4) {
            i5 += 2;
        }
        if (i5 > this.buf.length) {
            if (this.writer != null) {
                char[] cArr = new char[iStringSize];
                com.alibaba.fastjson.util.IOUtils.getChars(j5, iStringSize, cArr);
                if (!z4) {
                    write(cArr, 0, iStringSize);
                    return;
                }
                write(34);
                write(cArr, 0, iStringSize);
                write(34);
                return;
            }
            expandCapacity(i5);
        }
        if (z4) {
            char[] cArr2 = this.buf;
            cArr2[this.count] = '\"';
            int i6 = i5 - 1;
            com.alibaba.fastjson.util.IOUtils.getChars(j5, i6, cArr2);
            this.buf[i6] = '\"';
        } else {
            com.alibaba.fastjson.util.IOUtils.getChars(j5, i5, this.buf);
        }
        this.count = i5;
    }

    public void writeLongAndChar(long j5, char c5) throws java.io.IOException {
        writeLong(j5);
        write(c5);
    }

    public void writeNull() {
        write("null");
    }

    public void writeString(java.lang.String str, char c5) {
        if (!this.useSingleQuotes) {
            writeStringWithDoubleQuote(str, c5);
        } else {
            writeStringWithSingleQuote(str);
            write(c5);
        }
    }

    /* JADX WARN: Code duplicated, block: B:166:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:59:0x014f  */
    public void writeStringWithDoubleQuote(java.lang.String str, char c5) {
        if (str == null) {
            writeNull();
            if (c5 != 0) {
                write(c5);
                return;
            }
            return;
        }
        int length = str.length();
        int i5 = this.count + length + 2;
        if (c5 != 0) {
            i5++;
        }
        char c6 = '>';
        if (i5 > this.buf.length) {
            if (this.writer != null) {
                write(34);
                int i6 = 0;
                while (i6 < str.length()) {
                    char cCharAt = str.charAt(i6);
                    if (isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.BrowserSecure) && (cCharAt == '(' || cCharAt == ')' || cCharAt == '<' || cCharAt == c6)) {
                        write(92);
                        write(117);
                        char[] cArr = com.alibaba.fastjson.util.IOUtils.DIGITS;
                        write(cArr[(cCharAt >>> '\f') & 15]);
                        write(cArr[(cCharAt >>> '\b') & 15]);
                        write(cArr[(cCharAt >>> 4) & 15]);
                        write(cArr[cCharAt & 15]);
                    } else if (!isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible)) {
                        byte[] bArr = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes;
                        if ((cCharAt >= bArr.length || bArr[cCharAt] == 0) && !(cCharAt == '/' && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                            write(cCharAt);
                        } else {
                            write(92);
                            if (bArr[cCharAt] == 4) {
                                write(117);
                                char[] cArr2 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                                write(cArr2[(cCharAt >>> '\f') & 15]);
                                write(cArr2[(cCharAt >>> '\b') & 15]);
                                write(cArr2[(cCharAt >>> 4) & 15]);
                                write(cArr2[cCharAt & 15]);
                            } else {
                                write(com.alibaba.fastjson.util.IOUtils.replaceChars[cCharAt]);
                            }
                        }
                    } else if (cCharAt == '\b' || cCharAt == '\f' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t' || cCharAt == '\"' || cCharAt == '/' || cCharAt == '\\') {
                        write(92);
                        write(com.alibaba.fastjson.util.IOUtils.replaceChars[cCharAt]);
                    } else if (cCharAt < ' ') {
                        write(92);
                        write(117);
                        write(48);
                        write(48);
                        char[] cArr3 = com.alibaba.fastjson.util.IOUtils.ASCII_CHARS;
                        int i7 = cCharAt * 2;
                        write(cArr3[i7]);
                        write(cArr3[i7 + 1]);
                    } else if (cCharAt >= 127) {
                        write(92);
                        write(117);
                        char[] cArr4 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                        write(cArr4[(cCharAt >>> '\f') & 15]);
                        write(cArr4[(cCharAt >>> '\b') & 15]);
                        write(cArr4[(cCharAt >>> 4) & 15]);
                        write(cArr4[cCharAt & 15]);
                    } else {
                        write(cCharAt);
                    }
                    i6++;
                    c6 = '>';
                }
                write(34);
                if (c5 != 0) {
                    write(c5);
                    return;
                }
                return;
            }
            expandCapacity(i5);
        }
        int i8 = this.count;
        int i9 = i8 + 1;
        int i10 = i9 + length;
        char[] cArr5 = this.buf;
        cArr5[i8] = '\"';
        str.getChars(0, length, cArr5, i9);
        this.count = i5;
        int i11 = -1;
        if (isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible)) {
            for (int i12 = i9; i12 < i10; i12++) {
                char c7 = this.buf[i12];
                if (c7 == '\"' || c7 == '/' || c7 == '\\' || c7 == '\b' || c7 == '\f' || c7 == '\n' || c7 == '\r' || c7 == '\t') {
                    i5++;
                } else {
                    if (c7 < ' ' || c7 >= 127) {
                        i5 += 5;
                    }
                }
                i11 = i12;
            }
            if (i5 > this.buf.length) {
                expandCapacity(i5);
            }
            this.count = i5;
            while (i11 >= i9) {
                char[] cArr6 = this.buf;
                char c8 = cArr6[i11];
                if (c8 == '\b' || c8 == '\f' || c8 == '\n' || c8 == '\r' || c8 == '\t') {
                    int i13 = i11 + 1;
                    java.lang.System.arraycopy(cArr6, i13, cArr6, i11 + 2, (i10 - i11) - 1);
                    char[] cArr7 = this.buf;
                    cArr7[i11] = '\\';
                    cArr7[i13] = com.alibaba.fastjson.util.IOUtils.replaceChars[c8];
                } else {
                    if (c8 == '\"' || c8 == '/' || c8 == '\\') {
                        int i14 = i11 + 1;
                        java.lang.System.arraycopy(cArr6, i14, cArr6, i11 + 2, (i10 - i11) - 1);
                        char[] cArr8 = this.buf;
                        cArr8[i11] = '\\';
                        cArr8[i14] = c8;
                    } else {
                        if (c8 < ' ') {
                            int i15 = i11 + 1;
                            java.lang.System.arraycopy(cArr6, i15, cArr6, i11 + 6, (i10 - i11) - 1);
                            char[] cArr9 = this.buf;
                            cArr9[i11] = '\\';
                            cArr9[i15] = 'u';
                            cArr9[i11 + 2] = '0';
                            cArr9[i11 + 3] = '0';
                            char[] cArr10 = com.alibaba.fastjson.util.IOUtils.ASCII_CHARS;
                            int i16 = c8 * 2;
                            cArr9[i11 + 4] = cArr10[i16];
                            cArr9[i11 + 5] = cArr10[i16 + 1];
                        } else if (c8 >= 127) {
                            int i17 = i11 + 1;
                            java.lang.System.arraycopy(cArr6, i17, cArr6, i11 + 6, (i10 - i11) - 1);
                            char[] cArr11 = this.buf;
                            cArr11[i11] = '\\';
                            cArr11[i17] = 'u';
                            char[] cArr12 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                            cArr11[i11 + 2] = cArr12[(c8 >>> '\f') & 15];
                            cArr11[i11 + 3] = cArr12[(c8 >>> '\b') & 15];
                            cArr11[i11 + 4] = cArr12[(c8 >>> 4) & 15];
                            cArr11[i11 + 5] = cArr12[c8 & 15];
                        }
                        i10 += 5;
                    }
                    i11--;
                }
                i10++;
                i11--;
            }
            if (c5 == 0) {
                this.buf[this.count - 1] = '\"';
                return;
            }
            char[] cArr13 = this.buf;
            int i18 = this.count;
            cArr13[i18 - 2] = '\"';
            cArr13[i18 - 1] = c5;
            return;
        }
        int i19 = 0;
        char c9 = 0;
        int i20 = -1;
        int i21 = -1;
        for (int i22 = i9; i22 < i10; i22++) {
            char c10 = this.buf[i22];
            if (c10 < ']') {
                if ((c10 < '@' && (this.sepcialBits & (1 << c10)) != 0) || c10 == '\\') {
                    i19++;
                    if (c10 == '(' || c10 == ')' || c10 == '<' || c10 == '>') {
                        i5 += 4;
                    } else {
                        byte[] bArr2 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes;
                        if (c10 < bArr2.length && bArr2[c10] == 4) {
                            i5 += 4;
                        }
                    }
                    i11 = -1;
                    if (i20 == -1) {
                        i20 = i22;
                        i21 = i20;
                    } else {
                        i21 = i22;
                    }
                    c9 = c10;
                } else {
                    i11 = -1;
                }
            } else if (c10 >= 127 && (c10 == 8232 || c10 == 8233 || c10 < 160)) {
                if (i20 == i11) {
                    i20 = i22;
                }
                i19++;
                i5 += 4;
                i21 = i22;
                c9 = c10;
            }
        }
        if (i19 > 0) {
            int i23 = i5 + i19;
            if (i23 > this.buf.length) {
                expandCapacity(i23);
            }
            this.count = i23;
            if (i19 == 1) {
                if (c9 == 8232) {
                    int i24 = i21 + 1;
                    char[] cArr14 = this.buf;
                    java.lang.System.arraycopy(cArr14, i24, cArr14, i21 + 6, (i10 - i21) - 1);
                    char[] cArr15 = this.buf;
                    cArr15[i21] = '\\';
                    cArr15[i24] = 'u';
                    int i25 = i24 + 1;
                    cArr15[i25] = '2';
                    int i26 = i25 + 1;
                    cArr15[i26] = '0';
                    int i27 = i26 + 1;
                    cArr15[i27] = '2';
                    cArr15[i27 + 1] = '8';
                } else if (c9 == 8233) {
                    int i28 = i21 + 1;
                    char[] cArr16 = this.buf;
                    java.lang.System.arraycopy(cArr16, i28, cArr16, i21 + 6, (i10 - i21) - 1);
                    char[] cArr17 = this.buf;
                    cArr17[i21] = '\\';
                    cArr17[i28] = 'u';
                    int i29 = i28 + 1;
                    cArr17[i29] = '2';
                    int i30 = i29 + 1;
                    cArr17[i30] = '0';
                    int i31 = i30 + 1;
                    cArr17[i31] = '2';
                    cArr17[i31 + 1] = '9';
                } else if (c9 == '(' || c9 == ')' || c9 == '<' || c9 == '>') {
                    int i32 = i21 + 1;
                    char[] cArr18 = this.buf;
                    java.lang.System.arraycopy(cArr18, i32, cArr18, i21 + 6, (i10 - i21) - 1);
                    char[] cArr19 = this.buf;
                    cArr19[i21] = '\\';
                    cArr19[i32] = 'u';
                    int i33 = i32 + 1;
                    char[] cArr20 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                    cArr19[i33] = cArr20[(c9 >>> '\f') & 15];
                    int i34 = i33 + 1;
                    cArr19[i34] = cArr20[(c9 >>> '\b') & 15];
                    int i35 = i34 + 1;
                    cArr19[i35] = cArr20[(c9 >>> 4) & 15];
                    cArr19[i35 + 1] = cArr20[c9 & 15];
                } else {
                    byte[] bArr3 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes;
                    if (c9 >= bArr3.length || bArr3[c9] != 4) {
                        int i36 = i21 + 1;
                        char[] cArr21 = this.buf;
                        java.lang.System.arraycopy(cArr21, i36, cArr21, i21 + 2, (i10 - i21) - 1);
                        char[] cArr22 = this.buf;
                        cArr22[i21] = '\\';
                        cArr22[i36] = com.alibaba.fastjson.util.IOUtils.replaceChars[c9];
                    } else {
                        int i37 = i21 + 1;
                        char[] cArr23 = this.buf;
                        java.lang.System.arraycopy(cArr23, i37, cArr23, i21 + 6, (i10 - i21) - 1);
                        char[] cArr24 = this.buf;
                        cArr24[i21] = '\\';
                        int i38 = i37 + 1;
                        cArr24[i37] = 'u';
                        int i39 = i38 + 1;
                        char[] cArr25 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                        cArr24[i38] = cArr25[(c9 >>> '\f') & 15];
                        int i40 = i39 + 1;
                        cArr24[i39] = cArr25[(c9 >>> '\b') & 15];
                        cArr24[i40] = cArr25[(c9 >>> 4) & 15];
                        cArr24[i40 + 1] = cArr25[c9 & 15];
                    }
                }
            } else if (i19 > 1) {
                for (int i41 = i20 - i9; i41 < str.length(); i41++) {
                    char cCharAt2 = str.charAt(i41);
                    if (this.browserSecure) {
                        if (cCharAt2 != '(' && cCharAt2 != ')') {
                            if (cCharAt2 == '<' || cCharAt2 == '>') {
                            }
                        }
                        char[] cArr26 = this.buf;
                        int i42 = i20 + 1;
                        cArr26[i20] = '\\';
                        int i43 = i42 + 1;
                        cArr26[i42] = 'u';
                        int i44 = i43 + 1;
                        char[] cArr27 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                        cArr26[i43] = cArr27[(cCharAt2 >>> '\f') & 15];
                        int i45 = i44 + 1;
                        cArr26[i44] = cArr27[(cCharAt2 >>> '\b') & 15];
                        int i46 = i45 + 1;
                        cArr26[i45] = cArr27[(cCharAt2 >>> 4) & 15];
                        i20 = i46 + 1;
                        cArr26[i46] = cArr27[cCharAt2 & 15];
                    }
                    byte[] bArr4 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes;
                    if ((cCharAt2 >= bArr4.length || bArr4[cCharAt2] == 0) && !(cCharAt2 == '/' && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                        if (cCharAt2 == 8232 || cCharAt2 == 8233) {
                            char[] cArr28 = this.buf;
                            int i47 = i20 + 1;
                            cArr28[i20] = '\\';
                            int i48 = i47 + 1;
                            cArr28[i47] = 'u';
                            int i49 = i48 + 1;
                            char[] cArr29 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                            cArr28[i48] = cArr29[(cCharAt2 >>> '\f') & 15];
                            int i50 = i49 + 1;
                            cArr28[i49] = cArr29[(cCharAt2 >>> '\b') & 15];
                            int i51 = i50 + 1;
                            cArr28[i50] = cArr29[(cCharAt2 >>> 4) & 15];
                            i20 = i51 + 1;
                            cArr28[i51] = cArr29[cCharAt2 & 15];
                        } else {
                            this.buf[i20] = cCharAt2;
                            i20++;
                        }
                    } else {
                        char[] cArr30 = this.buf;
                        int i52 = i20 + 1;
                        cArr30[i20] = '\\';
                        if (bArr4[cCharAt2] == 4) {
                            int i53 = i52 + 1;
                            cArr30[i52] = 'u';
                            int i54 = i53 + 1;
                            char[] cArr31 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                            cArr30[i53] = cArr31[(cCharAt2 >>> '\f') & 15];
                            int i55 = i54 + 1;
                            cArr30[i54] = cArr31[(cCharAt2 >>> '\b') & 15];
                            int i56 = i55 + 1;
                            cArr30[i55] = cArr31[(cCharAt2 >>> 4) & 15];
                            i20 = i56 + 1;
                            cArr30[i56] = cArr31[cCharAt2 & 15];
                        } else {
                            i20 = i52 + 1;
                            cArr30[i52] = com.alibaba.fastjson.util.IOUtils.replaceChars[cCharAt2];
                        }
                    }
                }
            }
        }
        if (c5 == 0) {
            this.buf[this.count - 1] = '\"';
            return;
        }
        char[] cArr32 = this.buf;
        int i57 = this.count;
        cArr32[i57 - 2] = '\"';
        cArr32[i57 - 1] = c5;
    }

    public void writeStringWithSingleQuote(java.lang.String str) {
        int i5 = 0;
        if (str == null) {
            int i6 = this.count + 4;
            if (i6 > this.buf.length) {
                expandCapacity(i6);
            }
            "null".getChars(0, 4, this.buf, this.count);
            this.count = i6;
            return;
        }
        int length = str.length();
        int i7 = this.count + length + 2;
        if (i7 > this.buf.length) {
            if (this.writer != null) {
                write(39);
                while (i5 < str.length()) {
                    char cCharAt = str.charAt(i5);
                    if (cCharAt <= '\r' || cCharAt == '\\' || cCharAt == '\'' || (cCharAt == '/' && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                        write(92);
                        write(com.alibaba.fastjson.util.IOUtils.replaceChars[cCharAt]);
                    } else {
                        write(cCharAt);
                    }
                    i5++;
                }
                write(39);
                return;
            }
            expandCapacity(i7);
        }
        int i8 = this.count;
        int i9 = i8 + 1;
        int i10 = i9 + length;
        char[] cArr = this.buf;
        cArr[i8] = '\'';
        str.getChars(0, length, cArr, i9);
        this.count = i7;
        int i11 = -1;
        char c5 = 0;
        for (int i12 = i9; i12 < i10; i12++) {
            char c6 = this.buf[i12];
            if (c6 <= '\r' || c6 == '\\' || c6 == '\'' || (c6 == '/' && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                i5++;
                i11 = i12;
                c5 = c6;
            }
        }
        int i13 = i7 + i5;
        if (i13 > this.buf.length) {
            expandCapacity(i13);
        }
        this.count = i13;
        if (i5 == 1) {
            char[] cArr2 = this.buf;
            int i14 = i11 + 1;
            java.lang.System.arraycopy(cArr2, i14, cArr2, i11 + 2, (i10 - i11) - 1);
            char[] cArr3 = this.buf;
            cArr3[i11] = '\\';
            cArr3[i14] = com.alibaba.fastjson.util.IOUtils.replaceChars[c5];
        } else if (i5 > 1) {
            char[] cArr4 = this.buf;
            int i15 = i11 + 1;
            java.lang.System.arraycopy(cArr4, i15, cArr4, i11 + 2, (i10 - i11) - 1);
            char[] cArr5 = this.buf;
            cArr5[i11] = '\\';
            cArr5[i15] = com.alibaba.fastjson.util.IOUtils.replaceChars[c5];
            int i16 = i10 + 1;
            for (int i17 = i15 - 2; i17 >= i9; i17--) {
                char c7 = this.buf[i17];
                if (c7 <= '\r' || c7 == '\\' || c7 == '\'' || (c7 == '/' && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                    char[] cArr6 = this.buf;
                    int i18 = i17 + 1;
                    java.lang.System.arraycopy(cArr6, i18, cArr6, i17 + 2, (i16 - i17) - 1);
                    char[] cArr7 = this.buf;
                    cArr7[i17] = '\\';
                    cArr7[i18] = com.alibaba.fastjson.util.IOUtils.replaceChars[c7];
                    i16++;
                }
            }
        }
        this.buf[this.count - 1] = '\'';
    }

    public void writeTo(java.io.Writer writer) throws java.io.IOException {
        if (this.writer != null) {
            throw new java.lang.UnsupportedOperationException("writer not null");
        }
        writer.write(this.buf, 0, this.count);
    }

    public int writeToEx(java.io.OutputStream outputStream, java.nio.charset.Charset charset) throws java.io.IOException {
        if (this.writer != null) {
            throw new java.lang.UnsupportedOperationException("writer not null");
        }
        if (charset == com.alibaba.fastjson.util.IOUtils.UTF8) {
            return encodeToUTF8(outputStream);
        }
        byte[] bytes = new java.lang.String(this.buf, 0, this.count).getBytes(charset);
        outputStream.write(bytes);
        return bytes.length;
    }

    public SerializeWriter(java.io.Writer writer) {
        this(writer, com.alibaba.fastjson.JSON.DEFAULT_GENERATE_FEATURE, com.alibaba.fastjson.serializer.SerializerFeature.EMPTY);
    }

    public boolean isEnabled(int i5) {
        return (i5 & this.features) != 0;
    }

    public void writeFieldName(java.lang.String str, boolean z4) {
        if (str == null) {
            write("null:");
            return;
        }
        if (this.useSingleQuotes) {
            if (!this.quoteFieldNames) {
                writeKeyWithSingleQuoteIfHasSpecial(str);
                return;
            } else {
                writeStringWithSingleQuote(str);
                write(58);
                return;
            }
        }
        if (this.quoteFieldNames) {
            writeStringWithDoubleQuote(str, ':');
            return;
        }
        boolean z5 = true;
        boolean z6 = str.length() == 0;
        int i5 = 0;
        while (true) {
            if (i5 >= str.length()) {
                z5 = z6;
                break;
            }
            char cCharAt = str.charAt(i5);
            if ((cCharAt < '@' && (this.sepcialBits & (1 << cCharAt)) != 0) || cCharAt == '\\') {
                break;
            } else {
                i5++;
            }
        }
        if (z5) {
            writeStringWithDoubleQuote(str, ':');
        } else {
            write(str);
            write(58);
        }
    }

    public void writeNull(com.alibaba.fastjson.serializer.SerializerFeature serializerFeature) {
        writeNull(0, serializerFeature.mask);
    }

    public SerializeWriter(com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        this((java.io.Writer) null, serializerFeatureArr);
    }

    public void writeNull(int i5, int i6) {
        if ((i5 & i6) == 0 && (this.features & i6) == 0) {
            writeNull();
            return;
        }
        int i7 = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue.mask;
        if ((i5 & i7) != 0 && (i5 & (~i7) & com.alibaba.fastjson.serializer.SerializerFeature.WRITE_MAP_NULL_FEATURES) == 0) {
            writeNull();
            return;
        }
        if (i6 == com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty.mask) {
            write("[]");
            return;
        }
        if (i6 == com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty.mask) {
            writeString("");
            return;
        }
        if (i6 == com.alibaba.fastjson.serializer.SerializerFeature.WriteNullBooleanAsFalse.mask) {
            write("false");
        } else if (i6 == com.alibaba.fastjson.serializer.SerializerFeature.WriteNullNumberAsZero.mask) {
            write(48);
        } else {
            writeNull();
        }
    }

    public SerializeWriter(java.io.Writer writer, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        this(writer, 0, serializerFeatureArr);
    }

    public byte[] toBytes(java.nio.charset.Charset charset) {
        if (this.writer == null) {
            if (charset == com.alibaba.fastjson.util.IOUtils.UTF8) {
                return encodeToUTF8Bytes();
            }
            return new java.lang.String(this.buf, 0, this.count).getBytes(charset);
        }
        throw new java.lang.UnsupportedOperationException("writer not null");
    }

    public void writeTo(java.io.OutputStream outputStream, java.lang.String str) throws java.io.IOException {
        writeTo(outputStream, java.nio.charset.Charset.forName(str));
    }

    public SerializeWriter(java.io.Writer writer, int i5, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        this.maxBufSize = -1;
        this.writer = writer;
        java.lang.ThreadLocal<char[]> threadLocal = bufLocal;
        char[] cArr = threadLocal.get();
        this.buf = cArr;
        if (cArr != null) {
            threadLocal.set(null);
        } else {
            this.buf = new char[2048];
        }
        for (com.alibaba.fastjson.serializer.SerializerFeature serializerFeature : serializerFeatureArr) {
            i5 |= serializerFeature.getMask();
        }
        this.features = i5;
        computeFeatures();
    }

    public void writeFieldValue(char c5, java.lang.String str, boolean z4) {
        if (!this.quoteFieldNames) {
            write(c5);
            writeFieldName(str);
            write(z4);
            return;
        }
        int i5 = z4 ? 4 : 5;
        int length = str.length();
        int i6 = this.count + length + 4 + i5;
        if (i6 > this.buf.length) {
            if (this.writer != null) {
                write(c5);
                writeString(str);
                write(58);
                write(z4);
                return;
            }
            expandCapacity(i6);
        }
        int i7 = this.count;
        this.count = i6;
        char[] cArr = this.buf;
        cArr[i7] = c5;
        int i8 = i7 + length + 1;
        cArr[i7 + 1] = this.keySeperator;
        str.getChars(0, length, cArr, i7 + 2);
        char[] cArr2 = this.buf;
        cArr2[i8 + 1] = this.keySeperator;
        if (z4) {
            java.lang.System.arraycopy(VALUE_TRUE, 0, cArr2, i8 + 2, 5);
        } else {
            java.lang.System.arraycopy(VALUE_FALSE, 0, cArr2, i8 + 2, 6);
        }
    }

    public void writeString(java.lang.String str) {
        if (this.useSingleQuotes) {
            writeStringWithSingleQuote(str);
        } else {
            writeStringWithDoubleQuote(str, (char) 0);
        }
    }

    public void writeTo(java.io.OutputStream outputStream, java.nio.charset.Charset charset) throws java.io.IOException {
        writeToEx(outputStream, charset);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public com.alibaba.fastjson.serializer.SerializeWriter append(java.lang.CharSequence charSequence) {
        java.lang.String string = charSequence == null ? "null" : charSequence.toString();
        write(string, 0, string.length());
        return this;
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i5, int i6) {
        int i7;
        if (i5 < 0 || i5 > cArr.length || i6 < 0 || (i7 = i5 + i6) > cArr.length || i7 < 0) {
            throw new java.lang.IndexOutOfBoundsException();
        }
        if (i6 == 0) {
            return;
        }
        int i8 = this.count + i6;
        if (i8 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(i8);
            } else {
                do {
                    char[] cArr2 = this.buf;
                    int length = cArr2.length;
                    int i9 = this.count;
                    int i10 = length - i9;
                    java.lang.System.arraycopy(cArr, i5, cArr2, i9, i10);
                    this.count = this.buf.length;
                    flush();
                    i6 -= i10;
                    i5 += i10;
                } while (i6 > this.buf.length);
                i8 = i6;
            }
        }
        java.lang.System.arraycopy(cArr, i5, this.buf, this.count, i6);
        this.count = i8;
    }

    public void writeString(char[] cArr) {
        if (this.useSingleQuotes) {
            writeStringWithSingleQuote(cArr);
        } else {
            writeStringWithDoubleQuote(new java.lang.String(cArr), (char) 0);
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public com.alibaba.fastjson.serializer.SerializeWriter append(java.lang.CharSequence charSequence, int i5, int i6) {
        if (charSequence == null) {
            charSequence = "null";
        }
        java.lang.String string = charSequence.subSequence(i5, i6).toString();
        write(string, 0, string.length());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public com.alibaba.fastjson.serializer.SerializeWriter append(char c5) {
        write(c5);
        return this;
    }

    public SerializeWriter(int i5) {
        this((java.io.Writer) null, i5);
    }

    public SerializeWriter(java.io.Writer writer, int i5) {
        this.maxBufSize = -1;
        this.writer = writer;
        if (i5 > 0) {
            this.buf = new char[i5];
            computeFeatures();
        } else {
            throw new java.lang.IllegalArgumentException("Negative initial size: " + i5);
        }
    }

    @Override // java.io.Writer
    public void write(java.lang.String str, int i5, int i6) {
        int i7;
        int i8 = this.count + i6;
        if (i8 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(i8);
            } else {
                while (true) {
                    char[] cArr = this.buf;
                    int length = cArr.length;
                    int i9 = this.count;
                    int i10 = length - i9;
                    i7 = i5 + i10;
                    str.getChars(i5, i7, cArr, i9);
                    this.count = this.buf.length;
                    flush();
                    i6 -= i10;
                    if (i6 <= this.buf.length) {
                        break;
                    } else {
                        i5 = i7;
                    }
                }
                i8 = i6;
                i5 = i7;
            }
        }
        str.getChars(i5, i6 + i5, this.buf, this.count);
        this.count = i8;
    }

    public void writeFieldValue(char c5, java.lang.String str, int i5) {
        if (i5 != Integer.MIN_VALUE && this.quoteFieldNames) {
            int iStringSize = i5 < 0 ? com.alibaba.fastjson.util.IOUtils.stringSize(-i5) + 1 : com.alibaba.fastjson.util.IOUtils.stringSize(i5);
            int length = str.length();
            int i6 = this.count + length + 4 + iStringSize;
            if (i6 > this.buf.length) {
                if (this.writer != null) {
                    write(c5);
                    writeFieldName(str);
                    writeInt(i5);
                    return;
                }
                expandCapacity(i6);
            }
            int i7 = this.count;
            this.count = i6;
            char[] cArr = this.buf;
            cArr[i7] = c5;
            int i8 = i7 + length + 1;
            cArr[i7 + 1] = this.keySeperator;
            str.getChars(0, length, cArr, i7 + 2);
            char[] cArr2 = this.buf;
            cArr2[i8 + 1] = this.keySeperator;
            cArr2[i8 + 2] = ':';
            com.alibaba.fastjson.util.IOUtils.getChars(i5, this.count, cArr2);
            return;
        }
        write(c5);
        writeFieldName(str);
        writeInt(i5);
    }

    @Override // java.io.Writer
    public void write(java.lang.String str) {
        if (str == null) {
            writeNull();
        } else {
            write(str, 0, str.length());
        }
    }

    public void write(java.util.List<java.lang.String> list) {
        boolean z4;
        int i5;
        if (list.isEmpty()) {
            write("[]");
            return;
        }
        int i6 = this.count;
        int size = list.size();
        int i7 = i6;
        int i8 = 0;
        while (i8 < size) {
            java.lang.String str = list.get(i8);
            if (str == null) {
                z4 = true;
            } else {
                int length = str.length();
                z4 = false;
                for (int i9 = 0; i9 < length; i9++) {
                    char cCharAt = str.charAt(i9);
                    z4 = cCharAt < ' ' || cCharAt > '~' || cCharAt == '\"' || cCharAt == '\\';
                    if (z4) {
                        break;
                    }
                }
            }
            if (z4) {
                this.count = i6;
                write(91);
                for (int i10 = 0; i10 < list.size(); i10++) {
                    java.lang.String str2 = list.get(i10);
                    if (i10 != 0) {
                        write(44);
                    }
                    if (str2 == null) {
                        write("null");
                    } else {
                        writeStringWithDoubleQuote(str2, (char) 0);
                    }
                }
                write(93);
                return;
            }
            int length2 = str.length() + i7 + 3;
            if (i8 == list.size() - 1) {
                length2++;
            }
            if (length2 > this.buf.length) {
                this.count = i7;
                expandCapacity(length2);
            }
            if (i8 == 0) {
                i5 = i7 + 1;
                this.buf[i7] = '[';
            } else {
                i5 = i7 + 1;
                this.buf[i7] = ',';
            }
            int i11 = i5 + 1;
            this.buf[i5] = '\"';
            str.getChars(0, str.length(), this.buf, i11);
            int length3 = i11 + str.length();
            this.buf[length3] = '\"';
            i8++;
            i7 = length3 + 1;
        }
        this.buf[i7] = ']';
        this.count = i7 + 1;
    }

    public void writeStringWithSingleQuote(char[] cArr) {
        int i5 = 0;
        if (cArr == null) {
            int i6 = this.count + 4;
            if (i6 > this.buf.length) {
                expandCapacity(i6);
            }
            "null".getChars(0, 4, this.buf, this.count);
            this.count = i6;
            return;
        }
        int length = cArr.length;
        int i7 = this.count + length + 2;
        if (i7 > this.buf.length) {
            if (this.writer != null) {
                write(39);
                while (i5 < cArr.length) {
                    char c5 = cArr[i5];
                    if (c5 > '\r' && c5 != '\\' && c5 != '\'' && (c5 != '/' || !isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                        write(c5);
                    } else {
                        write(92);
                        write(com.alibaba.fastjson.util.IOUtils.replaceChars[c5]);
                    }
                    i5++;
                }
                write(39);
                return;
            }
            expandCapacity(i7);
        }
        int i8 = this.count;
        int i9 = i8 + 1;
        int i10 = length + i9;
        char[] cArr2 = this.buf;
        cArr2[i8] = '\'';
        java.lang.System.arraycopy(cArr, 0, cArr2, i9, cArr.length);
        this.count = i7;
        int i11 = -1;
        char c6 = 0;
        for (int i12 = i9; i12 < i10; i12++) {
            char c7 = this.buf[i12];
            if (c7 <= '\r' || c7 == '\\' || c7 == '\'' || (c7 == '/' && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                i5++;
                i11 = i12;
                c6 = c7;
            }
        }
        int i13 = i7 + i5;
        if (i13 > this.buf.length) {
            expandCapacity(i13);
        }
        this.count = i13;
        if (i5 == 1) {
            char[] cArr3 = this.buf;
            int i14 = i11 + 1;
            java.lang.System.arraycopy(cArr3, i14, cArr3, i11 + 2, (i10 - i11) - 1);
            char[] cArr4 = this.buf;
            cArr4[i11] = '\\';
            cArr4[i14] = com.alibaba.fastjson.util.IOUtils.replaceChars[c6];
        } else if (i5 > 1) {
            char[] cArr5 = this.buf;
            int i15 = i11 + 1;
            java.lang.System.arraycopy(cArr5, i15, cArr5, i11 + 2, (i10 - i11) - 1);
            char[] cArr6 = this.buf;
            cArr6[i11] = '\\';
            cArr6[i15] = com.alibaba.fastjson.util.IOUtils.replaceChars[c6];
            int i16 = i10 + 1;
            for (int i17 = i15 - 2; i17 >= i9; i17--) {
                char c8 = this.buf[i17];
                if (c8 <= '\r' || c8 == '\\' || c8 == '\'' || (c8 == '/' && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                    char[] cArr7 = this.buf;
                    int i18 = i17 + 1;
                    java.lang.System.arraycopy(cArr7, i18, cArr7, i17 + 2, (i16 - i17) - 1);
                    char[] cArr8 = this.buf;
                    cArr8[i17] = '\\';
                    cArr8[i18] = com.alibaba.fastjson.util.IOUtils.replaceChars[c8];
                    i16++;
                }
            }
        }
        this.buf[this.count - 1] = '\'';
    }

    public void writeFieldValue(char c5, java.lang.String str, long j5) {
        if (j5 != Long.MIN_VALUE && this.quoteFieldNames && !isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible.mask)) {
            int iStringSize = j5 < 0 ? com.alibaba.fastjson.util.IOUtils.stringSize(-j5) + 1 : com.alibaba.fastjson.util.IOUtils.stringSize(j5);
            int length = str.length();
            int i5 = this.count + length + 4 + iStringSize;
            if (i5 > this.buf.length) {
                if (this.writer != null) {
                    write(c5);
                    writeFieldName(str);
                    writeLong(j5);
                    return;
                }
                expandCapacity(i5);
            }
            int i6 = this.count;
            this.count = i5;
            char[] cArr = this.buf;
            cArr[i6] = c5;
            int i7 = i6 + length + 1;
            cArr[i6 + 1] = this.keySeperator;
            str.getChars(0, length, cArr, i6 + 2);
            char[] cArr2 = this.buf;
            cArr2[i7 + 1] = this.keySeperator;
            cArr2[i7 + 2] = ':';
            com.alibaba.fastjson.util.IOUtils.getChars(j5, this.count, cArr2);
            return;
        }
        write(c5);
        writeFieldName(str);
        writeLong(j5);
    }

    public void write(boolean z4) {
        if (z4) {
            write("true");
        } else {
            write("false");
        }
    }

    public void writeFieldValue(char c5, java.lang.String str, float f5) {
        write(c5);
        writeFieldName(str);
        writeFloat(f5, false);
    }

    public void writeFieldValue(char c5, java.lang.String str, double d5) {
        write(c5);
        writeFieldName(str);
        writeDouble(d5, false);
    }

    public void writeFieldValue(char c5, java.lang.String str, java.lang.String str2) {
        if (this.quoteFieldNames) {
            if (this.useSingleQuotes) {
                write(c5);
                writeFieldName(str);
                if (str2 == null) {
                    writeNull();
                    return;
                } else {
                    writeString(str2);
                    return;
                }
            }
            if (isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible)) {
                write(c5);
                writeStringWithDoubleQuote(str, ':');
                writeStringWithDoubleQuote(str2, (char) 0);
                return;
            }
            writeFieldValueStringWithDoubleQuoteCheck(c5, str, str2);
            return;
        }
        write(c5);
        writeFieldName(str);
        if (str2 == null) {
            writeNull();
        } else {
            writeString(str2);
        }
    }

    public void writeFieldValue(char c5, java.lang.String str, java.lang.Enum<?> r5) {
        if (r5 == null) {
            write(c5);
            writeFieldName(str);
            writeNull();
        } else if (this.writeEnumUsingName && !this.writeEnumUsingToString) {
            writeEnumFieldValue(c5, str, r5.name());
        } else if (this.writeEnumUsingToString) {
            writeEnumFieldValue(c5, str, r5.toString());
        } else {
            writeFieldValue(c5, str, r5.ordinal());
        }
    }

    public void writeFieldValue(char c5, java.lang.String str, java.math.BigDecimal bigDecimal) {
        java.lang.String string;
        write(c5);
        writeFieldName(str);
        if (bigDecimal == null) {
            writeNull();
            return;
        }
        int iScale = bigDecimal.scale();
        if (isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteBigDecimalAsPlain) && iScale >= -100 && iScale < 100) {
            string = bigDecimal.toPlainString();
        } else {
            string = bigDecimal.toString();
        }
        write(string);
    }

    /* JADX WARN: Code duplicated, block: B:165:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:59:0x0147  */
    public void writeStringWithDoubleQuote(char[] cArr, char c5) {
        int i5;
        int i6;
        if (cArr == null) {
            writeNull();
            if (c5 != 0) {
                write(c5);
                return;
            }
            return;
        }
        int length = cArr.length;
        int i7 = this.count + length + 2;
        if (c5 != 0) {
            i7++;
        }
        char c6 = '>';
        if (i7 > this.buf.length) {
            if (this.writer != null) {
                write(34);
                int i8 = 0;
                while (i8 < cArr.length) {
                    char c7 = cArr[i8];
                    if (isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.BrowserSecure) && (c7 == '(' || c7 == ')' || c7 == '<' || c7 == c6)) {
                        write(92);
                        write(117);
                        char[] cArr2 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                        write(cArr2[(c7 >>> '\f') & 15]);
                        write(cArr2[(c7 >>> '\b') & 15]);
                        write(cArr2[(c7 >>> 4) & 15]);
                        write(cArr2[c7 & 15]);
                    } else if (!isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible)) {
                        byte[] bArr = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes;
                        if ((c7 < bArr.length && bArr[c7] != 0) || (c7 == '/' && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                            write(92);
                            if (bArr[c7] == 4) {
                                write(117);
                                char[] cArr3 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                                write(cArr3[(c7 >>> '\f') & 15]);
                                write(cArr3[(c7 >>> '\b') & 15]);
                                write(cArr3[(c7 >>> 4) & 15]);
                                write(cArr3[c7 & 15]);
                            } else {
                                write(com.alibaba.fastjson.util.IOUtils.replaceChars[c7]);
                            }
                        } else {
                            write(c7);
                        }
                    } else if (c7 == '\b' || c7 == '\f' || c7 == '\n' || c7 == '\r' || c7 == '\t' || c7 == '\"' || c7 == '/' || c7 == '\\') {
                        write(92);
                        write(com.alibaba.fastjson.util.IOUtils.replaceChars[c7]);
                    } else if (c7 < ' ') {
                        write(92);
                        write(117);
                        write(48);
                        write(48);
                        char[] cArr4 = com.alibaba.fastjson.util.IOUtils.ASCII_CHARS;
                        int i9 = c7 * 2;
                        write(cArr4[i9]);
                        write(cArr4[i9 + 1]);
                    } else if (c7 >= 127) {
                        write(92);
                        write(117);
                        char[] cArr5 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                        write(cArr5[(c7 >>> '\f') & 15]);
                        write(cArr5[(c7 >>> '\b') & 15]);
                        write(cArr5[(c7 >>> 4) & 15]);
                        write(cArr5[c7 & 15]);
                    } else {
                        write(c7);
                    }
                    i8++;
                    c6 = '>';
                }
                write(34);
                if (c5 != 0) {
                    write(c5);
                    return;
                }
                return;
            }
            expandCapacity(i7);
        }
        int i10 = this.count;
        int i11 = i10 + 1;
        int i12 = length + i11;
        char[] cArr6 = this.buf;
        cArr6[i10] = '\"';
        java.lang.System.arraycopy(cArr, 0, cArr6, i11, cArr.length);
        this.count = i7;
        int i13 = -1;
        if (isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible)) {
            for (int i14 = i11; i14 < i12; i14++) {
                char c8 = this.buf[i14];
                if (c8 == '\"' || c8 == '/' || c8 == '\\' || c8 == '\b' || c8 == '\f' || c8 == '\n' || c8 == '\r' || c8 == '\t') {
                    i7++;
                } else {
                    if (c8 < ' ' || c8 >= 127) {
                        i7 += 5;
                    }
                }
                i13 = i14;
            }
            if (i7 > this.buf.length) {
                expandCapacity(i7);
            }
            this.count = i7;
            while (i13 >= i11) {
                char[] cArr7 = this.buf;
                char c9 = cArr7[i13];
                if (c9 == '\b' || c9 == '\f' || c9 == '\n' || c9 == '\r' || c9 == '\t') {
                    int i15 = i13 + 1;
                    java.lang.System.arraycopy(cArr7, i15, cArr7, i13 + 2, (i12 - i13) - 1);
                    char[] cArr8 = this.buf;
                    cArr8[i13] = '\\';
                    cArr8[i15] = com.alibaba.fastjson.util.IOUtils.replaceChars[c9];
                } else {
                    if (c9 == '\"' || c9 == '/' || c9 == '\\') {
                        int i16 = i13 + 1;
                        java.lang.System.arraycopy(cArr7, i16, cArr7, i13 + 2, (i12 - i13) - 1);
                        char[] cArr9 = this.buf;
                        cArr9[i13] = '\\';
                        cArr9[i16] = c9;
                    } else {
                        if (c9 < ' ') {
                            int i17 = i13 + 1;
                            java.lang.System.arraycopy(cArr7, i17, cArr7, i13 + 6, (i12 - i13) - 1);
                            char[] cArr10 = this.buf;
                            cArr10[i13] = '\\';
                            cArr10[i17] = 'u';
                            cArr10[i13 + 2] = '0';
                            cArr10[i13 + 3] = '0';
                            char[] cArr11 = com.alibaba.fastjson.util.IOUtils.ASCII_CHARS;
                            int i18 = c9 * 2;
                            cArr10[i13 + 4] = cArr11[i18];
                            cArr10[i13 + 5] = cArr11[i18 + 1];
                        } else if (c9 >= 127) {
                            int i19 = i13 + 1;
                            java.lang.System.arraycopy(cArr7, i19, cArr7, i13 + 6, (i12 - i13) - 1);
                            char[] cArr12 = this.buf;
                            cArr12[i13] = '\\';
                            cArr12[i19] = 'u';
                            char[] cArr13 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                            cArr12[i13 + 2] = cArr13[(c9 >>> '\f') & 15];
                            cArr12[i13 + 3] = cArr13[(c9 >>> '\b') & 15];
                            cArr12[i13 + 4] = cArr13[(c9 >>> 4) & 15];
                            cArr12[i13 + 5] = cArr13[c9 & 15];
                        }
                        i12 += 5;
                    }
                    i13--;
                }
                i12++;
                i13--;
            }
            if (c5 != 0) {
                char[] cArr14 = this.buf;
                int i20 = this.count;
                cArr14[i20 - 2] = '\"';
                cArr14[i20 - 1] = c5;
                return;
            }
            this.buf[this.count - 1] = '\"';
            return;
        }
        int i21 = i11;
        int i22 = -1;
        int i23 = 0;
        char c10 = 0;
        int i24 = -1;
        while (i21 < i12) {
            char c11 = this.buf[i21];
            if (c11 >= ']') {
                if (c11 >= 127 && (c11 == 8232 || c11 == 8233 || c11 < 160)) {
                    if (i24 == i13) {
                        i24 = i21;
                    }
                    i23++;
                    i7 += 4;
                    i22 = i21;
                    c10 = c11;
                }
                int i25 = i24;
                i6 = i13;
                i5 = i25;
            } else {
                int i26 = i24;
                if ((c11 < '@' && (this.sepcialBits & (1 << c11)) != 0) || c11 == '\\') {
                    i23++;
                    if (c11 == '(' || c11 == ')' || c11 == '<' || c11 == '>') {
                        i7 += 4;
                    } else {
                        byte[] bArr2 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes;
                        if (c11 < bArr2.length && bArr2[c11] == 4) {
                            i7 += 4;
                        }
                    }
                    i5 = i26;
                    i6 = -1;
                    if (i5 == -1) {
                        i5 = i21;
                        i22 = i5;
                    } else {
                        i22 = i21;
                    }
                    c10 = c11;
                } else {
                    i5 = i26;
                    i6 = -1;
                }
            }
            i21++;
            int i27 = i6;
            i24 = i5;
            i13 = i27;
        }
        int i28 = i24;
        if (i23 > 0) {
            int i29 = i7 + i23;
            if (i29 > this.buf.length) {
                expandCapacity(i29);
            }
            this.count = i29;
            if (i23 == 1) {
                if (c10 == 8232) {
                    int i30 = i22 + 1;
                    char[] cArr15 = this.buf;
                    java.lang.System.arraycopy(cArr15, i30, cArr15, i22 + 6, (i12 - i22) - 1);
                    char[] cArr16 = this.buf;
                    cArr16[i22] = '\\';
                    cArr16[i30] = 'u';
                    int i31 = i30 + 1;
                    cArr16[i31] = '2';
                    int i32 = i31 + 1;
                    cArr16[i32] = '0';
                    int i33 = i32 + 1;
                    cArr16[i33] = '2';
                    cArr16[i33 + 1] = '8';
                } else if (c10 == 8233) {
                    int i34 = i22 + 1;
                    char[] cArr17 = this.buf;
                    java.lang.System.arraycopy(cArr17, i34, cArr17, i22 + 6, (i12 - i22) - 1);
                    char[] cArr18 = this.buf;
                    cArr18[i22] = '\\';
                    cArr18[i34] = 'u';
                    int i35 = i34 + 1;
                    cArr18[i35] = '2';
                    int i36 = i35 + 1;
                    cArr18[i36] = '0';
                    int i37 = i36 + 1;
                    cArr18[i37] = '2';
                    cArr18[i37 + 1] = '9';
                } else if (c10 != '(' && c10 != ')' && c10 != '<' && c10 != '>') {
                    byte[] bArr3 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes;
                    if (c10 < bArr3.length && bArr3[c10] == 4) {
                        int i38 = i22 + 1;
                        char[] cArr19 = this.buf;
                        java.lang.System.arraycopy(cArr19, i38, cArr19, i22 + 6, (i12 - i22) - 1);
                        char[] cArr20 = this.buf;
                        cArr20[i22] = '\\';
                        int i39 = i38 + 1;
                        cArr20[i38] = 'u';
                        int i40 = i39 + 1;
                        char[] cArr21 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                        cArr20[i39] = cArr21[(c10 >>> '\f') & 15];
                        int i41 = i40 + 1;
                        cArr20[i40] = cArr21[(c10 >>> '\b') & 15];
                        cArr20[i41] = cArr21[(c10 >>> 4) & 15];
                        cArr20[i41 + 1] = cArr21[c10 & 15];
                    } else {
                        int i42 = i22 + 1;
                        char[] cArr22 = this.buf;
                        java.lang.System.arraycopy(cArr22, i42, cArr22, i22 + 2, (i12 - i22) - 1);
                        char[] cArr23 = this.buf;
                        cArr23[i22] = '\\';
                        cArr23[i42] = com.alibaba.fastjson.util.IOUtils.replaceChars[c10];
                    }
                } else {
                    int i43 = i22 + 1;
                    char[] cArr24 = this.buf;
                    java.lang.System.arraycopy(cArr24, i43, cArr24, i22 + 6, (i12 - i22) - 1);
                    char[] cArr25 = this.buf;
                    cArr25[i22] = '\\';
                    cArr25[i43] = 'u';
                    int i44 = i43 + 1;
                    char[] cArr26 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                    cArr25[i44] = cArr26[(c10 >>> '\f') & 15];
                    int i45 = i44 + 1;
                    cArr25[i45] = cArr26[(c10 >>> '\b') & 15];
                    int i46 = i45 + 1;
                    cArr25[i46] = cArr26[(c10 >>> 4) & 15];
                    cArr25[i46 + 1] = cArr26[c10 & 15];
                }
            } else if (i23 > 1) {
                for (int i47 = i28 - i11; i47 < cArr.length; i47++) {
                    char c12 = cArr[i47];
                    if (this.browserSecure) {
                        if (c12 != '(' && c12 != ')') {
                            if (c12 == '<' || c12 == '>') {
                            }
                        }
                        char[] cArr27 = this.buf;
                        int i48 = i28 + 1;
                        cArr27[i28] = '\\';
                        int i49 = i48 + 1;
                        cArr27[i48] = 'u';
                        int i50 = i49 + 1;
                        char[] cArr28 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                        cArr27[i49] = cArr28[(c12 >>> '\f') & 15];
                        int i51 = i50 + 1;
                        cArr27[i50] = cArr28[(c12 >>> '\b') & 15];
                        int i52 = i51 + 1;
                        cArr27[i51] = cArr28[(c12 >>> 4) & 15];
                        i28 = i52 + 1;
                        cArr27[i52] = cArr28[c12 & 15];
                    }
                    byte[] bArr4 = com.alibaba.fastjson.util.IOUtils.specicalFlags_doubleQuotes;
                    if ((c12 >= bArr4.length || bArr4[c12] == 0) && !(c12 == '/' && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                        if (c12 != 8232 && c12 != 8233) {
                            this.buf[i28] = c12;
                            i28++;
                        } else {
                            char[] cArr29 = this.buf;
                            int i53 = i28 + 1;
                            cArr29[i28] = '\\';
                            int i54 = i53 + 1;
                            cArr29[i53] = 'u';
                            int i55 = i54 + 1;
                            char[] cArr30 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                            cArr29[i54] = cArr30[(c12 >>> '\f') & 15];
                            int i56 = i55 + 1;
                            cArr29[i55] = cArr30[(c12 >>> '\b') & 15];
                            int i57 = i56 + 1;
                            cArr29[i56] = cArr30[(c12 >>> 4) & 15];
                            i28 = i57 + 1;
                            cArr29[i57] = cArr30[c12 & 15];
                        }
                    } else {
                        char[] cArr31 = this.buf;
                        int i58 = i28 + 1;
                        cArr31[i28] = '\\';
                        if (bArr4[c12] == 4) {
                            int i59 = i58 + 1;
                            cArr31[i58] = 'u';
                            int i60 = i59 + 1;
                            char[] cArr32 = com.alibaba.fastjson.util.IOUtils.DIGITS;
                            cArr31[i59] = cArr32[(c12 >>> '\f') & 15];
                            int i61 = i60 + 1;
                            cArr31[i60] = cArr32[(c12 >>> '\b') & 15];
                            int i62 = i61 + 1;
                            cArr31[i61] = cArr32[(c12 >>> 4) & 15];
                            i28 = i62 + 1;
                            cArr31[i62] = cArr32[c12 & 15];
                        } else {
                            i28 = i58 + 1;
                            cArr31[i58] = com.alibaba.fastjson.util.IOUtils.replaceChars[c12];
                        }
                    }
                }
            }
        }
        if (c5 != 0) {
            char[] cArr33 = this.buf;
            int i63 = this.count;
            cArr33[i63 - 2] = '\"';
            cArr33[i63 - 1] = c5;
            return;
        }
        this.buf[this.count - 1] = '\"';
    }
}
