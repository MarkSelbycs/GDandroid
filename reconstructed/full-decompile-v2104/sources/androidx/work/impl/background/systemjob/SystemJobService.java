package androidx.work.impl.background.systemjob;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SystemJobService extends android.app.job.JobService implements r0.f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.lang.String f2713e = q0.n.i("SystemJobService");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r0.p0 f2714a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.Map<z0.m, android.app.job.JobParameters> f2715b = new java.util.HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final r0.b0 f2716c = new r0.b0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public r0.n0 f2717d;

    public static class a {
        public static java.lang.String[] a(android.app.job.JobParameters jobParameters) {
            return jobParameters.getTriggeredContentAuthorities();
        }

        public static android.net.Uri[] b(android.app.job.JobParameters jobParameters) {
            return jobParameters.getTriggeredContentUris();
        }
    }

    public static class b {
        public static android.net.Network a(android.app.job.JobParameters jobParameters) {
            return jobParameters.getNetwork();
        }
    }

    public static class c {
        public static int a(android.app.job.JobParameters jobParameters) {
            return androidx.work.impl.background.systemjob.SystemJobService.a(jobParameters.getStopReason());
        }
    }

    public static int a(int i5) {
        switch (i5) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return i5;
            default:
                return -512;
        }
    }

    public static z0.m b(android.app.job.JobParameters jobParameters) {
        try {
            android.os.PersistableBundle extras = jobParameters.getExtras();
            if (extras == null || !extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new z0.m(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION"));
        } catch (java.lang.NullPointerException unused) {
            return null;
        }
    }

    @Override // r0.f
    public void c(z0.m mVar, boolean z4) {
        android.app.job.JobParameters jobParametersRemove;
        q0.n.e().a(f2713e, mVar.b() + " executed on JobScheduler");
        synchronized (this.f2715b) {
            jobParametersRemove = this.f2715b.remove(mVar);
        }
        this.f2716c.c(mVar);
        if (jobParametersRemove != null) {
            jobFinished(jobParametersRemove, z4);
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        try {
            r0.p0 p0VarO = r0.p0.o(getApplicationContext());
            this.f2714a = p0VarO;
            r0.u uVarQ = p0VarO.q();
            this.f2717d = new r0.o0(uVarQ, this.f2714a.w());
            uVarQ.e(this);
        } catch (java.lang.IllegalStateException e5) {
            if (!android.app.Application.class.equals(getApplication().getClass())) {
                throw new java.lang.IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e5);
            }
            q0.n.e().k(f2713e, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.");
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        r0.p0 p0Var = this.f2714a;
        if (p0Var != null) {
            p0Var.q().p(this);
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(android.app.job.JobParameters jobParameters) {
        if (this.f2714a == null) {
            q0.n.e().a(f2713e, "WorkManager is not initialized; requesting retry.");
            jobFinished(jobParameters, true);
            return false;
        }
        z0.m mVarB = b(jobParameters);
        if (mVarB == null) {
            q0.n.e().c(f2713e, "WorkSpec id not found!");
            return false;
        }
        synchronized (this.f2715b) {
            if (this.f2715b.containsKey(mVarB)) {
                q0.n.e().a(f2713e, "Job is already being executed by SystemJobService: " + mVarB);
                return false;
            }
            q0.n.e().a(f2713e, "onStartJob for " + mVarB);
            this.f2715b.put(mVarB, jobParameters);
            androidx.work.WorkerParameters.a aVar = new androidx.work.WorkerParameters.a();
            if (androidx.work.impl.background.systemjob.SystemJobService.a.b(jobParameters) != null) {
                aVar.f2606b = java.util.Arrays.asList(androidx.work.impl.background.systemjob.SystemJobService.a.b(jobParameters));
            }
            if (androidx.work.impl.background.systemjob.SystemJobService.a.a(jobParameters) != null) {
                aVar.f2605a = java.util.Arrays.asList(androidx.work.impl.background.systemjob.SystemJobService.a.a(jobParameters));
            }
            aVar.f2607c = androidx.work.impl.background.systemjob.SystemJobService.b.a(jobParameters);
            this.f2717d.d(this.f2716c.d(mVarB), aVar);
            return true;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(android.app.job.JobParameters jobParameters) {
        if (this.f2714a == null) {
            q0.n.e().a(f2713e, "WorkManager is not initialized; requesting retry.");
            return true;
        }
        z0.m mVarB = b(jobParameters);
        if (mVarB == null) {
            q0.n.e().c(f2713e, "WorkSpec id not found!");
            return false;
        }
        q0.n.e().a(f2713e, "onStopJob for " + mVarB);
        synchronized (this.f2715b) {
            this.f2715b.remove(mVarB);
        }
        r0.a0 a0VarC = this.f2716c.c(mVarB);
        if (a0VarC != null) {
            this.f2717d.a(a0VarC, android.os.Build.VERSION.SDK_INT >= 31 ? androidx.work.impl.background.systemjob.SystemJobService.c.a(jobParameters) : -512);
        }
        return !this.f2714a.q().j(mVarB.b());
    }
}
