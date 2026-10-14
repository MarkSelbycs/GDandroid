package i4;

/* JADX INFO: compiled from: AndroidPlatform.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends i4.e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.Class<?> f4668c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i4.d<java.net.Socket> f4669d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final i4.d<java.net.Socket> f4670e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final i4.d<java.net.Socket> f4671f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final i4.d<java.net.Socket> f4672g;

    /* JADX INFO: renamed from: i4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AndroidPlatform.java */
    public static final class C0062a extends j4.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.Object f4673a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.reflect.Method f4674b;

        public C0062a(java.lang.Object obj, java.lang.reflect.Method method) {
            this.f4673a = obj;
            this.f4674b = method;
        }

        @Override // j4.b
        public java.util.List<java.security.cert.Certificate> a(java.util.List<java.security.cert.Certificate> list, java.lang.String str) throws javax.net.ssl.SSLPeerUnverifiedException {
            try {
                return (java.util.List) this.f4674b.invoke(this.f4673a, (java.security.cert.X509Certificate[]) list.toArray(new java.security.cert.X509Certificate[list.size()]), "RSA", str);
            } catch (java.lang.IllegalAccessException e5) {
                throw new java.lang.AssertionError(e5);
            } catch (java.lang.reflect.InvocationTargetException e6) {
                javax.net.ssl.SSLPeerUnverifiedException sSLPeerUnverifiedException = new javax.net.ssl.SSLPeerUnverifiedException(e6.getMessage());
                sSLPeerUnverifiedException.initCause(e6);
                throw sSLPeerUnverifiedException;
            }
        }
    }

    public a(java.lang.Class<?> cls, i4.d<java.net.Socket> dVar, i4.d<java.net.Socket> dVar2, i4.d<java.net.Socket> dVar3, i4.d<java.net.Socket> dVar4) {
        this.f4668c = cls;
        this.f4669d = dVar;
        this.f4670e = dVar2;
        this.f4671f = dVar3;
        this.f4672g = dVar4;
    }

    public static i4.e n() {
        java.lang.Class<?> cls;
        i4.d dVar;
        i4.d dVar2;
        try {
            try {
                cls = java.lang.Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (java.lang.ClassNotFoundException unused) {
                return null;
            }
        } catch (java.lang.ClassNotFoundException unused2) {
            cls = java.lang.Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
        }
        java.lang.Class<?> cls2 = cls;
        i4.d dVar3 = new i4.d(null, "setUseSessionTickets", java.lang.Boolean.TYPE);
        i4.d dVar4 = new i4.d(null, "setHostname", java.lang.String.class);
        try {
            java.lang.Class.forName("android.net.Network");
            dVar = new i4.d(byte[].class, "getAlpnSelectedProtocol", new java.lang.Class[0]);
            try {
                dVar2 = new i4.d(null, "setAlpnProtocols", byte[].class);
            } catch (java.lang.ClassNotFoundException unused3) {
                dVar2 = null;
            }
        } catch (java.lang.ClassNotFoundException unused4) {
            dVar = null;
        }
        return new i4.a(cls2, dVar3, dVar4, dVar, dVar2);
    }

    @Override // i4.e
    public j4.b c(javax.net.ssl.X509TrustManager x509TrustManager) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("android.net.http.X509TrustManagerExtensions");
            return new i4.a.C0062a(cls.getConstructor(javax.net.ssl.X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", java.security.cert.X509Certificate[].class, java.lang.String.class, java.lang.String.class));
        } catch (java.lang.Exception unused) {
            return super.c(x509TrustManager);
        }
    }

    @Override // i4.e
    public void e(javax.net.ssl.SSLSocket sSLSocket, java.lang.String str, java.util.List<c4.w> list) {
        if (str != null) {
            this.f4669d.e(sSLSocket, java.lang.Boolean.TRUE);
            this.f4670e.e(sSLSocket, str);
        }
        i4.d<java.net.Socket> dVar = this.f4672g;
        if (dVar == null || !dVar.g(sSLSocket)) {
            return;
        }
        this.f4672g.f(sSLSocket, i4.e.d(list));
    }

    @Override // i4.e
    public void f(java.net.Socket socket, java.net.InetSocketAddress inetSocketAddress, int i5) throws java.io.IOException {
        try {
            socket.connect(inetSocketAddress, i5);
        } catch (java.lang.AssertionError e5) {
            if (!d4.c.s(e5)) {
                throw e5;
            }
            throw new java.io.IOException(e5);
        } catch (java.lang.SecurityException e6) {
            java.io.IOException iOException = new java.io.IOException("Exception in connect");
            iOException.initCause(e6);
            throw iOException;
        }
    }

    @Override // i4.e
    public java.lang.String i(javax.net.ssl.SSLSocket sSLSocket) {
        byte[] bArr;
        i4.d<java.net.Socket> dVar = this.f4671f;
        if (dVar == null || !dVar.g(sSLSocket) || (bArr = (byte[]) this.f4671f.f(sSLSocket, new java.lang.Object[0])) == null) {
            return null;
        }
        return new java.lang.String(bArr, d4.c.f3967c);
    }

    @Override // i4.e
    public boolean j(java.lang.String str) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("android.security.NetworkSecurityPolicy");
            return ((java.lang.Boolean) cls.getMethod("isCleartextTrafficPermitted", java.lang.String.class).invoke(cls.getMethod("getInstance", new java.lang.Class[0]).invoke(null, new java.lang.Object[0]), str)).booleanValue();
        } catch (java.lang.ClassNotFoundException | java.lang.NoSuchMethodException unused) {
            return super.j(str);
        } catch (java.lang.IllegalAccessException | java.lang.IllegalArgumentException | java.lang.reflect.InvocationTargetException unused2) {
            throw new java.lang.AssertionError();
        }
    }

    @Override // i4.e
    public void k(int i5, java.lang.String str, java.lang.Throwable th) {
        int iMin;
        int i6 = i5 != 5 ? 3 : 5;
        if (th != null) {
            str = str + '\n' + android.util.Log.getStackTraceString(th);
        }
        int i7 = 0;
        int length = str.length();
        while (i7 < length) {
            int iIndexOf = str.indexOf(10, i7);
            if (iIndexOf == -1) {
                iIndexOf = length;
            }
            while (true) {
                iMin = java.lang.Math.min(iIndexOf, i7 + 4000);
                android.util.Log.println(i6, "OkHttp", str.substring(i7, iMin));
                if (iMin >= iIndexOf) {
                    break;
                } else {
                    i7 = iMin;
                }
            }
            i7 = iMin + 1;
        }
    }

    @Override // i4.e
    public javax.net.ssl.X509TrustManager m(javax.net.ssl.SSLSocketFactory sSLSocketFactory) {
        java.lang.Object objL = i4.e.l(sSLSocketFactory, this.f4668c, "sslParameters");
        if (objL == null) {
            try {
                objL = i4.e.l(sSLSocketFactory, java.lang.Class.forName("com.google.android.gms.org.conscrypt.SSLParametersImpl", false, sSLSocketFactory.getClass().getClassLoader()), "sslParameters");
            } catch (java.lang.ClassNotFoundException unused) {
                return super.m(sSLSocketFactory);
            }
        }
        javax.net.ssl.X509TrustManager x509TrustManager = (javax.net.ssl.X509TrustManager) i4.e.l(objL, javax.net.ssl.X509TrustManager.class, "x509TrustManager");
        return x509TrustManager != null ? x509TrustManager : (javax.net.ssl.X509TrustManager) i4.e.l(objL, javax.net.ssl.X509TrustManager.class, "trustManager");
    }
}
