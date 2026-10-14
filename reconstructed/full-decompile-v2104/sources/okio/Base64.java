package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
final class Base64 {
    private static final byte[] MAP = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    private static final byte[] URL_MAP = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    private Base64() {
    }

    public static byte[] decode(java.lang.String str) {
        int i5;
        char cCharAt;
        int length = str.length();
        while (length > 0 && ((cCharAt = str.charAt(length - 1)) == '=' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ' || cCharAt == '\t')) {
            length--;
        }
        int i6 = (int) ((((long) length) * 6) / 8);
        byte[] bArr = new byte[i6];
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt2 = str.charAt(i10);
            if (cCharAt2 >= 'A' && cCharAt2 <= 'Z') {
                i5 = cCharAt2 - 'A';
            } else if (cCharAt2 >= 'a' && cCharAt2 <= 'z') {
                i5 = cCharAt2 - 'G';
            } else if (cCharAt2 >= '0' && cCharAt2 <= '9') {
                i5 = cCharAt2 + 4;
            } else if (cCharAt2 == '+' || cCharAt2 == '-') {
                i5 = 62;
            } else {
                if (cCharAt2 == '/' || cCharAt2 == '_') {
                    i5 = 63;
                } else if (cCharAt2 != '\n' && cCharAt2 != '\r' && cCharAt2 != ' ' && cCharAt2 != '\t') {
                    return null;
                }
            }
            i8 = (i8 << 6) | ((byte) i5);
            i7++;
            if (i7 % 4 == 0) {
                int i11 = i9 + 1;
                bArr[i9] = (byte) (i8 >> 16);
                int i12 = i11 + 1;
                bArr[i11] = (byte) (i8 >> 8);
                bArr[i12] = (byte) i8;
                i9 = i12 + 1;
            }
        }
        int i13 = i7 % 4;
        if (i13 == 1) {
            return null;
        }
        if (i13 == 2) {
            bArr[i9] = (byte) ((i8 << 12) >> 16);
            i9++;
        } else if (i13 == 3) {
            int i14 = i8 << 6;
            int i15 = i9 + 1;
            bArr[i9] = (byte) (i14 >> 16);
            i9 = i15 + 1;
            bArr[i15] = (byte) (i14 >> 8);
        }
        if (i9 == i6) {
            return bArr;
        }
        byte[] bArr2 = new byte[i9];
        java.lang.System.arraycopy(bArr, 0, bArr2, 0, i9);
        return bArr2;
    }

    public static java.lang.String encode(byte[] bArr) {
        return encode(bArr, MAP);
    }

    public static java.lang.String encodeUrl(byte[] bArr) {
        return encode(bArr, URL_MAP);
    }

    private static java.lang.String encode(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[((bArr.length + 2) * 4) / 3];
        int length = bArr.length - (bArr.length % 3);
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6 += 3) {
            int i7 = i5 + 1;
            bArr3[i5] = bArr2[(bArr[i6] & 255) >> 2];
            int i8 = i7 + 1;
            int i9 = i6 + 1;
            bArr3[i7] = bArr2[((bArr[i6] & 3) << 4) | ((bArr[i9] & 255) >> 4)];
            int i10 = i8 + 1;
            int i11 = (bArr[i9] & 15) << 2;
            int i12 = i6 + 2;
            bArr3[i8] = bArr2[i11 | ((bArr[i12] & 255) >> 6)];
            i5 = i10 + 1;
            bArr3[i10] = bArr2[bArr[i12] & 63];
        }
        int length2 = bArr.length % 3;
        if (length2 == 1) {
            int i13 = i5 + 1;
            bArr3[i5] = bArr2[(bArr[length] & 255) >> 2];
            int i14 = i13 + 1;
            bArr3[i13] = bArr2[(bArr[length] & 3) << 4];
            int i15 = i14 + 1;
            bArr3[i14] = 61;
            i5 = i15 + 1;
            bArr3[i15] = 61;
        } else if (length2 == 2) {
            int i16 = i5 + 1;
            bArr3[i5] = bArr2[(bArr[length] & 255) >> 2];
            int i17 = i16 + 1;
            int i18 = (bArr[length] & 3) << 4;
            int i19 = length + 1;
            bArr3[i16] = bArr2[((bArr[i19] & 255) >> 4) | i18];
            int i20 = i17 + 1;
            bArr3[i17] = bArr2[(bArr[i19] & 15) << 2];
            i5 = i20 + 1;
            bArr3[i20] = 61;
        }
        try {
            return new java.lang.String(bArr3, 0, i5, "US-ASCII");
        } catch (java.io.UnsupportedEncodingException e5) {
            throw new java.lang.AssertionError(e5);
        }
    }
}
