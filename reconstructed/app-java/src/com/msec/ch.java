package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ch {
    public static float a(float[] fArr, int i5) {
        float fPow = 0.0f;
        if (i5 == 0) {
            return 0.0f;
        }
        float f5 = 0.0f;
        for (int i6 = 0; i6 < i5; i6++) {
            f5 += fArr[i6];
        }
        float f6 = i5;
        float f7 = f5 / f6;
        for (int i7 = 0; i7 < i5; i7++) {
            fPow = (float) (((double) fPow) + java.lang.Math.pow(fArr[i7] - f7, 2.0d));
        }
        return (float) java.lang.Math.sqrt(fPow / f6);
    }
}
