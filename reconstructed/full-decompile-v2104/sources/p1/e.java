package p1;

/* JADX INFO: compiled from: DateTime.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e extends java.util.Date {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f5470e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f5471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p1.j f5472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.util.TimeZone f5473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5474d;

    public e() {
        this(java.util.TimeZone.getDefault());
    }

    public static java.util.Calendar f(java.lang.CharSequence charSequence, q1.c cVar, boolean z4) {
        v1.e.q(cVar, "Parser or DateFromat must be not null !", new java.lang.Object[0]);
        v1.e.k(charSequence, "Date String must be not blank !", new java.lang.Object[0]);
        java.util.Calendar calendarD = p1.a.d(charSequence, z4, cVar);
        if (calendarD == null) {
            throw new p1.b("Parse [{}] with format [{}] error!", charSequence, cVar.f());
        }
        calendarD.setFirstDayOfWeek(p1.j.MONDAY.b());
        return calendarD;
    }

    public static java.util.Date h(java.lang.CharSequence charSequence, java.text.DateFormat dateFormat) {
        v1.e.k(charSequence, "Date String must be not blank !", new java.lang.Object[0]);
        try {
            return dateFormat.parse(charSequence.toString());
        } catch (java.lang.Exception e5) {
            throw new p1.b(b2.c.i("Parse [{}] with format [{}] error!", charSequence, dateFormat instanceof java.text.SimpleDateFormat ? ((java.text.SimpleDateFormat) dateFormat).toPattern() : dateFormat.toString()), e5);
        }
    }

    public java.util.Date D() {
        return new java.util.Date(getTime());
    }

    public java.sql.Date F() {
        return new java.sql.Date(getTime());
    }

    public java.lang.String H(java.text.DateFormat dateFormat) {
        return dateFormat.format((java.util.Date) this);
    }

    public java.lang.String I(java.util.TimeZone timeZone) {
        return timeZone != null ? H(p1.f.n("yyyy-MM-dd HH:mm:ss", null, timeZone)) : M(p1.c.f5454l);
    }

    public java.lang.String M(q1.d dVar) {
        return dVar.e(this);
    }

    public java.sql.Timestamp P() {
        return new java.sql.Timestamp(getTime());
    }

    public java.util.TimeZone b() {
        return this.f5473c;
    }

    public java.time.ZoneId e() {
        return this.f5473c.toZoneId();
    }

    public p1.e j(p1.j jVar) {
        this.f5472b = jVar;
        return this;
    }

    @Override // java.util.Date
    public void setTime(long j5) {
        if (!this.f5471a) {
            throw new p1.b("This is not a mutable object !");
        }
        super.setTime(j5);
    }

    @Override // java.util.Date
    public java.lang.String toString() {
        return f5470e ? super.toString() : I(this.f5473c);
    }

    public java.util.Calendar u() {
        return x(java.util.Locale.getDefault(java.util.Locale.Category.FORMAT));
    }

    public java.util.Calendar x(java.util.Locale locale) {
        return y(this.f5473c, locale);
    }

    public java.util.Calendar y(java.util.TimeZone timeZone, java.util.Locale locale) {
        if (locale == null) {
            locale = java.util.Locale.getDefault(java.util.Locale.Category.FORMAT);
        }
        java.util.Calendar calendar = timeZone != null ? java.util.Calendar.getInstance(timeZone, locale) : java.util.Calendar.getInstance(locale);
        calendar.setFirstDayOfWeek(this.f5472b.b());
        int i5 = this.f5474d;
        if (i5 > 0) {
            calendar.setMinimalDaysInFirstWeek(i5);
        }
        calendar.setTime(this);
        return calendar;
    }

    public e(java.util.TimeZone timeZone) {
        this(java.lang.System.currentTimeMillis(), timeZone);
    }

    public e(java.util.Date date) {
        this(date, date instanceof p1.e ? ((p1.e) date).f5473c : java.util.TimeZone.getDefault());
    }

    public e(java.util.Date date, java.util.TimeZone timeZone) {
        this(((java.util.Date) e2.p.c(date, new java.util.Date())).getTime(), timeZone);
    }

    public e(java.util.Calendar calendar) {
        this(calendar.getTime(), calendar.getTimeZone());
        j(p1.j.e(calendar.getFirstDayOfWeek()));
    }

    public e(java.time.Instant instant) {
        this(instant.toEpochMilli());
    }

    public e(java.time.temporal.TemporalAccessor temporalAccessor) {
        this(p1.h.e(temporalAccessor));
    }

    public e(long j5) {
        this(j5, java.util.TimeZone.getDefault());
    }

    public e(long j5, java.util.TimeZone timeZone) {
        super(j5);
        this.f5471a = true;
        this.f5472b = p1.j.MONDAY;
        this.f5473c = (java.util.TimeZone) e2.p.d(timeZone, new java.util.function.Supplier() { // from class: p1.d
            @Override // java.util.function.Supplier
            public final java.lang.Object get() {
                return java.util.TimeZone.getDefault();
            }
        });
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public e(java.lang.CharSequence charSequence, java.lang.String str) {
        java.util.Date dateH;
        if (q1.m.g(str)) {
            dateH = q1.m.l(charSequence, str);
        } else {
            dateH = h(charSequence, p1.f.m(str));
        }
        this(dateH);
    }

    public e(java.lang.CharSequence charSequence, q1.c cVar) {
        this(charSequence, cVar, e2.c0.d(e2.c0.f4068a, true));
    }

    public e(java.lang.CharSequence charSequence, q1.c cVar, boolean z4) {
        this(f(charSequence, cVar, z4));
    }
}
