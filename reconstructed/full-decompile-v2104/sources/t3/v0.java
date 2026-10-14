package t3;

/* JADX INFO: compiled from: EventLoop.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class v0 extends t3.t0 {
    public abstract java.lang.Thread r0();

    public void u0(long j5, t3.u0.a aVar) {
        t3.j0.f6195i.G0(j5, aVar);
    }

    public final void v0() {
        java.lang.Thread threadR0 = r0();
        if (java.lang.Thread.currentThread() != threadR0) {
            t3.c.a();
            java.util.concurrent.locks.LockSupport.unpark(threadR0);
        }
    }
}
