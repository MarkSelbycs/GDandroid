package z0;

/* JADX INFO: compiled from: Preference.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f6996a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.Long f6997b;

    public d(java.lang.String str, java.lang.Long l5) {
        m3.k.e(str, "key");
        this.f6996a = str;
        this.f6997b = l5;
    }

    public final java.lang.String a() {
        return this.f6996a;
    }

    public final java.lang.Long b() {
        return this.f6997b;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z0.d)) {
            return false;
        }
        z0.d dVar = (z0.d) obj;
        return m3.k.a(this.f6996a, dVar.f6996a) && m3.k.a(this.f6997b, dVar.f6997b);
    }

    public int hashCode() {
        int iHashCode = this.f6996a.hashCode() * 31;
        java.lang.Long l5 = this.f6997b;
        return iHashCode + (l5 == null ? 0 : l5.hashCode());
    }

    public java.lang.String toString() {
        return "Preference(key=" + this.f6996a + ", value=" + this.f6997b + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public d(java.lang.String str, boolean z4) {
        this(str, java.lang.Long.valueOf(z4 ? 1L : 0L));
        m3.k.e(str, "key");
    }
}
