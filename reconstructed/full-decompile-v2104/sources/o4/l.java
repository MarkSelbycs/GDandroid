package o4;

/* JADX INFO: compiled from: SimpleMessageID.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l implements o4.f, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5358a;

    public l(int i5) {
        this.f5358a = i5;
    }

    @Override // o4.f
    public int a() {
        return this.f5358a;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f5358a == ((o4.l) obj).f5358a;
    }

    public int hashCode() {
        return this.f5358a;
    }

    public java.lang.String toString() {
        return java.lang.Integer.toString(this.f5358a);
    }
}
