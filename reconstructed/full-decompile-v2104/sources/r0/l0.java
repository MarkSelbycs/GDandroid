package r0;

/* JADX INFO: compiled from: WorkDatabase_AutoMigration_18_19_Impl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l0 extends d0.b {
    public l0() {
        super(18, 19);
    }

    @Override // d0.b
    public void a(f0.g gVar) {
        gVar.D("ALTER TABLE `WorkSpec` ADD COLUMN `stop_reason` INTEGER NOT NULL DEFAULT -256");
    }
}
