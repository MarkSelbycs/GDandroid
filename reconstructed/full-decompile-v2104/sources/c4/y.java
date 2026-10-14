package c4;

/* JADX INFO: compiled from: Request.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.r f3300a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f3301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c4.q f3302c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c4.z f3303d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.lang.Object f3304e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile c4.d f3305f;

    /* JADX INFO: compiled from: Request.java */
    public static /* synthetic */ class a {
    }

    /* JADX INFO: compiled from: Request.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public c4.r f3306a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public java.lang.String f3307b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public c4.q.b f3308c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public c4.z f3309d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public java.lang.Object f3310e;

        public /* synthetic */ b(c4.y yVar, c4.y.a aVar) {
            this(yVar);
        }

        public c4.y.b f(java.lang.String str, java.lang.String str2) {
            this.f3308c.b(str, str2);
            return this;
        }

        public c4.y g() {
            if (this.f3306a != null) {
                return new c4.y(this, null);
            }
            throw new java.lang.IllegalStateException("url == null");
        }

        public c4.y.b h() {
            return k("GET", null);
        }

        public c4.y.b i(java.lang.String str, java.lang.String str2) {
            this.f3308c.h(str, str2);
            return this;
        }

        public c4.y.b j(c4.q qVar) {
            this.f3308c = qVar.e();
            return this;
        }

        public c4.y.b k(java.lang.String str, c4.z zVar) {
            java.util.Objects.requireNonNull(str, "method == null");
            if (str.length() == 0) {
                throw new java.lang.IllegalArgumentException("method.length() == 0");
            }
            if (zVar != null && !h4.g.b(str)) {
                throw new java.lang.IllegalArgumentException("method " + str + " must not have a request body.");
            }
            if (zVar != null || !h4.g.d(str)) {
                this.f3307b = str;
                this.f3309d = zVar;
                return this;
            }
            throw new java.lang.IllegalArgumentException("method " + str + " must have a request body.");
        }

        public c4.y.b l(c4.z zVar) {
            return k("POST", zVar);
        }

        public c4.y.b m(java.lang.String str) {
            this.f3308c.g(str);
            return this;
        }

        public c4.y.b n(c4.r rVar) {
            java.util.Objects.requireNonNull(rVar, "url == null");
            this.f3306a = rVar;
            return this;
        }

        public c4.y.b o(java.lang.String str) {
            java.util.Objects.requireNonNull(str, "url == null");
            if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                str = "http:" + str.substring(3);
            } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                str = "https:" + str.substring(4);
            }
            c4.r rVarT = c4.r.t(str);
            if (rVarT != null) {
                return n(rVarT);
            }
            throw new java.lang.IllegalArgumentException("unexpected url: " + str);
        }

        public b() {
            this.f3307b = "GET";
            this.f3308c = new c4.q.b();
        }

        public b(c4.y yVar) {
            this.f3306a = yVar.f3300a;
            this.f3307b = yVar.f3301b;
            this.f3309d = yVar.f3303d;
            this.f3310e = yVar.f3304e;
            this.f3308c = yVar.f3302c.e();
        }
    }

    public /* synthetic */ y(c4.y.b bVar, c4.y.a aVar) {
        this(bVar);
    }

    public c4.z f() {
        return this.f3303d;
    }

    public c4.d g() {
        c4.d dVar = this.f3305f;
        if (dVar != null) {
            return dVar;
        }
        c4.d dVarK = c4.d.k(this.f3302c);
        this.f3305f = dVarK;
        return dVarK;
    }

    public java.lang.String h(java.lang.String str) {
        return this.f3302c.a(str);
    }

    public c4.q i() {
        return this.f3302c;
    }

    public boolean j() {
        return this.f3300a.p();
    }

    public java.lang.String k() {
        return this.f3301b;
    }

    public c4.y.b l() {
        return new c4.y.b(this, null);
    }

    public c4.r m() {
        return this.f3300a;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("Request{method=");
        sb.append(this.f3301b);
        sb.append(", url=");
        sb.append(this.f3300a);
        sb.append(", tag=");
        java.lang.Object obj = this.f3304e;
        if (obj == this) {
            obj = null;
        }
        sb.append(obj);
        sb.append('}');
        return sb.toString();
    }

    public y(c4.y.b bVar) {
        this.f3300a = bVar.f3306a;
        this.f3301b = bVar.f3307b;
        this.f3302c = bVar.f3308c.e();
        this.f3303d = bVar.f3309d;
        this.f3304e = bVar.f3310e != null ? bVar.f3310e : this;
    }
}
