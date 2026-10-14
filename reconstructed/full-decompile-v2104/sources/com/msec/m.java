package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class m {
    public static java.lang.String a(java.lang.String str) {
        int i5;
        if (str == null) {
            return "";
        }
        byte[] bytes = str.getBytes();
        byte[] bArr = new byte[bytes.length * 2];
        int i6 = 0;
        for (byte b5 : bytes) {
            if (40 > b5 || b5 > 126 || b5 == 58 || b5 == 92) {
                int i7 = i6 + 1;
                bArr[i6] = (byte) (((b5 & 255) >> 6) + 35);
                byte b6 = (byte) (b5 & 63);
                if (b6 < 12) {
                    i5 = i7 + 1;
                    bArr[i7] = (byte) (b6 + 46);
                } else if (b6 < 38) {
                    i5 = i7 + 1;
                    bArr[i7] = (byte) (b6 + 53);
                } else {
                    i5 = i7 + 1;
                    bArr[i7] = (byte) (b6 + 59);
                }
                i6 = i5;
            } else {
                bArr[i6] = b5;
                i6++;
            }
        }
        return new java.lang.String(bArr, 0, i6);
    }
}
