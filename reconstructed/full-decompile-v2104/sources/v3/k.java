package v3;

/* JADX INFO: compiled from: Channels.common.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final /* synthetic */ class k {
    public static final void a(v3.s<?> sVar, java.lang.Throwable th) {
        java.util.concurrent.CancellationException cancellationExceptionA = null;
        if (th != null) {
            cancellationExceptionA = th instanceof java.util.concurrent.CancellationException ? (java.util.concurrent.CancellationException) th : null;
            if (cancellationExceptionA == null) {
                cancellationExceptionA = t3.y0.a("Channel was consumed, consumer had failed", th);
            }
        }
        sVar.e(cancellationExceptionA);
    }
}
