package e2;

/* JADX INFO: compiled from: CharsetUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.nio.charset.Charset f4073a = java.nio.charset.StandardCharsets.ISO_8859_1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.nio.charset.Charset f4074b = java.nio.charset.StandardCharsets.UTF_8;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.nio.charset.Charset f4075c;

    static {
        java.nio.charset.Charset charsetForName;
        try {
            charsetForName = java.nio.charset.Charset.forName("GBK");
        } catch (java.nio.charset.UnsupportedCharsetException unused) {
            charsetForName = null;
        }
        f4075c = charsetForName;
    }

    public static java.nio.charset.Charset a(java.lang.String str) throws java.nio.charset.UnsupportedCharsetException {
        return b2.c.q(str) ? java.nio.charset.Charset.defaultCharset() : java.nio.charset.Charset.forName(str);
    }

    public static java.nio.charset.Charset b() {
        return java.nio.charset.Charset.defaultCharset();
    }
}
