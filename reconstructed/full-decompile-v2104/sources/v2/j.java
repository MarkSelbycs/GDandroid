package v2;

/* JADX INFO: compiled from: SqlDateTypeAdapter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class j extends s2.s<java.sql.Date> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final s2.t f6494b = new v2.j.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.text.DateFormat f6495a = new java.text.SimpleDateFormat("MMM d, yyyy");

    /* JADX INFO: compiled from: SqlDateTypeAdapter.java */
    public static class a implements s2.t {
        @Override // s2.t
        public <T> s2.s<T> a(s2.e eVar, x2.a<T> aVar) {
            if (aVar.c() == java.sql.Date.class) {
                return new v2.j();
            }
            return null;
        }
    }

    @Override // s2.s
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public synchronized java.sql.Date b(y2.a aVar) throws java.io.IOException {
        if (aVar.V() == y2.b.NULL) {
            aVar.K();
            return null;
        }
        try {
            return new java.sql.Date(this.f6495a.parse(aVar.P()).getTime());
        } catch (java.text.ParseException e5) {
            throw new s2.q(e5);
        }
    }

    @Override // s2.s
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public synchronized void d(y2.c cVar, java.sql.Date date) throws java.io.IOException {
        cVar.X(date == null ? null : this.f6495a.format((java.util.Date) date));
    }
}
