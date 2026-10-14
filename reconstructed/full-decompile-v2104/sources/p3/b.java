package p3;

/* JADX INFO: compiled from: ProgressionIterators.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b extends b3.m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5499c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5500d;

    public b(char c5, char c6, int i5) {
        this.f5497a = i5;
        this.f5498b = c6;
        boolean z4 = true;
        if (i5 <= 0 ? m3.k.f(c5, c6) < 0 : m3.k.f(c5, c6) > 0) {
            z4 = false;
        }
        this.f5499c = z4;
        this.f5500d = z4 ? c5 : c6;
    }

    @Override // b3.m
    public char a() {
        int i5 = this.f5500d;
        if (i5 != this.f5498b) {
            this.f5500d = this.f5497a + i5;
        } else {
            if (!this.f5499c) {
                throw new java.util.NoSuchElementException();
            }
            this.f5499c = false;
        }
        return (char) i5;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f5499c;
    }
}
