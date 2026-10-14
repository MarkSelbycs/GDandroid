package androidx.work;

/* JADX INFO: compiled from: ListenableWorker.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.content.Context f2642a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public androidx.work.WorkerParameters f2643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile int f2644c = -256;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2645d;

    /* JADX INFO: compiled from: ListenableWorker.java */
    public static abstract class a {

        /* JADX INFO: renamed from: androidx.work.c$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ListenableWorker.java */
        public static final class C0021a extends androidx.work.c.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final androidx.work.b f2646a;

            public C0021a() {
                this(androidx.work.b.f2639c);
            }

            @Override // androidx.work.c.a
            public androidx.work.b c() {
                return this.f2646a;
            }

            public boolean equals(java.lang.Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || androidx.work.c.a.C0021a.class != obj.getClass()) {
                    return false;
                }
                return this.f2646a.equals(((androidx.work.c.a.C0021a) obj).f2646a);
            }

            public int hashCode() {
                return (androidx.work.c.a.C0021a.class.getName().hashCode() * 31) + this.f2646a.hashCode();
            }

            public java.lang.String toString() {
                return "Failure {mOutputData=" + this.f2646a + '}';
            }

            public C0021a(androidx.work.b bVar) {
                this.f2646a = bVar;
            }
        }

        /* JADX INFO: compiled from: ListenableWorker.java */
        public static final class b extends androidx.work.c.a {
            @Override // androidx.work.c.a
            public androidx.work.b c() {
                return androidx.work.b.f2639c;
            }

            public boolean equals(java.lang.Object obj) {
                if (this == obj) {
                    return true;
                }
                return obj != null && androidx.work.c.a.b.class == obj.getClass();
            }

            public int hashCode() {
                return androidx.work.c.a.b.class.getName().hashCode();
            }

            public java.lang.String toString() {
                return "Retry";
            }
        }

        /* JADX INFO: renamed from: androidx.work.c$a$c, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ListenableWorker.java */
        public static final class C0022c extends androidx.work.c.a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final androidx.work.b f2647a;

            public C0022c() {
                this(androidx.work.b.f2639c);
            }

            @Override // androidx.work.c.a
            public androidx.work.b c() {
                return this.f2647a;
            }

            public boolean equals(java.lang.Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj == null || androidx.work.c.a.C0022c.class != obj.getClass()) {
                    return false;
                }
                return this.f2647a.equals(((androidx.work.c.a.C0022c) obj).f2647a);
            }

            public int hashCode() {
                return (androidx.work.c.a.C0022c.class.getName().hashCode() * 31) + this.f2647a.hashCode();
            }

            public java.lang.String toString() {
                return "Success {mOutputData=" + this.f2647a + '}';
            }

            public C0022c(androidx.work.b bVar) {
                this.f2647a = bVar;
            }
        }

        public static androidx.work.c.a a() {
            return new androidx.work.c.a.C0021a();
        }

        public static androidx.work.c.a b(androidx.work.b bVar) {
            return new androidx.work.c.a.C0021a(bVar);
        }

        public static androidx.work.c.a d() {
            return new androidx.work.c.a.b();
        }

        public static androidx.work.c.a e() {
            return new androidx.work.c.a.C0022c();
        }

        public static androidx.work.c.a f(androidx.work.b bVar) {
            return new androidx.work.c.a.C0022c(bVar);
        }

        public abstract androidx.work.b c();
    }

    public c(android.content.Context context, androidx.work.WorkerParameters workerParameters) {
        if (context == null) {
            throw new java.lang.IllegalArgumentException("Application Context is null");
        }
        if (workerParameters == null) {
            throw new java.lang.IllegalArgumentException("WorkerParameters is null");
        }
        this.f2642a = context;
        this.f2643b = workerParameters;
    }

    public final android.content.Context getApplicationContext() {
        return this.f2642a;
    }

    public java.util.concurrent.Executor getBackgroundExecutor() {
        return this.f2643b.a();
    }

    public r2.a<q0.h> getForegroundInfoAsync() {
        b1.c cVarT = b1.c.t();
        cVarT.q(new java.lang.IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for `getForegroundInfoAsync()`"));
        return cVarT;
    }

    public final java.util.UUID getId() {
        return this.f2643b.d();
    }

    public final androidx.work.b getInputData() {
        return this.f2643b.e();
    }

    public final android.net.Network getNetwork() {
        return this.f2643b.f();
    }

    public final int getRunAttemptCount() {
        return this.f2643b.h();
    }

    public final int getStopReason() {
        return this.f2644c;
    }

    public final java.util.Set<java.lang.String> getTags() {
        return this.f2643b.j();
    }

    public c1.b getTaskExecutor() {
        return this.f2643b.k();
    }

    public final java.util.List<java.lang.String> getTriggeredContentAuthorities() {
        return this.f2643b.l();
    }

    public final java.util.List<android.net.Uri> getTriggeredContentUris() {
        return this.f2643b.m();
    }

    public q0.c0 getWorkerFactory() {
        return this.f2643b.n();
    }

    public final boolean isStopped() {
        return this.f2644c != -256;
    }

    public final boolean isUsed() {
        return this.f2645d;
    }

    public void onStopped() {
    }

    public final r2.a<java.lang.Void> setForegroundAsync(q0.h hVar) {
        return this.f2643b.b().a(getApplicationContext(), getId(), hVar);
    }

    public r2.a<java.lang.Void> setProgressAsync(androidx.work.b bVar) {
        return this.f2643b.g().a(getApplicationContext(), getId(), bVar);
    }

    public final void setUsed() {
        this.f2645d = true;
    }

    public abstract r2.a<androidx.work.c.a> startWork();

    public final void stop(int i5) {
        this.f2644c = i5;
        onStopped();
    }
}
