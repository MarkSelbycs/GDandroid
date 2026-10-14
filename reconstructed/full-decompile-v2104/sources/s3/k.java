package s3;

/* JADX INFO: compiled from: StringNumberConversions.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class k extends s3.j {
    public static final java.lang.Long f(java.lang.String str) {
        m3.k.e(str, "<this>");
        return g(str, 10);
    }

    public static final java.lang.Long g(java.lang.String str, int i5) {
        m3.k.e(str, "<this>");
        s3.a.a(i5);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i6 = 0;
        char cCharAt = str.charAt(0);
        long j5 = -9223372036854775807L;
        boolean z4 = true;
        if (m3.k.f(cCharAt, 48) >= 0) {
            z4 = false;
        } else {
            if (length == 1) {
                return null;
            }
            if (cCharAt == '-') {
                j5 = Long.MIN_VALUE;
                i6 = 1;
            } else {
                if (cCharAt != '+') {
                    return null;
                }
                z4 = false;
                i6 = 1;
            }
        }
        long j6 = -256204778801521550L;
        long j7 = 0;
        long j8 = -256204778801521550L;
        while (i6 < length) {
            int iB = s3.a.b(str.charAt(i6), i5);
            if (iB < 0) {
                return null;
            }
            if (j7 < j8) {
                if (j8 == j6) {
                    j8 = j5 / ((long) i5);
                    if (j7 < j8) {
                    }
                }
                return null;
            }
            long j9 = j7 * ((long) i5);
            long j10 = iB;
            if (j9 < j5 + j10) {
                return null;
            }
            j7 = j9 - j10;
            i6++;
            j6 = -256204778801521550L;
        }
        return z4 ? java.lang.Long.valueOf(j7) : java.lang.Long.valueOf(-j7);
    }
}
