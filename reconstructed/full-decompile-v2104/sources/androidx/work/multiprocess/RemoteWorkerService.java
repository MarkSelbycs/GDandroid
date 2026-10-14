package androidx.work.multiprocess;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class RemoteWorkerService extends android.app.Service {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.lang.String f2839b = q0.n.i("RemoteWorkerService");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.os.IBinder f2840a;

    @Override // android.app.Service
    public android.os.IBinder onBind(android.content.Intent intent) {
        q0.n.e().f(f2839b, "Binding to RemoteWorkerService");
        return this.f2840a;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f2840a = new androidx.work.multiprocess.ListenableWorkerImpl(this);
    }
}
