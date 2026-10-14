package androidx.recyclerview.widget;

/* JADX INFO: compiled from: ScrollbarHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class j {
    public static int a(androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.h hVar, android.view.View view, android.view.View view2, androidx.recyclerview.widget.RecyclerView.p pVar, boolean z4) {
        if (pVar.I() == 0 || yVar.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z4) {
            return java.lang.Math.abs(pVar.f0(view) - pVar.f0(view2)) + 1;
        }
        return java.lang.Math.min(hVar.n(), hVar.d(view2) - hVar.g(view));
    }

    public static int b(androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.h hVar, android.view.View view, android.view.View view2, androidx.recyclerview.widget.RecyclerView.p pVar, boolean z4, boolean z5) {
        if (pVar.I() == 0 || yVar.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z5 ? java.lang.Math.max(0, (yVar.b() - java.lang.Math.max(pVar.f0(view), pVar.f0(view2))) - 1) : java.lang.Math.max(0, java.lang.Math.min(pVar.f0(view), pVar.f0(view2)));
        if (z4) {
            return java.lang.Math.round((iMax * (java.lang.Math.abs(hVar.d(view2) - hVar.g(view)) / (java.lang.Math.abs(pVar.f0(view) - pVar.f0(view2)) + 1))) + (hVar.m() - hVar.g(view)));
        }
        return iMax;
    }

    public static int c(androidx.recyclerview.widget.RecyclerView.y yVar, androidx.recyclerview.widget.h hVar, android.view.View view, android.view.View view2, androidx.recyclerview.widget.RecyclerView.p pVar, boolean z4) {
        if (pVar.I() == 0 || yVar.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z4) {
            return yVar.b();
        }
        return (int) (((hVar.d(view2) - hVar.g(view)) / (java.lang.Math.abs(pVar.f0(view) - pVar.f0(view2)) + 1)) * yVar.b());
    }
}
