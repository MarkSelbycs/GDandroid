package androidx.work.impl.background.systemalarm;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ConstraintProxyUpdateReceiver extends android.content.BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f2660a = q0.n.i("ConstrntProxyUpdtRecvr");

    public class a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ android.content.Intent f2661a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ android.content.Context f2662b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ android.content.BroadcastReceiver.PendingResult f2663c;

        public a(android.content.Intent intent, android.content.Context context, android.content.BroadcastReceiver.PendingResult pendingResult) {
            this.f2661a = intent;
            this.f2662b = context;
            this.f2663c = pendingResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                boolean booleanExtra = this.f2661a.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra2 = this.f2661a.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                boolean booleanExtra3 = this.f2661a.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                boolean booleanExtra4 = this.f2661a.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                q0.n.e().a(androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver.f2660a, "Updating proxies: (BatteryNotLowProxy (" + booleanExtra + "), BatteryChargingProxy (" + booleanExtra2 + "), StorageNotLowProxy (" + booleanExtra3 + "), NetworkStateProxy (" + booleanExtra4 + "), ");
                a1.l.c(this.f2662b, androidx.work.impl.background.systemalarm.ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                a1.l.c(this.f2662b, androidx.work.impl.background.systemalarm.ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                a1.l.c(this.f2662b, androidx.work.impl.background.systemalarm.ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                a1.l.c(this.f2662b, androidx.work.impl.background.systemalarm.ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
            } finally {
                this.f2663c.finish();
            }
        }
    }

    public static android.content.Intent a(android.content.Context context, boolean z4, boolean z5, boolean z6, boolean z7) {
        android.content.Intent intent = new android.content.Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
        intent.setComponent(new android.content.ComponentName(context, (java.lang.Class<?>) androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver.class));
        intent.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z4).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z5).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z6).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z7);
        return intent;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(android.content.Context context, android.content.Intent intent) {
        java.lang.String action = intent != null ? intent.getAction() : null;
        if ("androidx.work.impl.background.systemalarm.UpdateProxies".equals(action)) {
            r0.p0.o(context).w().a(new androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver.a(intent, context, goAsync()));
            return;
        }
        q0.n.e().a(f2660a, "Ignoring unknown action " + action);
    }
}
