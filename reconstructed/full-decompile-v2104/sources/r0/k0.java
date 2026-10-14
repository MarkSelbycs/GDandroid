package r0;

/* JADX INFO: compiled from: WorkDatabase_AutoMigration_17_18_Impl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class k0 extends d0.b {
    public k0() {
        super(17, 18);
    }

    @Override // d0.b
    public void a(f0.g gVar) {
        gVar.D("ALTER TABLE `WorkSpec` ADD COLUMN `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807");
        gVar.D("ALTER TABLE `WorkSpec` ADD COLUMN `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0");
    }
}
