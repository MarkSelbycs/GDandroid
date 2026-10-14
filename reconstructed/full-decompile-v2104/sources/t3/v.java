package t3;

/* JADX INFO: compiled from: CompletionState.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Object f6255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l3.l<java.lang.Throwable, a3.o> f6256b;

    /* JADX WARN: Multi-variable type inference failed */
    public v(java.lang.Object obj, l3.l<? super java.lang.Throwable, a3.o> lVar) {
        this.f6255a = obj;
        this.f6256b = lVar;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t3.v)) {
            return false;
        }
        t3.v vVar = (t3.v) obj;
        return m3.k.a(this.f6255a, vVar.f6255a) && m3.k.a(this.f6256b, vVar.f6256b);
    }

    public int hashCode() {
        java.lang.Object obj = this.f6255a;
        return ((obj == null ? 0 : obj.hashCode()) * 31) + this.f6256b.hashCode();
    }

    public java.lang.String toString() {
        return "CompletedWithCancellation(result=" + this.f6255a + ", onCancellation=" + this.f6256b + ')';
    }
}
