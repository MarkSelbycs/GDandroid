package c2;

/* JADX INFO: compiled from: CharFinder.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends c2.d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final char f2981d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f2982e;

    public a(char c5) {
        this(c5, false);
    }

    @Override // c2.b
    public int b(int i5) {
        if (i5 < 0) {
            return -1;
        }
        return i5 + 1;
    }

    @Override // c2.b
    public int c(int i5) {
        v1.e.q(this.f2985a, "Text to find must be not null!", new java.lang.Object[0]);
        int iE = e();
        if (this.f2987c) {
            while (i5 > iE) {
                if (e2.o.b(this.f2981d, this.f2985a.charAt(i5), this.f2982e)) {
                    return i5;
                }
                i5--;
            }
            return -1;
        }
        while (i5 < iE) {
            if (e2.o.b(this.f2981d, this.f2985a.charAt(i5), this.f2982e)) {
                return i5;
            }
            i5++;
        }
        return -1;
    }

    public a(char c5, boolean z4) {
        this.f2981d = c5;
        this.f2982e = z4;
    }
}
