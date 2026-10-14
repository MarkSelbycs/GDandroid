package x0;

/* JADX INFO: compiled from: BatteryChargingTracker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a extends androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker<java.lang.Boolean> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(android.content.Context context, c1.b bVar) {
        super(context, bVar);
        m3.k.e(context, "context");
        m3.k.e(bVar, "taskExecutor");
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public android.content.IntentFilter j() {
        android.content.IntentFilter intentFilter = new android.content.IntentFilter();
        intentFilter.addAction("android.os.action.CHARGING");
        intentFilter.addAction("android.os.action.DISCHARGING");
        return intentFilter;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public void k(android.content.Intent intent) {
        m3.k.e(intent, "intent");
        java.lang.String action = intent.getAction();
        if (action == null) {
        }
        q0.n.e().a(x0.b.f6774a, "Received " + action);
        switch (action.hashCode()) {
            case -1886648615:
                if (action.equals("android.intent.action.ACTION_POWER_DISCONNECTED")) {
                    g(java.lang.Boolean.FALSE);
                    break;
                }
                break;
            case -54942926:
                if (action.equals("android.os.action.DISCHARGING")) {
                    g(java.lang.Boolean.FALSE);
                    break;
                }
                break;
            case 948344062:
                if (action.equals("android.os.action.CHARGING")) {
                    g(java.lang.Boolean.TRUE);
                    break;
                }
                break;
            case 1019184907:
                if (action.equals("android.intent.action.ACTION_POWER_CONNECTED")) {
                    g(java.lang.Boolean.TRUE);
                    break;
                }
                break;
        }
    }

    public final boolean l(android.content.Intent intent) {
        int intExtra = intent.getIntExtra("status", -1);
        return intExtra == 2 || intExtra == 5;
    }

    @Override // x0.g
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public java.lang.Boolean e() {
        android.content.Intent intentRegisterReceiver = d().registerReceiver(null, new android.content.IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intentRegisterReceiver != null) {
            return java.lang.Boolean.valueOf(l(intentRegisterReceiver));
        }
        q0.n.e().c(x0.b.f6774a, "getInitialState - null intent received");
        return java.lang.Boolean.FALSE;
    }
}
