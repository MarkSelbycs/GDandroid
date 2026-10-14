package j4;

/* JADX INFO: compiled from: OkHostnameVerifier.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d implements javax.net.ssl.HostnameVerifier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final j4.d f4795a = new j4.d();

    public static java.util.List<java.lang.String> a(java.security.cert.X509Certificate x509Certificate) {
        java.util.List<java.lang.String> listB = b(x509Certificate, 7);
        java.util.List<java.lang.String> listB2 = b(x509Certificate, 2);
        java.util.ArrayList arrayList = new java.util.ArrayList(listB.size() + listB2.size());
        arrayList.addAll(listB);
        arrayList.addAll(listB2);
        return arrayList;
    }

    public static java.util.List<java.lang.String> b(java.security.cert.X509Certificate x509Certificate, int i5) {
        java.lang.Integer num;
        java.lang.String str;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        try {
            java.util.Collection<java.util.List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return java.util.Collections.emptyList();
            }
            for (java.util.List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (java.lang.Integer) list.get(0)) != null && num.intValue() == i5 && (str = (java.lang.String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (java.security.cert.CertificateParsingException unused) {
            return java.util.Collections.emptyList();
        }
    }

    public boolean c(java.lang.String str, java.security.cert.X509Certificate x509Certificate) {
        return d4.c.A(str) ? f(str, x509Certificate) : e(str, x509Certificate);
    }

    public final boolean d(java.lang.String str, java.lang.String str2) {
        if (str != null && str.length() != 0 && !str.startsWith(".") && !str.endsWith("..") && str2 != null && str2.length() != 0 && !str2.startsWith(".") && !str2.endsWith("..")) {
            if (!str.endsWith(".")) {
                str = str + '.';
            }
            if (!str2.endsWith(".")) {
                str2 = str2 + '.';
            }
            java.lang.String lowerCase = str2.toLowerCase(java.util.Locale.US);
            if (!lowerCase.contains("*")) {
                return str.equals(lowerCase);
            }
            if (!lowerCase.startsWith("*.") || lowerCase.indexOf(42, 1) != -1 || str.length() < lowerCase.length() || "*.".equals(lowerCase)) {
                return false;
            }
            java.lang.String strSubstring = lowerCase.substring(1);
            if (!str.endsWith(strSubstring)) {
                return false;
            }
            int length = str.length() - strSubstring.length();
            return length <= 0 || str.lastIndexOf(46, length - 1) == -1;
        }
        return false;
    }

    public final boolean e(java.lang.String str, java.security.cert.X509Certificate x509Certificate) {
        java.lang.String strB;
        java.lang.String lowerCase = str.toLowerCase(java.util.Locale.US);
        java.util.List<java.lang.String> listB = b(x509Certificate, 2);
        int size = listB.size();
        int i5 = 0;
        boolean z4 = false;
        while (i5 < size) {
            if (d(lowerCase, listB.get(i5))) {
                return true;
            }
            i5++;
            z4 = true;
        }
        if (z4 || (strB = new j4.c(x509Certificate.getSubjectX500Principal()).b("cn")) == null) {
            return false;
        }
        return d(lowerCase, strB);
    }

    public final boolean f(java.lang.String str, java.security.cert.X509Certificate x509Certificate) {
        java.util.List<java.lang.String> listB = b(x509Certificate, 7);
        int size = listB.size();
        for (int i5 = 0; i5 < size; i5++) {
            if (str.equalsIgnoreCase(listB.get(i5))) {
                return true;
            }
        }
        return false;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(java.lang.String str, javax.net.ssl.SSLSession sSLSession) {
        try {
            return c(str, (java.security.cert.X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (javax.net.ssl.SSLException unused) {
            return false;
        }
    }
}
