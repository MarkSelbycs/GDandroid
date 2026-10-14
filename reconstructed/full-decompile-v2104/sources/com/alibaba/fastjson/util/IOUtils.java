package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class IOUtils {
    public static final char[] ASCII_CHARS;
    public static final char[] CA;
    public static final char[] DigitOnes;
    public static final char[] DigitTens;
    public static final java.lang.String FASTJSON_COMPATIBLEWITHFIELDNAME = "fastjson.compatibleWithFieldName";
    public static final java.lang.String FASTJSON_COMPATIBLEWITHJAVABEAN = "fastjson.compatibleWithJavaBean";
    public static final java.lang.String FASTJSON_PROPERTIES = "fastjson.properties";
    public static final int[] IA;
    public static final char[] digits;
    public static final char[] replaceChars;
    public static final int[] sizeTable;
    public static final byte[] specicalFlags_doubleQuotes;
    public static final boolean[] specicalFlags_doubleQuotesFlags;
    public static final byte[] specicalFlags_singleQuotes;
    public static final boolean[] specicalFlags_singleQuotesFlags;
    public static final java.util.Properties DEFAULT_PROPERTIES = new java.util.Properties();
    public static final java.nio.charset.Charset UTF8 = java.nio.charset.Charset.forName("UTF-8");
    public static final char[] DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public static final boolean[] firstIdentifierFlags = new boolean[256];
    public static final boolean[] identifierFlags = new boolean[256];

    static {
        char c5 = 0;
        while (true) {
            boolean[] zArr = firstIdentifierFlags;
            if (c5 >= zArr.length) {
                break;
            }
            if (c5 >= 'A' && c5 <= 'Z') {
                zArr[c5] = true;
            } else if (c5 >= 'a' && c5 <= 'z') {
                zArr[c5] = true;
            } else if (c5 == '_' || c5 == '$') {
                zArr[c5] = true;
            }
            c5 = (char) (c5 + 1);
        }
        char c6 = 0;
        while (true) {
            boolean[] zArr2 = identifierFlags;
            if (c6 < zArr2.length) {
                if (c6 >= 'A' && c6 <= 'Z') {
                    zArr2[c6] = true;
                } else if (c6 >= 'a' && c6 <= 'z') {
                    zArr2[c6] = true;
                } else if (c6 == '_') {
                    zArr2[c6] = true;
                } else if (c6 >= '0' && c6 <= '9') {
                    zArr2[c6] = true;
                }
                c6 = (char) (c6 + 1);
            } else {
                try {
                    break;
                } catch (java.lang.Throwable unused) {
                }
            }
        }
        loadPropertiesFromFile();
        byte[] bArr = new byte[com.alibaba.fastjson.asm.Opcodes.IF_ICMPLT];
        specicalFlags_doubleQuotes = bArr;
        byte[] bArr2 = new byte[com.alibaba.fastjson.asm.Opcodes.IF_ICMPLT];
        specicalFlags_singleQuotes = bArr2;
        specicalFlags_doubleQuotesFlags = new boolean[com.alibaba.fastjson.asm.Opcodes.IF_ICMPLT];
        specicalFlags_singleQuotesFlags = new boolean[com.alibaba.fastjson.asm.Opcodes.IF_ICMPLT];
        replaceChars = new char[93];
        bArr[0] = 4;
        bArr[1] = 4;
        bArr[2] = 4;
        bArr[3] = 4;
        bArr[4] = 4;
        bArr[5] = 4;
        bArr[6] = 4;
        bArr[7] = 4;
        bArr[8] = 1;
        bArr[9] = 1;
        bArr[10] = 1;
        bArr[11] = 4;
        bArr[12] = 1;
        bArr[13] = 1;
        bArr[34] = 1;
        bArr[92] = 1;
        bArr2[0] = 4;
        bArr2[1] = 4;
        bArr2[2] = 4;
        bArr2[3] = 4;
        bArr2[4] = 4;
        bArr2[5] = 4;
        bArr2[6] = 4;
        bArr2[7] = 4;
        bArr2[8] = 1;
        bArr2[9] = 1;
        bArr2[10] = 1;
        bArr2[11] = 4;
        bArr2[12] = 1;
        bArr2[13] = 1;
        bArr2[92] = 1;
        bArr2[39] = 1;
        for (int i5 = 14; i5 <= 31; i5++) {
            specicalFlags_doubleQuotes[i5] = 4;
            specicalFlags_singleQuotes[i5] = 4;
        }
        for (int i6 = 127; i6 < 160; i6++) {
            specicalFlags_doubleQuotes[i6] = 4;
            specicalFlags_singleQuotes[i6] = 4;
        }
        for (int i7 = 0; i7 < 161; i7++) {
            specicalFlags_doubleQuotesFlags[i7] = specicalFlags_doubleQuotes[i7] != 0;
            specicalFlags_singleQuotesFlags[i7] = specicalFlags_singleQuotes[i7] != 0;
        }
        char[] cArr = replaceChars;
        cArr[0] = '0';
        cArr[1] = '1';
        cArr[2] = '2';
        cArr[3] = '3';
        cArr[4] = '4';
        cArr[5] = '5';
        cArr[6] = '6';
        cArr[7] = '7';
        cArr[8] = 'b';
        cArr[9] = 't';
        cArr[10] = 'n';
        cArr[11] = 'v';
        cArr[12] = 'f';
        cArr[13] = 'r';
        cArr[34] = '\"';
        cArr[39] = '\'';
        cArr[47] = '/';
        cArr[92] = '\\';
        ASCII_CHARS = new char[]{'0', '0', '0', '1', '0', '2', '0', '3', '0', '4', '0', '5', '0', '6', '0', '7', '0', '8', '0', '9', '0', 'A', '0', 'B', '0', 'C', '0', 'D', '0', 'E', '0', 'F', '1', '0', '1', '1', '1', '2', '1', '3', '1', '4', '1', '5', '1', '6', '1', '7', '1', '8', '1', '9', '1', 'A', '1', 'B', '1', 'C', '1', 'D', '1', 'E', '1', 'F', '2', '0', '2', '1', '2', '2', '2', '3', '2', '4', '2', '5', '2', '6', '2', '7', '2', '8', '2', '9', '2', 'A', '2', 'B', '2', 'C', '2', 'D', '2', 'E', '2', 'F'};
        digits = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
        DigitTens = new char[]{'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9'};
        DigitOnes = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
        sizeTable = new int[]{9, 99, 999, 9999, 99999, 999999, 9999999, 99999999, 999999999, Integer.MAX_VALUE};
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        CA = charArray;
        int[] iArr = new int[256];
        IA = iArr;
        java.util.Arrays.fill(iArr, -1);
        int length = charArray.length;
        for (int i8 = 0; i8 < length; i8++) {
            IA[CA[i8]] = i8;
        }
        IA[61] = 0;
    }

    public static void close(java.io.Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (java.lang.Exception unused) {
            }
        }
    }

    public static void decode(java.nio.charset.CharsetDecoder charsetDecoder, java.nio.ByteBuffer byteBuffer, java.nio.CharBuffer charBuffer) {
        try {
            java.nio.charset.CoderResult coderResultDecode = charsetDecoder.decode(byteBuffer, charBuffer, true);
            if (!coderResultDecode.isUnderflow()) {
                coderResultDecode.throwException();
            }
            java.nio.charset.CoderResult coderResultFlush = charsetDecoder.flush(charBuffer);
            if (coderResultFlush.isUnderflow()) {
                return;
            }
            coderResultFlush.throwException();
        } catch (java.nio.charset.CharacterCodingException e5) {
            throw new com.alibaba.fastjson.JSONException("utf8 decode error, " + e5.getMessage(), e5);
        }
    }

    public static byte[] decodeBase64(char[] cArr, int i5, int i6) {
        int i7;
        int i8;
        int i9 = 0;
        if (i6 == 0) {
            return new byte[0];
        }
        int i10 = (i5 + i6) - 1;
        while (i5 < i10 && IA[cArr[i5]] < 0) {
            i5++;
        }
        while (i10 > 0 && IA[cArr[i10]] < 0) {
            i10--;
        }
        if (cArr[i10] == '=') {
            i7 = cArr[i10 + (-1)] == '=' ? 2 : 1;
        } else {
            i7 = 0;
        }
        int i11 = (i10 - i5) + 1;
        if (i6 > 76) {
            i8 = (cArr[76] == '\r' ? i11 / 78 : 0) << 1;
        } else {
            i8 = 0;
        }
        int i12 = (((i11 - i8) * 6) >> 3) - i7;
        byte[] bArr = new byte[i12];
        int i13 = (i12 / 3) * 3;
        int i14 = 0;
        int i15 = 0;
        while (i14 < i13) {
            int[] iArr = IA;
            int i16 = i5 + 1;
            int i17 = i16 + 1;
            int i18 = (iArr[cArr[i5]] << 18) | (iArr[cArr[i16]] << 12);
            int i19 = i17 + 1;
            int i20 = i18 | (iArr[cArr[i17]] << 6);
            int i21 = i19 + 1;
            int i22 = i20 | iArr[cArr[i19]];
            int i23 = i14 + 1;
            bArr[i14] = (byte) (i22 >> 16);
            int i24 = i23 + 1;
            bArr[i23] = (byte) (i22 >> 8);
            int i25 = i24 + 1;
            bArr[i24] = (byte) i22;
            if (i8 > 0 && (i15 = i15 + 1) == 19) {
                i21 += 2;
                i15 = 0;
            }
            i5 = i21;
            i14 = i25;
        }
        if (i14 < i12) {
            int i26 = 0;
            while (i5 <= i10 - i7) {
                i9 |= IA[cArr[i5]] << (18 - (i26 * 6));
                i26++;
                i5++;
            }
            int i27 = 16;
            while (i14 < i12) {
                bArr[i14] = (byte) (i9 >> i27);
                i27 -= 8;
                i14++;
            }
        }
        return bArr;
    }

    public static int decodeUTF8(byte[] bArr, int i5, int i6, char[] cArr) {
        int i7 = i5 + i6;
        int iMin = java.lang.Math.min(i6, cArr.length);
        int i8 = 0;
        while (i8 < iMin && bArr[i5] >= 0) {
            cArr[i8] = (char) bArr[i5];
            i8++;
            i5++;
        }
        while (i5 < i7) {
            int i9 = i5 + 1;
            byte b5 = bArr[i5];
            if (b5 >= 0) {
                cArr[i8] = (char) b5;
                i5 = i9;
                i8++;
            } else {
                if ((b5 >> 5) != -2 || (b5 & 30) == 0) {
                    if ((b5 >> 4) == -2) {
                        int i10 = i9 + 1;
                        if (i10 < i7) {
                            byte b6 = bArr[i9];
                            int i11 = i10 + 1;
                            byte b7 = bArr[i10];
                            if ((b5 != -32 || (b6 & 224) != 128) && (b6 & 192) == 128 && (b7 & 192) == 128) {
                                char c5 = (char) (((b5 << 12) ^ (b6 << 6)) ^ ((-123008) ^ b7));
                                if (c5 >= 55296 && c5 < 57344) {
                                    return -1;
                                }
                                cArr[i8] = c5;
                                i8++;
                                i5 = i11;
                            }
                        }
                        return -1;
                    }
                    if ((b5 >> 3) == -2 && i9 + 2 < i7) {
                        int i12 = i9 + 1;
                        byte b8 = bArr[i9];
                        int i13 = i12 + 1;
                        byte b9 = bArr[i12];
                        int i14 = i13 + 1;
                        byte b10 = bArr[i13];
                        int i15 = (((b5 << 18) ^ (b8 << 12)) ^ (b9 << 6)) ^ (3678080 ^ b10);
                        if ((b8 & 192) == 128 && (b9 & 192) == 128 && (b10 & 192) == 128 && i15 >= 65536 && i15 < 1114112) {
                            int i16 = i8 + 1;
                            cArr[i8] = (char) ((i15 >>> 10) + 55232);
                            i8 = i16 + 1;
                            cArr[i16] = (char) ((i15 & 1023) + 56320);
                            i5 = i14;
                        }
                    }
                    return -1;
                }
                if (i9 >= i7) {
                    return -1;
                }
                int i17 = i9 + 1;
                byte b11 = bArr[i9];
                if ((b11 & 192) != 128) {
                    return -1;
                }
                cArr[i8] = (char) (((b5 << 6) ^ b11) ^ 3968);
                i5 = i17;
                i8++;
            }
        }
        return i8;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0081  */
    /* JADX WARN: Code duplicated, block: B:38:0x0086  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v16, types: [int] */
    /* JADX WARN: Type inference failed for: r10v25, types: [int] */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v3, types: [char, int] */
    public static int encodeUTF8(char[] cArr, int i5, int i6, byte[] bArr) {
        int i7;
        int i8;
        int i9 = i5 + i6;
        int i10 = 0;
        int iMin = java.lang.Math.min(i6, bArr.length) + 0;
        while (i10 < iMin && cArr[i5] < 128) {
            bArr[i10] = (byte) cArr[i5];
            i10++;
            i5++;
        }
        while (i5 < i9) {
            int i11 = i5 + 1;
            char c5 = cArr[i5];
            if (c5 < 128) {
                i7 = i10 + 1;
                bArr[i10] = (byte) c5;
            } else {
                if (c5 < 2048) {
                    int i12 = i10 + 1;
                    bArr[i10] = (byte) ((c5 >> 6) | com.alibaba.fastjson.asm.Opcodes.CHECKCAST);
                    i10 = i12 + 1;
                    bArr[i12] = (byte) ((c5 & 63) | com.alibaba.fastjson.asm.Opcodes.IOR);
                } else if (c5 < 55296 || c5 >= 57344) {
                    int i13 = i10 + 1;
                    bArr[i10] = (byte) ((c5 >> 12) | 224);
                    int i14 = i13 + 1;
                    bArr[i13] = (byte) ((63 & (c5 >> 6)) | com.alibaba.fastjson.asm.Opcodes.IOR);
                    i7 = i14 + 1;
                    bArr[i14] = (byte) ((c5 & 63) | com.alibaba.fastjson.asm.Opcodes.IOR);
                } else {
                    int i15 = i11 - 1;
                    if (c5 >= 55296 && c5 < 56320) {
                        if (i9 - i15 < 2) {
                            c5 = -1;
                        } else {
                            char c6 = cArr[i15 + 1];
                            if (c6 < 56320 || c6 >= 57344) {
                                i8 = i10 + 1;
                                bArr[i10] = 63;
                            } else {
                                c5 = ((c5 << 10) + c6) - 56613888;
                            }
                        }
                        if (c5 < 0) {
                            i8 = i10 + 1;
                            bArr[i10] = 63;
                        } else {
                            int i16 = i10 + 1;
                            bArr[i10] = (byte) ((c5 >> 18) | 240);
                            int i17 = i16 + 1;
                            bArr[i16] = (byte) (((c5 >> 12) & 63) | com.alibaba.fastjson.asm.Opcodes.IOR);
                            int i18 = i17 + 1;
                            bArr[i17] = (byte) ((63 & (c5 >> 6)) | com.alibaba.fastjson.asm.Opcodes.IOR);
                            bArr[i18] = (byte) ((c5 & 63) | com.alibaba.fastjson.asm.Opcodes.IOR);
                            i11++;
                            i8 = i18 + 1;
                        }
                    } else if (c5 >= 56320 && c5 < 57344) {
                        i8 = i10 + 1;
                        bArr[i10] = 63;
                    } else if (c5 < 0) {
                        i8 = i10 + 1;
                        bArr[i10] = 63;
                    } else {
                        int i19 = i10 + 1;
                        bArr[i10] = (byte) ((c5 >> 18) | 240);
                        int i110 = i19 + 1;
                        bArr[i19] = (byte) (((c5 >> 12) & 63) | com.alibaba.fastjson.asm.Opcodes.IOR);
                        int i111 = i110 + 1;
                        bArr[i110] = (byte) ((63 & (c5 >> 6)) | com.alibaba.fastjson.asm.Opcodes.IOR);
                        bArr[i111] = (byte) ((c5 & 63) | com.alibaba.fastjson.asm.Opcodes.IOR);
                        i11++;
                        i8 = i111 + 1;
                    }
                    i10 = i8;
                }
                i5 = i11;
            }
            i5 = i11;
            i10 = i7;
        }
        return i10;
    }

    public static boolean firstIdentifier(char c5) {
        boolean[] zArr = firstIdentifierFlags;
        return c5 < zArr.length && zArr[c5];
    }

    public static void getChars(long j5, int i5, char[] cArr) {
        char c5;
        if (j5 < 0) {
            c5 = '-';
            j5 = -j5;
        } else {
            c5 = 0;
        }
        while (j5 > 2147483647L) {
            long j6 = j5 / 100;
            int i6 = (int) (j5 - (((j6 << 6) + (j6 << 5)) + (j6 << 2)));
            int i7 = i5 - 1;
            cArr[i7] = DigitOnes[i6];
            i5 = i7 - 1;
            cArr[i5] = DigitTens[i6];
            j5 = j6;
        }
        int i8 = (int) j5;
        while (i8 >= 65536) {
            int i9 = i8 / 100;
            int i10 = i8 - (((i9 << 6) + (i9 << 5)) + (i9 << 2));
            int i11 = i5 - 1;
            cArr[i11] = DigitOnes[i10];
            i5 = i11 - 1;
            cArr[i5] = DigitTens[i10];
            i8 = i9;
        }
        while (true) {
            int i12 = (52429 * i8) >>> 19;
            i5--;
            cArr[i5] = digits[i8 - ((i12 << 3) + (i12 << 1))];
            if (i12 == 0) {
                break;
            } else {
                i8 = i12;
            }
        }
        if (c5 != 0) {
            cArr[i5 - 1] = c5;
        }
    }

    public static java.lang.String getStringProperty(java.lang.String str) {
        java.lang.String property;
        try {
            property = java.lang.System.getProperty(str);
        } catch (java.lang.SecurityException unused) {
            property = null;
        }
        return property == null ? DEFAULT_PROPERTIES.getProperty(str) : property;
    }

    public static boolean isIdent(char c5) {
        boolean[] zArr = identifierFlags;
        return c5 < zArr.length && zArr[c5];
    }

    public static boolean isValidJsonpQueryParam(java.lang.String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i5 = 0; i5 < length; i5++) {
            char cCharAt = str.charAt(i5);
            if (cCharAt != '.' && !isIdent(cCharAt)) {
                return false;
            }
        }
        return true;
    }

    public static void loadPropertiesFromFile() {
        java.io.InputStream inputStream = (java.io.InputStream) java.security.AccessController.doPrivileged(new java.security.PrivilegedAction<java.io.InputStream>() { // from class: com.alibaba.fastjson.util.IOUtils.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public java.io.InputStream run() {
                java.lang.ClassLoader contextClassLoader = java.lang.Thread.currentThread().getContextClassLoader();
                return contextClassLoader != null ? contextClassLoader.getResourceAsStream(com.alibaba.fastjson.util.IOUtils.FASTJSON_PROPERTIES) : java.lang.ClassLoader.getSystemResourceAsStream(com.alibaba.fastjson.util.IOUtils.FASTJSON_PROPERTIES);
            }
        });
        if (inputStream != null) {
            try {
                DEFAULT_PROPERTIES.load(inputStream);
                inputStream.close();
            } catch (java.io.IOException unused) {
            }
        }
    }

    public static java.lang.String readAll(java.io.Reader reader) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        try {
            char[] cArr = new char[2048];
            while (true) {
                int i5 = reader.read(cArr, 0, 2048);
                if (i5 < 0) {
                    return sb.toString();
                }
                sb.append(cArr, 0, i5);
            }
        } catch (java.lang.Exception e5) {
            throw new com.alibaba.fastjson.JSONException("read string from reader error", e5);
        }
    }

    public static int stringSize(int i5) {
        int i6 = 0;
        while (i5 > sizeTable[i6]) {
            i6++;
        }
        return i6 + 1;
    }

    public static int stringSize(long j5) {
        long j6 = 10;
        for (int i5 = 1; i5 < 19; i5++) {
            if (j5 < j6) {
                return i5;
            }
            j6 *= 10;
        }
        return 19;
    }

    public static void getChars(int i5, int i6, char[] cArr) {
        char c5;
        if (i5 < 0) {
            c5 = '-';
            i5 = -i5;
        } else {
            c5 = 0;
        }
        while (i5 >= 65536) {
            int i7 = i5 / 100;
            int i8 = i5 - (((i7 << 6) + (i7 << 5)) + (i7 << 2));
            int i9 = i6 - 1;
            cArr[i9] = DigitOnes[i8];
            i6 = i9 - 1;
            cArr[i6] = DigitTens[i8];
            i5 = i7;
        }
        while (true) {
            int i10 = (52429 * i5) >>> 19;
            i6--;
            cArr[i6] = digits[i5 - ((i10 << 3) + (i10 << 1))];
            if (i10 == 0) {
                break;
            } else {
                i5 = i10;
            }
        }
        if (c5 != 0) {
            cArr[i6 - 1] = c5;
        }
    }

    public static byte[] decodeBase64(java.lang.String str, int i5, int i6) {
        int i7;
        int i8;
        int i9 = 0;
        if (i6 == 0) {
            return new byte[0];
        }
        int i10 = (i5 + i6) - 1;
        while (i5 < i10 && IA[str.charAt(i5)] < 0) {
            i5++;
        }
        while (i10 > 0 && IA[str.charAt(i10)] < 0) {
            i10--;
        }
        if (str.charAt(i10) == '=') {
            i7 = str.charAt(i10 + (-1)) == '=' ? 2 : 1;
        } else {
            i7 = 0;
        }
        int i11 = (i10 - i5) + 1;
        if (i6 > 76) {
            i8 = (str.charAt(76) == '\r' ? i11 / 78 : 0) << 1;
        } else {
            i8 = 0;
        }
        int i12 = (((i11 - i8) * 6) >> 3) - i7;
        byte[] bArr = new byte[i12];
        int i13 = (i12 / 3) * 3;
        int i14 = 0;
        int i15 = 0;
        while (i14 < i13) {
            int[] iArr = IA;
            int i16 = i5 + 1;
            int i17 = i16 + 1;
            int i18 = (iArr[str.charAt(i5)] << 18) | (iArr[str.charAt(i16)] << 12);
            int i19 = i17 + 1;
            int i20 = i18 | (iArr[str.charAt(i17)] << 6);
            int i21 = i19 + 1;
            int i22 = i20 | iArr[str.charAt(i19)];
            int i23 = i14 + 1;
            bArr[i14] = (byte) (i22 >> 16);
            int i24 = i23 + 1;
            bArr[i23] = (byte) (i22 >> 8);
            int i25 = i24 + 1;
            bArr[i24] = (byte) i22;
            if (i8 > 0 && (i15 = i15 + 1) == 19) {
                i21 += 2;
                i15 = 0;
            }
            i5 = i21;
            i14 = i25;
        }
        if (i14 < i12) {
            int i26 = 0;
            while (i5 <= i10 - i7) {
                i9 |= IA[str.charAt(i5)] << (18 - (i26 * 6));
                i26++;
                i5++;
            }
            int i27 = 16;
            while (i14 < i12) {
                bArr[i14] = (byte) (i9 >> i27);
                i27 -= 8;
                i14++;
            }
        }
        return bArr;
    }

    public static void getChars(byte b5, int i5, char[] cArr) {
        char c5;
        int i6;
        if (b5 < 0) {
            c5 = '-';
            i6 = -b5;
        } else {
            c5 = 0;
            i6 = b5;
        }
        while (true) {
            int i7 = (52429 * i6) >>> 19;
            i5--;
            cArr[i5] = digits[i6 - ((i7 << 3) + (i7 << 1))];
            if (i7 == 0) {
                break;
            } else {
                i6 = i7;
            }
        }
        if (c5 != 0) {
            cArr[i5 - 1] = c5;
        }
    }

    public static byte[] decodeBase64(java.lang.String str) {
        int i5;
        int i6;
        int length = str.length();
        int i7 = 0;
        if (length == 0) {
            return new byte[0];
        }
        int i8 = length - 1;
        int i9 = 0;
        while (i9 < i8 && IA[str.charAt(i9) & 255] < 0) {
            i9++;
        }
        while (i8 > 0 && IA[str.charAt(i8) & 255] < 0) {
            i8--;
        }
        if (str.charAt(i8) == '=') {
            i5 = str.charAt(i8 + (-1)) == '=' ? 2 : 1;
        } else {
            i5 = 0;
        }
        int i10 = (i8 - i9) + 1;
        if (length > 76) {
            i6 = (str.charAt(76) == '\r' ? i10 / 78 : 0) << 1;
        } else {
            i6 = 0;
        }
        int i11 = (((i10 - i6) * 6) >> 3) - i5;
        byte[] bArr = new byte[i11];
        int i12 = (i11 / 3) * 3;
        int i13 = 0;
        int i14 = 0;
        while (i13 < i12) {
            int[] iArr = IA;
            int i15 = i9 + 1;
            int i16 = i15 + 1;
            int i17 = (iArr[str.charAt(i9)] << 18) | (iArr[str.charAt(i15)] << 12);
            int i18 = i16 + 1;
            int i19 = i17 | (iArr[str.charAt(i16)] << 6);
            int i20 = i18 + 1;
            int i21 = i19 | iArr[str.charAt(i18)];
            int i22 = i13 + 1;
            bArr[i13] = (byte) (i21 >> 16);
            int i23 = i22 + 1;
            bArr[i22] = (byte) (i21 >> 8);
            int i24 = i23 + 1;
            bArr[i23] = (byte) i21;
            if (i6 > 0 && (i14 = i14 + 1) == 19) {
                i20 += 2;
                i14 = 0;
            }
            i9 = i20;
            i13 = i24;
        }
        if (i13 < i11) {
            int i25 = 0;
            while (i9 <= i8 - i5) {
                i7 |= IA[str.charAt(i9)] << (18 - (i25 * 6));
                i25++;
                i9++;
            }
            int i26 = 16;
            while (i13 < i11) {
                bArr[i13] = (byte) (i7 >> i26);
                i26 -= 8;
                i13++;
            }
        }
        return bArr;
    }
}
