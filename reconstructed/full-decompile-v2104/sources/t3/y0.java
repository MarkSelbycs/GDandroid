package t3;

/* JADX INFO: compiled from: Exceptions.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class y0 {
    public static final java.util.concurrent.CancellationException a(java.lang.String str, java.lang.Throwable th) {
        java.util.concurrent.CancellationException cancellationException = new java.util.concurrent.CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }
}
