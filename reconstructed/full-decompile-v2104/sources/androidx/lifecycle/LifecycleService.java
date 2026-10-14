package androidx.lifecycle;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class LifecycleService extends android.app.Service implements androidx.lifecycle.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.lifecycle.n f1748a = new androidx.lifecycle.n(this);

    @Override // androidx.lifecycle.g
    public androidx.lifecycle.d getLifecycle() {
        return this.f1748a.a();
    }

    @Override // android.app.Service
    public android.os.IBinder onBind(android.content.Intent intent) {
        this.f1748a.b();
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f1748a.c();
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f1748a.d();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onStart(android.content.Intent intent, int i5) {
        this.f1748a.e();
        super.onStart(intent, i5);
    }

    @Override // android.app.Service
    public int onStartCommand(android.content.Intent intent, int i5, int i6) {
        return super.onStartCommand(intent, i5, i6);
    }
}
