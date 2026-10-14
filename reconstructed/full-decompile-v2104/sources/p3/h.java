package p3;

/* JADX INFO: compiled from: PrimitiveRanges.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class h extends p3.f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final p3.h.a f5515e = new p3.h.a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final p3.h f5516f = new p3.h(1, 0);

    /* JADX INFO: compiled from: PrimitiveRanges.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }

        public final p3.h a() {
            return p3.h.f5516f;
        }
    }

    public h(int i5, int i6) {
        super(i5, i6, 1);
    }

    @Override // p3.f
    public boolean equals(java.lang.Object obj) {
        if (obj instanceof p3.h) {
            if (!isEmpty() || !((p3.h) obj).isEmpty()) {
                p3.h hVar = (p3.h) obj;
                if (a() != hVar.a() || b() != hVar.b()) {
                }
            }
            return true;
        }
        return false;
    }

    public boolean f(int i5) {
        return a() <= i5 && i5 <= b();
    }

    public java.lang.Integer g() {
        return java.lang.Integer.valueOf(b());
    }

    public java.lang.Integer h() {
        return java.lang.Integer.valueOf(a());
    }

    @Override // p3.f
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (a() * 31) + b();
    }

    @Override // p3.f
    public boolean isEmpty() {
        return a() > b();
    }

    @Override // p3.f
    public java.lang.String toString() {
        return a() + ".." + b();
    }
}
