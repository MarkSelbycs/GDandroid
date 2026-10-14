package l2;

/* JADX INFO: compiled from: Log4jLogFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends i2.d {
    public b() {
        super("Log4j");
        b(org.apache.log4j.Logger.class);
    }

    @Override // i2.d
    /* JADX INFO: renamed from: c */
    public i2.b e(java.lang.Class<?> cls) {
        return new l2.a(cls);
    }
}
