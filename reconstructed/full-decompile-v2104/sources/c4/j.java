package c4;

/* JADX INFO: compiled from: ConnectionPool.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class j {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final java.util.concurrent.Executor f3149g = new java.util.concurrent.ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, java.util.concurrent.TimeUnit.SECONDS, new java.util.concurrent.SynchronousQueue(), d4.c.y("OkHttp ConnectionPool", true));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3150a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3151b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.Runnable f3152c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.Deque<f4.c> f3153d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final f4.d f3154e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3155f;

    /* JADX INFO: compiled from: ConnectionPool.java */
    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                long jA = c4.j.this.a(java.lang.System.nanoTime());
                if (jA == -1) {
                    return;
                }
                if (jA > 0) {
                    long j5 = jA / 1000000;
                    long j6 = jA - (1000000 * j5);
                    synchronized (c4.j.this) {
                        try {
                            c4.j.this.wait(j5, (int) j6);
                        } catch (java.lang.InterruptedException unused) {
                        }
                    }
                }
            }
        }
    }

    public j() {
        this(5, 5L, java.util.concurrent.TimeUnit.MINUTES);
    }

    public long a(long j5) {
        synchronized (this) {
            f4.c cVar = null;
            long j6 = Long.MIN_VALUE;
            int i5 = 0;
            int i6 = 0;
            for (f4.c cVar2 : this.f3153d) {
                if (d(cVar2, j5) > 0) {
                    i6++;
                } else {
                    i5++;
                    long j7 = j5 - cVar2.f4258n;
                    if (j7 > j6) {
                        cVar = cVar2;
                        j6 = j7;
                    }
                }
            }
            long j8 = this.f3151b;
            if (j6 < j8 && i5 <= this.f3150a) {
                if (i5 > 0) {
                    return j8 - j6;
                }
                if (i6 > 0) {
                    return j8;
                }
                this.f3155f = false;
                return -1L;
            }
            this.f3153d.remove(cVar);
            d4.c.d(cVar.o());
            return 0L;
        }
    }

    public boolean b(f4.c cVar) {
        if (cVar.f4257m || this.f3150a == 0) {
            this.f3153d.remove(cVar);
            return true;
        }
        notifyAll();
        return false;
    }

    public f4.c c(c4.a aVar, f4.g gVar) {
        for (f4.c cVar : this.f3153d) {
            if (cVar.f4256l.size() < cVar.f4255k && aVar.equals(cVar.a().f3059a) && !cVar.f4257m) {
                gVar.a(cVar);
                return cVar;
            }
        }
        return null;
    }

    public final int d(f4.c cVar, long j5) {
        java.util.List<java.lang.ref.Reference<f4.g>> list = cVar.f4256l;
        int i5 = 0;
        while (i5 < list.size()) {
            if (list.get(i5).get() != null) {
                i5++;
            } else {
                i4.e.h().k(5, "A connection to " + cVar.a().a().k() + " was leaked. Did you forget to close a response body?", null);
                list.remove(i5);
                cVar.f4257m = true;
                if (list.isEmpty()) {
                    cVar.f4258n = j5 - this.f3151b;
                    return 0;
                }
            }
        }
        return list.size();
    }

    public void e(f4.c cVar) {
        if (!this.f3155f) {
            this.f3155f = true;
            f3149g.execute(this.f3152c);
        }
        this.f3153d.add(cVar);
    }

    public j(int i5, long j5, java.util.concurrent.TimeUnit timeUnit) {
        this.f3152c = new c4.j.a();
        this.f3153d = new java.util.ArrayDeque();
        this.f3154e = new f4.d();
        this.f3150a = i5;
        this.f3151b = timeUnit.toNanos(j5);
        if (j5 > 0) {
            return;
        }
        throw new java.lang.IllegalArgumentException("keepAliveDuration <= 0: " + j5);
    }
}
