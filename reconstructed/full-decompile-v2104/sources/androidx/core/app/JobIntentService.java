package androidx.core.app;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@java.lang.Deprecated
public abstract class JobIntentService extends android.app.Service {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final java.lang.Object f1276h = new java.lang.Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final java.util.HashMap<android.content.ComponentName, androidx.core.app.JobIntentService.f> f1277i = new java.util.HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.core.app.JobIntentService.b f1278a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public androidx.core.app.JobIntentService.f f1279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.core.app.JobIntentService.a f1280c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1281d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1282e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1283f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.util.ArrayList<androidx.core.app.JobIntentService.c> f1284g = null;

    public final class a extends android.os.AsyncTask<java.lang.Void, java.lang.Void, java.lang.Void> {
        public a() {
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public java.lang.Void doInBackground(java.lang.Void... voidArr) {
            while (true) {
                androidx.core.app.JobIntentService.d dVarA = androidx.core.app.JobIntentService.this.a();
                if (dVarA == null) {
                    return null;
                }
                androidx.core.app.JobIntentService.this.d(dVarA.getIntent());
                dVarA.a();
            }
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onCancelled(java.lang.Void r5) {
            androidx.core.app.JobIntentService.this.f();
        }

        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(java.lang.Void r5) {
            androidx.core.app.JobIntentService.this.f();
        }
    }

    public interface b {
        androidx.core.app.JobIntentService.d a();

        android.os.IBinder b();
    }

    public final class c implements androidx.core.app.JobIntentService.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.content.Intent f1286a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f1287b;

        public c(android.content.Intent intent, int i5) {
            this.f1286a = intent;
            this.f1287b = i5;
        }

        @Override // androidx.core.app.JobIntentService.d
        public void a() {
            androidx.core.app.JobIntentService.this.stopSelf(this.f1287b);
        }

        @Override // androidx.core.app.JobIntentService.d
        public android.content.Intent getIntent() {
            return this.f1286a;
        }
    }

    public interface d {
        void a();

        android.content.Intent getIntent();
    }

    public static final class e extends android.app.job.JobServiceEngine implements androidx.core.app.JobIntentService.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.core.app.JobIntentService f1289a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.Object f1290b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public android.app.job.JobParameters f1291c;

        public final class a implements androidx.core.app.JobIntentService.d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final android.app.job.JobWorkItem f1292a;

            public a(android.app.job.JobWorkItem jobWorkItem) {
                this.f1292a = jobWorkItem;
            }

            @Override // androidx.core.app.JobIntentService.d
            public void a() {
                synchronized (androidx.core.app.JobIntentService.e.this.f1290b) {
                    android.app.job.JobParameters jobParameters = androidx.core.app.JobIntentService.e.this.f1291c;
                    if (jobParameters != null) {
                        jobParameters.completeWork(this.f1292a);
                    }
                }
            }

            @Override // androidx.core.app.JobIntentService.d
            public android.content.Intent getIntent() {
                return this.f1292a.getIntent();
            }
        }

        public e(androidx.core.app.JobIntentService jobIntentService) {
            super(jobIntentService);
            this.f1290b = new java.lang.Object();
            this.f1289a = jobIntentService;
        }

        @Override // androidx.core.app.JobIntentService.b
        public androidx.core.app.JobIntentService.d a() {
            synchronized (this.f1290b) {
                android.app.job.JobParameters jobParameters = this.f1291c;
                if (jobParameters == null) {
                    return null;
                }
                android.app.job.JobWorkItem jobWorkItemDequeueWork = jobParameters.dequeueWork();
                if (jobWorkItemDequeueWork == null) {
                    return null;
                }
                jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(this.f1289a.getClassLoader());
                return new androidx.core.app.JobIntentService.e.a(jobWorkItemDequeueWork);
            }
        }

        @Override // androidx.core.app.JobIntentService.b
        public android.os.IBinder b() {
            return getBinder();
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(android.app.job.JobParameters jobParameters) {
            this.f1291c = jobParameters;
            this.f1289a.c(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(android.app.job.JobParameters jobParameters) {
            boolean zB = this.f1289a.b();
            synchronized (this.f1290b) {
                this.f1291c = null;
            }
            return zB;
        }
    }

    public static abstract class f {
        public abstract void a();

        public abstract void b();

        public abstract void c();
    }

    public androidx.core.app.JobIntentService.d a() {
        androidx.core.app.JobIntentService.b bVar = this.f1278a;
        if (bVar != null) {
            return bVar.a();
        }
        synchronized (this.f1284g) {
            if (this.f1284g.size() <= 0) {
                return null;
            }
            return this.f1284g.remove(0);
        }
    }

    public boolean b() {
        androidx.core.app.JobIntentService.a aVar = this.f1280c;
        if (aVar != null) {
            aVar.cancel(this.f1281d);
        }
        this.f1282e = true;
        return e();
    }

    public void c(boolean z4) {
        if (this.f1280c == null) {
            this.f1280c = new androidx.core.app.JobIntentService.a();
            androidx.core.app.JobIntentService.f fVar = this.f1279b;
            if (fVar != null && z4) {
                fVar.b();
            }
            this.f1280c.executeOnExecutor(android.os.AsyncTask.THREAD_POOL_EXECUTOR, new java.lang.Void[0]);
        }
    }

    public abstract void d(android.content.Intent intent);

    public boolean e() {
        return true;
    }

    public void f() {
        java.util.ArrayList<androidx.core.app.JobIntentService.c> arrayList = this.f1284g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f1280c = null;
                java.util.ArrayList<androidx.core.app.JobIntentService.c> arrayList2 = this.f1284g;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    c(false);
                } else if (!this.f1283f) {
                    this.f1279b.a();
                }
            }
        }
    }

    @Override // android.app.Service
    public android.os.IBinder onBind(android.content.Intent intent) {
        androidx.core.app.JobIntentService.b bVar = this.f1278a;
        if (bVar != null) {
            return bVar.b();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f1278a = new androidx.core.app.JobIntentService.e(this);
        this.f1279b = null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        java.util.ArrayList<androidx.core.app.JobIntentService.c> arrayList = this.f1284g;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.f1283f = true;
                this.f1279b.a();
            }
        }
    }

    @Override // android.app.Service
    public int onStartCommand(android.content.Intent intent, int i5, int i6) {
        if (this.f1284g == null) {
            return 2;
        }
        this.f1279b.c();
        synchronized (this.f1284g) {
            java.util.ArrayList<androidx.core.app.JobIntentService.c> arrayList = this.f1284g;
            if (intent == null) {
                intent = new android.content.Intent();
            }
            arrayList.add(new androidx.core.app.JobIntentService.c(intent, i6));
            c(true);
        }
        return 3;
    }
}
