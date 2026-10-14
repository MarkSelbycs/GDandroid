package androidx.work.impl.background.systemalarm;

/* JADX INFO: compiled from: CommandHandler.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a implements r0.f {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.lang.String f2669f = q0.n.i("CommandHandler");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f2670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.Map<z0.m, androidx.work.impl.background.systemalarm.c> f2671b = new java.util.HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.Object f2672c = new java.lang.Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final q0.b f2673d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final r0.b0 f2674e;

    public a(android.content.Context context, q0.b bVar, r0.b0 b0Var) {
        this.f2670a = context;
        this.f2673d = bVar;
        this.f2674e = b0Var;
    }

    public static android.content.Intent a(android.content.Context context) {
        android.content.Intent intent = new android.content.Intent(context, (java.lang.Class<?>) androidx.work.impl.background.systemalarm.SystemAlarmService.class);
        intent.setAction("ACTION_CONSTRAINTS_CHANGED");
        return intent;
    }

    public static android.content.Intent b(android.content.Context context, z0.m mVar) {
        android.content.Intent intent = new android.content.Intent(context, (java.lang.Class<?>) androidx.work.impl.background.systemalarm.SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        return q(intent, mVar);
    }

    public static android.content.Intent d(android.content.Context context, z0.m mVar, boolean z4) {
        android.content.Intent intent = new android.content.Intent(context, (java.lang.Class<?>) androidx.work.impl.background.systemalarm.SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z4);
        return q(intent, mVar);
    }

    public static android.content.Intent e(android.content.Context context, z0.m mVar) {
        android.content.Intent intent = new android.content.Intent(context, (java.lang.Class<?>) androidx.work.impl.background.systemalarm.SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        return q(intent, mVar);
    }

    public static android.content.Intent f(android.content.Context context, z0.m mVar) {
        android.content.Intent intent = new android.content.Intent(context, (java.lang.Class<?>) androidx.work.impl.background.systemalarm.SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        return q(intent, mVar);
    }

    public static boolean m(android.os.Bundle bundle, java.lang.String... strArr) {
        if (bundle == null || bundle.isEmpty()) {
            return false;
        }
        for (java.lang.String str : strArr) {
            if (bundle.get(str) == null) {
                return false;
            }
        }
        return true;
    }

    public static z0.m p(android.content.Intent intent) {
        return new z0.m(intent.getStringExtra("KEY_WORKSPEC_ID"), intent.getIntExtra("KEY_WORKSPEC_GENERATION", 0));
    }

    public static android.content.Intent q(android.content.Intent intent, z0.m mVar) {
        intent.putExtra("KEY_WORKSPEC_ID", mVar.b());
        intent.putExtra("KEY_WORKSPEC_GENERATION", mVar.a());
        return intent;
    }

    @Override // r0.f
    public void c(z0.m mVar, boolean z4) {
        synchronized (this.f2672c) {
            androidx.work.impl.background.systemalarm.c cVarRemove = this.f2671b.remove(mVar);
            this.f2674e.c(mVar);
            if (cVarRemove != null) {
                cVarRemove.g(z4);
            }
        }
    }

    public final void g(android.content.Intent intent, int i5, androidx.work.impl.background.systemalarm.d dVar) {
        q0.n.e().a(f2669f, "Handling constraints changed " + intent);
        new androidx.work.impl.background.systemalarm.b(this.f2670a, this.f2673d, i5, dVar).a();
    }

    public final void h(android.content.Intent intent, int i5, androidx.work.impl.background.systemalarm.d dVar) {
        synchronized (this.f2672c) {
            z0.m mVarP = p(intent);
            q0.n nVarE = q0.n.e();
            java.lang.String str = f2669f;
            nVarE.a(str, "Handing delay met for " + mVarP);
            if (this.f2671b.containsKey(mVarP)) {
                q0.n.e().a(str, "WorkSpec " + mVarP + " is is already being handled for ACTION_DELAY_MET");
            } else {
                androidx.work.impl.background.systemalarm.c cVar = new androidx.work.impl.background.systemalarm.c(this.f2670a, i5, dVar, this.f2674e.d(mVarP));
                this.f2671b.put(mVarP, cVar);
                cVar.f();
            }
        }
    }

    public final void i(android.content.Intent intent, int i5) {
        z0.m mVarP = p(intent);
        boolean z4 = intent.getExtras().getBoolean("KEY_NEEDS_RESCHEDULE");
        q0.n.e().a(f2669f, "Handling onExecutionCompleted " + intent + ", " + i5);
        c(mVarP, z4);
    }

    public final void j(android.content.Intent intent, int i5, androidx.work.impl.background.systemalarm.d dVar) {
        q0.n.e().a(f2669f, "Handling reschedule " + intent + ", " + i5);
        dVar.g().y();
    }

    public final void k(android.content.Intent intent, int i5, androidx.work.impl.background.systemalarm.d dVar) {
        z0.m mVarP = p(intent);
        q0.n nVarE = q0.n.e();
        java.lang.String str = f2669f;
        nVarE.a(str, "Handling schedule work for " + mVarP);
        androidx.work.impl.WorkDatabase workDatabaseU = dVar.g().u();
        workDatabaseU.e();
        try {
            z0.u uVarF = workDatabaseU.J().f(mVarP.b());
            if (uVarF == null) {
                q0.n.e().k(str, "Skipping scheduling " + mVarP + " because it's no longer in the DB");
                return;
            }
            if (uVarF.f7033b.e()) {
                q0.n.e().k(str, "Skipping scheduling " + mVarP + "because it is finished.");
                return;
            }
            long jC = uVarF.c();
            if (uVarF.k()) {
                q0.n.e().a(str, "Opportunistically setting an alarm for " + mVarP + "at " + jC);
                t0.a.c(this.f2670a, workDatabaseU, mVarP, jC);
                dVar.f().b().execute(new androidx.work.impl.background.systemalarm.d.b(dVar, a(this.f2670a), i5));
            } else {
                q0.n.e().a(str, "Setting up Alarms for " + mVarP + "at " + jC);
                t0.a.c(this.f2670a, workDatabaseU, mVarP, jC);
            }
            workDatabaseU.B();
        } finally {
            workDatabaseU.i();
        }
    }

    public final void l(android.content.Intent intent, androidx.work.impl.background.systemalarm.d dVar) {
        java.util.List<r0.a0> listB;
        android.os.Bundle extras = intent.getExtras();
        java.lang.String string = extras.getString("KEY_WORKSPEC_ID");
        if (extras.containsKey("KEY_WORKSPEC_GENERATION")) {
            int i5 = extras.getInt("KEY_WORKSPEC_GENERATION");
            listB = new java.util.ArrayList<>(1);
            r0.a0 a0VarC = this.f2674e.c(new z0.m(string, i5));
            if (a0VarC != null) {
                listB.add(a0VarC);
            }
        } else {
            listB = this.f2674e.b(string);
        }
        for (r0.a0 a0Var : listB) {
            q0.n.e().a(f2669f, "Handing stopWork work for " + string);
            dVar.i().b(a0Var);
            t0.a.a(this.f2670a, dVar.g().u(), a0Var.a());
            dVar.c(a0Var.a(), false);
        }
    }

    public boolean n() {
        boolean z4;
        synchronized (this.f2672c) {
            z4 = !this.f2671b.isEmpty();
        }
        return z4;
    }

    public void o(android.content.Intent intent, int i5, androidx.work.impl.background.systemalarm.d dVar) {
        java.lang.String action = intent.getAction();
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            g(intent, i5, dVar);
            return;
        }
        if ("ACTION_RESCHEDULE".equals(action)) {
            j(intent, i5, dVar);
            return;
        }
        if (!m(intent.getExtras(), "KEY_WORKSPEC_ID")) {
            q0.n.e().c(f2669f, "Invalid request for " + action + " , requires KEY_WORKSPEC_ID .");
            return;
        }
        if ("ACTION_SCHEDULE_WORK".equals(action)) {
            k(intent, i5, dVar);
            return;
        }
        if ("ACTION_DELAY_MET".equals(action)) {
            h(intent, i5, dVar);
            return;
        }
        if ("ACTION_STOP_WORK".equals(action)) {
            l(intent, dVar);
            return;
        }
        if ("ACTION_EXECUTION_COMPLETED".equals(action)) {
            i(intent, i5);
            return;
        }
        q0.n.e().k(f2669f, "Ignoring intent " + intent);
    }
}
