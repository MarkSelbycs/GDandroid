package c4;

/* JADX INFO: compiled from: TlsVersion.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public enum d0 {
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f3088a;

    d0(java.lang.String str) {
        this.f3088a = str;
    }

    public static c4.d0 b(java.lang.String str) {
        str.hashCode();
        switch (str) {
            case "TLSv1.1":
                return TLS_1_1;
            case "TLSv1.2":
                return TLS_1_2;
            case "SSLv3":
                return SSL_3_0;
            case "TLSv1":
                return TLS_1_0;
            default:
                throw new java.lang.IllegalArgumentException("Unexpected TLS version: " + str);
        }
    }
}
