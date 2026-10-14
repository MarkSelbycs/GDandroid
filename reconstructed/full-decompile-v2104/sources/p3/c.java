package p3;

/* JADX INFO: compiled from: PrimitiveRanges.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c extends p3.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final p3.c.a f5501e = new p3.c.a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final p3.c f5502f = new p3.c(1, 0);

    /* JADX INFO: compiled from: PrimitiveRanges.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }
    }

    public c(char c5, char c6) {
        super(c5, c6, 1);
    }

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof p3.c) {
            if (!isEmpty() || !((p3.c) obj).isEmpty()) {
                p3.c cVar = (p3.c) obj;
                if (a() != cVar.a() || b() != cVar.b()) {
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
        return (a() * 31) + b();
    }

    public boolean isEmpty() {
        return m3.k.f(a(), b()) > 0;
    }

    public java.lang.String toString() {
        return a() + ".." + b();
    }
}
