package r0;

/* JADX INFO: compiled from: WorkDatabaseMigrations.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class v extends d0.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.content.Context f5923c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(android.content.Context context, int i5, int i6) {
        super(i5, i6);
        m3.k.e(context, "mContext");
        this.f5923c = context;
    }

    @Override // d0.b
    public void a(f0.g gVar) {
        m3.k.e(gVar, "db");
        if (this.f3940b >= 10) {
            gVar.O("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new java.lang.Object[]{"reschedule_needed", 1});
        } else {
            this.f5923c.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
        }
    }
}
