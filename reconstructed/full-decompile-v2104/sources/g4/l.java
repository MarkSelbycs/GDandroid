package g4;

/* JADX INFO: compiled from: Ping.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.concurrent.CountDownLatch f4519a = new java.util.concurrent.CountDownLatch(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f4520b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f4521c = -1;

    public void a() {
        if (this.f4521c == -1) {
            long j5 = this.f4520b;
            if (j5 != -1) {
                this.f4521c = j5 - 1;
                this.f4519a.countDown();
                return;
            }
        }
        throw new java.lang.IllegalStateException();
    }

    public void b() {
        if (this.f4521c != -1 || this.f4520b == -1) {
            throw new java.lang.IllegalStateException();
        }
        this.f4521c = java.lang.System.nanoTime();
        this.f4519a.countDown();
    }

    public void c() {
        if (this.f4520b != -1) {
            throw new java.lang.IllegalStateException();
        }
        this.f4520b = java.lang.System.nanoTime();
    }
}
