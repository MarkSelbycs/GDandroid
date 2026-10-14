package j;

/* JADX INFO: compiled from: ContainerHelpers.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f4703a = new int[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long[] f4704b = new long[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.lang.Object[] f4705c = new java.lang.Object[0];

    public static int a(int[] iArr, int i5, int i6) {
        int i7 = i5 - 1;
        int i8 = 0;
        while (i8 <= i7) {
            int i9 = (i8 + i7) >>> 1;
            int i10 = iArr[i9];
            if (i10 < i6) {
                i8 = i9 + 1;
            } else {
                if (i10 <= i6) {
                    return i9;
                }
                i7 = i9 - 1;
            }
        }
        return ~i8;
    }

    public static int b(long[] jArr, int i5, long j5) {
        int i6 = i5 - 1;
        int i7 = 0;
        while (i7 <= i6) {
            int i8 = (i7 + i6) >>> 1;
            long j6 = jArr[i8];
            if (j6 < j5) {
                i7 = i8 + 1;
            } else {
                if (j6 <= j5) {
                    return i8;
                }
                i6 = i8 - 1;
            }
        }
        return ~i7;
    }

    public static boolean c(java.lang.Object obj, java.lang.Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int d(int i5) {
        for (int i6 = 4; i6 < 32; i6++) {
            int i7 = (1 << i6) - 12;
            if (i5 <= i7) {
                return i7;
            }
        }
        return i5;
    }

    public static int e(int i5) {
        return d(i5 * 4) / 4;
    }

    public static int f(int i5) {
        return d(i5 * 8) / 8;
    }
}
