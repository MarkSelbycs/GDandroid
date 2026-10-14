package p3;

/* JADX INFO: compiled from: PrimitiveRanges.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class k extends p3.i {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final p3.k.a f5525e = new p3.k.a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final p3.k f5526f = new p3.k(1, 0);

    /* JADX INFO: compiled from: PrimitiveRanges.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }
    }

    public k(long j5, long j6) {
        super(j5, j6, 1L);
    }

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof p3.k) {
            if (!isEmpty() || !((p3.k) obj).isEmpty()) {
                p3.k kVar = (p3.k) obj;
                if (a() != kVar.a() || b() != kVar.b()) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (int) ((((long) 31) * (a() ^ (a() >>> 32))) + (b() ^ (b() >>> 32)));
    }

    public boolean isEmpty() {
        return a() > b();
    }

    public java.lang.String toString() {
        return a() + ".." + b();
    }
}
