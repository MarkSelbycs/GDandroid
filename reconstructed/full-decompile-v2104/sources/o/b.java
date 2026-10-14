package o;

/* JADX INFO: compiled from: Insets.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final o.b f5263e = new o.b(0, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5264a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5266c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f5267d;

    /* JADX INFO: compiled from: Insets.java */
    public static class a {
        public static android.graphics.Insets a(int i5, int i6, int i7, int i8) {
            return android.graphics.Insets.of(i5, i6, i7, i8);
        }
    }

    public b(int i5, int i6, int i7, int i8) {
        this.f5264a = i5;
        this.f5265b = i6;
        this.f5266c = i7;
        this.f5267d = i8;
    }

    public static o.b a(o.b bVar, o.b bVar2) {
        return b(java.lang.Math.max(bVar.f5264a, bVar2.f5264a), java.lang.Math.max(bVar.f5265b, bVar2.f5265b), java.lang.Math.max(bVar.f5266c, bVar2.f5266c), java.lang.Math.max(bVar.f5267d, bVar2.f5267d));
    }

    public static o.b b(int i5, int i6, int i7, int i8) {
        return (i5 == 0 && i6 == 0 && i7 == 0 && i8 == 0) ? f5263e : new o.b(i5, i6, i7, i8);
    }

    public static o.b c(android.graphics.Rect rect) {
        return b(rect.left, rect.top, rect.right, rect.bottom);
    }

    public static o.b d(android.graphics.Insets insets) {
        return b(insets.left, insets.top, insets.right, insets.bottom);
    }

    public android.graphics.Insets e() {
        return o.b.a.a(this.f5264a, this.f5265b, this.f5266c, this.f5267d);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.b.class != obj.getClass()) {
            return false;
        }
        o.b bVar = (o.b) obj;
        return this.f5267d == bVar.f5267d && this.f5264a == bVar.f5264a && this.f5266c == bVar.f5266c && this.f5265b == bVar.f5265b;
    }

    public int hashCode() {
        return (((((this.f5264a * 31) + this.f5265b) * 31) + this.f5266c) * 31) + this.f5267d;
    }

    public java.lang.String toString() {
        return "Insets{left=" + this.f5264a + ", top=" + this.f5265b + ", right=" + this.f5266c + ", bottom=" + this.f5267d + '}';
    }
}
