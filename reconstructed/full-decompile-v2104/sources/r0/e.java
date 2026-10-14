package r0;

/* JADX INFO: compiled from: DefaultRunnableScheduler.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e implements q0.v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.os.Handler f5848a = s.b.a(android.os.Looper.getMainLooper());

    @Override // q0.v
    public void a(java.lang.Runnable runnable) {
        this.f5848a.removeCallbacks(runnable);
    }

    @Override // q0.v
    public void b(long j5, java.lang.Runnable runnable) {
        this.f5848a.postDelayed(runnable, j5);
    }
}
