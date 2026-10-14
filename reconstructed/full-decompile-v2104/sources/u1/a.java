package u1;

/* JADX INFO: compiled from: IoCopier.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a<S, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6290a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f6291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public t1.f f6292c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6293d;

    public a(int i5, long j5, t1.f fVar) {
        this.f6290a = i5 <= 0 ? 8192 : i5;
        this.f6291b = j5 <= 0 ? Long.MAX_VALUE : j5;
        this.f6292c = fVar;
    }

    public int a(long j5) {
        return (int) java.lang.Math.min(this.f6290a, j5);
    }
}
