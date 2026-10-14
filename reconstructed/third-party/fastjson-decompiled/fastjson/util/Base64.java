package com.alibaba.fastjson.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class Base64 {
    public static final char[] CA;
    public static final int[] IA;

    static {
        char[] charArray = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        CA = charArray;
        int[] iArr = new int[256];
        IA = iArr;
        java.util.Arrays.fill(iArr, -1);
        int length = charArray.length;
        for (int i5 = 0; i5 < length; i5++) {
            IA[CA[i5]] = i5;
        }
        IA[61] = 0;
    }

    public static byte[] decodeFast(char[] cArr, int i5, int i6) {
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

    public static byte[] decodeFast(java.lang.String str, int i5, int i6) {
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

    public static byte[] decodeFast(java.lang.String str) {
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
