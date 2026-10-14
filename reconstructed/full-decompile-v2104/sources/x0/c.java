package x0;

/* JADX INFO: compiled from: BatteryNotLowTracker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c extends androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker<java.lang.Boolean> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(android.content.Context context, c1.b bVar) {
        super(context, bVar);
        m3.k.e(context, "context");
        m3.k.e(bVar, "taskExecutor");
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public android.content.IntentFilter j() {
        android.content.IntentFilter intentFilter = new android.content.IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_OKAY");
        intentFilter.addAction("android.intent.action.BATTERY_LOW");
        return intentFilter;
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public void k(android.content.Intent intent) {
        m3.k.e(intent, "intent");
        if (intent.getAction() == null) {
            return;
        }
        q0.n.e().a(x0.d.f6775a, "Received " + intent.getAction());
        java.lang.String action = intent.getAction();
        if (action != null) {
            int iHashCode = action.hashCode();
            if (iHashCode == -1980154005) {
                if (action.equals("android.intent.action.BATTERY_OKAY")) {
                    g(java.lang.Boolean.TRUE);
                }
            } else if (iHashCode == 490310653 && action.equals("android.intent.action.BATTERY_LOW")) {
                g(java.lang.Boolean.FALSE);
            }
        }
    }

    @Override // x0.g
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public java.lang.Boolean e() {
        android.content.Intent intentRegisterReceiver = d().registerReceiver(null, new android.content.IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver == null) {
            q0.n.e().c(x0.d.f6775a, "getInitialState - null intent received");
            return java.lang.Boolean.FALSE;
        }
        int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
        float intExtra2 = intentRegisterReceiver.getIntExtra("level", -1) / intentRegisterReceiver.getIntExtra("scale", -1);
        boolean z4 = true;
        if (intExtra != 1 && intExtra2 <= 0.15f) {
            z4 = false;
        }
        return java.lang.Boolean.valueOf(z4);
    }
}
