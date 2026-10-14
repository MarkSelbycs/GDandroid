package androidx.lifecycle;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
class FullLifecycleObserverAdapter implements androidx.lifecycle.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.lifecycle.b f1745a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.lifecycle.e f1746b;

    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f1747a;

        static {
            int[] iArr = new int[androidx.lifecycle.d.b.values().length];
            f1747a = iArr;
            try {
                iArr[androidx.lifecycle.d.b.ON_CREATE.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                f1747a[androidx.lifecycle.d.b.ON_START.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                f1747a[androidx.lifecycle.d.b.ON_RESUME.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                f1747a[androidx.lifecycle.d.b.ON_PAUSE.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                f1747a[androidx.lifecycle.d.b.ON_STOP.ordinal()] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                f1747a[androidx.lifecycle.d.b.ON_DESTROY.ordinal()] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
            try {
                f1747a[androidx.lifecycle.d.b.ON_ANY.ordinal()] = 7;
            } catch (java.lang.NoSuchFieldError unused7) {
            }
        }
    }

    @Override // androidx.lifecycle.e
    public void d(androidx.lifecycle.g gVar, androidx.lifecycle.d.b bVar) {
        switch (androidx.lifecycle.FullLifecycleObserverAdapter.a.f1747a[bVar.ordinal()]) {
            case 1:
                this.f1745a.c(gVar);
                break;
            case 2:
                this.f1745a.g(gVar);
                break;
            case 3:
                this.f1745a.a(gVar);
                break;
            case 4:
                this.f1745a.e(gVar);
                break;
            case 5:
                this.f1745a.f(gVar);
                break;
            case 6:
                this.f1745a.b(gVar);
                break;
            case 7:
                throw new java.lang.IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        androidx.lifecycle.e eVar = this.f1746b;
        if (eVar != null) {
            eVar.d(gVar, bVar);
        }
    }
}
