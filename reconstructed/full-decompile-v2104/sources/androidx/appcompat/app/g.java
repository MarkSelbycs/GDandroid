package androidx.appcompat.app;

/* JADX INFO: compiled from: TwilightCalculator.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static androidx.appcompat.app.g f342d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f343a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f345c;

    public static androidx.appcompat.app.g b() {
        if (f342d == null) {
            f342d = new androidx.appcompat.app.g();
        }
        return f342d;
    }

    public void a(long j5, double d5, double d6) {
        float f5 = (j5 - 946728000000L) / 8.64E7f;
        float f6 = (0.01720197f * f5) + 6.24006f;
        double d7 = f6;
        double dSin = (java.lang.Math.sin(d7) * 0.03341960161924362d) + d7 + (java.lang.Math.sin(2.0f * f6) * 3.4906598739326E-4d) + (java.lang.Math.sin(f6 * 3.0f) * 5.236000106378924E-6d) + 1.796593063d + 3.141592653589793d;
        double d8 = (-d6) / 360.0d;
        double dRound = ((double) (java.lang.Math.round(((double) (f5 - 9.0E-4f)) - d8) + 9.0E-4f)) + d8 + (java.lang.Math.sin(d7) * 0.0053d) + (java.lang.Math.sin(2.0d * dSin) * (-0.0069d));
        double dAsin = java.lang.Math.asin(java.lang.Math.sin(dSin) * java.lang.Math.sin(0.4092797040939331d));
        double d9 = 0.01745329238474369d * d5;
        double dSin2 = (java.lang.Math.sin(-0.10471975803375244d) - (java.lang.Math.sin(d9) * java.lang.Math.sin(dAsin))) / (java.lang.Math.cos(d9) * java.lang.Math.cos(dAsin));
        if (dSin2 >= 1.0d) {
            this.f345c = 1;
            this.f343a = -1L;
            this.f344b = -1L;
        } else {
            if (dSin2 <= -1.0d) {
                this.f345c = 0;
                this.f343a = -1L;
                this.f344b = -1L;
                return;
            }
            double dAcos = (float) (java.lang.Math.acos(dSin2) / 6.283185307179586d);
            this.f343a = java.lang.Math.round((dRound + dAcos) * 8.64E7d) + 946728000000L;
            long jRound = java.lang.Math.round((dRound - dAcos) * 8.64E7d) + 946728000000L;
            this.f344b = jRound;
            if (jRound >= j5 || this.f343a <= j5) {
                this.f345c = 1;
            } else {
                this.f345c = 0;
            }
        }
    }
}
