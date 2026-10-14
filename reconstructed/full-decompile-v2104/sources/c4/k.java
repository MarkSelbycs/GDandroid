package c4;

/* JADX INFO: compiled from: ConnectionSpec.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c4.h[] f3157e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c4.k f3158f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final c4.k f3159g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final c4.k f3160h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f3161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f3162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.String[] f3163c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.String[] f3164d;

    /* JADX INFO: compiled from: ConnectionSpec.java */
    public static /* synthetic */ class a {
    }

    static {
        c4.h[] hVarArr = {c4.h.M0, c4.h.Q0, c4.h.Y, c4.h.f3125o0, c4.h.f3123n0, c4.h.f3143x0, c4.h.f3145y0, c4.h.H, c4.h.L, c4.h.W, c4.h.F, c4.h.J, c4.h.f3114j};
        f3157e = hVarArr;
        c4.k.b bVarF = new c4.k.b(true).f(hVarArr);
        c4.d0 d0Var = c4.d0.TLS_1_0;
        c4.k kVarE = bVarF.i(c4.d0.TLS_1_2, c4.d0.TLS_1_1, d0Var).h(true).e();
        f3158f = kVarE;
        f3159g = new c4.k.b(kVarE).i(d0Var).h(true).e();
        f3160h = new c4.k.b(false).e();
    }

    public /* synthetic */ k(c4.k.b bVar, c4.k.a aVar) {
        this(bVar);
    }

    public static boolean i(java.lang.String[] strArr, java.lang.String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (java.lang.String str : strArr) {
                if (d4.c.p(strArr2, str) != -1) {
                    return true;
                }
            }
        }
        return false;
    }

    public void e(javax.net.ssl.SSLSocket sSLSocket, boolean z4) {
        c4.k kVarJ = j(sSLSocket, z4);
        java.lang.String[] strArr = kVarJ.f3164d;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        java.lang.String[] strArr2 = kVarJ.f3163c;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof c4.k)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        c4.k kVar = (c4.k) obj;
        boolean z4 = this.f3161a;
        if (z4 != kVar.f3161a) {
            return false;
        }
        return !z4 || (java.util.Arrays.equals(this.f3163c, kVar.f3163c) && java.util.Arrays.equals(this.f3164d, kVar.f3164d) && this.f3162b == kVar.f3162b);
    }

    public java.util.List<c4.h> f() {
        java.lang.String[] strArr = this.f3163c;
        if (strArr == null) {
            return null;
        }
        c4.h[] hVarArr = new c4.h[strArr.length];
        int i5 = 0;
        while (true) {
            java.lang.String[] strArr2 = this.f3163c;
            if (i5 >= strArr2.length) {
                return d4.c.o(hVarArr);
            }
            hVarArr[i5] = c4.h.a(strArr2[i5]);
            i5++;
        }
    }

    public boolean g(javax.net.ssl.SSLSocket sSLSocket) {
        if (!this.f3161a) {
            return false;
        }
        java.lang.String[] strArr = this.f3164d;
        if (strArr != null && !i(strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        java.lang.String[] strArr2 = this.f3163c;
        return strArr2 == null || i(strArr2, sSLSocket.getEnabledCipherSuites());
    }

    public boolean h() {
        return this.f3161a;
    }

    public int hashCode() {
        if (this.f3161a) {
            return ((((527 + java.util.Arrays.hashCode(this.f3163c)) * 31) + java.util.Arrays.hashCode(this.f3164d)) * 31) + (!this.f3162b ? 1 : 0);
        }
        return 17;
    }

    public final c4.k j(javax.net.ssl.SSLSocket sSLSocket, boolean z4) {
        java.lang.String[] strArr = this.f3163c;
        java.lang.String[] enabledCipherSuites = strArr != null ? (java.lang.String[]) d4.c.r(java.lang.String.class, strArr, sSLSocket.getEnabledCipherSuites()) : sSLSocket.getEnabledCipherSuites();
        java.lang.String[] strArr2 = this.f3164d;
        java.lang.String[] enabledProtocols = strArr2 != null ? (java.lang.String[]) d4.c.r(java.lang.String.class, strArr2, sSLSocket.getEnabledProtocols()) : sSLSocket.getEnabledProtocols();
        if (z4 && d4.c.p(sSLSocket.getSupportedCipherSuites(), "TLS_FALLBACK_SCSV") != -1) {
            enabledCipherSuites = d4.c.e(enabledCipherSuites, "TLS_FALLBACK_SCSV");
        }
        return new c4.k.b(this).g(enabledCipherSuites).j(enabledProtocols).e();
    }

    public boolean k() {
        return this.f3162b;
    }

    public java.util.List<c4.d0> l() {
        java.lang.String[] strArr = this.f3164d;
        if (strArr == null) {
            return null;
        }
        c4.d0[] d0VarArr = new c4.d0[strArr.length];
        int i5 = 0;
        while (true) {
            java.lang.String[] strArr2 = this.f3164d;
            if (i5 >= strArr2.length) {
                return d4.c.o(d0VarArr);
            }
            d0VarArr[i5] = c4.d0.b(strArr2[i5]);
            i5++;
        }
    }

    public java.lang.String toString() {
        if (!this.f3161a) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + (this.f3163c != null ? f().toString() : "[all enabled]") + ", tlsVersions=" + (this.f3164d != null ? l().toString() : "[all enabled]") + ", supportsTlsExtensions=" + this.f3162b + ")";
    }

    /* JADX INFO: compiled from: ConnectionSpec.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f3165a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public java.lang.String[] f3166b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public java.lang.String[] f3167c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f3168d;

        public b(boolean z4) {
            this.f3165a = z4;
        }

        public c4.k e() {
            return new c4.k(this, null);
        }

        public c4.k.b f(c4.h... hVarArr) {
            if (!this.f3165a) {
                throw new java.lang.IllegalStateException("no cipher suites for cleartext connections");
            }
            java.lang.String[] strArr = new java.lang.String[hVarArr.length];
            for (int i5 = 0; i5 < hVarArr.length; i5++) {
                strArr[i5] = hVarArr[i5].f3148a;
            }
            return g(strArr);
        }

        public c4.k.b g(java.lang.String... strArr) {
            if (!this.f3165a) {
                throw new java.lang.IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new java.lang.IllegalArgumentException("At least one cipher suite is required");
            }
            this.f3166b = (java.lang.String[]) strArr.clone();
            return this;
        }

        public c4.k.b h(boolean z4) {
            if (!this.f3165a) {
                throw new java.lang.IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.f3168d = z4;
            return this;
        }

        public c4.k.b i(c4.d0... d0VarArr) {
            if (!this.f3165a) {
                throw new java.lang.IllegalStateException("no TLS versions for cleartext connections");
            }
            java.lang.String[] strArr = new java.lang.String[d0VarArr.length];
            for (int i5 = 0; i5 < d0VarArr.length; i5++) {
                strArr[i5] = d0VarArr[i5].f3088a;
            }
            return j(strArr);
        }

        public c4.k.b j(java.lang.String... strArr) {
            if (!this.f3165a) {
                throw new java.lang.IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new java.lang.IllegalArgumentException("At least one TLS version is required");
            }
            this.f3167c = (java.lang.String[]) strArr.clone();
            return this;
        }

        public b(c4.k kVar) {
            this.f3165a = kVar.f3161a;
            this.f3166b = kVar.f3163c;
            this.f3167c = kVar.f3164d;
            this.f3168d = kVar.f3162b;
        }
    }

    public k(c4.k.b bVar) {
        this.f3161a = bVar.f3165a;
        this.f3163c = bVar.f3166b;
        this.f3164d = bVar.f3167c;
        this.f3162b = bVar.f3168d;
    }
}
