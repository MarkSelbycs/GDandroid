package f4;

/* JADX INFO: compiled from: RealConnection.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c extends g4.d.i implements c4.i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c4.c0 f4246b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.net.Socket f4247c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.net.Socket f4248d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public c4.p f4249e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public c4.w f4250f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile g4.d f4251g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4252h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public okio.BufferedSource f4253i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public okio.BufferedSink f4254j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4255k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f4257m;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final java.util.List<java.lang.ref.Reference<f4.g>> f4256l = new java.util.ArrayList();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f4258n = Long.MAX_VALUE;

    public c(c4.c0 c0Var) {
        this.f4246b = c0Var;
    }

    @Override // c4.i
    public c4.c0 a() {
        return this.f4246b;
    }

    @Override // g4.d.i
    public void b(g4.d dVar) {
        this.f4255k = dVar.Z();
    }

    @Override // g4.d.i
    public void c(g4.e eVar) throws java.io.IOException {
        eVar.l(g4.a.REFUSED_STREAM);
    }

    public final void d(int i5, int i6, int i7, f4.b bVar) throws java.lang.Throwable {
        g(i5, i6);
        k(i6, i7, bVar);
    }

    public final void e(int i5, int i6, int i7, f4.b bVar) throws java.lang.Throwable {
        c4.y yVarJ = j();
        c4.r rVarM = yVarJ.m();
        int i8 = 0;
        while (true) {
            i8++;
            if (i8 > 21) {
                throw new java.net.ProtocolException("Too many tunnel connections attempted: 21");
            }
            g(i5, i6);
            yVarJ = i(i6, i7, yVarJ, rVarM);
            if (yVarJ == null) {
                k(i6, i7, bVar);
                return;
            }
            d4.c.d(this.f4247c);
            this.f4247c = null;
            this.f4254j = null;
            this.f4253i = null;
        }
    }

    public void f(int i5, int i6, int i7, java.util.List<c4.k> list, boolean z4) {
        if (this.f4250f != null) {
            throw new java.lang.IllegalStateException("already connected");
        }
        f4.b bVar = new f4.b(list);
        if (this.f4246b.a().j() == null) {
            if (!list.contains(c4.k.f3160h)) {
                throw new f4.e(new java.net.UnknownServiceException("CLEARTEXT communication not enabled for client"));
            }
            java.lang.String strO = this.f4246b.a().k().o();
            if (!i4.e.h().j(strO)) {
                throw new f4.e(new java.net.UnknownServiceException("CLEARTEXT communication to " + strO + " not permitted by network security policy"));
            }
        }
        f4.e eVar = null;
        while (this.f4250f == null) {
            try {
                if (this.f4246b.c()) {
                    e(i5, i6, i7, bVar);
                } else {
                    d(i5, i6, i7, bVar);
                }
            } catch (java.io.IOException e5) {
                d4.c.d(this.f4248d);
                d4.c.d(this.f4247c);
                this.f4248d = null;
                this.f4247c = null;
                this.f4253i = null;
                this.f4254j = null;
                this.f4249e = null;
                this.f4250f = null;
                if (eVar == null) {
                    eVar = new f4.e(e5);
                } else {
                    eVar.b(e5);
                }
                if (!z4) {
                    throw eVar;
                }
                if (!bVar.b(e5)) {
                    throw eVar;
                }
            }
        }
    }

    public final void g(int i5, int i6) throws java.io.IOException {
        java.net.Proxy proxyB = this.f4246b.b();
        java.net.Socket socketCreateSocket = (proxyB.type() == java.net.Proxy.Type.DIRECT || proxyB.type() == java.net.Proxy.Type.HTTP) ? this.f4246b.a().i().createSocket() : new java.net.Socket(proxyB);
        this.f4247c = socketCreateSocket;
        socketCreateSocket.setSoTimeout(i6);
        try {
            i4.e.h().f(this.f4247c, this.f4246b.d(), i5);
            this.f4253i = okio.Okio.buffer(okio.Okio.source(this.f4247c));
            this.f4254j = okio.Okio.buffer(okio.Okio.sink(this.f4247c));
        } catch (java.net.ConnectException unused) {
            throw new java.net.ConnectException("Failed to connect to " + this.f4246b.d());
        }
    }

    public final void h(int i5, int i6, f4.b bVar) throws java.lang.Throwable {
        c4.a aVarA = this.f4246b.a();
        javax.net.ssl.SSLSocket sSLSocket = null;
        try {
            try {
                javax.net.ssl.SSLSocket sSLSocket2 = (javax.net.ssl.SSLSocket) aVarA.j().createSocket(this.f4247c, aVarA.k().o(), aVarA.k().A(), true);
                try {
                    c4.k kVarA = bVar.a(sSLSocket2);
                    if (kVarA.k()) {
                        i4.e.h().e(sSLSocket2, aVarA.k().o(), aVarA.e());
                    }
                    sSLSocket2.startHandshake();
                    c4.p pVarB = c4.p.b(sSLSocket2.getSession());
                    if (aVarA.d().verify(aVarA.k().o(), sSLSocket2.getSession())) {
                        aVarA.a().a(aVarA.k().o(), pVarB.c());
                        java.lang.String strI = kVarA.k() ? i4.e.h().i(sSLSocket2) : null;
                        this.f4248d = sSLSocket2;
                        this.f4253i = okio.Okio.buffer(okio.Okio.source(sSLSocket2));
                        this.f4254j = okio.Okio.buffer(okio.Okio.sink(this.f4248d));
                        this.f4249e = pVarB;
                        this.f4250f = strI != null ? c4.w.b(strI) : c4.w.HTTP_1_1;
                        i4.e.h().a(sSLSocket2);
                        return;
                    }
                    java.security.cert.X509Certificate x509Certificate = (java.security.cert.X509Certificate) pVarB.c().get(0);
                    throw new javax.net.ssl.SSLPeerUnverifiedException("Hostname " + aVarA.k().o() + " not verified:\n    certificate: " + c4.g.c(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + j4.d.a(x509Certificate));
                } catch (java.lang.AssertionError e5) {
                    e = e5;
                    if (!d4.c.s(e)) {
                        throw e;
                    }
                    throw new java.io.IOException(e);
                } catch (java.lang.Throwable th) {
                    th = th;
                    sSLSocket = sSLSocket2;
                    if (sSLSocket != null) {
                        i4.e.h().a(sSLSocket);
                    }
                    d4.c.d(sSLSocket);
                    throw th;
                }
            } catch (java.lang.AssertionError e6) {
                e = e6;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    public final c4.y i(int i5, int i6, c4.y yVar, c4.r rVar) throws java.io.IOException {
        java.lang.String str = "CONNECT " + d4.c.m(rVar, true) + " HTTP/1.1";
        while (true) {
            h4.c cVar = new h4.c(null, null, this.f4253i, this.f4254j);
            java.util.concurrent.TimeUnit timeUnit = java.util.concurrent.TimeUnit.MILLISECONDS;
            this.f4253i.timeout().timeout(i5, timeUnit);
            this.f4254j.timeout().timeout(i6, timeUnit);
            cVar.v(yVar.i(), str);
            cVar.c();
            c4.a0 a0VarO = cVar.u().B(yVar).o();
            long jB = h4.f.b(a0VarO);
            if (jB == -1) {
                jB = 0;
            }
            okio.Source sourceR = cVar.r(jB);
            d4.c.v(sourceR, Integer.MAX_VALUE, timeUnit);
            sourceR.close();
            int iY = a0VarO.y();
            if (iY == 200) {
                if (this.f4253i.buffer().exhausted() && this.f4254j.buffer().exhausted()) {
                    return null;
                }
                throw new java.io.IOException("TLS tunnel buffered too many bytes!");
            }
            if (iY != 407) {
                throw new java.io.IOException("Unexpected response code for CONNECT: " + a0VarO.y());
            }
            c4.y yVarA = this.f4246b.a().g().a(this.f4246b, a0VarO);
            if (yVarA == null) {
                throw new java.io.IOException("Failed to authenticate with proxy");
            }
            if ("close".equalsIgnoreCase(a0VarO.C("Connection"))) {
                return yVarA;
            }
            yVar = yVarA;
        }
    }

    public final c4.y j() {
        return new c4.y.b().n(this.f4246b.a().k()).i("Host", d4.c.m(this.f4246b.a().k(), true)).i("Proxy-Connection", "Keep-Alive").i("User-Agent", d4.d.a()).g();
    }

    public final void k(int i5, int i6, f4.b bVar) throws java.lang.Throwable {
        if (this.f4246b.a().j() != null) {
            h(i5, i6, bVar);
        } else {
            this.f4250f = c4.w.HTTP_1_1;
            this.f4248d = this.f4247c;
        }
        c4.w wVar = this.f4250f;
        if (wVar != c4.w.SPDY_3 && wVar != c4.w.HTTP_2) {
            this.f4255k = 1;
            return;
        }
        this.f4248d.setSoTimeout(0);
        g4.d dVarI = new g4.d.h(true).l(this.f4248d, this.f4246b.a().k().o(), this.f4253i, this.f4254j).k(this.f4250f).j(this).i();
        dVarI.w0();
        this.f4255k = dVarI.Z();
        this.f4251g = dVarI;
    }

    public c4.p l() {
        return this.f4249e;
    }

    public boolean m(boolean z4) {
        if (this.f4248d.isClosed() || this.f4248d.isInputShutdown() || this.f4248d.isOutputShutdown()) {
            return false;
        }
        if (this.f4251g == null && z4) {
            try {
                int soTimeout = this.f4248d.getSoTimeout();
                try {
                    this.f4248d.setSoTimeout(1);
                    if (this.f4253i.exhausted()) {
                        this.f4248d.setSoTimeout(soTimeout);
                        return false;
                    }
                    this.f4248d.setSoTimeout(soTimeout);
                    return true;
                } catch (java.lang.Throwable th) {
                    this.f4248d.setSoTimeout(soTimeout);
                    throw th;
                }
            } catch (java.net.SocketTimeoutException unused) {
            } catch (java.io.IOException unused2) {
                return false;
            }
        }
        return true;
    }

    public boolean n() {
        return this.f4251g != null;
    }

    public java.net.Socket o() {
        return this.f4248d;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("Connection{");
        sb.append(this.f4246b.a().k().o());
        sb.append(":");
        sb.append(this.f4246b.a().k().A());
        sb.append(", proxy=");
        sb.append(this.f4246b.b());
        sb.append(" hostAddress=");
        sb.append(this.f4246b.d());
        sb.append(" cipherSuite=");
        c4.p pVar = this.f4249e;
        sb.append(pVar != null ? pVar.a() : "none");
        sb.append(" protocol=");
        sb.append(this.f4250f);
        sb.append('}');
        return sb.toString();
    }
}
