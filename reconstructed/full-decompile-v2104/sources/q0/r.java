package q0;

/* JADX INFO: compiled from: Operation.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final q0.r.b.c f5715a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final q0.r.b.C0071b f5716b;

    /* JADX INFO: compiled from: Operation.java */
    public static /* synthetic */ class a {
    }

    /* JADX INFO: compiled from: Operation.java */
    public static abstract class b {

        /* JADX INFO: compiled from: Operation.java */
        public static final class a extends q0.r.b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final java.lang.Throwable f5717a;

            public a(java.lang.Throwable th) {
                this.f5717a = th;
            }

            public java.lang.Throwable a() {
                return this.f5717a;
            }

            public java.lang.String toString() {
                return "FAILURE (" + this.f5717a.getMessage() + ")";
            }
        }

        /* JADX INFO: renamed from: q0.r$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Operation.java */
        public static final class C0071b extends q0.r.b {
            public /* synthetic */ C0071b(q0.r.a aVar) {
                this();
            }

            public java.lang.String toString() {
                return "IN_PROGRESS";
            }

            public C0071b() {
            }
        }

        /* JADX INFO: compiled from: Operation.java */
        public static final class c extends q0.r.b {
            public /* synthetic */ c(q0.r.a aVar) {
                this();
            }

            public java.lang.String toString() {
                return "SUCCESS";
            }

            public c() {
            }
        }
    }

    static {
        q0.r.a aVar = null;
        f5715a = new q0.r.b.c(aVar);
        f5716b = new q0.r.b.C0071b(aVar);
    }

    r2.a<q0.r.b.c> a();
}
