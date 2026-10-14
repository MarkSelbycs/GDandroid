package j2;

/* JADX INFO: compiled from: ApacheCommonsLog.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends i2.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final transient org.apache.commons.logging.Log f4785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.String f4786c;

    public b(org.apache.commons.logging.Log log, java.lang.String str) {
        this.f4785b = log;
        this.f4786c = str;
    }

    public b(java.lang.Class<?> cls) {
        this(org.apache.commons.logging.LogFactory.getLog(cls), cls == null ? "null" : cls.getName());
    }
}
