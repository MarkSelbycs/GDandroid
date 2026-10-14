package r0;

/* JADX INFO: compiled from: WorkDatabaseMigrations.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class o extends d0.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final r0.o f5863c = new r0.o();

    public o() {
        super(7, 8);
    }

    @Override // d0.b
    public void a(f0.g gVar) {
        m3.k.e(gVar, "db");
        gVar.D("\n    CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec`(`period_start_time`)\n    ");
    }
}
