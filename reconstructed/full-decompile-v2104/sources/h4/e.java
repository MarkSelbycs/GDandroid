package h4;

/* JADX INFO: compiled from: HttpDate.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.ThreadLocal<java.text.DateFormat> f4614a = new h4.e.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.lang.String[] f4615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.text.DateFormat[] f4616c;

    /* JADX INFO: compiled from: HttpDate.java */
    public static class a extends java.lang.ThreadLocal<java.text.DateFormat> {
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public java.text.DateFormat initialValue() {
            java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", java.util.Locale.US);
            simpleDateFormat.setLenient(false);
            simpleDateFormat.setTimeZone(d4.c.f3968d);
            return simpleDateFormat;
        }
    }

    static {
        java.lang.String[] strArr = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};
        f4615b = strArr;
        f4616c = new java.text.DateFormat[strArr.length];
    }

    public static java.lang.String a(java.util.Date date) {
        return f4614a.get().format(date);
    }

    public static java.util.Date b(java.lang.String str) {
        if (str.length() == 0) {
            return null;
        }
        java.text.ParsePosition parsePosition = new java.text.ParsePosition(0);
        java.util.Date date = f4614a.get().parse(str, parsePosition);
        if (parsePosition.getIndex() == str.length()) {
            return date;
        }
        java.lang.String[] strArr = f4615b;
        synchronized (strArr) {
            int length = strArr.length;
            for (int i5 = 0; i5 < length; i5++) {
                java.text.DateFormat[] dateFormatArr = f4616c;
                java.text.DateFormat simpleDateFormat = dateFormatArr[i5];
                if (simpleDateFormat == null) {
                    simpleDateFormat = new java.text.SimpleDateFormat(f4615b[i5], java.util.Locale.US);
                    simpleDateFormat.setTimeZone(d4.c.f3968d);
                    dateFormatArr[i5] = simpleDateFormat;
                }
                parsePosition.setIndex(0);
                java.util.Date date2 = simpleDateFormat.parse(str, parsePosition);
                if (parsePosition.getIndex() != 0) {
                    return date2;
                }
            }
            return null;
        }
    }
}
