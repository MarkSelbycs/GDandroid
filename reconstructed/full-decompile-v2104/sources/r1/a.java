package r1;

/* JADX INFO: compiled from: ExceptionUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {
    public static java.lang.String a(java.lang.Throwable th) {
        return th == null ? "null" : b2.c.i("{}: {}", th.getClass().getSimpleName(), th.getMessage());
    }
}
