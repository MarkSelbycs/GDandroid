package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static java.lang.String[] f3630a = new java.lang.String[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final javax.net.ssl.TrustManager[] f3631b = {new javax.net.ssl.X509TrustManager() { // from class: com.msec.a.2
        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(java.security.cert.X509Certificate[] x509CertificateArr, java.lang.String str) throws java.security.cert.CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(java.security.cert.X509Certificate[] x509CertificateArr, java.lang.String str) throws java.security.cert.CertificateException {
            com.msec.X3.v1(x509CertificateArr, str);
        }

        @Override // javax.net.ssl.X509TrustManager
        public java.security.cert.X509Certificate[] getAcceptedIssuers() {
            return new java.security.cert.X509Certificate[0];
        }
    }};

    public static final javax.net.ssl.HostnameVerifier a(final boolean z4) {
        return new javax.net.ssl.HostnameVerifier() { // from class: com.msec.a.1
            @Override // javax.net.ssl.HostnameVerifier
            public boolean verify(java.lang.String str, javax.net.ssl.SSLSession sSLSession) {
                return ((java.lang.Boolean) com.msec.vvv.a(1697, new java.lang.Object[]{this, str, sSLSession})).booleanValue();
            }
        };
    }

    public static javax.net.ssl.SSLSocketFactory a(android.content.Context context) {
        return (javax.net.ssl.SSLSocketFactory) com.msec.vvv.a(1670, new java.lang.Object[]{context});
    }

    public static javax.net.ssl.SSLSocketFactory a(javax.net.ssl.HttpsURLConnection httpsURLConnection) {
        return (javax.net.ssl.SSLSocketFactory) com.msec.vvv.a(1669, new java.lang.Object[]{httpsURLConnection});
    }

    private static javax.net.ssl.SSLSocketFactory a(java.io.InputStream... inputStreamArr) {
        return (javax.net.ssl.SSLSocketFactory) com.msec.vvv.a(1668, new java.lang.Object[]{inputStreamArr});
    }
}
