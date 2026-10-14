package a1;

/* JADX INFO: compiled from: SerialExecutorImpl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class p implements c1.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.concurrent.Executor f33b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.lang.Runnable f34c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.ArrayDeque<a1.p.a> f32a = new java.util.ArrayDeque<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.Object f35d = new java.lang.Object();

    /* JADX INFO: compiled from: SerialExecutorImpl.java */
    public static class a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final a1.p f36a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.Runnable f37b;

        public a(a1.p pVar, java.lang.Runnable runnable) {
            this.f36a = pVar;
            this.f37b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f37b.run();
                synchronized (this.f36a.f35d) {
                    this.f36a.a();
                }
            } catch (java.lang.Throwable th) {
                synchronized (this.f36a.f35d) {
                    this.f36a.a();
                    throw th;
                }
            }
        }
    }

    public p(java.util.concurrent.Executor executor) {
        this.f33b = executor;
    }

    public void a() {
        a1.p.a aVarPoll = this.f32a.poll();
        this.f34c = aVarPoll;
        if (aVarPoll != null) {
            this.f33b.execute(aVarPoll);
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(java.lang.Runnable runnable) {
        synchronized (this.f35d) {
            this.f32a.add(new a1.p.a(this, runnable));
            if (this.f34c == null) {
                a();
            }
        }
    }

    @Override // c1.a
    public boolean k0() {
        boolean z4;
        synchronized (this.f35d) {
            z4 = !this.f32a.isEmpty();
        }
        return z4;
    }
}
