package c4;

/* JADX INFO: compiled from: Handshake.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.d0 f3191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c4.h f3192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.List<java.security.cert.Certificate> f3193c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.List<java.security.cert.Certificate> f3194d;

    public p(c4.d0 d0Var, c4.h hVar, java.util.List<java.security.cert.Certificate> list, java.util.List<java.security.cert.Certificate> list2) {
        this.f3191a = d0Var;
        this.f3192b = hVar;
        this.f3193c = list;
        this.f3194d = list2;
    }

    public static c4.p b(javax.net.ssl.SSLSession sSLSession) {
        java.security.cert.Certificate[] peerCertificates;
        java.lang.String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new java.lang.IllegalStateException("cipherSuite == null");
        }
        c4.h hVarA = c4.h.a(cipherSuite);
        java.lang.String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new java.lang.IllegalStateException("tlsVersion == null");
        }
        c4.d0 d0VarB = c4.d0.b(protocol);
        try {
            peerCertificates = sSLSession.getPeerCertificates();
        } catch (javax.net.ssl.SSLPeerUnverifiedException unused) {
            peerCertificates = null;
        }
        java.util.List listO = peerCertificates != null ? d4.c.o(peerCertificates) : java.util.Collections.emptyList();
        java.security.cert.Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new c4.p(d0VarB, hVarA, listO, localCertificates != null ? d4.c.o(localCertificates) : java.util.Collections.emptyList());
    }

    public c4.h a() {
        return this.f3192b;
    }

    public java.util.List<java.security.cert.Certificate> c() {
        return this.f3193c;
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof c4.p)) {
            return false;
        }
        c4.p pVar = (c4.p) obj;
        return d4.c.k(this.f3192b, pVar.f3192b) && this.f3192b.equals(pVar.f3192b) && this.f3193c.equals(pVar.f3193c) && this.f3194d.equals(pVar.f3194d);
    }

    public int hashCode() {
        c4.d0 d0Var = this.f3191a;
        return ((((((527 + (d0Var != null ? d0Var.hashCode() : 0)) * 31) + this.f3192b.hashCode()) * 31) + this.f3193c.hashCode()) * 31) + this.f3194d.hashCode();
    }
}
