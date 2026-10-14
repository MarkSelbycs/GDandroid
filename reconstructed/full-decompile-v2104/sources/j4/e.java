package j4;

/* JADX INFO: compiled from: TrustRootIndex.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class e {

    /* JADX INFO: compiled from: TrustRootIndex.java */
    public static final class a extends j4.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final javax.net.ssl.X509TrustManager f4796a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.reflect.Method f4797b;

        public a(javax.net.ssl.X509TrustManager x509TrustManager, java.lang.reflect.Method method) {
            this.f4797b = method;
            this.f4796a = x509TrustManager;
        }

        @Override // j4.e
        public java.security.cert.X509Certificate a(java.security.cert.X509Certificate x509Certificate) {
            try {
                java.security.cert.TrustAnchor trustAnchor = (java.security.cert.TrustAnchor) this.f4797b.invoke(this.f4796a, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
                return null;
            } catch (java.lang.IllegalAccessException unused) {
                throw new java.lang.AssertionError();
            } catch (java.lang.reflect.InvocationTargetException unused2) {
                return null;
            }
        }
    }

    /* JADX INFO: compiled from: TrustRootIndex.java */
    public static final class b extends j4.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.Map<javax.security.auth.x500.X500Principal, java.util.List<java.security.cert.X509Certificate>> f4798a = new java.util.LinkedHashMap();

        public b(java.security.cert.X509Certificate... x509CertificateArr) {
            for (java.security.cert.X509Certificate x509Certificate : x509CertificateArr) {
                javax.security.auth.x500.X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
                java.util.List<java.security.cert.X509Certificate> arrayList = this.f4798a.get(subjectX500Principal);
                if (arrayList == null) {
                    arrayList = new java.util.ArrayList<>(1);
                    this.f4798a.put(subjectX500Principal, arrayList);
                }
                arrayList.add(x509Certificate);
            }
        }

        @Override // j4.e
        public java.security.cert.X509Certificate a(java.security.cert.X509Certificate x509Certificate) {
            java.util.List<java.security.cert.X509Certificate> list = this.f4798a.get(x509Certificate.getIssuerX500Principal());
            if (list == null) {
                return null;
            }
            for (java.security.cert.X509Certificate x509Certificate2 : list) {
                try {
                    x509Certificate.verify(x509Certificate2.getPublicKey());
                    return x509Certificate2;
                } catch (java.lang.Exception unused) {
                }
            }
            return null;
        }
    }

    public static j4.e b(javax.net.ssl.X509TrustManager x509TrustManager) {
        try {
            java.lang.reflect.Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", java.security.cert.X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new j4.e.a(x509TrustManager, declaredMethod);
        } catch (java.lang.NoSuchMethodException unused) {
            return c(x509TrustManager.getAcceptedIssuers());
        }
    }

    public static j4.e c(java.security.cert.X509Certificate... x509CertificateArr) {
        return new j4.e.b(x509CertificateArr);
    }

    public abstract java.security.cert.X509Certificate a(java.security.cert.X509Certificate x509Certificate);
}
