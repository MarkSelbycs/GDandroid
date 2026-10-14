package p2;

/* JADX INFO: compiled from: TinyLog2Factory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends i2.d {
    public b() {
        super("TinyLog");
        b(org.tinylog.Logger.class);
    }

    @Override // i2.d
    /* JADX INFO: renamed from: c */
    public i2.b e(java.lang.Class<?> cls) {
        return new p2.a(cls);
    }
}
