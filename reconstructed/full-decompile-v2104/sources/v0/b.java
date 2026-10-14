package v0;

/* JADX INFO: compiled from: WorkConstraintsTracker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class b {

    /* JADX INFO: compiled from: WorkConstraintsTracker.kt */
    public static final class a extends v0.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final v0.b.a f6384a = new v0.b.a();

        public a() {
            super(null);
        }
    }

    /* JADX INFO: renamed from: v0.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: WorkConstraintsTracker.kt */
    public static final class C0089b extends v0.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f6385a;

        public C0089b(int i5) {
            super(null);
            this.f6385a = i5;
        }

        public final int a() {
            return this.f6385a;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof v0.b.C0089b) && this.f6385a == ((v0.b.C0089b) obj).f6385a;
        }

        public int hashCode() {
            return java.lang.Integer.hashCode(this.f6385a);
        }

        public java.lang.String toString() {
            return "ConstraintsNotMet(reason=" + this.f6385a + ')';
        }
    }

    public b() {
    }

    public /* synthetic */ b(m3.g gVar) {
        this();
    }
}
