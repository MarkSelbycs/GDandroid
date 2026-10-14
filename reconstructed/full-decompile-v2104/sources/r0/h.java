package r0;

/* JADX INFO: compiled from: WorkDatabaseMigrations.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class h extends d0.b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final r0.h f5854c = new r0.h();

    public h() {
        super(12, 13);
    }

    @Override // d0.b
    public void a(f0.g gVar) {
        m3.k.e(gVar, "db");
        gVar.D("UPDATE workspec SET required_network_type = 0 WHERE required_network_type IS NULL ");
        gVar.D("UPDATE workspec SET content_uri_triggers = x'' WHERE content_uri_triggers is NULL");
    }
}
