package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class am extends javax.net.ssl.SSLSocketFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f3656a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static com.msec.am f3657c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private javax.net.ssl.SSLSocketFactory f3658b;

    public static final class a implements javax.net.ssl.X509TrustManager {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private javax.net.ssl.X509TrustManager f3659a;

        public a(javax.net.ssl.X509TrustManager x509TrustManager) {
            this.f3659a = x509TrustManager;
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(java.security.cert.X509Certificate[] x509CertificateArr, java.lang.String str) throws java.security.cert.CertificateException {
            this.f3659a.checkClientTrusted(x509CertificateArr, str);
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(java.security.cert.X509Certificate[] x509CertificateArr, java.lang.String str) throws java.security.cert.CertificateException {
            com.msec.vvv.a(1583, new java.lang.Object[]{this, x509CertificateArr, str});
        }

        @Override // javax.net.ssl.X509TrustManager
        public java.security.cert.X509Certificate[] getAcceptedIssuers() {
            return this.f3659a.getAcceptedIssuers();
        }
    }

    public am(javax.net.ssl.SSLSocketFactory sSLSocketFactory) {
        this.f3658b = sSLSocketFactory;
    }

    public static javax.net.ssl.SSLSocketFactory a() {
        return f3657c;
    }

    public static javax.net.ssl.SSLSocketFactory a(javax.net.ssl.SSLSocketFactory sSLSocketFactory) {
        if (sSLSocketFactory == null) {
            sSLSocketFactory = b();
        }
        return new com.msec.am(sSLSocketFactory);
    }

    public static void a(int i5) {
        com.msec.vvv.a(1598, new java.lang.Object[]{java.lang.Integer.valueOf(i5)});
    }

    public static javax.net.ssl.SSLSocketFactory b() {
        com.msec.am amVar = f3657c;
        if (amVar == null) {
            return null;
        }
        return amVar.f3658b;
    }

    @Override // javax.net.SocketFactory
    public java.net.Socket createSocket() throws java.io.IOException {
        return this.f3658b.createSocket();
    }

    @Override // javax.net.SocketFactory
    public java.net.Socket createSocket(java.lang.String str, int i5) throws java.io.IOException {
        return this.f3658b.createSocket(str, i5);
    }

    @Override // javax.net.SocketFactory
    public java.net.Socket createSocket(java.lang.String str, int i5, java.net.InetAddress inetAddress, int i6) throws java.io.IOException {
        return this.f3658b.createSocket(str, i5, inetAddress, i6);
    }

    @Override // javax.net.SocketFactory
    public java.net.Socket createSocket(java.net.InetAddress inetAddress, int i5) throws java.io.IOException {
        return this.f3658b.createSocket(inetAddress, i5);
    }

    @Override // javax.net.SocketFactory
    public java.net.Socket createSocket(java.net.InetAddress inetAddress, int i5, java.net.InetAddress inetAddress2, int i6) throws java.io.IOException {
        return this.f3658b.createSocket(inetAddress, i5, inetAddress2, i6);
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public java.net.Socket createSocket(java.net.Socket socket, java.lang.String str, int i5, boolean z4) throws java.io.IOException {
        return (java.net.Socket) com.msec.vvv.a(1597, new java.lang.Object[]{this, socket, str, java.lang.Integer.valueOf(i5), java.lang.Boolean.valueOf(z4)});
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public java.lang.String[] getDefaultCipherSuites() {
        return this.f3658b.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public java.lang.String[] getSupportedCipherSuites() {
        return this.f3658b.getSupportedCipherSuites();
    }
}
