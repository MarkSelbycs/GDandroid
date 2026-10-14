package q1;

/* JADX INFO: compiled from: AbstractDateBasic.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a implements q1.b, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f5748a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.TimeZone f5749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.Locale f5750c;

    public a(java.lang.String str, java.util.TimeZone timeZone, java.util.Locale locale) {
        this.f5748a = str;
        this.f5749b = timeZone;
        this.f5750c = locale;
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof q1.g)) {
            return false;
        }
        q1.a aVar = (q1.a) obj;
        return this.f5748a.equals(aVar.f5748a) && this.f5749b.equals(aVar.f5749b) && this.f5750c.equals(aVar.f5750c);
    }

    @Override // q1.b
    public java.lang.String f() {
        return this.f5748a;
    }

    @Override // q1.b
    public java.util.Locale getLocale() {
        return this.f5750c;
    }

    @Override // q1.b
    public java.util.TimeZone getTimeZone() {
        return this.f5749b;
    }

    public int hashCode() {
        return this.f5748a.hashCode() + ((this.f5749b.hashCode() + (this.f5750c.hashCode() * 13)) * 13);
    }

    public java.lang.String toString() {
        return "FastDatePrinter[" + this.f5748a + "," + this.f5750c + "," + this.f5749b.getID() + "]";
    }
}
