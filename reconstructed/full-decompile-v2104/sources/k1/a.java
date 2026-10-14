package k1;

/* JADX INFO: compiled from: Base16Codec.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k1.a f4856b = new k1.a(true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final k1.a f4857c = new k1.a(false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final char[] f4858a;

    public a(boolean z4) {
        this.f4858a = (z4 ? "0123456789abcdef" : "0123456789ABCDEF").toCharArray();
    }

    public java.lang.String a(char c5) {
        return "\\u" + this.f4858a[(c5 >> '\f') & 15] + this.f4858a[(c5 >> '\b') & 15] + this.f4858a[(c5 >> 4) & 15] + this.f4858a[c5 & 15];
    }
}
