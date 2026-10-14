package androidx.work.multiprocess;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class RemoteWorkManagerService extends android.app.Service {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.lang.String f2837b = q0.n.i("RemoteWorkManagerService");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.os.IBinder f2838a;

    @Override // android.app.Service
    public android.os.IBinder onBind(android.content.Intent intent) {
        q0.n.e().f(f2837b, "Binding to RemoteWorkManager");
        return this.f2838a;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f2838a = new androidx.work.multiprocess.RemoteWorkManagerImpl(this);
    }
}
