package p1;

/* JADX INFO: compiled from: CalendarUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {
    public static java.util.Calendar a(long j5) {
        return b(j5, java.util.TimeZone.getDefault());
    }

    public static java.util.Calendar b(long j5, java.util.TimeZone timeZone) {
        java.util.Calendar calendar = java.util.Calendar.getInstance(timeZone);
        calendar.setTimeInMillis(j5);
        return calendar;
    }

    public static java.util.Calendar c(java.util.Date date) {
        return date instanceof p1.e ? ((p1.e) date).u() : a(date.getTime());
    }

    public static java.util.Calendar d(java.lang.CharSequence charSequence, boolean z4, q1.c cVar) {
        java.util.Calendar calendar = java.util.Calendar.getInstance(cVar.getTimeZone(), cVar.getLocale());
        calendar.clear();
        calendar.setLenient(z4);
        if (cVar.h(b2.c.L(charSequence), new java.text.ParsePosition(0), calendar)) {
            return calendar;
        }
        return null;
    }
}
