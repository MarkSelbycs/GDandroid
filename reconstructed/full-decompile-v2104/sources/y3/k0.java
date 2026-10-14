package y3;

/* JADX INFO: compiled from: SystemProps.common.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final /* synthetic */ class k0 {
    public static final int a(java.lang.String str, int i5, int i6, int i7) {
        return (int) y3.i0.c(str, i5, i6, i7);
    }

    public static final long b(java.lang.String str, long j5, long j6, long j7) {
        java.lang.String strD = y3.i0.d(str);
        if (strD == null) {
            return j5;
        }
        java.lang.Long lF = s3.k.f(strD);
        if (lF == null) {
            throw new java.lang.IllegalStateException(("System property '" + str + "' has unrecognized value '" + strD + '\'').toString());
        }
        long jLongValue = lF.longValue();
        boolean z4 = false;
        if (j6 <= jLongValue && jLongValue <= j7) {
            z4 = true;
        }
        if (z4) {
            return jLongValue;
        }
        throw new java.lang.IllegalStateException(("System property '" + str + "' should be in range " + j6 + ".." + j7 + ", but is '" + jLongValue + '\'').toString());
    }

    public static final java.lang.String c(java.lang.String str, java.lang.String str2) {
        java.lang.String strD = y3.i0.d(str);
        return strD == null ? str2 : strD;
    }

    public static final boolean d(java.lang.String str, boolean z4) {
        java.lang.String strD = y3.i0.d(str);
        return strD != null ? java.lang.Boolean.parseBoolean(strD) : z4;
    }

    public static /* synthetic */ int e(java.lang.String str, int i5, int i6, int i7, int i8, java.lang.Object obj) {
        if ((i8 & 4) != 0) {
            i6 = 1;
        }
        if ((i8 & 8) != 0) {
            i7 = Integer.MAX_VALUE;
        }
        return y3.i0.b(str, i5, i6, i7);
    }

    public static /* synthetic */ long f(java.lang.String str, long j5, long j6, long j7, int i5, java.lang.Object obj) {
        if ((i5 & 4) != 0) {
            j6 = 1;
        }
        long j8 = j6;
        if ((i5 & 8) != 0) {
            j7 = Long.MAX_VALUE;
        }
        return y3.i0.c(str, j5, j8, j7);
    }
}
