package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class al extends java.net.ProxySelector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static com.msec.al f3653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final java.net.Proxy f3654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final java.net.ProxySelector f3655c;

    private al(java.net.ProxySelector proxySelector, int i5) {
        this.f3655c = proxySelector;
        this.f3654b = new java.net.Proxy(java.net.Proxy.Type.HTTP, new java.net.InetSocketAddress(com.msec.vvv.a(1881), i5));
    }

    public static java.net.ProxySelector a() {
        return f3653a;
    }

    public static boolean a(int i5) {
        return ((java.lang.Boolean) com.msec.vvv.a(1735, new java.lang.Object[]{java.lang.Integer.valueOf(i5)})).booleanValue();
    }

    public static java.net.Proxy b() {
        com.msec.al alVar = f3653a;
        if (alVar == null) {
            return null;
        }
        return alVar.f3654b;
    }

    @Override // java.net.ProxySelector
    public void connectFailed(java.net.URI uri, java.net.SocketAddress socketAddress, java.io.IOException iOException) {
        this.f3655c.connectFailed(uri, socketAddress, iOException);
    }

    @Override // java.net.ProxySelector
    public java.util.List<java.net.Proxy> select(java.net.URI uri) {
        return (java.util.List) com.msec.vvv.a(1734, new java.lang.Object[]{this, uri});
    }
}
