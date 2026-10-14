package w;

/* JADX INFO: compiled from: NestedScrollingChildHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.view.ViewParent f6659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.view.ViewParent f6660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.view.View f6661c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6662d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f6663e;

    public j(android.view.View view) {
        this.f6661c = view;
    }

    public boolean a(float f5, float f6, boolean z4) {
        android.view.ViewParent viewParentH;
        if (!l() || (viewParentH = h(0)) == null) {
            return false;
        }
        return w.u.a(viewParentH, this.f6661c, f5, f6, z4);
    }

    public boolean b(float f5, float f6) {
        android.view.ViewParent viewParentH;
        if (!l() || (viewParentH = h(0)) == null) {
            return false;
        }
        return w.u.b(viewParentH, this.f6661c, f5, f6);
    }

    public boolean c(int i5, int i6, int[] iArr, int[] iArr2) {
        return d(i5, i6, iArr, iArr2, 0);
    }

    public boolean d(int i5, int i6, int[] iArr, int[] iArr2, int i7) {
        android.view.ViewParent viewParentH;
        int i8;
        int i9;
        if (!l() || (viewParentH = h(i7)) == null) {
            return false;
        }
        if (i5 == 0 && i6 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        if (iArr2 != null) {
            this.f6661c.getLocationInWindow(iArr2);
            i8 = iArr2[0];
            i9 = iArr2[1];
        } else {
            i8 = 0;
            i9 = 0;
        }
        if (iArr == null) {
            iArr = i();
        }
        iArr[0] = 0;
        iArr[1] = 0;
        w.u.c(viewParentH, this.f6661c, i5, i6, iArr, i7);
        if (iArr2 != null) {
            this.f6661c.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i8;
            iArr2[1] = iArr2[1] - i9;
        }
        return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
    }

    public void e(int i5, int i6, int i7, int i8, int[] iArr, int i9, int[] iArr2) {
        g(i5, i6, i7, i8, iArr, i9, iArr2);
    }

    public boolean f(int i5, int i6, int i7, int i8, int[] iArr) {
        return g(i5, i6, i7, i8, iArr, 0, null);
    }

    public final boolean g(int i5, int i6, int i7, int i8, int[] iArr, int i9, int[] iArr2) {
        android.view.ViewParent viewParentH;
        int i10;
        int i11;
        int[] iArr3;
        if (!l() || (viewParentH = h(i9)) == null) {
            return false;
        }
        if (i5 == 0 && i6 == 0 && i7 == 0 && i8 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.f6661c.getLocationInWindow(iArr);
            i10 = iArr[0];
            i11 = iArr[1];
        } else {
            i10 = 0;
            i11 = 0;
        }
        if (iArr2 == null) {
            int[] iArrI = i();
            iArrI[0] = 0;
            iArrI[1] = 0;
            iArr3 = iArrI;
        } else {
            iArr3 = iArr2;
        }
        w.u.d(viewParentH, this.f6661c, i5, i6, i7, i8, i9, iArr3);
        if (iArr != null) {
            this.f6661c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i10;
            iArr[1] = iArr[1] - i11;
        }
        return true;
    }

    public final android.view.ViewParent h(int i5) {
        if (i5 == 0) {
            return this.f6659a;
        }
        if (i5 != 1) {
            return null;
        }
        return this.f6660b;
    }

    public final int[] i() {
        if (this.f6663e == null) {
            this.f6663e = new int[2];
        }
        return this.f6663e;
    }

    public boolean j() {
        return k(0);
    }

    public boolean k(int i5) {
        return h(i5) != null;
    }

    public boolean l() {
        return this.f6662d;
    }

    public void m(boolean z4) {
        if (this.f6662d) {
            w.q.c0(this.f6661c);
        }
        this.f6662d = z4;
    }

    public final void n(int i5, android.view.ViewParent viewParent) {
        if (i5 == 0) {
            this.f6659a = viewParent;
        } else {
            if (i5 != 1) {
                return;
            }
            this.f6660b = viewParent;
        }
    }

    public boolean o(int i5) {
        return p(i5, 0);
    }

    public boolean p(int i5, int i6) {
        if (k(i6)) {
            return true;
        }
        if (!l()) {
            return false;
        }
        android.view.View view = this.f6661c;
        for (android.view.ViewParent parent = this.f6661c.getParent(); parent != null; parent = parent.getParent()) {
            if (w.u.f(parent, view, this.f6661c, i5, i6)) {
                n(i6, parent);
                w.u.e(parent, view, this.f6661c, i5, i6);
                return true;
            }
            if (parent instanceof android.view.View) {
                view = (android.view.View) parent;
            }
        }
        return false;
    }

    public void q() {
        r(0);
    }

    public void r(int i5) {
        android.view.ViewParent viewParentH = h(i5);
        if (viewParentH != null) {
            w.u.g(viewParentH, this.f6661c, i5);
            n(i5, null);
        }
    }
}
