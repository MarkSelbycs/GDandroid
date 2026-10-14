package o3;

/* JADX INFO: compiled from: PlatformThreadLocalRandom.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a extends n3.a {
    @Override // n3.a
    public java.util.Random e() {
        java.util.concurrent.ThreadLocalRandom threadLocalRandomCurrent = java.util.concurrent.ThreadLocalRandom.current();
        m3.k.d(threadLocalRandomCurrent, "current()");
        return threadLocalRandomCurrent;
    }
}
