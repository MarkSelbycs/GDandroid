package androidx.work.impl.background.systemalarm;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SystemAlarmService extends androidx.lifecycle.LifecycleService implements androidx.work.impl.background.systemalarm.d.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final java.lang.String f2666d = q0.n.i("SystemAlarmService");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public androidx.work.impl.background.systemalarm.d f2667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2668c;

    @Override // androidx.work.impl.background.systemalarm.d.c
    public void b() {
        this.f2668c = true;
        q0.n.e().a(f2666d, "All commands completed in dispatcher");
        a1.u.a();
        stopSelf();
    }

    public final void e() {
        androidx.work.impl.background.systemalarm.d dVar = new androidx.work.impl.background.systemalarm.d(this);
        this.f2667b = dVar;
        dVar.m(this);
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onCreate() {
        super.onCreate();
        e();
        this.f2668c = false;
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f2668c = true;
        this.f2667b.k();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public int onStartCommand(android.content.Intent intent, int i5, int i6) {
        super.onStartCommand(intent, i5, i6);
        if (this.f2668c) {
            q0.n.e().f(f2666d, "Re-initializing SystemAlarmDispatcher after a request to shut-down.");
            this.f2667b.k();
            e();
            this.f2668c = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f2667b.a(intent, i6);
        return 3;
    }
}
