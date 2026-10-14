package c4;

/* JADX INFO: compiled from: MediaType.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class t {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.util.regex.Pattern f3221e = java.util.regex.Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.util.regex.Pattern f3222f = java.util.regex.Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f3223a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f3224b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.String f3225c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.String f3226d;

    public t(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        this.f3223a = str;
        this.f3224b = str2;
        this.f3225c = str3;
        this.f3226d = str4;
    }

    public static c4.t b(java.lang.String str) {
        java.util.regex.Matcher matcher = f3221e.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        java.lang.String strGroup = matcher.group(1);
        java.util.Locale locale = java.util.Locale.US;
        java.lang.String lowerCase = strGroup.toLowerCase(locale);
        java.lang.String lowerCase2 = matcher.group(2).toLowerCase(locale);
        java.util.regex.Matcher matcher2 = f3222f.matcher(str);
        java.lang.String str2 = null;
        for (int iEnd = matcher.end(); iEnd < str.length(); iEnd = matcher2.end()) {
            matcher2.region(iEnd, str.length());
            if (!matcher2.lookingAt()) {
                return null;
            }
            java.lang.String strGroup2 = matcher2.group(1);
            if (strGroup2 != null && strGroup2.equalsIgnoreCase("charset")) {
                java.lang.String strGroup3 = matcher2.group(2) != null ? matcher2.group(2) : matcher2.group(3);
                if (str2 != null && !strGroup3.equalsIgnoreCase(str2)) {
                    throw new java.lang.IllegalArgumentException("Multiple different charsets: " + str);
                }
                str2 = strGroup3;
            }
        }
        return new c4.t(str, lowerCase, lowerCase2, str2);
    }

    public java.nio.charset.Charset a(java.nio.charset.Charset charset) {
        java.lang.String str = this.f3226d;
        return str != null ? java.nio.charset.Charset.forName(str) : charset;
    }

    public java.lang.String c() {
        return this.f3224b;
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof c4.t) && ((c4.t) obj).f3223a.equals(this.f3223a);
    }

    public int hashCode() {
        return this.f3223a.hashCode();
    }

    public java.lang.String toString() {
        return this.f3223a;
    }
}
