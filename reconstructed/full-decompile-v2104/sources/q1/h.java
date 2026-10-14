package q1;

/* JADX INFO: compiled from: FormatCache.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class h<F extends java.text.Format> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.concurrent.ConcurrentMap<v1.p, java.lang.String> f5822b = new a2.u(7);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.concurrent.ConcurrentMap<v1.p, F> f5823a = new a2.u(7);

    public abstract F a(java.lang.String str, java.util.TimeZone timeZone, java.util.Locale locale);

    public F b(java.lang.String str, java.util.TimeZone timeZone, java.util.Locale locale) {
        v1.e.k(str, "pattern must not be blank", new java.lang.Object[0]);
        if (timeZone == null) {
            timeZone = java.util.TimeZone.getDefault();
        }
        if (locale == null) {
            locale = java.util.Locale.getDefault();
        }
        v1.p pVar = new v1.p(str, timeZone, locale);
        F f5 = this.f5823a.get(pVar);
        if (f5 != null) {
            return f5;
        }
        F f6 = (F) a(str, timeZone, locale);
        F fPutIfAbsent = this.f5823a.putIfAbsent(pVar, f6);
        return fPutIfAbsent != null ? fPutIfAbsent : f6;
    }
}
