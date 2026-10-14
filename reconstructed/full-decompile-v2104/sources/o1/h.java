package o1;

/* JADX INFO: compiled from: CalendarConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h extends n1.a<java.util.Calendar> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.lang.String f5296a;

    @Override // n1.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public java.util.Calendar c(java.lang.Object obj) {
        if (obj instanceof java.util.Date) {
            return p1.a.c((java.util.Date) obj);
        }
        if (obj instanceof java.lang.Long) {
            return p1.a.a(((java.lang.Long) obj).longValue());
        }
        java.lang.String strE = e(obj);
        return p1.a.c(b2.c.q(this.f5296a) ? p1.f.q(strE) : p1.f.r(strE, this.f5296a));
    }
}
