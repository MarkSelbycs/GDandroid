package x0;

/* JADX INFO: compiled from: StorageNotLowTracker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class k extends androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker<java.lang.Boolean> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(android.content.Context context, c1.b bVar) {
        super(context, bVar);
        m3.k.e(context, "context");
        m3.k.e(bVar, "taskExecutor");
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public android.content.IntentFilter j() {
        android.content.IntentFilter intentFilter = new android.content.IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        return intentFilter;
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public void k(android.content.Intent intent) {
        m3.k.e(intent, "intent");
        if (intent.getAction() == null) {
            return;
        }
        q0.n.e().a(x0.l.f6789a, "Received " + intent.getAction());
        java.lang.String action = intent.getAction();
        if (action != null) {
            int iHashCode = action.hashCode();
            if (iHashCode == -1181163412) {
                if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                    g(java.lang.Boolean.FALSE);
                }
            } else if (iHashCode == -730838620 && action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                g(java.lang.Boolean.TRUE);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003d  */
    @Override // x0.g
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public java.lang.Boolean e() {
        android.content.Intent intentRegisterReceiver = d().registerReceiver(null, j());
        boolean z4 = false;
        if (intentRegisterReceiver == null || intentRegisterReceiver.getAction() == null) {
            z4 = true;
        } else {
            java.lang.String action = intentRegisterReceiver.getAction();
            if (action != null) {
                int iHashCode = action.hashCode();
                if (iHashCode == -1181163412) {
                    action.equals("android.intent.action.DEVICE_STORAGE_LOW");
                } else if (iHashCode == -730838620 && action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                    z4 = true;
                }
            }
        }
        return java.lang.Boolean.valueOf(z4);
    }
}
