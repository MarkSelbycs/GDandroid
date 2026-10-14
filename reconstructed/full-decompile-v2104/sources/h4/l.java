package h4;

/* JADX INFO: compiled from: RetryAndFollowUpInterceptor.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class l implements c4.s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.v f4626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public f4.g f4627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4628c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f4629d;

    public l(c4.v vVar) {
        this.f4626a = vVar;
    }

    @Override // c4.s
    public c4.a0 a(c4.s.a aVar) throws java.io.IOException {
        c4.y yVarB = aVar.b();
        this.f4627b = new f4.g(this.f4626a.g(), b(yVarB.m()));
        int i5 = 0;
        c4.a0 a0Var = null;
        while (!this.f4629d) {
            try {
                try {
                    c4.a0 a0VarD = ((h4.i) aVar).d(yVarB, this.f4627b, null, null);
                    if (a0Var != null) {
                        a0VarD = a0VarD.K().x(a0Var.K().n(null).o()).o();
                    }
                    a0Var = a0VarD;
                    yVarB = c(a0Var);
                    if (yVarB == null) {
                        if (!this.f4628c) {
                            this.f4627b.i();
                        }
                        return a0Var;
                    }
                    d4.c.c(a0Var.u());
                    i5++;
                    if (i5 > 20) {
                        this.f4627b.i();
                        throw new java.net.ProtocolException("Too many follow-up requests: " + i5);
                    }
                    yVarB.f();
                    if (!h(a0Var, yVarB.m())) {
                        this.f4627b.i();
                        this.f4627b = new f4.g(this.f4626a.g(), b(yVarB.m()));
                    } else if (this.f4627b.l() != null) {
                        throw new java.lang.IllegalStateException("Closing the body of " + a0Var + " didn't close its backing stream. Bad interceptor?");
                    }
                } catch (f4.e e5) {
                    if (!g(e5.e(), true, yVarB)) {
                        throw e5.e();
                    }
                } catch (java.io.IOException e6) {
                    if (!g(e6, false, yVarB)) {
                        throw e6;
                    }
                }
            } catch (java.lang.Throwable th) {
                this.f4627b.m(null);
                this.f4627b.i();
                throw th;
            }
        }
        this.f4627b.i();
        throw new java.io.IOException("Canceled");
    }

    public final c4.a b(c4.r rVar) {
        javax.net.ssl.SSLSocketFactory sSLSocketFactory;
        javax.net.ssl.HostnameVerifier hostnameVerifierU;
        c4.g gVarE;
        if (rVar.p()) {
            javax.net.ssl.SSLSocketFactory sSLSocketFactoryI = this.f4626a.I();
            hostnameVerifierU = this.f4626a.u();
            sSLSocketFactory = sSLSocketFactoryI;
            gVarE = this.f4626a.e();
        } else {
            sSLSocketFactory = null;
            hostnameVerifierU = null;
            gVarE = null;
        }
        return new c4.a(rVar.o(), rVar.A(), this.f4626a.m(), this.f4626a.H(), sSLSocketFactory, hostnameVerifierU, gVarE, this.f4626a.D(), this.f4626a.B(), this.f4626a.A(), this.f4626a.h(), this.f4626a.E());
    }

    public final c4.y c(c4.a0 a0Var) throws java.io.IOException {
        java.lang.String strC;
        c4.r rVarD;
        if (a0Var == null) {
            throw new java.lang.IllegalStateException();
        }
        f4.c cVarB = this.f4627b.b();
        c4.c0 c0VarA = cVarB != null ? cVarB.a() : null;
        int iY = a0Var.y();
        java.lang.String strK = a0Var.P().k();
        if (iY == 307 || iY == 308) {
            if (!strK.equals("GET") && !strK.equals("HEAD")) {
                return null;
            }
        } else {
            if (iY == 401) {
                return this.f4626a.d().a(c0VarA, a0Var);
            }
            if (iY == 407) {
                if ((c0VarA != null ? c0VarA.b() : this.f4626a.B()).type() == java.net.Proxy.Type.HTTP) {
                    return this.f4626a.D().a(c0VarA, a0Var);
                }
                throw new java.net.ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            }
            if (iY == 408) {
                a0Var.P().f();
                return a0Var.P();
            }
            switch (iY) {
                case com.cndatacom.sdk.portal.entity.ConfigInfo.KEEP_INTERVAL_DEF /* 300 */:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    return null;
            }
        }
        if (!this.f4626a.p() || (strC = a0Var.C("Location")) == null || (rVarD = a0Var.P().m().D(strC)) == null) {
            return null;
        }
        if (!rVarD.E().equals(a0Var.P().m().E()) && !this.f4626a.t()) {
            return null;
        }
        c4.y.b bVarL = a0Var.P().l();
        if (h4.g.b(strK)) {
            if (h4.g.c(strK)) {
                bVarL.k("GET", null);
            } else {
                bVarL.k(strK, null);
            }
            bVarL.m("Transfer-Encoding");
            bVarL.m("Content-Length");
            bVarL.m("Content-Type");
        }
        if (!h(a0Var, rVarD)) {
            bVarL.m("Authorization");
        }
        return bVarL.n(rVarD).g();
    }

    public boolean d() {
        return this.f4629d;
    }

    public boolean e() {
        return this.f4628c;
    }

    public final boolean f(java.io.IOException iOException, boolean z4) {
        if (iOException instanceof java.net.ProtocolException) {
            return false;
        }
        if (iOException instanceof java.io.InterruptedIOException) {
            return (iOException instanceof java.net.SocketTimeoutException) && z4;
        }
        return (((iOException instanceof javax.net.ssl.SSLHandshakeException) && (iOException.getCause() instanceof java.security.cert.CertificateException)) || (iOException instanceof javax.net.ssl.SSLPeerUnverifiedException)) ? false : true;
    }

    public final boolean g(java.io.IOException iOException, boolean z4, c4.y yVar) {
        this.f4627b.m(iOException);
        if (!this.f4626a.G()) {
            return false;
        }
        if (!z4) {
            yVar.f();
        }
        return f(iOException, z4) && this.f4627b.f();
    }

    public final boolean h(c4.a0 a0Var, c4.r rVar) {
        c4.r rVarM = a0Var.P().m();
        return rVarM.o().equals(rVar.o()) && rVarM.A() == rVar.A() && rVarM.E().equals(rVar.E());
    }
}
