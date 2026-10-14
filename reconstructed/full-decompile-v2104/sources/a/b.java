package a;

/* JADX INFO: compiled from: CoroutineDebugging.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f0a = "_COROUTINE";

    public static final java.lang.StackTraceElement b(java.lang.Throwable th, java.lang.String str) {
        java.lang.StackTraceElement stackTraceElement = th.getStackTrace()[0];
        return new java.lang.StackTraceElement(f0a + '.' + str, "_", stackTraceElement.getFileName(), stackTraceElement.getLineNumber());
    }
}
