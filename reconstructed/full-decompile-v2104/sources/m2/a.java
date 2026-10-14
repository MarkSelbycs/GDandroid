package m2;

/* JADX INFO: compiled from: Log4j2Log.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends i2.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final transient org.apache.logging.log4j.Logger f5169b;

    public a(org.apache.logging.log4j.Logger logger) {
        this.f5169b = logger;
    }

    public a(java.lang.Class<?> cls) {
        this(org.apache.logging.log4j.LogManager.getLogger(cls));
    }
}
