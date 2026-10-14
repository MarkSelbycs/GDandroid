package c2;

/* JADX INFO: compiled from: StrFinder.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c extends c2.d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.CharSequence f2983d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f2984e;

    public c(java.lang.CharSequence charSequence, boolean z4) {
        v1.e.m(charSequence);
        this.f2983d = charSequence;
        this.f2984e = z4;
    }

    @Override // c2.b
    public int b(int i5) {
        if (i5 < 0) {
            return -1;
        }
        return i5 + this.f2983d.length();
    }

    @Override // c2.b
    public int c(int i5) {
        v1.e.q(this.f2985a, "Text to find must be not null!", new java.lang.Object[0]);
        int length = this.f2983d.length();
        if (i5 < 0) {
            i5 = 0;
        }
        int iE = e();
        if (this.f2987c) {
            while (i5 > iE) {
                if (b2.c.u(this.f2985a, i5, this.f2983d, 0, length, this.f2984e)) {
                    return i5;
                }
                i5--;
            }
            return -1;
        }
        int i6 = (iE - length) + 1;
        while (i5 < i6) {
            if (b2.c.u(this.f2985a, i5, this.f2983d, 0, length, this.f2984e)) {
                return i5;
            }
            i5++;
        }
        return -1;
    }
}
