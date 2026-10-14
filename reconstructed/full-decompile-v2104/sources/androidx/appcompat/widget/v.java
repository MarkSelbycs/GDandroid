package androidx.appcompat.widget;

/* JADX INFO: compiled from: RtlSpacingHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1042a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1043b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1044c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1045d = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1046e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1047f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1048g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1049h = false;

    public int a() {
        return this.f1048g ? this.f1042a : this.f1043b;
    }

    public int b() {
        return this.f1042a;
    }

    public int c() {
        return this.f1043b;
    }

    public int d() {
        return this.f1048g ? this.f1043b : this.f1042a;
    }

    public void e(int i5, int i6) {
        this.f1049h = false;
        if (i5 != Integer.MIN_VALUE) {
            this.f1046e = i5;
            this.f1042a = i5;
        }
        if (i6 != Integer.MIN_VALUE) {
            this.f1047f = i6;
            this.f1043b = i6;
        }
    }

    public void f(boolean z4) {
        if (z4 == this.f1048g) {
            return;
        }
        this.f1048g = z4;
        if (!this.f1049h) {
            this.f1042a = this.f1046e;
            this.f1043b = this.f1047f;
            return;
        }
        if (z4) {
            int i5 = this.f1045d;
            if (i5 == Integer.MIN_VALUE) {
                i5 = this.f1046e;
            }
            this.f1042a = i5;
            int i6 = this.f1044c;
            if (i6 == Integer.MIN_VALUE) {
                i6 = this.f1047f;
            }
            this.f1043b = i6;
            return;
        }
        int i7 = this.f1044c;
        if (i7 == Integer.MIN_VALUE) {
            i7 = this.f1046e;
        }
        this.f1042a = i7;
        int i8 = this.f1045d;
        if (i8 == Integer.MIN_VALUE) {
            i8 = this.f1047f;
        }
        this.f1043b = i8;
    }

    public void g(int i5, int i6) {
        this.f1044c = i5;
        this.f1045d = i6;
        this.f1049h = true;
        if (this.f1048g) {
            if (i6 != Integer.MIN_VALUE) {
                this.f1042a = i6;
            }
            if (i5 != Integer.MIN_VALUE) {
                this.f1043b = i5;
                return;
            }
            return;
        }
        if (i5 != Integer.MIN_VALUE) {
            this.f1042a = i5;
        }
        if (i6 != Integer.MIN_VALUE) {
            this.f1043b = i6;
        }
    }
}
