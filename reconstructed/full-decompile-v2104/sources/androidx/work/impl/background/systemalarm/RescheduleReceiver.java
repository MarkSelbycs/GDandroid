package androidx.work.impl.background.systemalarm;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class RescheduleReceiver extends android.content.BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f2665a = q0.n.i("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public void onReceive(android.content.Context context, android.content.Intent intent) {
        q0.n.e().a(f2665a, "Received intent " + intent);
        try {
            r0.p0.o(context).z(goAsync());
        } catch (java.lang.IllegalStateException e5) {
            q0.n.e().d(f2665a, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e5);
        }
    }
}
