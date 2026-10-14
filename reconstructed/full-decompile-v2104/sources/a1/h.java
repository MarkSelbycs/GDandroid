package a1;

/* JADX INFO: compiled from: IdGenerator.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class h {
    public static final void c(android.content.Context context, f0.g gVar) {
        m3.k.e(context, "context");
        m3.k.e(gVar, "sqLiteDatabase");
        android.content.SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.id", 0);
        if (sharedPreferences.contains("next_job_scheduler_id") || sharedPreferences.contains("next_job_scheduler_id")) {
            int i5 = sharedPreferences.getInt("next_job_scheduler_id", 0);
            int i6 = sharedPreferences.getInt("next_alarm_manager_id", 0);
            gVar.m();
            try {
                gVar.O("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new java.lang.Object[]{"next_job_scheduler_id", java.lang.Integer.valueOf(i5)});
                gVar.O("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new java.lang.Object[]{"next_alarm_manager_id", java.lang.Integer.valueOf(i6)});
                sharedPreferences.edit().clear().apply();
                gVar.J();
            } finally {
                gVar.k();
            }
        }
    }

    public static final int d(androidx.work.impl.WorkDatabase workDatabase, java.lang.String str) {
        java.lang.Long lA = workDatabase.E().a(str);
        int iLongValue = lA != null ? (int) lA.longValue() : 0;
        e(workDatabase, str, iLongValue != Integer.MAX_VALUE ? iLongValue + 1 : 0);
        return iLongValue;
    }

    public static final void e(androidx.work.impl.WorkDatabase workDatabase, java.lang.String str, int i5) {
        workDatabase.E().b(new z0.d(str, java.lang.Long.valueOf(i5)));
    }
}
