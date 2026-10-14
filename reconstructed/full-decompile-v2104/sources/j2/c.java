package j2;

/* JADX INFO: compiled from: ApacheCommonsLogFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c extends i2.d {
    public c() {
        super("Apache Common Logging");
        b(org.apache.commons.logging.LogFactory.class);
    }

    @Override // i2.d
    public void b(java.lang.Class<?> cls) {
        super.b(cls);
        d(j2.c.class);
    }

    @Override // i2.d
    /* JADX INFO: renamed from: c */
    public i2.b e(java.lang.Class<?> cls) {
        try {
            return new j2.a(cls);
        } catch (java.lang.Exception unused) {
            return new j2.b(cls);
        }
    }
}
