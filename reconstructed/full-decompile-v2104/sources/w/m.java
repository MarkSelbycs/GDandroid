package w;

/* JADX INFO: compiled from: NestedScrollingParentHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f6664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6665b;

    public m(android.view.ViewGroup viewGroup) {
    }

    public int a() {
        return this.f6664a | this.f6665b;
    }

    public void b(android.view.View view, android.view.View view2, int i5) {
        c(view, view2, i5, 0);
    }

    public void c(android.view.View view, android.view.View view2, int i5, int i6) {
        if (i6 == 1) {
            this.f6665b = i5;
        } else {
            this.f6664a = i5;
        }
    }

    public void d(android.view.View view) {
        e(view, 0);
    }

    public void e(android.view.View view, int i5) {
        if (i5 == 1) {
            this.f6665b = 0;
        } else {
            this.f6664a = 0;
        }
    }
}
