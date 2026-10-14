package v1;

/* JADX INFO: compiled from: Opt.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class k<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final v1.k<?> f6412b = new v1.k<>(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final T f6413a;

    public k(T t5) {
        this.f6413a = t5;
    }

    public static <T> v1.k<T> a() {
        return (v1.k<T>) f6412b;
    }

    public static <T> v1.k<T> b(T t5) {
        return t5 == null ? a() : new v1.k<>(t5);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof v1.k) {
            return java.util.Objects.equals(this.f6413a, ((v1.k) obj).f6413a);
        }
        return false;
    }

    public int hashCode() {
        return java.util.Objects.hashCode(this.f6413a);
    }

    public java.lang.String toString() {
        return e2.b0.k0(this.f6413a);
    }
}
