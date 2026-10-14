package j4;

/* JADX INFO: compiled from: BasicCertificateChainCleaner.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a extends j4.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j4.e f4787a;

    public a(j4.e eVar) {
        this.f4787a = eVar;
    }

    @Override // j4.b
    public java.util.List<java.security.cert.Certificate> a(java.util.List<java.security.cert.Certificate> list, java.lang.String str) throws javax.net.ssl.SSLPeerUnverifiedException {
        java.security.cert.X509Certificate x509Certificate;
        java.util.ArrayDeque arrayDeque = new java.util.ArrayDeque(list);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        arrayList.add(arrayDeque.removeFirst());
        boolean z4 = false;
        for (int i5 = 0; i5 < 9; i5++) {
            java.security.cert.X509Certificate x509Certificate2 = (java.security.cert.X509Certificate) arrayList.get(arrayList.size() - 1);
            java.security.cert.X509Certificate x509CertificateA = this.f4787a.a(x509Certificate2);
            if (x509CertificateA != null) {
                if (arrayList.size() > 1 || !x509Certificate2.equals(x509CertificateA)) {
                    arrayList.add(x509CertificateA);
                }
                if (c(x509CertificateA, x509CertificateA)) {
                    return arrayList;
                }
                z4 = true;
            } else {
                java.util.Iterator it = arrayDeque.iterator();
                do {
                    if (!it.hasNext()) {
                        if (z4) {
                            return arrayList;
                        }
                        throw new javax.net.ssl.SSLPeerUnverifiedException("Failed to find a trusted cert that signed " + x509Certificate2);
                    }
                    x509Certificate = (java.security.cert.X509Certificate) it.next();
                } while (!c(x509Certificate2, x509Certificate));
                it.remove();
                arrayList.add(x509Certificate);
            }
        }
        throw new javax.net.ssl.SSLPeerUnverifiedException("Certificate chain too long: " + arrayList);
    }

    public final boolean c(java.security.cert.X509Certificate x509Certificate, java.security.cert.X509Certificate x509Certificate2) {
        if (!x509Certificate.getIssuerDN().equals(x509Certificate2.getSubjectDN())) {
            return false;
        }
        try {
            x509Certificate.verify(x509Certificate2.getPublicKey());
            return true;
        } catch (java.security.GeneralSecurityException unused) {
            return false;
        }
    }
}
