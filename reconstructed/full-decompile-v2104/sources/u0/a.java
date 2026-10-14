package u0;

/* JADX INFO: compiled from: SystemJobInfoConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"ClassVerificationFailure"})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.lang.String f6280c = q0.n.i("SystemJobInfoConverter");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.ComponentName f6281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q0.b f6282b;

    /* JADX INFO: renamed from: u0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SystemJobInfoConverter.java */
    public static /* synthetic */ class C0085a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6283a;

        static {
            int[] iArr = new int[q0.o.values().length];
            f6283a = iArr;
            try {
                iArr[q0.o.NOT_REQUIRED.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                f6283a[q0.o.CONNECTED.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                f6283a[q0.o.UNMETERED.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                f6283a[q0.o.NOT_ROAMING.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                f6283a[q0.o.METERED.ordinal()] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
        }
    }

    public a(android.content.Context context, q0.b bVar) {
        this.f6282b = bVar;
        this.f6281a = new android.content.ComponentName(com.stub.StubApp.getOrigApplicationContext(context.getApplicationContext()), (java.lang.Class<?>) androidx.work.impl.background.systemjob.SystemJobService.class);
    }

    public static android.app.job.JobInfo.TriggerContentUri b(q0.d.c cVar) {
        return new android.app.job.JobInfo.TriggerContentUri(cVar.a(), cVar.b() ? 1 : 0);
    }

    public static int c(q0.o oVar) {
        int i5 = u0.a.C0085a.f6283a[oVar.ordinal()];
        if (i5 == 1) {
            return 0;
        }
        if (i5 == 2) {
            return 1;
        }
        if (i5 == 3) {
            return 2;
        }
        if (i5 == 4) {
            return 3;
        }
        if (i5 == 5) {
            return 4;
        }
        q0.n.e().a(f6280c, "API version too low. Cannot convert network type value " + oVar);
        return 1;
    }

    public static void d(android.app.job.JobInfo.Builder builder, q0.o oVar) {
        if (android.os.Build.VERSION.SDK_INT < 30 || oVar != q0.o.TEMPORARILY_UNMETERED) {
            builder.setRequiredNetworkType(c(oVar));
        } else {
            builder.setRequiredNetwork(new android.net.NetworkRequest.Builder().addCapability(25).build());
        }
    }

    public android.app.job.JobInfo a(z0.u uVar, int i5) {
        q0.d dVar = uVar.f7041j;
        android.os.PersistableBundle persistableBundle = new android.os.PersistableBundle();
        persistableBundle.putString("EXTRA_WORK_SPEC_ID", uVar.f7032a);
        persistableBundle.putInt("EXTRA_WORK_SPEC_GENERATION", uVar.f());
        persistableBundle.putBoolean("EXTRA_IS_PERIODIC", uVar.m());
        android.app.job.JobInfo.Builder extras = new android.app.job.JobInfo.Builder(i5, this.f6281a).setRequiresCharging(dVar.g()).setRequiresDeviceIdle(dVar.h()).setExtras(persistableBundle);
        d(extras, dVar.d());
        if (!dVar.h()) {
            extras.setBackoffCriteria(uVar.f7044m, uVar.f7043l == q0.a.LINEAR ? 0 : 1);
        }
        long jMax = java.lang.Math.max(uVar.c() - this.f6282b.a(), 0L);
        if (android.os.Build.VERSION.SDK_INT <= 28 || jMax > 0) {
            extras.setMinimumLatency(jMax);
        } else if (!uVar.f7048q) {
            extras.setImportantWhileForeground(true);
        }
        if (dVar.e()) {
            java.util.Iterator<q0.d.c> it = dVar.c().iterator();
            while (it.hasNext()) {
                extras.addTriggerContentUri(b(it.next()));
            }
            extras.setTriggerContentUpdateDelay(dVar.b());
            extras.setTriggerContentMaxDelay(dVar.a());
        }
        extras.setPersisted(false);
        int i6 = android.os.Build.VERSION.SDK_INT;
        extras.setRequiresBatteryNotLow(dVar.f());
        extras.setRequiresStorageNotLow(dVar.i());
        boolean z4 = uVar.f7042k > 0;
        boolean z5 = jMax > 0;
        if (i6 >= 31 && uVar.f7048q && !z4 && !z5) {
            extras.setExpedited(true);
        }
        return extras.build();
    }
}
