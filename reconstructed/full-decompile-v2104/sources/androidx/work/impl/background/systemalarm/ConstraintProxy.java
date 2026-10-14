package androidx.work.impl.background.systemalarm;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class ConstraintProxy extends android.content.BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f2659a = q0.n.i("ConstraintProxy");

    public static class BatteryChargingProxy extends androidx.work.impl.background.systemalarm.ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(android.content.Context context, android.content.Intent intent) {
            super.onReceive(context, intent);
        }
    }

    public static class BatteryNotLowProxy extends androidx.work.impl.background.systemalarm.ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(android.content.Context context, android.content.Intent intent) {
            super.onReceive(context, intent);
        }
    }

    public static class NetworkStateProxy extends androidx.work.impl.background.systemalarm.ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(android.content.Context context, android.content.Intent intent) {
            super.onReceive(context, intent);
        }
    }

    public static class StorageNotLowProxy extends androidx.work.impl.background.systemalarm.ConstraintProxy {
        @Override // androidx.work.impl.background.systemalarm.ConstraintProxy, android.content.BroadcastReceiver
        public /* bridge */ /* synthetic */ void onReceive(android.content.Context context, android.content.Intent intent) {
            super.onReceive(context, intent);
        }
    }

    public static void a(android.content.Context context, java.util.List<z0.u> list) {
        java.util.Iterator<z0.u> it = list.iterator();
        boolean zF = false;
        boolean zG = false;
        boolean zI = false;
        boolean z4 = false;
        while (it.hasNext()) {
            q0.d dVar = it.next().f7041j;
            zF |= dVar.f();
            zG |= dVar.g();
            zI |= dVar.i();
            z4 |= dVar.d() != q0.o.NOT_REQUIRED;
            if (zF && zG && zI && z4) {
                break;
            }
        }
        context.sendBroadcast(androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver.a(context, zF, zG, zI, z4));
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(android.content.Context context, android.content.Intent intent) {
        q0.n.e().a(f2659a, "onReceive : " + intent);
        context.startService(androidx.work.impl.background.systemalarm.a.a(context));
    }
}
