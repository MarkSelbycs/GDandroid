package l2;

/* JADX INFO: compiled from: Log4jLog.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends i2.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final org.apache.log4j.Logger f5144b;

    public a(org.apache.log4j.Logger logger) {
        this.f5144b = logger;
    }

    public a(java.lang.Class<?> cls) {
        this(cls == null ? "null" : cls.getName());
    }

    public a(java.lang.String str) {
        this(org.apache.log4j.Logger.getLogger(str));
    }
}
