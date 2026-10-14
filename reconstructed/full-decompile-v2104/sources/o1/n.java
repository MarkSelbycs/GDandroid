package o1;

/* JADX INFO: compiled from: DateConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class n extends n1.a<java.util.Date> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Class<? extends java.util.Date> f5304a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.lang.String f5305b;

    public n(java.lang.Class<? extends java.util.Date> cls) {
        this.f5304a = cls;
    }

    @Override // n1.a
    public java.lang.Class<java.util.Date> f() {
        return this.f5304a;
    }

    @Override // n1.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public java.util.Date c(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof java.lang.CharSequence) && b2.c.q(obj.toString())) {
            return null;
        }
        if (obj instanceof java.time.temporal.TemporalAccessor) {
            return q(p1.f.f((java.time.temporal.TemporalAccessor) obj));
        }
        if (obj instanceof java.util.Calendar) {
            return q(p1.f.g((java.util.Calendar) obj));
        }
        if (obj instanceof java.lang.Number) {
            return j(((java.lang.Number) obj).longValue());
        }
        java.lang.String strE = e(obj);
        p1.e eVarQ = b2.c.q(this.f5305b) ? p1.f.q(strE) : p1.f.r(strE, this.f5305b);
        if (eVarQ != null) {
            return q(eVarQ);
        }
        throw new n1.d("Can not convert {}:[{}] to {}", obj.getClass().getName(), obj, this.f5304a.getName());
    }

    public final java.util.Date j(long j5) {
        if ("#sss".equals(this.f5305b)) {
            return p1.f.e(j5 * 1000);
        }
        java.lang.Class<? extends java.util.Date> cls = this.f5304a;
        if (java.util.Date.class == cls) {
            return new java.util.Date(j5);
        }
        if (p1.e.class == cls) {
            return p1.f.e(j5);
        }
        if (java.sql.Date.class == cls) {
            return new java.sql.Date(j5);
        }
        if (java.sql.Time.class == cls) {
            return new java.sql.Time(j5);
        }
        if (java.sql.Timestamp.class == cls) {
            return new java.sql.Timestamp(j5);
        }
        throw new java.lang.UnsupportedOperationException(b2.c.i("Unsupported target Date type: {}", this.f5304a.getName()));
    }

    public final java.util.Date q(p1.e eVar) {
        java.lang.Class<? extends java.util.Date> cls = this.f5304a;
        if (java.util.Date.class == cls) {
            return eVar.D();
        }
        if (p1.e.class == cls) {
            return eVar;
        }
        if (java.sql.Date.class == cls) {
            return eVar.F();
        }
        if (java.sql.Time.class == cls) {
            return new java.sql.Time(eVar.getTime());
        }
        if (java.sql.Timestamp.class == cls) {
            return eVar.P();
        }
        throw new java.lang.UnsupportedOperationException(b2.c.i("Unsupported target Date type: {}", this.f5304a.getName()));
    }

    public n(java.lang.Class<? extends java.util.Date> cls, java.lang.String str) {
        this.f5304a = cls;
        this.f5305b = str;
    }
}
