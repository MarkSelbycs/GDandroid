package c4;

/* JADX INFO: compiled from: CertificatePinner.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c4.g f3089c = new c4.g.b().a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.List<c4.g.c> f3090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j4.b f3091b;

    /* JADX INFO: compiled from: CertificatePinner.java */
    public static /* synthetic */ class a {
    }

    /* JADX INFO: compiled from: CertificatePinner.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.List<c4.g.c> f3092a = new java.util.ArrayList();

        /* JADX WARN: Multi-variable type inference failed */
        public c4.g a() {
            return new c4.g(d4.c.n(this.f3092a), null, 0 == true ? 1 : 0);
        }
    }

    /* JADX INFO: compiled from: CertificatePinner.java */
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.String f3093a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.String f3094b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.lang.String f3095c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final okio.ByteString f3096d;

        public boolean a(java.lang.String str) {
            if (!this.f3093a.startsWith("*.")) {
                return str.equals(this.f3094b);
            }
            int iIndexOf = str.indexOf(46) + 1;
            java.lang.String str2 = this.f3094b;
            return str.regionMatches(false, iIndexOf, str2, 0, str2.length());
        }

        public boolean equals(java.lang.Object obj) {
            if (obj instanceof c4.g.c) {
                c4.g.c cVar = (c4.g.c) obj;
                if (this.f3093a.equals(cVar.f3093a) && this.f3095c.equals(cVar.f3095c) && this.f3096d.equals(cVar.f3096d)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return ((((527 + this.f3093a.hashCode()) * 31) + this.f3095c.hashCode()) * 31) + this.f3096d.hashCode();
        }

        public java.lang.String toString() {
            return this.f3095c + this.f3096d.base64();
        }
    }

    public /* synthetic */ g(java.util.List list, j4.b bVar, c4.g.a aVar) {
        this(list, bVar);
    }

    public static java.lang.String c(java.security.cert.Certificate certificate) {
        if (!(certificate instanceof java.security.cert.X509Certificate)) {
            throw new java.lang.IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        return "sha256/" + e((java.security.cert.X509Certificate) certificate).base64();
    }

    public static okio.ByteString d(java.security.cert.X509Certificate x509Certificate) {
        return d4.c.t(okio.ByteString.of(x509Certificate.getPublicKey().getEncoded()));
    }

    public static okio.ByteString e(java.security.cert.X509Certificate x509Certificate) {
        return d4.c.u(okio.ByteString.of(x509Certificate.getPublicKey().getEncoded()));
    }

    public void a(java.lang.String str, java.util.List<java.security.cert.Certificate> list) throws javax.net.ssl.SSLPeerUnverifiedException {
        java.util.List<c4.g.c> listB = b(str);
        if (listB.isEmpty()) {
            return;
        }
        j4.b bVar = this.f3091b;
        if (bVar != null) {
            list = bVar.a(list, str);
        }
        int size = list.size();
        for (int i5 = 0; i5 < size; i5++) {
            java.security.cert.X509Certificate x509Certificate = (java.security.cert.X509Certificate) list.get(i5);
            int size2 = listB.size();
            okio.ByteString byteStringE = null;
            okio.ByteString byteStringD = null;
            for (int i6 = 0; i6 < size2; i6++) {
                c4.g.c cVar = listB.get(i6);
                if (cVar.f3095c.equals("sha256/")) {
                    if (byteStringE == null) {
                        byteStringE = e(x509Certificate);
                    }
                    if (cVar.f3096d.equals(byteStringE)) {
                        return;
                    }
                } else {
                    if (!cVar.f3095c.equals("sha1/")) {
                        throw new java.lang.AssertionError();
                    }
                    if (byteStringD == null) {
                        byteStringD = d(x509Certificate);
                    }
                    if (cVar.f3096d.equals(byteStringD)) {
                        return;
                    }
                }
            }
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("Certificate pinning failure!");
        sb.append("\n  Peer certificate chain:");
        int size3 = list.size();
        for (int i7 = 0; i7 < size3; i7++) {
            java.security.cert.X509Certificate x509Certificate2 = (java.security.cert.X509Certificate) list.get(i7);
            sb.append("\n    ");
            sb.append(c(x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(":");
        int size4 = listB.size();
        for (int i8 = 0; i8 < size4; i8++) {
            c4.g.c cVar2 = listB.get(i8);
            sb.append("\n    ");
            sb.append(cVar2);
        }
        throw new javax.net.ssl.SSLPeerUnverifiedException(sb.toString());
    }

    public java.util.List<c4.g.c> b(java.lang.String str) {
        java.util.List<c4.g.c> listEmptyList = java.util.Collections.emptyList();
        for (c4.g.c cVar : this.f3090a) {
            if (cVar.a(str)) {
                if (listEmptyList.isEmpty()) {
                    listEmptyList = new java.util.ArrayList<>();
                }
                listEmptyList.add(cVar);
            }
        }
        return listEmptyList;
    }

    public c4.g withCertificateChainCleaner(j4.b bVar) {
        return this.f3091b != bVar ? new c4.g(this.f3090a, bVar) : this;
    }

    public g(java.util.List<c4.g.c> list, j4.b bVar) {
        this.f3090a = list;
        this.f3091b = bVar;
    }
}
