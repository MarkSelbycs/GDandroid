package c4;

/* JADX INFO: compiled from: Address.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.r f3019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c4.o f3020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final javax.net.SocketFactory f3021c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c4.b f3022d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.util.List<c4.w> f3023e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final java.util.List<c4.k> f3024f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.net.ProxySelector f3025g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final java.net.Proxy f3026h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final javax.net.ssl.SSLSocketFactory f3027i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final javax.net.ssl.HostnameVerifier f3028j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final c4.g f3029k;

    public a(java.lang.String str, int i5, c4.o oVar, javax.net.SocketFactory socketFactory, javax.net.ssl.SSLSocketFactory sSLSocketFactory, javax.net.ssl.HostnameVerifier hostnameVerifier, c4.g gVar, c4.b bVar, java.net.Proxy proxy, java.util.List<c4.w> list, java.util.List<c4.k> list2, java.net.ProxySelector proxySelector) {
        this.f3019a = new c4.r.b().t(sSLSocketFactory != null ? "https" : "http").h(str).o(i5).b();
        java.util.Objects.requireNonNull(oVar, "dns == null");
        this.f3020b = oVar;
        java.util.Objects.requireNonNull(socketFactory, "socketFactory == null");
        this.f3021c = socketFactory;
        java.util.Objects.requireNonNull(bVar, "proxyAuthenticator == null");
        this.f3022d = bVar;
        java.util.Objects.requireNonNull(list, "protocols == null");
        this.f3023e = d4.c.n(list);
        java.util.Objects.requireNonNull(list2, "connectionSpecs == null");
        this.f3024f = d4.c.n(list2);
        java.util.Objects.requireNonNull(proxySelector, "proxySelector == null");
        this.f3025g = proxySelector;
        this.f3026h = proxy;
        this.f3027i = sSLSocketFactory;
        this.f3028j = hostnameVerifier;
        this.f3029k = gVar;
    }

    public c4.g a() {
        return this.f3029k;
    }

    public java.util.List<c4.k> b() {
        return this.f3024f;
    }

    public c4.o c() {
        return this.f3020b;
    }

    public javax.net.ssl.HostnameVerifier d() {
        return this.f3028j;
    }

    public java.util.List<c4.w> e() {
        return this.f3023e;
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof c4.a)) {
            return false;
        }
        c4.a aVar = (c4.a) obj;
        return this.f3019a.equals(aVar.f3019a) && this.f3020b.equals(aVar.f3020b) && this.f3022d.equals(aVar.f3022d) && this.f3023e.equals(aVar.f3023e) && this.f3024f.equals(aVar.f3024f) && this.f3025g.equals(aVar.f3025g) && d4.c.k(this.f3026h, aVar.f3026h) && d4.c.k(this.f3027i, aVar.f3027i) && d4.c.k(this.f3028j, aVar.f3028j) && d4.c.k(this.f3029k, aVar.f3029k);
    }

    public java.net.Proxy f() {
        return this.f3026h;
    }

    public c4.b g() {
        return this.f3022d;
    }

    public java.net.ProxySelector h() {
        return this.f3025g;
    }

    public int hashCode() {
        int iHashCode = (((((((((((527 + this.f3019a.hashCode()) * 31) + this.f3020b.hashCode()) * 31) + this.f3022d.hashCode()) * 31) + this.f3023e.hashCode()) * 31) + this.f3024f.hashCode()) * 31) + this.f3025g.hashCode()) * 31;
        java.net.Proxy proxy = this.f3026h;
        int iHashCode2 = (iHashCode + (proxy != null ? proxy.hashCode() : 0)) * 31;
        javax.net.ssl.SSLSocketFactory sSLSocketFactory = this.f3027i;
        int iHashCode3 = (iHashCode2 + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        javax.net.ssl.HostnameVerifier hostnameVerifier = this.f3028j;
        int iHashCode4 = (iHashCode3 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        c4.g gVar = this.f3029k;
        return iHashCode4 + (gVar != null ? gVar.hashCode() : 0);
    }

    public javax.net.SocketFactory i() {
        return this.f3021c;
    }

    public javax.net.ssl.SSLSocketFactory j() {
        return this.f3027i;
    }

    public c4.r k() {
        return this.f3019a;
    }
}
