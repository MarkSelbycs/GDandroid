package p3;

/* JADX INFO: compiled from: Progressions.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f implements java.lang.Iterable<java.lang.Integer> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final p3.f.a f5507d = new p3.f.a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5508a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f5510c;

    /* JADX INFO: compiled from: Progressions.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }

        public final p3.f a(int i5, int i6, int i7) {
            return new p3.f(i5, i6, i7);
        }
    }

    public f(int i5, int i6, int i7) {
        if (i7 == 0) {
            throw new java.lang.IllegalArgumentException("Step must be non-zero.");
        }
        if (i7 == Integer.MIN_VALUE) {
            throw new java.lang.IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f5508a = i5;
        this.f5509b = g3.c.c(i5, i6, i7);
        this.f5510c = i7;
    }

    public final int a() {
        return this.f5508a;
    }

    public final int b() {
        return this.f5509b;
    }

    public final int c() {
        return this.f5510c;
    }

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public b3.c0 iterator() {
        return new p3.g(this.f5508a, this.f5509b, this.f5510c);
    }

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof p3.f) {
            if (!isEmpty() || !((p3.f) obj).isEmpty()) {
                p3.f fVar = (p3.f) obj;
                if (this.f5508a != fVar.f5508a || this.f5509b != fVar.f5509b || this.f5510c != fVar.f5510c) {
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
        return (((this.f5508a * 31) + this.f5509b) * 31) + this.f5510c;
    }

    public boolean isEmpty() {
        if (this.f5510c > 0) {
            if (this.f5508a > this.f5509b) {
                return true;
            }
        } else if (this.f5508a < this.f5509b) {
            return true;
        }
        return false;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb;
        int i5;
        if (this.f5510c > 0) {
            sb = new java.lang.StringBuilder();
            sb.append(this.f5508a);
            sb.append("..");
            sb.append(this.f5509b);
            sb.append(" step ");
            i5 = this.f5510c;
        } else {
            sb = new java.lang.StringBuilder();
            sb.append(this.f5508a);
            sb.append(" downTo ");
            sb.append(this.f5509b);
            sb.append(" step ");
            i5 = -this.f5510c;
        }
        sb.append(i5);
        return sb.toString();
    }
}
