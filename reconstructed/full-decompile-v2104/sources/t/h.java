package t;

/* JADX INFO: compiled from: RequestExecutor.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h {

    /* JADX INFO: compiled from: RequestExecutor.java */
    public static class a implements java.util.concurrent.ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.lang.String f6143a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f6144b;

        /* JADX INFO: renamed from: t.h$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: RequestExecutor.java */
        public static class C0080a extends java.lang.Thread {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f6145a;

            public C0080a(java.lang.Runnable runnable, java.lang.String str, int i5) {
                super(runnable, str);
                this.f6145a = i5;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                android.os.Process.setThreadPriority(this.f6145a);
                super.run();
            }
        }

        public a(java.lang.String str, int i5) {
            this.f6143a = str;
            this.f6144b = i5;
        }

        @Override // java.util.concurrent.ThreadFactory
        public java.lang.Thread newThread(java.lang.Runnable runnable) {
            return new t.h.a.C0080a(runnable, this.f6143a, this.f6144b);
        }
    }

    /* JADX INFO: compiled from: RequestExecutor.java */
    public static class b<T> implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.util.concurrent.Callable<T> f6146a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public v.a<T> f6147b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public android.os.Handler f6148c;

        /* JADX INFO: compiled from: RequestExecutor.java */
        public class a implements java.lang.Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ v.a f6149a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ java.lang.Object f6150b;

            public a(v.a aVar, java.lang.Object obj) {
                this.f6149a = aVar;
                this.f6150b = obj;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                this.f6149a.accept(this.f6150b);
            }
        }

        public b(android.os.Handler handler, java.util.concurrent.Callable<T> callable, v.a<T> aVar) {
            this.f6146a = callable;
            this.f6147b = aVar;
            this.f6148c = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            T tCall;
            try {
                tCall = this.f6146a.call();
            } catch (java.lang.Exception unused) {
                tCall = null;
            }
            this.f6148c.post(new t.h.b.a(this.f6147b, tCall));
        }
    }

    public static java.util.concurrent.ThreadPoolExecutor a(java.lang.String str, int i5, int i6) {
        java.util.concurrent.ThreadPoolExecutor threadPoolExecutor = new java.util.concurrent.ThreadPoolExecutor(0, 1, i6, java.util.concurrent.TimeUnit.MILLISECONDS, new java.util.concurrent.LinkedBlockingDeque(), new t.h.a(str, i5));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    public static <T> void b(java.util.concurrent.Executor executor, java.util.concurrent.Callable<T> callable, v.a<T> aVar) {
        executor.execute(new t.h.b(t.b.a(), callable, aVar));
    }

    public static <T> T c(java.util.concurrent.ExecutorService executorService, java.util.concurrent.Callable<T> callable, int i5) throws java.lang.InterruptedException {
        try {
            return executorService.submit(callable).get(i5, java.util.concurrent.TimeUnit.MILLISECONDS);
        } catch (java.lang.InterruptedException e5) {
            throw e5;
        } catch (java.util.concurrent.ExecutionException e6) {
            throw new java.lang.RuntimeException(e6);
        } catch (java.util.concurrent.TimeoutException unused) {
            throw new java.lang.InterruptedException("timeout");
        }
    }
}
