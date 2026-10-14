package r0;

/* JADX INFO: compiled from: WorkDatabase.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d extends androidx.room.i0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q0.b f5846a;

    public d(q0.b bVar) {
        m3.k.e(bVar, "clock");
        this.f5846a = bVar;
    }

    @Override // androidx.room.i0.b
    public void c(f0.g gVar) {
        m3.k.e(gVar, "db");
        super.c(gVar);
        gVar.m();
        try {
            gVar.D(e());
            gVar.J();
        } finally {
            gVar.k();
        }
    }

    public final long d() {
        return this.f5846a.a() - r0.e0.f5849a;
    }

    public final java.lang.String e() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < " + d() + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }
}
