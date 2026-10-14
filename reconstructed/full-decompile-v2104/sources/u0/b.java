package u0;

/* JADX INFO: compiled from: SystemJobScheduler.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b implements r0.w {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.lang.String f6284f = q0.n.i("SystemJobScheduler");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f6285a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.app.job.JobScheduler f6286b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final u0.a f6287c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.work.impl.WorkDatabase f6288d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final androidx.work.a f6289e;

    public b(android.content.Context context, androidx.work.impl.WorkDatabase workDatabase, androidx.work.a aVar) {
        this(context, workDatabase, aVar, (android.app.job.JobScheduler) context.getSystemService("jobscheduler"), new u0.a(context, aVar.a()));
    }

    public static void a(android.content.Context context) {
        java.util.List<android.app.job.JobInfo> listG;
        android.app.job.JobScheduler jobScheduler = (android.app.job.JobScheduler) context.getSystemService("jobscheduler");
        if (jobScheduler == null || (listG = g(context, jobScheduler)) == null || listG.isEmpty()) {
            return;
        }
        java.util.Iterator<android.app.job.JobInfo> it = listG.iterator();
        while (it.hasNext()) {
            c(jobScheduler, it.next().getId());
        }
    }

    public static void c(android.app.job.JobScheduler jobScheduler, int i5) {
        try {
            jobScheduler.cancel(i5);
        } catch (java.lang.Throwable th) {
            q0.n.e().d(f6284f, java.lang.String.format(java.util.Locale.getDefault(), "Exception while trying to cancel job (%d)", java.lang.Integer.valueOf(i5)), th);
        }
    }

    public static java.util.List<java.lang.Integer> f(android.content.Context context, android.app.job.JobScheduler jobScheduler, java.lang.String str) {
        java.util.List<android.app.job.JobInfo> listG = g(context, jobScheduler);
        if (listG == null) {
            return null;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(2);
        for (android.app.job.JobInfo jobInfo : listG) {
            z0.m mVarH = h(jobInfo);
            if (mVarH != null && str.equals(mVarH.b())) {
                arrayList.add(java.lang.Integer.valueOf(jobInfo.getId()));
            }
        }
        return arrayList;
    }

    public static java.util.List<android.app.job.JobInfo> g(android.content.Context context, android.app.job.JobScheduler jobScheduler) {
        java.util.List<android.app.job.JobInfo> allPendingJobs;
        try {
            allPendingJobs = jobScheduler.getAllPendingJobs();
        } catch (java.lang.Throwable th) {
            q0.n.e().d(f6284f, "getAllPendingJobs() is not reliable on this device.", th);
            allPendingJobs = null;
        }
        if (allPendingJobs == null) {
            return null;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(allPendingJobs.size());
        android.content.ComponentName componentName = new android.content.ComponentName(context, (java.lang.Class<?>) androidx.work.impl.background.systemjob.SystemJobService.class);
        for (android.app.job.JobInfo jobInfo : allPendingJobs) {
            if (componentName.equals(jobInfo.getService())) {
                arrayList.add(jobInfo);
            }
        }
        return arrayList;
    }

    public static z0.m h(android.app.job.JobInfo jobInfo) {
        android.os.PersistableBundle extras = jobInfo.getExtras();
        if (extras == null) {
            return null;
        }
        try {
            if (!extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return null;
            }
            return new z0.m(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION", 0));
        } catch (java.lang.NullPointerException unused) {
            return null;
        }
    }

    public static boolean i(android.content.Context context, androidx.work.impl.WorkDatabase workDatabase) {
        android.app.job.JobScheduler jobScheduler = (android.app.job.JobScheduler) context.getSystemService("jobscheduler");
        java.util.List<android.app.job.JobInfo> listG = g(context, jobScheduler);
        java.util.List<java.lang.String> listE = workDatabase.G().e();
        boolean z4 = false;
        java.util.HashSet hashSet = new java.util.HashSet(listG != null ? listG.size() : 0);
        if (listG != null && !listG.isEmpty()) {
            for (android.app.job.JobInfo jobInfo : listG) {
                z0.m mVarH = h(jobInfo);
                if (mVarH != null) {
                    hashSet.add(mVarH.b());
                } else {
                    c(jobScheduler, jobInfo.getId());
                }
            }
        }
        java.util.Iterator<java.lang.String> it = listE.iterator();
        while (it.hasNext()) {
            if (!hashSet.contains(it.next())) {
                q0.n.e().a(f6284f, "Reconciling jobs");
                z4 = true;
                break;
            }
        }
        if (z4) {
            workDatabase.e();
            try {
                z0.v vVarJ = workDatabase.J();
                java.util.Iterator<java.lang.String> it2 = listE.iterator();
                while (it2.hasNext()) {
                    vVarJ.t(it2.next(), -1L);
                }
                workDatabase.B();
            } finally {
                workDatabase.i();
            }
        }
        return z4;
    }

    @Override // r0.w
    public void b(java.lang.String str) {
        java.util.List<java.lang.Integer> listF = f(this.f6285a, this.f6286b, str);
        if (listF == null || listF.isEmpty()) {
            return;
        }
        java.util.Iterator<java.lang.Integer> it = listF.iterator();
        while (it.hasNext()) {
            c(this.f6286b, it.next().intValue());
        }
        this.f6288d.G().f(str);
    }

    @Override // r0.w
    public boolean d() {
        return true;
    }

    @Override // r0.w
    public void e(z0.u... uVarArr) {
        a1.g gVar = new a1.g(this.f6288d);
        for (z0.u uVar : uVarArr) {
            this.f6288d.e();
            try {
                z0.u uVarF = this.f6288d.J().f(uVar.f7032a);
                if (uVarF == null) {
                    q0.n.e().k(f6284f, "Skipping scheduling " + uVar.f7032a + " because it's no longer in the DB");
                    this.f6288d.B();
                } else if (uVarF.f7033b != q0.y.c.ENQUEUED) {
                    q0.n.e().k(f6284f, "Skipping scheduling " + uVar.f7032a + " because it is no longer enqueued");
                    this.f6288d.B();
                } else {
                    z0.m mVarA = z0.x.a(uVar);
                    z0.i iVarI = this.f6288d.G().i(mVarA);
                    int iE = iVarI != null ? iVarI.f7004c : gVar.e(this.f6289e.i(), this.f6289e.g());
                    if (iVarI == null) {
                        this.f6288d.G().c(z0.l.a(mVarA, iE));
                    }
                    j(uVar, iE);
                    this.f6288d.B();
                }
                this.f6288d.i();
            } catch (java.lang.Throwable th) {
                this.f6288d.i();
                throw th;
            }
        }
    }

    public void j(z0.u uVar, int i5) {
        android.app.job.JobInfo jobInfoA = this.f6287c.a(uVar, i5);
        q0.n nVarE = q0.n.e();
        java.lang.String str = f6284f;
        nVarE.a(str, "Scheduling work ID " + uVar.f7032a + "Job ID " + i5);
        try {
            if (this.f6286b.schedule(jobInfoA) == 0) {
                q0.n.e().k(str, "Unable to schedule work ID " + uVar.f7032a);
                if (uVar.f7048q && uVar.f7049r == q0.s.RUN_AS_NON_EXPEDITED_WORK_REQUEST) {
                    uVar.f7048q = false;
                    q0.n.e().a(str, java.lang.String.format("Scheduling a non-expedited job (work ID %s)", uVar.f7032a));
                    j(uVar, i5);
                }
            }
        } catch (java.lang.IllegalStateException e5) {
            java.util.List<android.app.job.JobInfo> listG = g(this.f6285a, this.f6286b);
            java.lang.String str2 = java.lang.String.format(java.util.Locale.getDefault(), "JobScheduler 100 job limit exceeded.  We count %d WorkManager jobs in JobScheduler; we have %d tracked jobs in our DB; our Configuration limit is %d.", java.lang.Integer.valueOf(listG != null ? listG.size() : 0), java.lang.Integer.valueOf(this.f6288d.J().v().size()), java.lang.Integer.valueOf(this.f6289e.h()));
            q0.n.e().c(f6284f, str2);
            java.lang.IllegalStateException illegalStateException = new java.lang.IllegalStateException(str2, e5);
            v.a<java.lang.Throwable> aVarL = this.f6289e.l();
            if (aVarL == null) {
                throw illegalStateException;
            }
            aVarL.accept(illegalStateException);
        } catch (java.lang.Throwable th) {
            q0.n.e().d(f6284f, "Unable to schedule " + uVar, th);
        }
    }

    public b(android.content.Context context, androidx.work.impl.WorkDatabase workDatabase, androidx.work.a aVar, android.app.job.JobScheduler jobScheduler, u0.a aVar2) {
        this.f6285a = context;
        this.f6286b = jobScheduler;
        this.f6287c = aVar2;
        this.f6288d = workDatabase;
        this.f6289e = aVar;
    }
}
