package p2;

/* JADX INFO: compiled from: TinyLogFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d extends i2.d {
    public d() {
        super("TinyLog");
        b(org.pmw.tinylog.Logger.class);
    }

    @Override // i2.d
    /* JADX INFO: renamed from: c */
    public i2.b e(java.lang.Class<?> cls) {
        return new p2.c(cls);
    }
}
