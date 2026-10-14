package k2;

/* JADX INFO: compiled from: JbossLog.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends i2.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final transient org.jboss.logging.Logger f4862b;

    public a(org.jboss.logging.Logger logger) {
        this.f4862b = logger;
    }

    public a(java.lang.Class<?> cls) {
        this(cls == null ? "null" : cls.getName());
    }

    public a(java.lang.String str) {
        this(org.jboss.logging.Logger.getLogger(str));
    }
}
