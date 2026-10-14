package p2;

/* JADX INFO: compiled from: TinyLog.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c extends i2.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.String f5492c;

    public c(java.lang.Class<?> cls) {
        this(cls == null ? "null" : cls.getName());
    }

    public c(java.lang.String str) {
        this.f5492c = str;
        this.f5491b = org.pmw.tinylog.Logger.getLevel(str).ordinal();
    }
}
