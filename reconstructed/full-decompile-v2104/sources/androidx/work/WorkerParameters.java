package androidx.work;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class WorkerParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.UUID f2594a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public androidx.work.b f2595b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.util.Set<java.lang.String> f2596c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public androidx.work.WorkerParameters.a f2597d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2598e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.util.concurrent.Executor f2599f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c1.b f2600g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public q0.c0 f2601h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public q0.u f2602i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public q0.i f2603j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2604k;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.util.List<java.lang.String> f2605a = java.util.Collections.emptyList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public java.util.List<android.net.Uri> f2606b = java.util.Collections.emptyList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public android.net.Network f2607c;
    }

    public WorkerParameters(java.util.UUID uuid, androidx.work.b bVar, java.util.Collection<java.lang.String> collection, androidx.work.WorkerParameters.a aVar, int i5, int i6, java.util.concurrent.Executor executor, c1.b bVar2, q0.c0 c0Var, q0.u uVar, q0.i iVar) {
        this.f2594a = uuid;
        this.f2595b = bVar;
        this.f2596c = new java.util.HashSet(collection);
        this.f2597d = aVar;
        this.f2598e = i5;
        this.f2604k = i6;
        this.f2599f = executor;
        this.f2600g = bVar2;
        this.f2601h = c0Var;
        this.f2602i = uVar;
        this.f2603j = iVar;
    }

    public java.util.concurrent.Executor a() {
        return this.f2599f;
    }

    public q0.i b() {
        return this.f2603j;
    }

    public int c() {
        return this.f2604k;
    }

    public java.util.UUID d() {
        return this.f2594a;
    }

    public androidx.work.b e() {
        return this.f2595b;
    }

    public android.net.Network f() {
        return this.f2597d.f2607c;
    }

    public q0.u g() {
        return this.f2602i;
    }

    public int h() {
        return this.f2598e;
    }

    public androidx.work.WorkerParameters.a i() {
        return this.f2597d;
    }

    public java.util.Set<java.lang.String> j() {
        return this.f2596c;
    }

    public c1.b k() {
        return this.f2600g;
    }

    public java.util.List<java.lang.String> l() {
        return this.f2597d.f2605a;
    }

    public java.util.List<android.net.Uri> m() {
        return this.f2597d.f2606b;
    }

    public q0.c0 n() {
        return this.f2601h;
    }
}
