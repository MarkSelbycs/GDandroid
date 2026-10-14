package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
final class Util {
    public static final java.nio.charset.Charset UTF_8 = java.nio.charset.Charset.forName("UTF-8");

    private Util() {
    }

    public static boolean arrayRangeEquals(byte[] bArr, int i5, byte[] bArr2, int i6, int i7) {
        for (int i8 = 0; i8 < i7; i8++) {
            if (bArr[i8 + i5] != bArr2[i8 + i6]) {
                return false;
            }
        }
        return true;
    }

    public static void checkOffsetAndCount(long j5, long j6, long j7) {
        if ((j6 | j7) < 0 || j6 > j5 || j5 - j6 < j7) {
            throw new java.lang.ArrayIndexOutOfBoundsException(java.lang.String.format("size=%s offset=%s byteCount=%s", java.lang.Long.valueOf(j5), java.lang.Long.valueOf(j6), java.lang.Long.valueOf(j7)));
        }
    }

    public static int reverseBytesInt(int i5) {
        return ((i5 & 255) << 24) | (((-16777216) & i5) >>> 24) | ((16711680 & i5) >>> 8) | ((65280 & i5) << 8);
    }

    public static long reverseBytesLong(long j5) {
        return ((j5 & 255) << 56) | (((-72057594037927936L) & j5) >>> 56) | ((71776119061217280L & j5) >>> 40) | ((280375465082880L & j5) >>> 24) | ((1095216660480L & j5) >>> 8) | ((4278190080L & j5) << 8) | ((16711680 & j5) << 24) | ((65280 & j5) << 40);
    }

    public static short reverseBytesShort(short s5) {
        int i5 = s5 & 65535;
        return (short) (((i5 & 255) << 8) | ((65280 & i5) >>> 8));
    }

    public static void sneakyRethrow(java.lang.Throwable th) throws java.lang.Throwable {
        sneakyThrow2(th);
    }

    private static <T extends java.lang.Throwable> void sneakyThrow2(java.lang.Throwable th) throws java.lang.Throwable {
        throw th;
    }
}
