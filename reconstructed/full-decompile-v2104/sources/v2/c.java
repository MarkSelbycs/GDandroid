package v2;

/* JADX INFO: compiled from: DateTypeAdapter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c extends s2.s<java.util.Date> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final s2.t f6459c = new v2.c.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.text.DateFormat f6460a = java.text.DateFormat.getDateTimeInstance(2, 2, java.util.Locale.US);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.text.DateFormat f6461b = java.text.DateFormat.getDateTimeInstance(2, 2);

    /* JADX INFO: compiled from: DateTypeAdapter.java */
    public static class a implements s2.t {
        @Override // s2.t
        public <T> s2.s<T> a(s2.e eVar, x2.a<T> aVar) {
            if (aVar.c() == java.util.Date.class) {
                return new v2.c();
            }
            return null;
        }
    }

    public final synchronized java.util.Date e(java.lang.String str) {
        try {
            try {
                try {
                } catch (java.text.ParseException e5) {
                    throw new s2.q(str, e5);
                }
            } catch (java.text.ParseException unused) {
                return w2.a.c(str, new java.text.ParsePosition(0));
            }
        } catch (java.text.ParseException unused2) {
            return this.f6460a.parse(str);
        }
        return this.f6461b.parse(str);
    }

    @Override // s2.s
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public java.util.Date b(y2.a aVar) throws java.io.IOException {
        if (aVar.V() != y2.b.NULL) {
            return e(aVar.P());
        }
        aVar.K();
        return null;
    }

    @Override // s2.s
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public synchronized void d(y2.c cVar, java.util.Date date) throws java.io.IOException {
        try {
            if (date == null) {
                cVar.u();
            } else {
                cVar.X(this.f6460a.format(date));
            }
        } catch (java.lang.Throwable th) {
            throw th;
        }
    }
}
