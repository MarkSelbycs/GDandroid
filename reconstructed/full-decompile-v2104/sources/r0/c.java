package r0;

/* JADX INFO: compiled from: WorkDatabaseMigrations.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c implements d0.a {
    @Override // d0.a
    public void a(f0.g gVar) {
        m3.k.e(gVar, "db");
        gVar.D("UPDATE WorkSpec SET `last_enqueue_time` = -1 WHERE `last_enqueue_time` = 0");
    }
}
