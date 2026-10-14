package y1;

/* JADX INFO: compiled from: MutableObj.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c<T> implements y1.a<T>, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public T f6845a;

    public c() {
    }

    public boolean equals(java.lang.Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (getClass() == obj.getClass()) {
            return e2.p.g(this.f6845a, ((y1.c) obj).f6845a);
        }
        return false;
    }

    @Override // y1.a
    public T get() {
        return this.f6845a;
    }

    public int hashCode() {
        T t5 = this.f6845a;
        if (t5 == null) {
            return 0;
        }
        return t5.hashCode();
    }

    public java.lang.String toString() {
        T t5 = this.f6845a;
        return t5 == null ? "null" : t5.toString();
    }

    public c(T t5) {
        this.f6845a = t5;
    }
}
