package a1;

/* JADX INFO: compiled from: PreferenceUtils.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.work.impl.WorkDatabase f30a;

    public m(androidx.work.impl.WorkDatabase workDatabase) {
        this.f30a = workDatabase;
    }

    public static void c(android.content.Context context, f0.g gVar) {
        android.content.SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
        if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
            long j5 = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
            long j6 = sharedPreferences.getBoolean("reschedule_needed", false) ? 1L : 0L;
            gVar.m();
            try {
                gVar.O("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new java.lang.Object[]{"last_cancel_all_time_ms", java.lang.Long.valueOf(j5)});
                gVar.O("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new java.lang.Object[]{"reschedule_needed", java.lang.Long.valueOf(j6)});
                sharedPreferences.edit().clear().apply();
                gVar.J();
            } finally {
                gVar.k();
            }
        }
    }

    public long a() {
        java.lang.Long lA = this.f30a.E().a("last_force_stop_ms");
        if (lA != null) {
            return lA.longValue();
        }
        return 0L;
    }

    public boolean b() {
        java.lang.Long lA = this.f30a.E().a("reschedule_needed");
        return lA != null && lA.longValue() == 1;
    }

    public void d(long j5) {
        this.f30a.E().b(new z0.d("last_cancel_all_time_ms", java.lang.Long.valueOf(j5)));
    }

    public void e(long j5) {
        this.f30a.E().b(new z0.d("last_force_stop_ms", java.lang.Long.valueOf(j5)));
    }

    public void f(boolean z4) {
        this.f30a.E().b(new z0.d("reschedule_needed", z4));
    }
}
