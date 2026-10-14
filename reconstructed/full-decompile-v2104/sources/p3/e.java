package p3;

/* JADX INFO: compiled from: Ranges.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f5505a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f5506b;

    public boolean a() {
        return this.f5505a > this.f5506b;
    }

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof p3.e) {
            if (a() && ((p3.e) obj).a()) {
                return true;
            }
            p3.e eVar = (p3.e) obj;
            if (this.f5505a == eVar.f5505a) {
                if (this.f5506b == eVar.f5506b) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        if (a()) {
            return -1;
        }
        return (java.lang.Float.hashCode(this.f5505a) * 31) + java.lang.Float.hashCode(this.f5506b);
    }

    public java.lang.String toString() {
        return this.f5505a + ".." + this.f5506b;
    }
}
