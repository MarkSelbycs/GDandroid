package androidx.work;

/* JADX INFO: compiled from: Configuration.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final androidx.work.a.b f2608p = new androidx.work.a.b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.concurrent.Executor f2609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.concurrent.Executor f2610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final q0.b f2611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final q0.c0 f2612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final q0.k f2613e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final q0.v f2614f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final v.a<java.lang.Throwable> f2615g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final v.a<java.lang.Throwable> f2616h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final java.lang.String f2617i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f2618j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f2619k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f2620l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f2621m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f2622n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f2623o;

    /* JADX INFO: renamed from: androidx.work.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Configuration.kt */
    public static final class C0020a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.util.concurrent.Executor f2624a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public q0.c0 f2625b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public q0.k f2626c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public java.util.concurrent.Executor f2627d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public q0.b f2628e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public q0.v f2629f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public v.a<java.lang.Throwable> f2630g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public v.a<java.lang.Throwable> f2631h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public java.lang.String f2632i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f2634k;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f2633j = 4;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f2635l = Integer.MAX_VALUE;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f2636m = 20;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f2637n = q0.c.c();

        public final androidx.work.a a() {
            return new androidx.work.a(this);
        }

        public final q0.b b() {
            return this.f2628e;
        }

        public final int c() {
            return this.f2637n;
        }

        public final java.lang.String d() {
            return this.f2632i;
        }

        public final java.util.concurrent.Executor e() {
            return this.f2624a;
        }

        public final v.a<java.lang.Throwable> f() {
            return this.f2630g;
        }

        public final q0.k g() {
            return this.f2626c;
        }

        public final int h() {
            return this.f2633j;
        }

        public final int i() {
            return this.f2635l;
        }

        public final int j() {
            return this.f2636m;
        }

        public final int k() {
            return this.f2634k;
        }

        public final q0.v l() {
            return this.f2629f;
        }

        public final v.a<java.lang.Throwable> m() {
            return this.f2631h;
        }

        public final java.util.concurrent.Executor n() {
            return this.f2627d;
        }

        public final q0.c0 o() {
            return this.f2625b;
        }

        public final androidx.work.a.C0020a p(java.lang.String str) {
            m3.k.e(str, "processName");
            this.f2632i = str;
            return this;
        }
    }

    /* JADX INFO: compiled from: Configuration.kt */
    public static final class b {
        public b() {
        }

        public /* synthetic */ b(m3.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: Configuration.kt */
    public interface c {
        androidx.work.a a();
    }

    public a(androidx.work.a.C0020a c0020a) {
        m3.k.e(c0020a, "builder");
        java.util.concurrent.Executor executorE = c0020a.e();
        this.f2609a = executorE == null ? q0.c.b(false) : executorE;
        this.f2623o = c0020a.n() == null;
        java.util.concurrent.Executor executorN = c0020a.n();
        this.f2610b = executorN == null ? q0.c.b(true) : executorN;
        q0.b bVarB = c0020a.b();
        this.f2611c = bVarB == null ? new q0.w() : bVarB;
        q0.c0 c0VarO = c0020a.o();
        if (c0VarO == null) {
            c0VarO = q0.c0.c();
            m3.k.d(c0VarO, "getDefaultWorkerFactory()");
        }
        this.f2612d = c0VarO;
        q0.k kVarG = c0020a.g();
        this.f2613e = kVarG == null ? q0.p.f5713a : kVarG;
        q0.v vVarL = c0020a.l();
        this.f2614f = vVarL == null ? new r0.e() : vVarL;
        this.f2618j = c0020a.h();
        this.f2619k = c0020a.k();
        this.f2620l = c0020a.i();
        this.f2622n = c0020a.j();
        this.f2615g = c0020a.f();
        this.f2616h = c0020a.m();
        this.f2617i = c0020a.d();
        this.f2621m = c0020a.c();
    }

    public final q0.b a() {
        return this.f2611c;
    }

    public final int b() {
        return this.f2621m;
    }

    public final java.lang.String c() {
        return this.f2617i;
    }

    public final java.util.concurrent.Executor d() {
        return this.f2609a;
    }

    public final v.a<java.lang.Throwable> e() {
        return this.f2615g;
    }

    public final q0.k f() {
        return this.f2613e;
    }

    public final int g() {
        return this.f2620l;
    }

    public final int h() {
        return this.f2622n;
    }

    public final int i() {
        return this.f2619k;
    }

    public final int j() {
        return this.f2618j;
    }

    public final q0.v k() {
        return this.f2614f;
    }

    public final v.a<java.lang.Throwable> l() {
        return this.f2616h;
    }

    public final java.util.concurrent.Executor m() {
        return this.f2610b;
    }

    public final q0.c0 n() {
        return this.f2612d;
    }
}
