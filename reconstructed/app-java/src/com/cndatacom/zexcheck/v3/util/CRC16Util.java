package com.cndatacom.zexcheck.v3.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CRC16Util {
    private static final int CRC16_POLY = 32773;

    public static int calcCrc16(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        int i5 = 0;
        for (byte b5 : bArr) {
            i5 ^= b5 & 255;
            for (int i6 = 0; i6 < 8; i6++) {
                i5 = (i5 & 1) == 1 ? (i5 >>> 1) ^ 40961 : i5 >>> 1;
            }
        }
        return i5;
    }
}
