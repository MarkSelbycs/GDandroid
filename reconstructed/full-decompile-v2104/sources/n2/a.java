package n2;

/* JADX INFO: compiled from: LogTubeLog.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends i2.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final io.github.logtube.core.IEventLogger f5255b;

    public a(io.github.logtube.core.IEventLogger iEventLogger) {
        this.f5255b = iEventLogger;
    }

    public a(java.lang.Class<?> cls) {
        this(cls == null ? "null" : cls.getName());
    }

    public a(java.lang.String str) {
        this(io.github.logtube.Logtube.getLogger(str));
    }
}
