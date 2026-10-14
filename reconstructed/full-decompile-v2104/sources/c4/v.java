package c4;

/* JADX INFO: compiled from: OkHttpClient.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class v implements java.lang.Cloneable {
    public static final java.util.List<c4.w> D = d4.c.o(c4.w.HTTP_2, c4.w.SPDY_3, c4.w.HTTP_1_1);
    public static final java.util.List<c4.k> E = d4.c.o(c4.k.f3158f, c4.k.f3159g, c4.k.f3160h);
    public final int A;
    public final int B;
    public final int C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.n f3245a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.net.Proxy f3246b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.List<c4.w> f3247c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.List<c4.k> f3248d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.util.List<c4.s> f3249e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final java.util.List<c4.s> f3250f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.net.ProxySelector f3251g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final c4.m f3252h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final e4.d f3253i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final javax.net.SocketFactory f3254o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final javax.net.ssl.SSLSocketFactory f3255p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final j4.b f3256q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final javax.net.ssl.HostnameVerifier f3257r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final c4.g f3258s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final c4.b f3259t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final c4.b f3260u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final c4.j f3261v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final c4.o f3262w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final boolean f3263x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final boolean f3264y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final boolean f3265z;

    /* JADX INFO: compiled from: OkHttpClient.java */
    public static class a extends d4.a {
        @Override // d4.a
        public void a(c4.q.b bVar, java.lang.String str) {
            bVar.c(str);
        }

        @Override // d4.a
        public void b(c4.q.b bVar, java.lang.String str, java.lang.String str2) {
            bVar.d(str, str2);
        }

        @Override // d4.a
        public void c(c4.k kVar, javax.net.ssl.SSLSocket sSLSocket, boolean z4) {
            kVar.e(sSLSocket, z4);
        }

        @Override // d4.a
        public boolean d(c4.j jVar, f4.c cVar) {
            return jVar.b(cVar);
        }

        @Override // d4.a
        public f4.c e(c4.j jVar, c4.a aVar, f4.g gVar) {
            return jVar.c(aVar, gVar);
        }

        @Override // d4.a
        public void f(c4.j jVar, f4.c cVar) {
            jVar.e(cVar);
        }

        @Override // d4.a
        public f4.d g(c4.j jVar) {
            return jVar.f3154e;
        }
    }

    /* JADX INFO: compiled from: OkHttpClient.java */
    public static final class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public java.net.Proxy f3267b;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public e4.d f3274i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public javax.net.ssl.SSLSocketFactory f3276k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public j4.b f3277l;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public c4.b f3280o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public c4.b f3281p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public c4.j f3282q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public c4.o f3283r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public boolean f3284s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public boolean f3285t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public boolean f3286u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f3287v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f3288w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f3289x;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final java.util.List<c4.s> f3270e = new java.util.ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final java.util.List<c4.s> f3271f = new java.util.ArrayList();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public c4.n f3266a = new c4.n();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public java.util.List<c4.w> f3268c = c4.v.D;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public java.util.List<c4.k> f3269d = c4.v.E;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public java.net.ProxySelector f3272g = java.net.ProxySelector.getDefault();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public c4.m f3273h = c4.m.f3182a;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public javax.net.SocketFactory f3275j = javax.net.SocketFactory.getDefault();

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public javax.net.ssl.HostnameVerifier f3278m = j4.d.f4795a;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public c4.g f3279n = c4.g.f3089c;

        public b() {
            c4.b bVar = c4.b.f3055a;
            this.f3280o = bVar;
            this.f3281p = bVar;
            this.f3282q = new c4.j();
            this.f3283r = c4.o.f3190a;
            this.f3284s = true;
            this.f3285t = true;
            this.f3286u = true;
            this.f3287v = 10000;
            this.f3288w = 10000;
            this.f3289x = 10000;
        }

        public c4.v.b a(c4.s sVar) {
            this.f3271f.add(sVar);
            return this;
        }

        public c4.v b() {
            return new c4.v(this, null);
        }

        public c4.v.b c(c4.c cVar) {
            this.f3274i = null;
            return this;
        }

        public c4.v.b d(long j5, java.util.concurrent.TimeUnit timeUnit) {
            if (j5 < 0) {
                throw new java.lang.IllegalArgumentException("timeout < 0");
            }
            java.util.Objects.requireNonNull(timeUnit, "unit == null");
            long millis = timeUnit.toMillis(j5);
            if (millis > 2147483647L) {
                throw new java.lang.IllegalArgumentException("Timeout too large.");
            }
            if (millis == 0 && j5 > 0) {
                throw new java.lang.IllegalArgumentException("Timeout too small.");
            }
            this.f3287v = (int) millis;
            return this;
        }

        public c4.v.b e(java.util.List<c4.k> list) {
            this.f3269d = d4.c.n(list);
            return this;
        }

        public c4.v.b f(c4.m mVar) {
            java.util.Objects.requireNonNull(mVar, "cookieJar == null");
            this.f3273h = mVar;
            return this;
        }

        public c4.v.b g(c4.o oVar) {
            java.util.Objects.requireNonNull(oVar, "dns == null");
            this.f3283r = oVar;
            return this;
        }

        public c4.v.b h(boolean z4) {
            this.f3285t = z4;
            return this;
        }

        public c4.v.b i(long j5, java.util.concurrent.TimeUnit timeUnit) {
            if (j5 < 0) {
                throw new java.lang.IllegalArgumentException("timeout < 0");
            }
            java.util.Objects.requireNonNull(timeUnit, "unit == null");
            long millis = timeUnit.toMillis(j5);
            if (millis > 2147483647L) {
                throw new java.lang.IllegalArgumentException("Timeout too large.");
            }
            if (millis == 0 && j5 > 0) {
                throw new java.lang.IllegalArgumentException("Timeout too small.");
            }
            this.f3288w = (int) millis;
            return this;
        }

        public c4.v.b j(boolean z4) {
            this.f3286u = z4;
            return this;
        }

        public c4.v.b k(javax.net.ssl.SSLSocketFactory sSLSocketFactory) {
            java.util.Objects.requireNonNull(sSLSocketFactory, "sslSocketFactory == null");
            javax.net.ssl.X509TrustManager x509TrustManagerM = i4.e.h().m(sSLSocketFactory);
            if (x509TrustManagerM != null) {
                this.f3276k = sSLSocketFactory;
                this.f3277l = j4.b.b(x509TrustManagerM);
                return this;
            }
            throw new java.lang.IllegalStateException("Unable to extract the trust manager on " + i4.e.h() + ", sslSocketFactory is " + sSLSocketFactory.getClass());
        }

        public c4.v.b l(long j5, java.util.concurrent.TimeUnit timeUnit) {
            if (j5 < 0) {
                throw new java.lang.IllegalArgumentException("timeout < 0");
            }
            java.util.Objects.requireNonNull(timeUnit, "unit == null");
            long millis = timeUnit.toMillis(j5);
            if (millis > 2147483647L) {
                throw new java.lang.IllegalArgumentException("Timeout too large.");
            }
            if (millis == 0 && j5 > 0) {
                throw new java.lang.IllegalArgumentException("Timeout too small.");
            }
            this.f3289x = (int) millis;
            return this;
        }
    }

    static {
        d4.a.f3963a = new c4.v.a();
    }

    public /* synthetic */ v(c4.v.b bVar, c4.v.a aVar) {
        this(bVar);
    }

    public java.util.List<c4.w> A() {
        return this.f3247c;
    }

    public java.net.Proxy B() {
        return this.f3246b;
    }

    public c4.b D() {
        return this.f3259t;
    }

    public java.net.ProxySelector E() {
        return this.f3251g;
    }

    public int F() {
        return this.B;
    }

    public boolean G() {
        return this.f3265z;
    }

    public javax.net.SocketFactory H() {
        return this.f3254o;
    }

    public javax.net.ssl.SSLSocketFactory I() {
        return this.f3255p;
    }

    public final javax.net.ssl.SSLSocketFactory J(javax.net.ssl.X509TrustManager x509TrustManager) {
        try {
            javax.net.ssl.SSLContext sSLContext = javax.net.ssl.SSLContext.getInstance("TLS");
            sSLContext.init(null, new javax.net.ssl.TrustManager[]{x509TrustManager}, null);
            return sSLContext.getSocketFactory();
        } catch (java.security.GeneralSecurityException unused) {
            throw new java.lang.AssertionError();
        }
    }

    public final javax.net.ssl.X509TrustManager L() {
        try {
            javax.net.ssl.TrustManagerFactory trustManagerFactory = javax.net.ssl.TrustManagerFactory.getInstance(javax.net.ssl.TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((java.security.KeyStore) null);
            javax.net.ssl.TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1 && (trustManagers[0] instanceof javax.net.ssl.X509TrustManager)) {
                return (javax.net.ssl.X509TrustManager) trustManagers[0];
            }
            throw new java.lang.IllegalStateException("Unexpected default trust managers:" + java.util.Arrays.toString(trustManagers));
        } catch (java.security.GeneralSecurityException unused) {
            throw new java.lang.AssertionError();
        }
    }

    public int M() {
        return this.C;
    }

    public c4.b d() {
        return this.f3260u;
    }

    public c4.g e() {
        return this.f3258s;
    }

    public int f() {
        return this.A;
    }

    public c4.j g() {
        return this.f3261v;
    }

    public java.util.List<c4.k> h() {
        return this.f3248d;
    }

    public c4.m j() {
        return this.f3252h;
    }

    public c4.n k() {
        return this.f3245a;
    }

    public c4.o m() {
        return this.f3262w;
    }

    public boolean p() {
        return this.f3264y;
    }

    public boolean t() {
        return this.f3263x;
    }

    public javax.net.ssl.HostnameVerifier u() {
        return this.f3257r;
    }

    public java.util.List<c4.s> v() {
        return this.f3249e;
    }

    public e4.d w() {
        return this.f3253i;
    }

    public java.util.List<c4.s> x() {
        return this.f3250f;
    }

    public c4.e y(c4.y yVar) {
        return new c4.x(this, yVar);
    }

    public v() {
        this(new c4.v.b());
    }

    public v(c4.v.b bVar) {
        boolean z4;
        this.f3245a = bVar.f3266a;
        this.f3246b = bVar.f3267b;
        this.f3247c = bVar.f3268c;
        java.util.List<c4.k> list = bVar.f3269d;
        this.f3248d = list;
        this.f3249e = d4.c.n(bVar.f3270e);
        this.f3250f = d4.c.n(bVar.f3271f);
        this.f3251g = bVar.f3272g;
        this.f3252h = bVar.f3273h;
        this.f3253i = bVar.f3274i;
        this.f3254o = bVar.f3275j;
        java.util.Iterator<c4.k> it = list.iterator();
        loop0: while (true) {
            z4 = false;
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                } else {
                    z4 = (z4 || it.next().h()) ? true : z4;
                }
            }
        }
        javax.net.ssl.SSLSocketFactory sSLSocketFactory = bVar.f3276k;
        if (sSLSocketFactory == null && z4) {
            javax.net.ssl.X509TrustManager x509TrustManagerL = L();
            this.f3255p = J(x509TrustManagerL);
            this.f3256q = j4.b.b(x509TrustManagerL);
        } else {
            this.f3255p = sSLSocketFactory;
            this.f3256q = bVar.f3277l;
        }
        this.f3257r = bVar.f3278m;
        this.f3258s = bVar.f3279n.withCertificateChainCleaner(this.f3256q);
        this.f3259t = bVar.f3280o;
        this.f3260u = bVar.f3281p;
        this.f3261v = bVar.f3282q;
        this.f3262w = bVar.f3283r;
        this.f3263x = bVar.f3284s;
        this.f3264y = bVar.f3285t;
        this.f3265z = bVar.f3286u;
        this.A = bVar.f3287v;
        this.B = bVar.f3288w;
        this.C = bVar.f3289x;
    }
}
