package e4;

/* JADX INFO: compiled from: CacheInterceptor.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a implements c4.s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final c4.b0 f4116b = new e4.a.C0046a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e4.d f4117a;

    /* JADX INFO: renamed from: e4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CacheInterceptor.java */
    public static class C0046a extends c4.b0 {
        @Override // c4.b0
        public long h() {
            return 0L;
        }

        @Override // c4.b0
        public c4.t i() {
            return null;
        }

        @Override // c4.b0
        public okio.BufferedSource n() {
            return new okio.Buffer();
        }
    }

    /* JADX INFO: compiled from: CacheInterceptor.java */
    public class b implements okio.Source {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f4118a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ okio.BufferedSource f4119b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ e4.b f4120c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ okio.BufferedSink f4121d;

        public b(okio.BufferedSource bufferedSource, e4.b bVar, okio.BufferedSink bufferedSink) {
            this.f4119b = bufferedSource;
            this.f4120c = bVar;
            this.f4121d = bufferedSink;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            if (!this.f4118a && !d4.c.i(this, 100, java.util.concurrent.TimeUnit.MILLISECONDS)) {
                this.f4118a = true;
                this.f4120c.a();
            }
            this.f4119b.close();
        }

        @Override // okio.Source
        public long read(okio.Buffer buffer, long j5) throws java.io.IOException {
            try {
                long j6 = this.f4119b.read(buffer, j5);
                if (j6 != -1) {
                    buffer.copyTo(this.f4121d.buffer(), buffer.size() - j6, j6);
                    this.f4121d.emitCompleteSegments();
                    return j6;
                }
                if (!this.f4118a) {
                    this.f4118a = true;
                    this.f4121d.close();
                }
                return -1L;
            } catch (java.io.IOException e5) {
                if (!this.f4118a) {
                    this.f4118a = true;
                    this.f4120c.a();
                }
                throw e5;
            }
        }

        @Override // okio.Source
        public okio.Timeout timeout() {
            return this.f4119b.timeout();
        }
    }

    public a(e4.d dVar) {
        this.f4117a = dVar;
    }

    public static c4.q c(c4.q qVar, c4.q qVar2) {
        c4.q.b bVar = new c4.q.b();
        int iG = qVar.g();
        for (int i5 = 0; i5 < iG; i5++) {
            java.lang.String strD = qVar.d(i5);
            java.lang.String strH = qVar.h(i5);
            if ((!"Warning".equalsIgnoreCase(strD) || !strH.startsWith("1")) && (!d(strD) || qVar2.a(strD) == null)) {
                d4.a.f3963a.b(bVar, strD, strH);
            }
        }
        int iG2 = qVar2.g();
        for (int i6 = 0; i6 < iG2; i6++) {
            java.lang.String strD2 = qVar2.d(i6);
            if (!"Content-Length".equalsIgnoreCase(strD2) && d(strD2)) {
                d4.a.f3963a.b(bVar, strD2, qVar2.h(i6));
            }
        }
        return bVar.e();
    }

    public static boolean d(java.lang.String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || "Proxy-Authenticate".equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }

    public static c4.a0 f(c4.a0 a0Var) {
        return (a0Var == null || a0Var.u() == null) ? a0Var : a0Var.K().n(null).o();
    }

    public static boolean g(c4.a0 a0Var, c4.a0 a0Var2) {
        java.util.Date dateC;
        if (a0Var2.y() == 304) {
            return true;
        }
        java.util.Date dateC2 = a0Var.I().c("Last-Modified");
        return (dateC2 == null || (dateC = a0Var2.I().c("Last-Modified")) == null || dateC.getTime() >= dateC2.getTime()) ? false : true;
    }

    @Override // c4.s
    public c4.a0 a(c4.s.a aVar) throws java.io.IOException {
        e4.d dVar = this.f4117a;
        c4.a0 a0VarC = dVar != null ? dVar.c(aVar.b()) : null;
        e4.c cVarC = new e4.c.b(java.lang.System.currentTimeMillis(), aVar.b(), a0VarC).c();
        c4.y yVar = cVarC.f4123a;
        c4.a0 a0Var = cVarC.f4124b;
        e4.d dVar2 = this.f4117a;
        if (dVar2 != null) {
            dVar2.a(cVarC);
        }
        if (a0VarC != null && a0Var == null) {
            d4.c.c(a0VarC.u());
        }
        if (yVar == null && a0Var == null) {
            return new c4.a0.b().B(aVar.b()).y(c4.w.HTTP_1_1).s(504).v("Unsatisfiable Request (only-if-cached)").n(f4116b).C(-1L).z(java.lang.System.currentTimeMillis()).o();
        }
        if (yVar == null) {
            return a0Var.K().p(f(a0Var)).o();
        }
        try {
            c4.a0 a0VarA = aVar.a(yVar);
            if (a0VarA == null && a0VarC != null) {
                d4.c.c(a0VarC.u());
            }
            if (a0Var != null) {
                if (g(a0Var, a0VarA)) {
                    c4.a0 a0VarO = a0Var.K().u(c(a0Var.I(), a0VarA.I())).p(f(a0Var)).w(f(a0VarA)).o();
                    a0VarA.u().close();
                    this.f4117a.d();
                    this.f4117a.b(a0Var, a0VarO);
                    return a0VarO;
                }
                d4.c.c(a0Var.u());
            }
            c4.a0 a0VarO2 = a0VarA.K().p(f(a0Var)).w(f(a0VarA)).o();
            return h4.f.c(a0VarO2) ? b(e(a0VarO2, a0VarA.P(), this.f4117a), a0VarO2) : a0VarO2;
        } catch (java.lang.Throwable th) {
            if (a0VarC != null) {
                d4.c.c(a0VarC.u());
            }
            throw th;
        }
    }

    public final c4.a0 b(e4.b bVar, c4.a0 a0Var) throws java.io.IOException {
        okio.Sink sinkB;
        return (bVar == null || (sinkB = bVar.b()) == null) ? a0Var : a0Var.K().n(new h4.j(a0Var.I(), okio.Okio.buffer(new e4.a.b(a0Var.u().n(), bVar, okio.Okio.buffer(sinkB))))).o();
    }

    public final e4.b e(c4.a0 a0Var, c4.y yVar, e4.d dVar) throws java.io.IOException {
        if (dVar == null) {
            return null;
        }
        if (e4.c.a(a0Var, yVar)) {
            return dVar.f(a0Var);
        }
        if (h4.g.a(yVar.k())) {
            try {
                dVar.e(yVar);
            } catch (java.io.IOException unused) {
            }
        }
        return null;
    }
}
