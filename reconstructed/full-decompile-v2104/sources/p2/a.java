package p2;

/* JADX INFO: compiled from: TinyLog2.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends i2.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final org.tinylog.provider.LoggingProvider f5487d = org.tinylog.provider.ProviderRegistry.getLoggingProvider();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final org.tinylog.format.MessageFormatter f5488e = new org.tinylog.format.AdvancedMessageFormatter(org.tinylog.configuration.Configuration.getLocale(), org.tinylog.configuration.Configuration.isEscapingEnabled());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.String f5490c;

    public a(java.lang.Class<?> cls) {
        this(cls == null ? "null" : cls.getName());
    }

    public a(java.lang.String str) {
        this.f5490c = str;
        this.f5489b = f5487d.getMinimumLevel().ordinal();
    }
}
