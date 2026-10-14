package p3;

/* JADX INFO: compiled from: _Ranges.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class m extends p3.l {
    public static final int a(int i5, int i6) {
        return i5 < i6 ? i6 : i5;
    }

    public static final long b(long j5, long j6) {
        return j5 < j6 ? j6 : j5;
    }

    public static final int c(int i5, int i6) {
        return i5 > i6 ? i6 : i5;
    }

    public static final long d(long j5, long j6) {
        return j5 > j6 ? j6 : j5;
    }

    public static final int e(int i5, int i6, int i7) {
        if (i6 <= i7) {
            if (i5 < i6) {
                return i6;
            }
            return i5 > i7 ? i7 : i5;
        }
        throw new java.lang.IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i7 + " is less than minimum " + i6 + '.');
    }

    public static final long f(long j5, long j6, long j7) {
        if (j6 <= j7) {
            if (j5 < j6) {
                return j6;
            }
            return j5 > j7 ? j7 : j5;
        }
        throw new java.lang.IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j7 + " is less than minimum " + j6 + '.');
    }

    public static final p3.f g(int i5, int i6) {
        return p3.f.f5507d.a(i5, i6, -1);
    }

    public static final p3.h h(int i5, int i6) {
        return i6 <= Integer.MIN_VALUE ? p3.h.f5515e.a() : new p3.h(i5, i6 - 1);
    }
}
