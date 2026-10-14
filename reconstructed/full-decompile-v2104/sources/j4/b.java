package j4;

/* JADX INFO: compiled from: CertificateChainCleaner.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class b {
    public static j4.b b(javax.net.ssl.X509TrustManager x509TrustManager) {
        return i4.e.h().c(x509TrustManager);
    }

    public abstract java.util.List<java.security.cert.Certificate> a(java.util.List<java.security.cert.Certificate> list, java.lang.String str) throws javax.net.ssl.SSLPeerUnverifiedException;
}
