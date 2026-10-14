package androidx.lifecycle;

/* JADX INFO: compiled from: Lifecycle.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.concurrent.atomic.AtomicReference<java.lang.Object> f1771a = new java.util.concurrent.atomic.AtomicReference<>();

    /* JADX INFO: compiled from: Lifecycle.java */
    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1772a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f1773b;

        static {
            int[] iArr = new int[androidx.lifecycle.d.b.values().length];
            f1773b = iArr;
            try {
                iArr[androidx.lifecycle.d.b.ON_CREATE.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                f1773b[androidx.lifecycle.d.b.ON_STOP.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                f1773b[androidx.lifecycle.d.b.ON_START.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                f1773b[androidx.lifecycle.d.b.ON_PAUSE.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                f1773b[androidx.lifecycle.d.b.ON_RESUME.ordinal()] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                f1773b[androidx.lifecycle.d.b.ON_DESTROY.ordinal()] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
            try {
                f1773b[androidx.lifecycle.d.b.ON_ANY.ordinal()] = 7;
            } catch (java.lang.NoSuchFieldError unused7) {
            }
            int[] iArr2 = new int[androidx.lifecycle.d.c.values().length];
            f1772a = iArr2;
            try {
                iArr2[androidx.lifecycle.d.c.CREATED.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused8) {
            }
            try {
                f1772a[androidx.lifecycle.d.c.STARTED.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused9) {
            }
            try {
                f1772a[androidx.lifecycle.d.c.RESUMED.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused10) {
            }
            try {
                f1772a[androidx.lifecycle.d.c.DESTROYED.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused11) {
            }
            try {
                f1772a[androidx.lifecycle.d.c.INITIALIZED.ordinal()] = 5;
            } catch (java.lang.NoSuchFieldError unused12) {
            }
        }
    }

    /* JADX INFO: compiled from: Lifecycle.java */
    public enum b {
        ON_CREATE,
        ON_START,
        ON_RESUME,
        ON_PAUSE,
        ON_STOP,
        ON_DESTROY,
        ON_ANY;

        public static androidx.lifecycle.d.b b(androidx.lifecycle.d.c cVar) {
            int i5 = androidx.lifecycle.d.a.f1772a[cVar.ordinal()];
            if (i5 == 1) {
                return ON_DESTROY;
            }
            if (i5 == 2) {
                return ON_STOP;
            }
            if (i5 != 3) {
                return null;
            }
            return ON_PAUSE;
        }

        public static androidx.lifecycle.d.b f(androidx.lifecycle.d.c cVar) {
            int i5 = androidx.lifecycle.d.a.f1772a[cVar.ordinal()];
            if (i5 == 1) {
                return ON_START;
            }
            if (i5 == 2) {
                return ON_RESUME;
            }
            if (i5 != 5) {
                return null;
            }
            return ON_CREATE;
        }

        public androidx.lifecycle.d.c e() {
            switch (androidx.lifecycle.d.a.f1773b[ordinal()]) {
                case 1:
                case 2:
                    return androidx.lifecycle.d.c.CREATED;
                case 3:
                case 4:
                    return androidx.lifecycle.d.c.STARTED;
                case 5:
                    return androidx.lifecycle.d.c.RESUMED;
                case 6:
                    return androidx.lifecycle.d.c.DESTROYED;
                default:
                    throw new java.lang.IllegalArgumentException(this + " has no target state");
            }
        }
    }

    /* JADX INFO: compiled from: Lifecycle.java */
    public enum c {
        DESTROYED,
        INITIALIZED,
        CREATED,
        STARTED,
        RESUMED;

        public boolean b(androidx.lifecycle.d.c cVar) {
            return compareTo(cVar) >= 0;
        }
    }

    public abstract androidx.lifecycle.d.c a();

    public abstract void b(androidx.lifecycle.f fVar);
}
