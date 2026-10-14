package androidx.appcompat.view.menu;

/* JADX INFO: compiled from: MenuPopupHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f537a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.appcompat.view.menu.e f538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f539c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f540d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f541e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public android.view.View f542f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f543g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f544h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public androidx.appcompat.view.menu.i.a f545i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public f.f f546j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public android.widget.PopupWindow.OnDismissListener f547k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final android.widget.PopupWindow.OnDismissListener f548l;

    /* JADX INFO: compiled from: MenuPopupHelper.java */
    public class a implements android.widget.PopupWindow.OnDismissListener {
        public a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            androidx.appcompat.view.menu.h.this.e();
        }
    }

    public h(android.content.Context context, androidx.appcompat.view.menu.e eVar, android.view.View view, boolean z4, int i5) {
        this(context, eVar, view, z4, i5, 0);
    }

    public final f.f a() {
        android.view.Display defaultDisplay = ((android.view.WindowManager) this.f537a.getSystemService("window")).getDefaultDisplay();
        android.graphics.Point point = new android.graphics.Point();
        defaultDisplay.getRealSize(point);
        f.f bVar = java.lang.Math.min(point.x, point.y) >= this.f537a.getResources().getDimensionPixelSize(androidx.appcompat.R.dimen.abc_cascading_menus_min_smallest_width) ? new androidx.appcompat.view.menu.b(this.f537a, this.f542f, this.f540d, this.f541e, this.f539c) : new androidx.appcompat.view.menu.k(this.f537a, this.f538b, this.f542f, this.f540d, this.f541e, this.f539c);
        bVar.l(this.f538b);
        bVar.u(this.f548l);
        bVar.p(this.f542f);
        bVar.i(this.f545i);
        bVar.r(this.f544h);
        bVar.s(this.f543g);
        return bVar;
    }

    public void b() {
        if (d()) {
            this.f546j.dismiss();
        }
    }

    public f.f c() {
        if (this.f546j == null) {
            this.f546j = a();
        }
        return this.f546j;
    }

    public boolean d() {
        f.f fVar = this.f546j;
        return fVar != null && fVar.f();
    }

    public void e() {
        this.f546j = null;
        android.widget.PopupWindow.OnDismissListener onDismissListener = this.f547k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void f(android.view.View view) {
        this.f542f = view;
    }

    public void g(boolean z4) {
        this.f544h = z4;
        f.f fVar = this.f546j;
        if (fVar != null) {
            fVar.r(z4);
        }
    }

    public void h(int i5) {
        this.f543g = i5;
    }

    public void i(android.widget.PopupWindow.OnDismissListener onDismissListener) {
        this.f547k = onDismissListener;
    }

    public void j(androidx.appcompat.view.menu.i.a aVar) {
        this.f545i = aVar;
        f.f fVar = this.f546j;
        if (fVar != null) {
            fVar.i(aVar);
        }
    }

    public void k() {
        if (!m()) {
            throw new java.lang.IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public final void l(int i5, int i6, boolean z4, boolean z5) {
        f.f fVarC = c();
        fVarC.v(z5);
        if (z4) {
            if ((w.d.b(this.f543g, w.q.p(this.f542f)) & 7) == 5) {
                i5 -= this.f542f.getWidth();
            }
            fVarC.t(i5);
            fVarC.w(i6);
            int i7 = (int) ((this.f537a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            fVarC.q(new android.graphics.Rect(i5 - i7, i6 - i7, i5 + i7, i6 + i7));
        }
        fVarC.b();
    }

    public boolean m() {
        if (d()) {
            return true;
        }
        if (this.f542f == null) {
            return false;
        }
        l(0, 0, false, false);
        return true;
    }

    public boolean n(int i5, int i6) {
        if (d()) {
            return true;
        }
        if (this.f542f == null) {
            return false;
        }
        l(i5, i6, true, true);
        return true;
    }

    public h(android.content.Context context, androidx.appcompat.view.menu.e eVar, android.view.View view, boolean z4, int i5, int i6) {
        this.f543g = 8388611;
        this.f548l = new androidx.appcompat.view.menu.h.a();
        this.f537a = context;
        this.f538b = eVar;
        this.f542f = view;
        this.f539c = z4;
        this.f540d = i5;
        this.f541e = i6;
    }
}
