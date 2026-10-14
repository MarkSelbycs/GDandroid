package r0;

/* JADX INFO: compiled from: WorkDatabaseMigrations.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class m extends d0.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final r0.m f5860c = new r0.m();

    public m() {
        super(4, 5);
    }

    @Override // d0.b
    public void a(f0.g gVar) {
        m3.k.e(gVar, "db");
        gVar.D("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
        gVar.D("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
    }
}
