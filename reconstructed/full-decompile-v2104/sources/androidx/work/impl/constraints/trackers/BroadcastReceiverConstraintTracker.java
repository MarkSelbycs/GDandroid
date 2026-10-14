package androidx.work.impl.constraints.trackers;

/* JADX INFO: compiled from: BroadcastReceiverConstraintTracker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class BroadcastReceiverConstraintTracker<T> extends x0.g<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final android.content.BroadcastReceiver f2718f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BroadcastReceiverConstraintTracker(android.content.Context context, c1.b bVar) {
        super(context, bVar);
        m3.k.e(context, "context");
        m3.k.e(bVar, "taskExecutor");
        this.f2718f = new android.content.BroadcastReceiver(this) { // from class: androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker$broadcastReceiver$1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker<T> f2719a;

            {
                this.f2719a = this;
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(android.content.Context context2, android.content.Intent intent) {
                m3.k.e(context2, "context");
                m3.k.e(intent, "intent");
                this.f2719a.k(intent);
            }
        };
    }

    @Override // x0.g
    public void h() {
        q0.n.e().a(x0.e.f6776a, getClass().getSimpleName() + ": registering receiver");
        d().registerReceiver(this.f2718f, j());
    }

    @Override // x0.g
    public void i() {
        q0.n.e().a(x0.e.f6776a, getClass().getSimpleName() + ": unregistering receiver");
        d().unregisterReceiver(this.f2718f);
    }

    public abstract android.content.IntentFilter j();

    public abstract void k(android.content.Intent intent);
}
