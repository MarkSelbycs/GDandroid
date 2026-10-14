package f4;

/* JADX INFO: compiled from: RouteSelector.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.a f4262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f4.d f4263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.net.Proxy f4264c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.net.InetSocketAddress f4265d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4267f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4269h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.util.List<java.net.Proxy> f4266e = java.util.Collections.emptyList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public java.util.List<java.net.InetSocketAddress> f4268g = java.util.Collections.emptyList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final java.util.List<c4.c0> f4270i = new java.util.ArrayList();

    public f(c4.a aVar, f4.d dVar) {
        this.f4262a = aVar;
        this.f4263b = dVar;
        l(aVar.k(), aVar.f());
    }

    public static java.lang.String b(java.net.InetSocketAddress inetSocketAddress) {
        java.net.InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }

    public void a(c4.c0 c0Var, java.io.IOException iOException) {
        if (c0Var.b().type() != java.net.Proxy.Type.DIRECT && this.f4262a.h() != null) {
            this.f4262a.h().connectFailed(this.f4262a.k().F(), c0Var.b().address(), iOException);
        }
        this.f4263b.b(c0Var);
    }

    public boolean c() {
        return d() || f() || e();
    }

    public final boolean d() {
        return this.f4269h < this.f4268g.size();
    }

    public final boolean e() {
        return !this.f4270i.isEmpty();
    }

    public final boolean f() {
        return this.f4267f < this.f4266e.size();
    }

    public c4.c0 g() throws java.io.IOException {
        if (!d()) {
            if (!f()) {
                if (e()) {
                    return i();
                }
                throw new java.util.NoSuchElementException();
            }
            this.f4264c = j();
        }
        java.net.InetSocketAddress inetSocketAddressH = h();
        this.f4265d = inetSocketAddressH;
        c4.c0 c0Var = new c4.c0(this.f4262a, this.f4264c, inetSocketAddressH);
        if (!this.f4263b.c(c0Var)) {
            return c0Var;
        }
        this.f4270i.add(c0Var);
        return g();
    }

    public final java.net.InetSocketAddress h() throws java.io.IOException {
        if (d()) {
            java.util.List<java.net.InetSocketAddress> list = this.f4268g;
            int i5 = this.f4269h;
            this.f4269h = i5 + 1;
            return list.get(i5);
        }
        throw new java.net.SocketException("No route to " + this.f4262a.k().o() + "; exhausted inet socket addresses: " + this.f4268g);
    }

    public final c4.c0 i() {
        return this.f4270i.remove(0);
    }

    public final java.net.Proxy j() throws java.io.IOException {
        if (f()) {
            java.util.List<java.net.Proxy> list = this.f4266e;
            int i5 = this.f4267f;
            this.f4267f = i5 + 1;
            java.net.Proxy proxy = list.get(i5);
            k(proxy);
            return proxy;
        }
        throw new java.net.SocketException("No route to " + this.f4262a.k().o() + "; exhausted proxy configurations: " + this.f4266e);
    }

    public final void k(java.net.Proxy proxy) throws java.io.IOException {
        java.lang.String strO;
        int iA;
        this.f4268g = new java.util.ArrayList();
        if (proxy.type() == java.net.Proxy.Type.DIRECT || proxy.type() == java.net.Proxy.Type.SOCKS) {
            strO = this.f4262a.k().o();
            iA = this.f4262a.k().A();
        } else {
            java.net.SocketAddress socketAddressAddress = proxy.address();
            if (!(socketAddressAddress instanceof java.net.InetSocketAddress)) {
                throw new java.lang.IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + socketAddressAddress.getClass());
            }
            java.net.InetSocketAddress inetSocketAddress = (java.net.InetSocketAddress) socketAddressAddress;
            strO = b(inetSocketAddress);
            iA = inetSocketAddress.getPort();
        }
        if (iA < 1 || iA > 65535) {
            throw new java.net.SocketException("No route to " + strO + ":" + iA + "; port is out of range");
        }
        if (proxy.type() == java.net.Proxy.Type.SOCKS) {
            this.f4268g.add(java.net.InetSocketAddress.createUnresolved(strO, iA));
        } else {
            java.util.List<java.net.InetAddress> listLookup = this.f4262a.c().lookup(strO);
            int size = listLookup.size();
            for (int i5 = 0; i5 < size; i5++) {
                this.f4268g.add(new java.net.InetSocketAddress(listLookup.get(i5), iA));
            }
        }
        this.f4269h = 0;
    }

    public final void l(c4.r rVar, java.net.Proxy proxy) {
        if (proxy != null) {
            this.f4266e = java.util.Collections.singletonList(proxy);
        } else {
            this.f4266e = new java.util.ArrayList();
            java.util.List<java.net.Proxy> listSelect = this.f4262a.h().select(rVar.F());
            if (listSelect != null) {
                this.f4266e.addAll(listSelect);
            }
            this.f4266e.removeAll(java.util.Collections.singleton(java.net.Proxy.NO_PROXY));
            this.f4266e.add(java.net.Proxy.NO_PROXY);
        }
        this.f4267f = 0;
    }
}
