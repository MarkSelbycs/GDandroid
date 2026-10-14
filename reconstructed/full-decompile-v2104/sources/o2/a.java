package o2;

/* JADX INFO: compiled from: Slf4jLog.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends i2.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final transient org.slf4j.Logger f5322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f5323c;

    public a(org.slf4j.Logger logger) {
        this.f5322b = logger;
        this.f5323c = logger instanceof org.slf4j.spi.LocationAwareLogger;
    }

    public static org.slf4j.Logger b(java.lang.Class<?> cls) {
        return cls == null ? org.slf4j.LoggerFactory.getLogger("") : org.slf4j.LoggerFactory.getLogger(cls);
    }

    public a(java.lang.Class<?> cls) {
        this(b(cls));
    }
}
