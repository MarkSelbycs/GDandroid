package t3;

/* JADX INFO: compiled from: CoroutineStart.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public enum g0 {
    DEFAULT,
    LAZY,
    ATOMIC,
    UNDISPATCHED;

    /* JADX INFO: compiled from: CoroutineStart.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6190a;

        static {
            int[] iArr = new int[t3.g0.values().length];
            try {
                iArr[t3.g0.DEFAULT.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                iArr[t3.g0.ATOMIC.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                iArr[t3.g0.UNDISPATCHED.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                iArr[t3.g0.LAZY.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            f6190a = iArr;
        }
    }

    public final <R, T> void e(l3.p<? super R, ? super d3.d<? super T>, ? extends java.lang.Object> pVar, R r5, d3.d<? super T> dVar) throws java.lang.Throwable {
        int i5 = t3.g0.a.f6190a[ordinal()];
        if (i5 == 1) {
            z3.a.d(pVar, r5, dVar, null, 4, null);
            return;
        }
        if (i5 == 2) {
            d3.f.a(pVar, r5, dVar);
        } else if (i5 == 3) {
            z3.b.a(pVar, r5, dVar);
        } else if (i5 != 4) {
            throw new a3.g();
        }
    }

    public final boolean f() {
        return this == LAZY;
    }
}
