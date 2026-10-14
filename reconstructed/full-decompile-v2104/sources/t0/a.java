package t0;

/* JADX INFO: compiled from: Alarms.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f6152a = q0.n.i("Alarms");

    /* JADX INFO: renamed from: t0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Alarms.java */
    public static class C0081a {
        public static void a(android.app.AlarmManager alarmManager, int i5, long j5, android.app.PendingIntent pendingIntent) {
            alarmManager.setExact(i5, j5, pendingIntent);
        }
    }

    public static void a(android.content.Context context, androidx.work.impl.WorkDatabase workDatabase, z0.m mVar) {
        z0.j jVarG = workDatabase.G();
        z0.i iVarI = jVarG.i(mVar);
        if (iVarI != null) {
            b(context, mVar, iVarI.f7004c);
            q0.n.e().a(f6152a, "Removing SystemIdInfo for workSpecId (" + mVar + ")");
            jVarG.h(mVar);
        }
    }

    public static void b(android.content.Context context, z0.m mVar, int i5) {
        android.app.AlarmManager alarmManager = (android.app.AlarmManager) context.getSystemService("alarm");
        android.app.PendingIntent service = android.app.PendingIntent.getService(context, i5, androidx.work.impl.background.systemalarm.a.b(context, mVar), 603979776);
        if (service == null || alarmManager == null) {
            return;
        }
        q0.n.e().a(f6152a, "Cancelling existing alarm with (workSpecId, systemId) (" + mVar + ", " + i5 + ")");
        alarmManager.cancel(service);
    }

    public static void c(android.content.Context context, androidx.work.impl.WorkDatabase workDatabase, z0.m mVar, long j5) {
        z0.j jVarG = workDatabase.G();
        z0.i iVarI = jVarG.i(mVar);
        if (iVarI != null) {
            b(context, mVar, iVarI.f7004c);
            d(context, mVar, iVarI.f7004c, j5);
        } else {
            int iC = new a1.g(workDatabase).c();
            jVarG.c(z0.l.a(mVar, iC));
            d(context, mVar, iC, j5);
        }
    }

    public static void d(android.content.Context context, z0.m mVar, int i5, long j5) {
        android.app.AlarmManager alarmManager = (android.app.AlarmManager) context.getSystemService("alarm");
        android.app.PendingIntent service = android.app.PendingIntent.getService(context, i5, androidx.work.impl.background.systemalarm.a.b(context, mVar), 201326592);
        if (alarmManager != null) {
            t0.a.C0081a.a(alarmManager, 0, j5, service);
        }
    }
}
