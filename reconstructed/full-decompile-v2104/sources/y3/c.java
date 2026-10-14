package y3;

/* JADX INFO: compiled from: Concurrent.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.reflect.Method f6887a;

    static {
        java.lang.reflect.Method method;
        try {
            method = java.util.concurrent.ScheduledThreadPoolExecutor.class.getMethod("setRemoveOnCancelPolicy", java.lang.Boolean.TYPE);
        } catch (java.lang.Throwable unused) {
            method = null;
        }
        f6887a = method;
    }

    public static final boolean a(java.util.concurrent.Executor executor) {
        java.lang.reflect.Method method;
        try {
            java.util.concurrent.ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = executor instanceof java.util.concurrent.ScheduledThreadPoolExecutor ? (java.util.concurrent.ScheduledThreadPoolExecutor) executor : null;
            if (scheduledThreadPoolExecutor == null || (method = f6887a) == null) {
                return false;
            }
            method.invoke(scheduledThreadPoolExecutor, java.lang.Boolean.TRUE);
            return true;
        } catch (java.lang.Throwable unused) {
            return false;
        }
    }
}
