package r0;

/* JADX INFO: compiled from: WorkDatabaseMigrations.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class q0 extends d0.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.content.Context f5884c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q0(android.content.Context context) {
        super(9, 10);
        m3.k.e(context, "context");
        this.f5884c = context;
    }

    @Override // d0.b
    public void a(f0.g gVar) {
        m3.k.e(gVar, "db");
        gVar.D("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
        a1.m.c(this.f5884c, gVar);
        a1.h.c(this.f5884c, gVar);
    }
}
