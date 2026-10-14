package p3;

/* JADX INFO: compiled from: ProgressionIterators.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class j extends b3.d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f5521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f5522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5523c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f5524d;

    public j(long j5, long j6, long j7) {
        this.f5521a = j7;
        this.f5522b = j6;
        boolean z4 = true;
        if (j7 <= 0 ? j5 < j6 : j5 > j6) {
            z4 = false;
        }
        this.f5523c = z4;
        this.f5524d = z4 ? j5 : j6;
    }

    @Override // b3.d0
    public long a() {
        long j5 = this.f5524d;
        if (j5 != this.f5522b) {
            this.f5524d = this.f5521a + j5;
        } else {
            if (!this.f5523c) {
                throw new java.util.NoSuchElementException();
            }
            this.f5523c = false;
        }
        return j5;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f5523c;
    }
}
