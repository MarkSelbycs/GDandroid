package c4;

/* JADX INFO: compiled from: Route.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.a f3059a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.net.Proxy f3060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.net.InetSocketAddress f3061c;

    public c0(c4.a aVar, java.net.Proxy proxy, java.net.InetSocketAddress inetSocketAddress) {
        java.util.Objects.requireNonNull(aVar, "address == null");
        java.util.Objects.requireNonNull(proxy, "proxy == null");
        java.util.Objects.requireNonNull(inetSocketAddress, "inetSocketAddress == null");
        this.f3059a = aVar;
        this.f3060b = proxy;
        this.f3061c = inetSocketAddress;
    }

    public c4.a a() {
        return this.f3059a;
    }

    public java.net.Proxy b() {
        return this.f3060b;
    }

    public boolean c() {
        return this.f3059a.f3027i != null && this.f3060b.type() == java.net.Proxy.Type.HTTP;
    }

    public java.net.InetSocketAddress d() {
        return this.f3061c;
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof c4.c0)) {
            return false;
        }
        c4.c0 c0Var = (c4.c0) obj;
        return this.f3059a.equals(c0Var.f3059a) && this.f3060b.equals(c0Var.f3060b) && this.f3061c.equals(c0Var.f3061c);
    }

    public int hashCode() {
        return ((((527 + this.f3059a.hashCode()) * 31) + this.f3060b.hashCode()) * 31) + this.f3061c.hashCode();
    }
}
