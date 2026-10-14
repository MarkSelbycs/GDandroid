package androidx.work.impl.utils;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ForceStopRunnable implements java.lang.Runnable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.lang.String f2749e = q0.n.i("ForceStopRunnable");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f2750f = java.util.concurrent.TimeUnit.DAYS.toMillis(3650);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f2751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r0.p0 f2752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a1.m f2753c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2754d = 0;

    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final java.lang.String f2755a = q0.n.i("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            if (intent == null || !"ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                return;
            }
            q0.n.e().j(f2755a, "Rescheduling alarm that keeps track of force-stops.");
            androidx.work.impl.utils.ForceStopRunnable.g(context);
        }
    }

    public ForceStopRunnable(android.content.Context context, r0.p0 p0Var) {
        this.f2751a = context.getApplicationContext();
        this.f2752b = p0Var;
        this.f2753c = p0Var.p();
    }

    public static android.content.Intent c(android.content.Context context) {
        android.content.Intent intent = new android.content.Intent();
        intent.setComponent(new android.content.ComponentName(context, (java.lang.Class<?>) androidx.work.impl.utils.ForceStopRunnable.BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return intent;
    }

    public static android.app.PendingIntent d(android.content.Context context, int i5) {
        return android.app.PendingIntent.getBroadcast(context, -1, c(context), i5);
    }

    @android.annotation.SuppressLint({"ClassVerificationFailure"})
    public static void g(android.content.Context context) {
        android.app.AlarmManager alarmManager = (android.app.AlarmManager) context.getSystemService("alarm");
        android.app.PendingIntent pendingIntentD = d(context, android.os.Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728);
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis() + f2750f;
        if (alarmManager != null) {
            alarmManager.setExact(0, jCurrentTimeMillis, pendingIntentD);
        }
    }

    public boolean a() {
        boolean zI = u0.b.i(this.f2751a, this.f2752b.u());
        androidx.work.impl.WorkDatabase workDatabaseU = this.f2752b.u();
        z0.v vVarJ = workDatabaseU.J();
        z0.r rVarI = workDatabaseU.I();
        workDatabaseU.e();
        try {
            java.util.List<z0.u> listJ = vVarJ.j();
            boolean z4 = (listJ == null || listJ.isEmpty()) ? false : true;
            if (z4) {
                for (z0.u uVar : listJ) {
                    vVarJ.c(q0.y.c.ENQUEUED, uVar.f7032a);
                    vVarJ.g(uVar.f7032a, -512);
                    vVarJ.t(uVar.f7032a, -1L);
                }
            }
            rVarI.b();
            workDatabaseU.B();
            workDatabaseU.i();
            return z4 || zI;
        } catch (java.lang.Throwable th) {
            workDatabaseU.i();
            throw th;
        }
    }

    public void b() {
        boolean zA = a();
        if (h()) {
            q0.n.e().a(f2749e, "Rescheduling Workers.");
            this.f2752b.y();
            this.f2752b.p().f(false);
        } else if (e()) {
            q0.n.e().a(f2749e, "Application was force-stopped, rescheduling.");
            this.f2752b.y();
            this.f2753c.e(this.f2752b.m().a().a());
        } else if (zA) {
            q0.n.e().a(f2749e, "Found unfinished work, scheduling it.");
            r0.z.h(this.f2752b.m(), this.f2752b.u(), this.f2752b.s());
        }
    }

    @android.annotation.SuppressLint({"ClassVerificationFailure"})
    public boolean e() {
        int i5 = com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_WIDE;
        try {
            int i6 = android.os.Build.VERSION.SDK_INT;
            if (i6 >= 31) {
                i5 = 570425344;
            }
            android.app.PendingIntent pendingIntentD = d(this.f2751a, i5);
            if (i6 >= 30) {
                if (pendingIntentD != null) {
                    pendingIntentD.cancel();
                }
                java.util.List<android.app.ApplicationExitInfo> historicalProcessExitReasons = ((android.app.ActivityManager) this.f2751a.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
                if (historicalProcessExitReasons != null && !historicalProcessExitReasons.isEmpty()) {
                    long jA = this.f2753c.a();
                    for (int i7 = 0; i7 < historicalProcessExitReasons.size(); i7++) {
                        android.app.ApplicationExitInfo applicationExitInfo = historicalProcessExitReasons.get(i7);
                        if (applicationExitInfo.getReason() == 10 && applicationExitInfo.getTimestamp() >= jA) {
                            return true;
                        }
                    }
                }
            } else if (pendingIntentD == null) {
                g(this.f2751a);
                return true;
            }
            return false;
        } catch (java.lang.IllegalArgumentException | java.lang.SecurityException e5) {
            q0.n.e().l(f2749e, "Ignoring exception", e5);
            return true;
        }
    }

    public boolean f() {
        androidx.work.a aVarM = this.f2752b.m();
        if (android.text.TextUtils.isEmpty(aVarM.c())) {
            q0.n.e().a(f2749e, "The default process name was not specified.");
            return true;
        }
        boolean zB = a1.n.b(this.f2751a, aVarM);
        q0.n.e().a(f2749e, "Is default app process = " + zB);
        return zB;
    }

    public boolean h() {
        return this.f2752b.p().b();
    }

    public void i(long j5) {
        try {
            java.lang.Thread.sleep(j5);
        } catch (java.lang.InterruptedException unused) {
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        int i5;
        try {
            if (!f()) {
                this.f2752b.x();
                return;
            }
            while (true) {
                try {
                    r0.f0.d(this.f2751a);
                    q0.n.e().a(f2749e, "Performing cleanup operations.");
                    try {
                        b();
                        break;
                    } catch (android.database.sqlite.SQLiteAccessPermException | android.database.sqlite.SQLiteCantOpenDatabaseException | android.database.sqlite.SQLiteConstraintException | android.database.sqlite.SQLiteDatabaseCorruptException | android.database.sqlite.SQLiteDatabaseLockedException | android.database.sqlite.SQLiteDiskIOException | android.database.sqlite.SQLiteTableLockedException e5) {
                        i5 = this.f2754d + 1;
                        this.f2754d = i5;
                        if (i5 >= 3) {
                            java.lang.String str = s.d.a(this.f2751a) ? "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store." : "WorkManager can't be accessed from direct boot, because credential encrypted storage isn't accessible.\nDon't access or initialise WorkManager from directAware components. See https://developer.android.com/training/articles/direct-boot";
                            q0.n nVarE = q0.n.e();
                            java.lang.String str2 = f2749e;
                            nVarE.d(str2, str, e5);
                            java.lang.IllegalStateException illegalStateException = new java.lang.IllegalStateException(str, e5);
                            v.a<java.lang.Throwable> aVarE = this.f2752b.m().e();
                            if (aVarE == null) {
                                throw illegalStateException;
                            }
                            q0.n.e().b(str2, "Routing exception to the specified exception handler", illegalStateException);
                            aVarE.accept(illegalStateException);
                            break;
                        }
                        q0.n.e().b(f2749e, "Retrying after " + (((long) i5) * 300), e5);
                        i(((long) this.f2754d) * 300);
                    }
                    q0.n.e().b(f2749e, "Retrying after " + (((long) i5) * 300), e5);
                    i(((long) this.f2754d) * 300);
                } catch (android.database.sqlite.SQLiteException e6) {
                    q0.n.e().c(f2749e, "Unexpected SQLite exception during migrations");
                    java.lang.IllegalStateException illegalStateException2 = new java.lang.IllegalStateException("Unexpected SQLite exception during migrations", e6);
                    v.a<java.lang.Throwable> aVarE2 = this.f2752b.m().e();
                    if (aVarE2 == null) {
                        throw illegalStateException2;
                    }
                    aVarE2.accept(illegalStateException2);
                }
            }
            this.f2752b.x();
        } catch (java.lang.Throwable th) {
            this.f2752b.x();
            throw th;
        }
    }
}
