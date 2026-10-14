package p3;

/* JADX INFO: compiled from: ProgressionIterators.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class g extends b3.c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5512b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5513c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5514d;

    public g(int i5, int i6, int i7) {
        this.f5511a = i7;
        this.f5512b = i6;
        boolean z4 = true;
        if (i7 <= 0 ? i5 < i6 : i5 > i6) {
            z4 = false;
        }
        this.f5513c = z4;
        this.f5514d = z4 ? i5 : i6;
    }

    @Override // b3.c0
    public int a() {
        int i5 = this.f5514d;
        if (i5 != this.f5512b) {
            this.f5514d = this.f5511a + i5;
        } else {
            if (!this.f5513c) {
                throw new java.util.NoSuchElementException();
            }
            this.f5513c = false;
        }
        return i5;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f5513c;
    }
}
