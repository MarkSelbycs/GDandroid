package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class UTF8Decoder extends java.nio.charset.CharsetDecoder {
    private static final java.nio.charset.Charset charset = java.nio.charset.Charset.forName("UTF-8");

    public UTF8Decoder() {
        super(charset, 1.0f, 1.0f);
    }

    private java.nio.charset.CoderResult decodeArrayLoop(java.nio.ByteBuffer byteBuffer, java.nio.CharBuffer charBuffer) {
        int i5;
        byte[] bArrArray = byteBuffer.array();
        int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
        int iArrayOffset2 = byteBuffer.arrayOffset() + byteBuffer.limit();
        char[] cArrArray = charBuffer.array();
        int iArrayOffset3 = charBuffer.arrayOffset() + charBuffer.position();
        int iArrayOffset4 = charBuffer.arrayOffset() + charBuffer.limit();
        int iMin = java.lang.Math.min(iArrayOffset2 - iArrayOffset, iArrayOffset4 - iArrayOffset3) + iArrayOffset3;
        while (iArrayOffset3 < iMin && bArrArray[iArrayOffset] >= 0) {
            cArrArray[iArrayOffset3] = (char) bArrArray[iArrayOffset];
            iArrayOffset3++;
            iArrayOffset++;
        }
        int i6 = iArrayOffset;
        while (true) {
            int i7 = iArrayOffset3;
            while (i6 < iArrayOffset2) {
                byte b5 = bArrArray[i6];
                if (b5 < 0) {
                    if ((b5 >> 5) == -2) {
                        if (iArrayOffset2 - i6 < 2 || i7 >= iArrayOffset4) {
                            return xflow(byteBuffer, i6, iArrayOffset2, charBuffer, i7, 2);
                        }
                        byte b6 = bArrArray[i6 + 1];
                        if (isMalformed2(b5, b6)) {
                            return malformed(byteBuffer, i6, charBuffer, i7, 2);
                        }
                        i5 = i7 + 1;
                        cArrArray[i7] = (char) (((b5 << 6) ^ b6) ^ 3968);
                        i6 += 2;
                    } else if ((b5 >> 4) == -2) {
                        if (iArrayOffset2 - i6 < 3 || i7 >= iArrayOffset4) {
                            return xflow(byteBuffer, i6, iArrayOffset2, charBuffer, i7, 3);
                        }
                        byte b7 = bArrArray[i6 + 1];
                        byte b8 = bArrArray[i6 + 2];
                        if (isMalformed3(b5, b7, b8)) {
                            return malformed(byteBuffer, i6, charBuffer, i7, 3);
                        }
                        i5 = i7 + 1;
                        cArrArray[i7] = (char) ((((b5 << 12) ^ (b7 << 6)) ^ b8) ^ 8064);
                        i6 += 3;
                    } else {
                        if ((b5 >> 3) != -2) {
                            return malformed(byteBuffer, i6, charBuffer, i7, 1);
                        }
                        if (iArrayOffset2 - i6 < 4 || iArrayOffset4 - i7 < 2) {
                            return xflow(byteBuffer, i6, iArrayOffset2, charBuffer, i7, 4);
                        }
                        byte b9 = bArrArray[i6 + 1];
                        byte b10 = bArrArray[i6 + 2];
                        byte b11 = bArrArray[i6 + 3];
                        int i8 = ((b5 & 7) << 18) | ((b9 & 63) << 12) | ((b10 & 63) << 6) | (b11 & 63);
                        if (isMalformed4(b9, b10, b11) || i8 < 65536 || i8 > 1114111) {
                            return malformed(byteBuffer, i6, charBuffer, i7, 4);
                        }
                        int i9 = i7 + 1;
                        int i10 = i8 - 65536;
                        cArrArray[i7] = (char) (((i10 >> 10) & 1023) | 55296);
                        iArrayOffset3 = i9 + 1;
                        cArrArray[i9] = (char) ((i10 & 1023) | 56320);
                        i6 += 4;
                    }
                    i7 = i5;
                } else {
                    if (i7 >= iArrayOffset4) {
                        return xflow(byteBuffer, i6, iArrayOffset2, charBuffer, i7, 1);
                    }
                    iArrayOffset3 = i7 + 1;
                    cArrArray[i7] = (char) b5;
                    i6++;
                }
            }
            return xflow(byteBuffer, i6, iArrayOffset2, charBuffer, i7, 0);
        }
    }

    private static boolean isMalformed2(int i5, int i6) {
        return (i5 & 30) == 0 || (i6 & com.alibaba.fastjson.asm.Opcodes.CHECKCAST) != 128;
    }

    private static boolean isMalformed3(int i5, int i6, int i7) {
        return ((i5 != -32 || (i6 & 224) != 128) && (i6 & com.alibaba.fastjson.asm.Opcodes.CHECKCAST) == 128 && (i7 & com.alibaba.fastjson.asm.Opcodes.CHECKCAST) == 128) ? false : true;
    }

    private static boolean isMalformed4(int i5, int i6, int i7) {
        return ((i5 & com.alibaba.fastjson.asm.Opcodes.CHECKCAST) == 128 && (i6 & com.alibaba.fastjson.asm.Opcodes.CHECKCAST) == 128 && (i7 & com.alibaba.fastjson.asm.Opcodes.CHECKCAST) == 128) ? false : true;
    }

    private static boolean isNotContinuation(int i5) {
        return (i5 & com.alibaba.fastjson.asm.Opcodes.CHECKCAST) != 128;
    }

    private static java.nio.charset.CoderResult lookupN(java.nio.ByteBuffer byteBuffer, int i5) {
        for (int i6 = 1; i6 < i5; i6++) {
            if (isNotContinuation(byteBuffer.get())) {
                return java.nio.charset.CoderResult.malformedForLength(i6);
            }
        }
        return java.nio.charset.CoderResult.malformedForLength(i5);
    }

    private static java.nio.charset.CoderResult malformed(java.nio.ByteBuffer byteBuffer, int i5, java.nio.CharBuffer charBuffer, int i6, int i7) {
        byteBuffer.position(i5 - byteBuffer.arrayOffset());
        java.nio.charset.CoderResult coderResultMalformedN = malformedN(byteBuffer, i7);
        byteBuffer.position(i5);
        charBuffer.position(i6);
        return coderResultMalformedN;
    }

    public static java.nio.charset.CoderResult malformedN(java.nio.ByteBuffer byteBuffer, int i5) {
        int i6 = 1;
        if (i5 == 1) {
            byte b5 = byteBuffer.get();
            if ((b5 >> 2) == -2) {
                return byteBuffer.remaining() < 4 ? java.nio.charset.CoderResult.UNDERFLOW : lookupN(byteBuffer, 5);
            }
            if ((b5 >> 1) == -2) {
                return byteBuffer.remaining() < 5 ? java.nio.charset.CoderResult.UNDERFLOW : lookupN(byteBuffer, 6);
            }
            return java.nio.charset.CoderResult.malformedForLength(1);
        }
        if (i5 == 2) {
            return java.nio.charset.CoderResult.malformedForLength(1);
        }
        if (i5 == 3) {
            byte b6 = byteBuffer.get();
            byte b7 = byteBuffer.get();
            if ((b6 != -32 || (b7 & 224) != 128) && !isNotContinuation(b7)) {
                i6 = 2;
            }
            return java.nio.charset.CoderResult.malformedForLength(i6);
        }
        if (i5 != 4) {
            throw new java.lang.IllegalStateException();
        }
        int i7 = byteBuffer.get() & 255;
        int i8 = byteBuffer.get() & 255;
        if (i7 > 244 || ((i7 == 240 && (i8 < 144 || i8 > 191)) || ((i7 == 244 && (i8 & 240) != 128) || isNotContinuation(i8)))) {
            return java.nio.charset.CoderResult.malformedForLength(1);
        }
        return isNotContinuation(byteBuffer.get()) ? java.nio.charset.CoderResult.malformedForLength(2) : java.nio.charset.CoderResult.malformedForLength(3);
    }

    private static java.nio.charset.CoderResult xflow(java.nio.Buffer buffer, int i5, int i6, java.nio.Buffer buffer2, int i7, int i8) {
        buffer.position(i5);
        buffer2.position(i7);
        return (i8 == 0 || i6 - i5 < i8) ? java.nio.charset.CoderResult.UNDERFLOW : java.nio.charset.CoderResult.OVERFLOW;
    }

    @Override // java.nio.charset.CharsetDecoder
    public java.nio.charset.CoderResult decodeLoop(java.nio.ByteBuffer byteBuffer, java.nio.CharBuffer charBuffer) {
        return decodeArrayLoop(byteBuffer, charBuffer);
    }
}
