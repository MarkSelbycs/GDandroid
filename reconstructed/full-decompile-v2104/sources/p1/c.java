package p1;

/* JADX INFO: compiled from: DatePattern.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c {
    public static final q1.e D;
    public static final q1.e E;
    public static final q1.e F;
    public static final q1.e G;
    public static final q1.e H;
    public static final q1.e I;
    public static final q1.e J;
    public static final q1.e K;
    public static final q1.e L;
    public static final q1.e M;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.regex.Pattern f5443a = java.util.regex.Pattern.compile("\\d{4}-\\d{1,2}-\\d{1,2}(\\s\\d{1,2}:\\d{1,2}(:\\d{1,2})?)?(.\\d{1,6})?");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final q1.e f5444b = q1.e.j("yyyy-MM");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.time.format.DateTimeFormatter f5445c = a("yyyy-MM");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final q1.e f5446d = q1.e.j("yyyyMM");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.time.format.DateTimeFormatter f5447e = a("yyyyMM");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final q1.e f5448f = q1.e.j("yyyy-MM-dd");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final java.time.format.DateTimeFormatter f5449g = a("yyyy-MM-dd");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final q1.e f5450h = q1.e.j("HH:mm:ss");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final java.time.format.DateTimeFormatter f5451i = a("HH:mm:ss");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final q1.e f5452j = q1.e.j("yyyy-MM-dd HH:mm");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final java.time.format.DateTimeFormatter f5453k = a("yyyy-MM-dd HH:mm");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final q1.e f5454l = q1.e.j("yyyy-MM-dd HH:mm:ss");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final java.time.format.DateTimeFormatter f5455m = a("yyyy-MM-dd HH:mm:ss");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final q1.e f5456n = q1.e.j("yyyy-MM-dd HH:mm:ss.SSS");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final java.time.format.DateTimeFormatter f5457o = a("yyyy-MM-dd HH:mm:ss.SSS");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final q1.e f5458p = q1.e.j("yyyy-MM-dd HH:mm:ss,SSS");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final java.time.format.DateTimeFormatter f5459q = a("yyyy-MM-dd HH:mm:ss,SSS");

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final q1.e f5460r = q1.e.j("yyyy年MM月dd日");

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final java.time.format.DateTimeFormatter f5461s = a("yyyy年MM月dd日");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final q1.e f5462t = q1.e.j("yyyy年MM月dd日HH时mm分ss秒");

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final java.time.format.DateTimeFormatter f5463u = a("yyyy年MM月dd日HH时mm分ss秒");

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final q1.e f5464v = q1.e.j("yyyyMMdd");

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final java.time.format.DateTimeFormatter f5465w = a("yyyyMMdd");

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final q1.e f5466x = q1.e.j("HHmmss");

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final java.time.format.DateTimeFormatter f5467y = a("HHmmss");

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final q1.e f5468z = q1.e.j("yyyyMMddHHmmss");
    public static final java.time.format.DateTimeFormatter A = a("yyyyMMddHHmmss");
    public static final q1.e B = q1.e.j("yyyyMMddHHmmssSSS");
    public static final java.time.format.DateTimeFormatter C = a("yyyyMMddHHmmssSSS");

    static {
        java.util.TimeZone timeZone = java.util.TimeZone.getTimeZone("GMT");
        java.util.Locale locale = java.util.Locale.US;
        D = q1.e.y("EEE, dd MMM yyyy HH:mm:ss z", timeZone, locale);
        E = q1.e.u("EEE MMM dd HH:mm:ss zzz yyyy", locale);
        F = q1.e.j("yyyy-MM-dd'T'HH:mm:ss");
        G = q1.e.j("yyyy-MM-dd'T'HH:mm:ss.SSS");
        H = q1.e.x("yyyy-MM-dd'T'HH:mm:ss'Z'", java.util.TimeZone.getTimeZone("UTC"));
        I = q1.e.x("yyyy-MM-dd'T'HH:mm:ssZ", java.util.TimeZone.getTimeZone("UTC"));
        J = q1.e.j("yyyy-MM-dd'T'HH:mm:ssXXX");
        K = q1.e.x("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", java.util.TimeZone.getTimeZone("UTC"));
        L = q1.e.x("yyyy-MM-dd'T'HH:mm:ss.SSSZ", java.util.TimeZone.getTimeZone("UTC"));
        M = q1.e.j("yyyy-MM-dd'T'HH:mm:ss.SSSXXX");
    }

    public static java.time.format.DateTimeFormatter a(java.lang.String str) {
        return java.time.format.DateTimeFormatter.ofPattern(str, java.util.Locale.getDefault()).withZone(java.time.ZoneId.systemDefault());
    }
}
