package m3;

/* JADX INFO: compiled from: PackageReference.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class m implements m3.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Class<?> f5191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f5192b;

    public m(java.lang.Class<?> cls, java.lang.String str) {
        m3.k.e(cls, "jClass");
        m3.k.e(str, "moduleName");
        this.f5191a = cls;
        this.f5192b = str;
    }

    @Override // m3.d
    public java.lang.Class<?> b() {
        return this.f5191a;
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof m3.m) && m3.k.a(b(), ((m3.m) obj).b());
    }

    public int hashCode() {
        return b().hashCode();
    }

    public java.lang.String toString() {
        return b().toString() + " (Kotlin reflection is not available)";
    }
}
