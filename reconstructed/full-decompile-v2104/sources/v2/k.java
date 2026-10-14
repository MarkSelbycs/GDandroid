package v2;

/* JADX INFO: compiled from: TimeTypeAdapter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class k extends s2.s<java.sql.Time> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final s2.t f6496b = new v2.k.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.text.DateFormat f6497a = new java.text.SimpleDateFormat("hh:mm:ss a");

    /* JADX INFO: compiled from: TimeTypeAdapter.java */
    public static class a implements s2.t {
        @Override // s2.t
        public <T> s2.s<T> a(s2.e eVar, x2.a<T> aVar) {
            if (aVar.c() == java.sql.Time.class) {
                return new v2.k();
            }
            return null;
        }
    }

    @Override // s2.s
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public synchronized java.sql.Time b(y2.a aVar) throws java.io.IOException {
        if (aVar.V() == y2.b.NULL) {
            aVar.K();
            return null;
        }
        try {
            return new java.sql.Time(this.f6497a.parse(aVar.P()).getTime());
        } catch (java.text.ParseException e5) {
            throw new s2.q(e5);
        }
    }

    @Override // s2.s
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public synchronized void d(y2.c cVar, java.sql.Time time) throws java.io.IOException {
        cVar.X(time == null ? null : this.f6497a.format((java.util.Date) time));
    }
}
