package r0;

/* JADX INFO: compiled from: WorkDatabaseMigrations.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class n extends d0.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final r0.n f5862c = new r0.n();

    public n() {
        super(6, 7);
    }

    @Override // d0.b
    public void a(f0.g gVar) {
        m3.k.e(gVar, "db");
        gVar.D("\n    CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress`\n    BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`)\n    REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )\n    ");
    }
}
