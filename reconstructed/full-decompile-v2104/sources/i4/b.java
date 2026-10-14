package i4;

/* JADX INFO: compiled from: Jdk9Platform.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b extends i4.e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.reflect.Method f4675c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.reflect.Method f4676d;

    public b(java.lang.reflect.Method method, java.lang.reflect.Method method2) {
        this.f4675c = method;
        this.f4676d = method2;
    }

    public static i4.b n() {
        try {
            return new i4.b(javax.net.ssl.SSLParameters.class.getMethod("setApplicationProtocols", java.lang.String[].class), javax.net.ssl.SSLSocket.class.getMethod("getApplicationProtocol", new java.lang.Class[0]));
        } catch (java.lang.NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // i4.e
    public void e(javax.net.ssl.SSLSocket sSLSocket, java.lang.String str, java.util.List<c4.w> list) {
        try {
            javax.net.ssl.SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            java.util.List<java.lang.String> listB = i4.e.b(list);
            this.f4675c.invoke(sSLParameters, listB.toArray(new java.lang.String[listB.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused) {
            throw new java.lang.AssertionError();
        }
    }

    @Override // i4.e
    public java.lang.String i(javax.net.ssl.SSLSocket sSLSocket) {
        try {
            java.lang.String str = (java.lang.String) this.f4676d.invoke(sSLSocket, new java.lang.Object[0]);
            if (str == null || str.equals("")) {
                return null;
            }
            return str;
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused) {
            throw new java.lang.AssertionError();
        }
    }

    @Override // i4.e
    public javax.net.ssl.X509TrustManager m(javax.net.ssl.SSLSocketFactory sSLSocketFactory) {
        throw new java.lang.UnsupportedOperationException("clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on JDK 9+");
    }
}
