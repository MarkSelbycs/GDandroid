package androidx.work.multiprocess;

/* JADX INFO: compiled from: RemoteWorkManagerInfo.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.lang.Object f2869e = new java.lang.Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static volatile androidx.work.multiprocess.k f2870f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.work.a f2871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c1.b f2872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final q0.u f2873c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final q0.i f2874d;

    /* JADX WARN: Multi-variable type inference failed */
    public k(android.content.Context context) {
        r0.p0 p0VarN = r0.p0.n();
        if (p0VarN != null) {
            this.f2871a = p0VarN.m();
            this.f2872b = p0VarN.w();
        } else {
            android.content.Context applicationContext = context.getApplicationContext();
            if (applicationContext instanceof androidx.work.a.c) {
                this.f2871a = ((androidx.work.a.c) applicationContext).a();
            } else {
                this.f2871a = new androidx.work.a.C0020a().p(applicationContext.getPackageName()).a();
            }
            this.f2872b = new c1.c(this.f2871a.m());
        }
        this.f2873c = new androidx.work.multiprocess.i();
        this.f2874d = new androidx.work.multiprocess.g();
    }

    public static androidx.work.multiprocess.k c(android.content.Context context) {
        if (f2870f == null) {
            synchronized (f2869e) {
                if (f2870f == null) {
                    f2870f = new androidx.work.multiprocess.k(context);
                }
            }
        }
        return f2870f;
    }

    public androidx.work.a a() {
        return this.f2871a;
    }

    public q0.i b() {
        return this.f2874d;
    }

    public q0.u d() {
        return this.f2873c;
    }

    public c1.b e() {
        return this.f2872b;
    }
}
