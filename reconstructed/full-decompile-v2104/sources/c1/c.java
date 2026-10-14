package c1;

/* JADX INFO: compiled from: WorkManagerTaskExecutor.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c implements c1.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a1.p f2976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t3.b0 f2977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.os.Handler f2978c = new android.os.Handler(android.os.Looper.getMainLooper());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.concurrent.Executor f2979d = new c1.c.a();

    /* JADX INFO: compiled from: WorkManagerTaskExecutor.java */
    public class a implements java.util.concurrent.Executor {
        public a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(java.lang.Runnable runnable) {
            c1.c.this.f2978c.post(runnable);
        }
    }

    public c(java.util.concurrent.Executor executor) {
        a1.p pVar = new a1.p(executor);
        this.f2976a = pVar;
        this.f2977b = t3.b1.a(pVar);
    }

    @Override // c1.b
    public java.util.concurrent.Executor b() {
        return this.f2979d;
    }

    @Override // c1.b
    public t3.b0 d() {
        return this.f2977b;
    }

    @Override // c1.b
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public a1.p c() {
        return this.f2976a;
    }
}
