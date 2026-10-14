package androidx.work.impl.diagnostics;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class DiagnosticsReceiver extends android.content.BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f2720a = q0.n.i("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public void onReceive(android.content.Context context, android.content.Intent intent) {
        if (intent == null) {
            return;
        }
        q0.n.e().a(f2720a, "Requesting diagnostics");
        try {
            q0.z.e(context).c(q0.q.e(androidx.work.impl.workers.DiagnosticsWorker.class));
        } catch (java.lang.IllegalStateException e5) {
            q0.n.e().d(f2720a, "WorkManager is not initialized", e5);
        }
    }
}
