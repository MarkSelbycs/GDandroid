package c4;

/* JADX INFO: compiled from: Dispatcher.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.lang.Runnable f3185c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.util.concurrent.ExecutorService f3186d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3183a = 64;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3184b = 5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.util.Deque<c4.x.a> f3187e = new java.util.ArrayDeque();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final java.util.Deque<c4.x.a> f3188f = new java.util.ArrayDeque();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.util.Deque<c4.x> f3189g = new java.util.ArrayDeque();

    public synchronized void a(c4.x xVar) {
        this.f3189g.add(xVar);
    }

    public synchronized java.util.concurrent.ExecutorService b() {
        if (this.f3186d == null) {
            this.f3186d = new java.util.concurrent.ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, java.util.concurrent.TimeUnit.SECONDS, new java.util.concurrent.SynchronousQueue(), d4.c.y("OkHttp Dispatcher", false));
        }
        return this.f3186d;
    }

    public void c(c4.x.a aVar) {
        e(this.f3188f, aVar, true);
    }

    public void d(c4.x xVar) {
        e(this.f3189g, xVar, false);
    }

    public final <T> void e(java.util.Deque<T> deque, T t5, boolean z4) {
        int iG;
        java.lang.Runnable runnable;
        synchronized (this) {
            if (!deque.remove(t5)) {
                throw new java.lang.AssertionError("Call wasn't in-flight!");
            }
            if (z4) {
                f();
            }
            iG = g();
            runnable = this.f3185c;
        }
        if (iG != 0 || runnable == null) {
            return;
        }
        runnable.run();
    }

    public final void f() {
        if (this.f3188f.size() < this.f3183a && !this.f3187e.isEmpty()) {
            java.util.Iterator<c4.x.a> it = this.f3187e.iterator();
            while (it.hasNext()) {
                c4.x.a next = it.next();
                if (h(next) < this.f3184b) {
                    it.remove();
                    this.f3188f.add(next);
                    b().execute(next);
                }
                if (this.f3188f.size() >= this.f3183a) {
                    return;
                }
            }
        }
    }

    public synchronized int g() {
        return this.f3188f.size() + this.f3189g.size();
    }

    public final int h(c4.x.a aVar) {
        java.util.Iterator<c4.x.a> it = this.f3188f.iterator();
        int i5 = 0;
        while (it.hasNext()) {
            if (it.next().e().equals(aVar.e())) {
                i5++;
            }
        }
        return i5;
    }
}
