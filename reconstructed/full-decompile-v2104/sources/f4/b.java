package f4;

/* JADX INFO: compiled from: ConnectionSpecSelector.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.List<c4.k> f4242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4243b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f4245d;

    public b(java.util.List<c4.k> list) {
        this.f4242a = list;
    }

    public c4.k a(javax.net.ssl.SSLSocket sSLSocket) throws java.io.IOException {
        c4.k kVar;
        int i5 = this.f4243b;
        int size = this.f4242a.size();
        while (true) {
            if (i5 >= size) {
                kVar = null;
                break;
            }
            kVar = this.f4242a.get(i5);
            if (kVar.g(sSLSocket)) {
                this.f4243b = i5 + 1;
                break;
            }
            i5++;
        }
        if (kVar != null) {
            this.f4244c = c(sSLSocket);
            d4.a.f3963a.c(kVar, sSLSocket, this.f4245d);
            return kVar;
        }
        throw new java.net.UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f4245d + ", modes=" + this.f4242a + ", supported protocols=" + java.util.Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public boolean b(java.io.IOException iOException) {
        this.f4245d = true;
        if (!this.f4244c || (iOException instanceof java.net.ProtocolException) || (iOException instanceof java.io.InterruptedIOException)) {
            return false;
        }
        boolean z4 = iOException instanceof javax.net.ssl.SSLHandshakeException;
        if ((z4 && (iOException.getCause() instanceof java.security.cert.CertificateException)) || (iOException instanceof javax.net.ssl.SSLPeerUnverifiedException)) {
            return false;
        }
        return z4 || (iOException instanceof javax.net.ssl.SSLProtocolException);
    }

    public final boolean c(javax.net.ssl.SSLSocket sSLSocket) {
        for (int i5 = this.f4243b; i5 < this.f4242a.size(); i5++) {
            if (this.f4242a.get(i5).g(sSLSocket)) {
                return true;
            }
        }
        return false;
    }
}
