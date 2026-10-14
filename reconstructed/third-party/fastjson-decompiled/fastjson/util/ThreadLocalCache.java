package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ThreadLocalCache {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int BYTES_CACH_INIT_SIZE = 1024;
    public static final int BYTES_CACH_INIT_SIZE_EXP = 10;
    public static final int BYTES_CACH_MAX_SIZE = 131072;
    public static final int BYTES_CACH_MAX_SIZE_EXP = 17;
    public static final int CHARS_CACH_INIT_SIZE = 1024;
    public static final int CHARS_CACH_INIT_SIZE_EXP = 10;
    public static final int CHARS_CACH_MAX_SIZE = 131072;
    public static final int CHARS_CACH_MAX_SIZE_EXP = 17;
    private static final java.lang.ThreadLocal<java.lang.ref.SoftReference<char[]>> charsBufLocal = new java.lang.ThreadLocal<>();
    private static final java.lang.ThreadLocal<java.nio.charset.CharsetDecoder> decoderLocal = new java.lang.ThreadLocal<>();
    private static final java.lang.ThreadLocal<java.lang.ref.SoftReference<byte[]>> bytesBufLocal = new java.lang.ThreadLocal<>();

    private static char[] allocate(int i5) {
        if (i5 > 131072) {
            return new char[i5];
        }
        char[] cArr = new char[getAllocateLengthExp(10, 17, i5)];
        charsBufLocal.set(new java.lang.ref.SoftReference<>(cArr));
        return cArr;
    }

    private static byte[] allocateBytes(int i5) {
        if (i5 > 131072) {
            return new byte[i5];
        }
        byte[] bArr = new byte[getAllocateLengthExp(10, 17, i5)];
        bytesBufLocal.set(new java.lang.ref.SoftReference<>(bArr));
        return bArr;
    }

    public static void clearBytes() {
        bytesBufLocal.set(null);
    }

    public static void clearChars() {
        charsBufLocal.set(null);
    }

    private static int getAllocateLengthExp(int i5, int i6, int i7) {
        return (i7 >>> i5) <= 0 ? 1 << i5 : 1 << (32 - java.lang.Integer.numberOfLeadingZeros(i7 - 1));
    }

    public static byte[] getBytes(int i5) {
        java.lang.ref.SoftReference<byte[]> softReference = bytesBufLocal.get();
        if (softReference == null) {
            return allocateBytes(i5);
        }
        byte[] bArr = softReference.get();
        if (bArr == null) {
            return allocateBytes(i5);
        }
        return bArr.length < i5 ? allocateBytes(i5) : bArr;
    }

    public static char[] getChars(int i5) {
        java.lang.ref.SoftReference<char[]> softReference = charsBufLocal.get();
        if (softReference == null) {
            return allocate(i5);
        }
        char[] cArr = softReference.get();
        if (cArr == null) {
            return allocate(i5);
        }
        return cArr.length < i5 ? allocate(i5) : cArr;
    }

    public static java.nio.charset.CharsetDecoder getUTF8Decoder() {
        java.lang.ThreadLocal<java.nio.charset.CharsetDecoder> threadLocal = decoderLocal;
        java.nio.charset.CharsetDecoder charsetDecoder = threadLocal.get();
        if (charsetDecoder != null) {
            return charsetDecoder;
        }
        com.alibaba.fastjson.util.UTF8Decoder uTF8Decoder = new com.alibaba.fastjson.util.UTF8Decoder();
        threadLocal.set(uTF8Decoder);
        return uTF8Decoder;
    }
}
