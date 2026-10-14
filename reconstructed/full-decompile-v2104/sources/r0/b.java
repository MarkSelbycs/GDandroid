package r0;

/* JADX INFO: compiled from: WorkDatabaseMigrations.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b implements d0.a {
    @Override // d0.a
    public void a(f0.g gVar) {
        m3.k.e(gVar, "db");
        gVar.D("UPDATE workspec SET period_count = 1 WHERE last_enqueue_time <> 0 AND interval_duration <> 0");
        android.content.ContentValues contentValues = new android.content.ContentValues(1);
        contentValues.put("last_enqueue_time", java.lang.Long.valueOf(java.lang.System.currentTimeMillis()));
        gVar.U("WorkSpec", 3, contentValues, "last_enqueue_time = 0 AND interval_duration <> 0 ", new java.lang.Object[0]);
    }
}
