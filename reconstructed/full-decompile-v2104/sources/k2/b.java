package k2;

/* JADX INFO: compiled from: JbossLogFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends i2.d {
    public b() {
        super("JBoss Logging");
        b(org.jboss.logging.Logger.class);
    }

    @Override // i2.d
    /* JADX INFO: renamed from: c */
    public i2.b e(java.lang.Class<?> cls) {
        return new k2.a(cls);
    }
}
