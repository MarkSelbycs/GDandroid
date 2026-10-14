package c4;

/* JADX INFO: compiled from: Response.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a0 implements java.io.Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.y f3030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c4.w f3031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3032c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.String f3033d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c4.p f3034e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final c4.q f3035f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final c4.b0 f3036g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final c4.a0 f3037h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final c4.a0 f3038i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final c4.a0 f3039o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final long f3040p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final long f3041q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public volatile c4.d f3042r;

    /* JADX INFO: compiled from: Response.java */
    public static /* synthetic */ class a {
    }

    /* JADX INFO: compiled from: Response.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public c4.y f3043a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public c4.w f3044b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f3045c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public java.lang.String f3046d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public c4.p f3047e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public c4.q.b f3048f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public c4.b0 f3049g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public c4.a0 f3050h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public c4.a0 f3051i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public c4.a0 f3052j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public long f3053k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public long f3054l;

        public /* synthetic */ b(c4.a0 a0Var, c4.a0.a aVar) {
            this(a0Var);
        }

        public c4.a0.b A(java.lang.String str) {
            this.f3048f.g(str);
            return this;
        }

        public c4.a0.b B(c4.y yVar) {
            this.f3043a = yVar;
            return this;
        }

        public c4.a0.b C(long j5) {
            this.f3053k = j5;
            return this;
        }

        public c4.a0.b m(java.lang.String str, java.lang.String str2) {
            this.f3048f.b(str, str2);
            return this;
        }

        public c4.a0.b n(c4.b0 b0Var) {
            this.f3049g = b0Var;
            return this;
        }

        public c4.a0 o() {
            if (this.f3043a == null) {
                throw new java.lang.IllegalStateException("request == null");
            }
            if (this.f3044b == null) {
                throw new java.lang.IllegalStateException("protocol == null");
            }
            if (this.f3045c >= 0) {
                return new c4.a0(this, null);
            }
            throw new java.lang.IllegalStateException("code < 0: " + this.f3045c);
        }

        public c4.a0.b p(c4.a0 a0Var) {
            if (a0Var != null) {
                r("cacheResponse", a0Var);
            }
            this.f3051i = a0Var;
            return this;
        }

        public final void q(c4.a0 a0Var) {
            if (a0Var.f3036g != null) {
                throw new java.lang.IllegalArgumentException("priorResponse.body != null");
            }
        }

        public final void r(java.lang.String str, c4.a0 a0Var) {
            if (a0Var.f3036g != null) {
                throw new java.lang.IllegalArgumentException(str + ".body != null");
            }
            if (a0Var.f3037h != null) {
                throw new java.lang.IllegalArgumentException(str + ".networkResponse != null");
            }
            if (a0Var.f3038i != null) {
                throw new java.lang.IllegalArgumentException(str + ".cacheResponse != null");
            }
            if (a0Var.f3039o == null) {
                return;
            }
            throw new java.lang.IllegalArgumentException(str + ".priorResponse != null");
        }

        public c4.a0.b s(int i5) {
            this.f3045c = i5;
            return this;
        }

        public c4.a0.b t(c4.p pVar) {
            this.f3047e = pVar;
            return this;
        }

        public c4.a0.b u(c4.q qVar) {
            this.f3048f = qVar.e();
            return this;
        }

        public c4.a0.b v(java.lang.String str) {
            this.f3046d = str;
            return this;
        }

        public c4.a0.b w(c4.a0 a0Var) {
            if (a0Var != null) {
                r("networkResponse", a0Var);
            }
            this.f3050h = a0Var;
            return this;
        }

        public c4.a0.b x(c4.a0 a0Var) {
            if (a0Var != null) {
                q(a0Var);
            }
            this.f3052j = a0Var;
            return this;
        }

        public c4.a0.b y(c4.w wVar) {
            this.f3044b = wVar;
            return this;
        }

        public c4.a0.b z(long j5) {
            this.f3054l = j5;
            return this;
        }

        public b() {
            this.f3045c = -1;
            this.f3048f = new c4.q.b();
        }

        public b(c4.a0 a0Var) {
            this.f3045c = -1;
            this.f3043a = a0Var.f3030a;
            this.f3044b = a0Var.f3031b;
            this.f3045c = a0Var.f3032c;
            this.f3046d = a0Var.f3033d;
            this.f3047e = a0Var.f3034e;
            this.f3048f = a0Var.f3035f.e();
            this.f3049g = a0Var.f3036g;
            this.f3050h = a0Var.f3037h;
            this.f3051i = a0Var.f3038i;
            this.f3052j = a0Var.f3039o;
            this.f3053k = a0Var.f3040p;
            this.f3054l = a0Var.f3041q;
        }
    }

    public /* synthetic */ a0(c4.a0.b bVar, c4.a0.a aVar) {
        this(bVar);
    }

    public java.lang.String C(java.lang.String str) {
        return H(str, null);
    }

    public java.lang.String H(java.lang.String str, java.lang.String str2) {
        java.lang.String strA = this.f3035f.a(str);
        return strA != null ? strA : str2;
    }

    public c4.q I() {
        return this.f3035f;
    }

    public c4.a0.b K() {
        return new c4.a0.b(this, null);
    }

    public long M() {
        return this.f3041q;
    }

    public c4.y P() {
        return this.f3030a;
    }

    public long R() {
        return this.f3040p;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3036g.close();
    }

    public java.lang.String toString() {
        return "Response{protocol=" + this.f3031b + ", code=" + this.f3032c + ", message=" + this.f3033d + ", url=" + this.f3030a.m() + '}';
    }

    public c4.b0 u() {
        return this.f3036g;
    }

    public c4.d x() {
        c4.d dVar = this.f3042r;
        if (dVar != null) {
            return dVar;
        }
        c4.d dVarK = c4.d.k(this.f3035f);
        this.f3042r = dVarK;
        return dVarK;
    }

    public int y() {
        return this.f3032c;
    }

    public c4.p z() {
        return this.f3034e;
    }

    public a0(c4.a0.b bVar) {
        this.f3030a = bVar.f3043a;
        this.f3031b = bVar.f3044b;
        this.f3032c = bVar.f3045c;
        this.f3033d = bVar.f3046d;
        this.f3034e = bVar.f3047e;
        this.f3035f = bVar.f3048f.e();
        this.f3036g = bVar.f3049g;
        this.f3037h = bVar.f3050h;
        this.f3038i = bVar.f3051i;
        this.f3039o = bVar.f3052j;
        this.f3040p = bVar.f3053k;
        this.f3041q = bVar.f3054l;
    }
}
