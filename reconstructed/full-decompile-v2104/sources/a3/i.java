package a3;

/* JADX INFO: compiled from: Result.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class i<T> implements java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a3.i.a f116a = new a3.i.a(null);

    /* JADX INFO: compiled from: Result.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: Result.kt */
    public static final class b implements java.io.Serializable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.Throwable f117a;

        public b(java.lang.Throwable th) {
            m3.k.e(th, "exception");
            this.f117a = th;
        }

        public boolean equals(java.lang.Object obj) {
            return (obj instanceof a3.i.b) && m3.k.a(this.f117a, ((a3.i.b) obj).f117a);
        }

        public int hashCode() {
            return this.f117a.hashCode();
        }

        public java.lang.String toString() {
            return "Failure(" + this.f117a + ')';
        }
    }

    public static <T> java.lang.Object b(java.lang.Object obj) {
        return obj;
    }

    public static final java.lang.Throwable c(java.lang.Object obj) {
        if (obj instanceof a3.i.b) {
            return ((a3.i.b) obj).f117a;
        }
        return null;
    }

    public static final boolean e(java.lang.Object obj) {
        return obj instanceof a3.i.b;
    }

    public static final boolean f(java.lang.Object obj) {
        return !(obj instanceof a3.i.b);
    }
}
