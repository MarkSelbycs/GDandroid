package q1;

/* JADX INFO: compiled from: FastDateFormat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e extends java.text.Format implements q1.c, q1.d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final q1.h<q1.e> f5751c = new q1.e.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q1.g f5752a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q1.f f5753b;

    /* JADX INFO: compiled from: FastDateFormat.java */
    public static class a extends q1.h<q1.e> {
        @Override // q1.h
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public q1.e a(java.lang.String str, java.util.TimeZone timeZone, java.util.Locale locale) {
            return new q1.e(str, timeZone, locale);
        }
    }

    public e(java.lang.String str, java.util.TimeZone timeZone, java.util.Locale locale) {
        this(str, timeZone, locale, null);
    }

    public static q1.e j(java.lang.String str) {
        return (q1.e) f5751c.b(str, null, null);
    }

    public static q1.e u(java.lang.String str, java.util.Locale locale) {
        return (q1.e) f5751c.b(str, null, locale);
    }

    public static q1.e x(java.lang.String str, java.util.TimeZone timeZone) {
        return (q1.e) f5751c.b(str, timeZone, null);
    }

    public static q1.e y(java.lang.String str, java.util.TimeZone timeZone, java.util.Locale locale) {
        return (q1.e) f5751c.b(str, timeZone, locale);
    }

    @Override // q1.c
    public java.util.Date b(java.lang.String str, java.text.ParsePosition parsePosition) {
        return this.f5753b.b(str, parsePosition);
    }

    @Override // q1.d
    public java.lang.String e(java.util.Date date) {
        return this.f5752a.e(date);
    }

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof q1.e) {
            return this.f5752a.equals(((q1.e) obj).f5752a);
        }
        return false;
    }

    @Override // q1.b
    public java.lang.String f() {
        return this.f5752a.f();
    }

    @Override // java.text.Format
    public java.lang.StringBuffer format(java.lang.Object obj, java.lang.StringBuffer stringBuffer, java.text.FieldPosition fieldPosition) {
        stringBuffer.append(this.f5752a.H(obj));
        return stringBuffer;
    }

    @Override // q1.b
    public java.util.Locale getLocale() {
        return this.f5752a.getLocale();
    }

    @Override // q1.b
    public java.util.TimeZone getTimeZone() {
        return this.f5752a.getTimeZone();
    }

    @Override // q1.c
    public boolean h(java.lang.String str, java.text.ParsePosition parsePosition, java.util.Calendar calendar) {
        return this.f5753b.h(str, parsePosition, calendar);
    }

    public int hashCode() {
        return this.f5752a.hashCode();
    }

    @Override // java.text.Format, q1.c
    public java.lang.Object parseObject(java.lang.String str, java.text.ParsePosition parsePosition) {
        return this.f5753b.parseObject(str, parsePosition);
    }

    public java.lang.String toString() {
        return "FastDateFormat[" + this.f5752a.f() + "," + this.f5752a.getLocale() + "," + this.f5752a.getTimeZone().getID() + "]";
    }

    public e(java.lang.String str, java.util.TimeZone timeZone, java.util.Locale locale, java.util.Date date) {
        this.f5752a = new q1.g(str, timeZone, locale);
        this.f5753b = new q1.f(str, timeZone, locale, date);
    }
}
