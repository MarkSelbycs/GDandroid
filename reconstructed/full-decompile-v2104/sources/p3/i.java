package p3;

/* JADX INFO: compiled from: Progressions.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i implements java.lang.Iterable<java.lang.Long> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final p3.i.a f5517d = new p3.i.a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f5518a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f5519b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f5520c;

    /* JADX INFO: compiled from: Progressions.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }
    }

    public i(long j5, long j6, long j7) {
        if (j7 == 0) {
            throw new java.lang.IllegalArgumentException("Step must be non-zero.");
        }
        if (j7 == Long.MIN_VALUE) {
            throw new java.lang.IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
        }
        this.f5518a = j5;
        this.f5519b = g3.c.d(j5, j6, j7);
        this.f5520c = j7;
    }

    public final long a() {
        return this.f5518a;
    }

    public final long b() {
        return this.f5519b;
    }

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public b3.d0 iterator() {
        return new p3.j(this.f5518a, this.f5519b, this.f5520c);
    }
}
