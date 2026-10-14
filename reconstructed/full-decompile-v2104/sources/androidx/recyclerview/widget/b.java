package androidx.recyclerview.widget;

/* JADX INFO: compiled from: ChildHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.recyclerview.widget.b.InterfaceC0014b f2051a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.recyclerview.widget.b.a f2052b = new androidx.recyclerview.widget.b.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.List<android.view.View> f2053c = new java.util.ArrayList();

    /* JADX INFO: compiled from: ChildHelper.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f2054a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public androidx.recyclerview.widget.b.a f2055b;

        public void a(int i5) {
            if (i5 < 64) {
                this.f2054a &= ~(1 << i5);
                return;
            }
            androidx.recyclerview.widget.b.a aVar = this.f2055b;
            if (aVar != null) {
                aVar.a(i5 - 64);
            }
        }

        public int b(int i5) {
            androidx.recyclerview.widget.b.a aVar = this.f2055b;
            if (aVar == null) {
                return i5 >= 64 ? java.lang.Long.bitCount(this.f2054a) : java.lang.Long.bitCount(this.f2054a & ((1 << i5) - 1));
            }
            return i5 < 64 ? java.lang.Long.bitCount(this.f2054a & ((1 << i5) - 1)) : aVar.b(i5 - 64) + java.lang.Long.bitCount(this.f2054a);
        }

        public final void c() {
            if (this.f2055b == null) {
                this.f2055b = new androidx.recyclerview.widget.b.a();
            }
        }

        public boolean d(int i5) {
            if (i5 < 64) {
                return (this.f2054a & (1 << i5)) != 0;
            }
            c();
            return this.f2055b.d(i5 - 64);
        }

        public void e(int i5, boolean z4) {
            if (i5 >= 64) {
                c();
                this.f2055b.e(i5 - 64, z4);
                return;
            }
            long j5 = this.f2054a;
            boolean z5 = (Long.MIN_VALUE & j5) != 0;
            long j6 = (1 << i5) - 1;
            this.f2054a = ((j5 & (~j6)) << 1) | (j5 & j6);
            if (z4) {
                h(i5);
            } else {
                a(i5);
            }
            if (z5 || this.f2055b != null) {
                c();
                this.f2055b.e(0, z5);
            }
        }

        public boolean f(int i5) {
            if (i5 >= 64) {
                c();
                return this.f2055b.f(i5 - 64);
            }
            long j5 = 1 << i5;
            long j6 = this.f2054a;
            boolean z4 = (j6 & j5) != 0;
            long j7 = j6 & (~j5);
            this.f2054a = j7;
            long j8 = j5 - 1;
            this.f2054a = (j7 & j8) | java.lang.Long.rotateRight((~j8) & j7, 1);
            androidx.recyclerview.widget.b.a aVar = this.f2055b;
            if (aVar != null) {
                if (aVar.d(0)) {
                    h(63);
                }
                this.f2055b.f(0);
            }
            return z4;
        }

        public void g() {
            this.f2054a = 0L;
            androidx.recyclerview.widget.b.a aVar = this.f2055b;
            if (aVar != null) {
                aVar.g();
            }
        }

        public void h(int i5) {
            if (i5 < 64) {
                this.f2054a |= 1 << i5;
            } else {
                c();
                this.f2055b.h(i5 - 64);
            }
        }

        public java.lang.String toString() {
            if (this.f2055b == null) {
                return java.lang.Long.toBinaryString(this.f2054a);
            }
            return this.f2055b.toString() + "xx" + java.lang.Long.toBinaryString(this.f2054a);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ChildHelper.java */
    public interface InterfaceC0014b {
        android.view.View a(int i5);

        void b(android.view.View view);

        void c(int i5);

        void d();

        androidx.recyclerview.widget.RecyclerView.b0 e(android.view.View view);

        void f(int i5);

        void g(android.view.View view);

        void h(android.view.View view, int i5, android.view.ViewGroup.LayoutParams layoutParams);

        void i(android.view.View view, int i5);

        int j(android.view.View view);

        int k();
    }

    public b(androidx.recyclerview.widget.b.InterfaceC0014b interfaceC0014b) {
        this.f2051a = interfaceC0014b;
    }

    public void a(android.view.View view, int i5, boolean z4) {
        int iK = i5 < 0 ? this.f2051a.k() : h(i5);
        this.f2052b.e(iK, z4);
        if (z4) {
            l(view);
        }
        this.f2051a.i(view, iK);
    }

    public void b(android.view.View view, boolean z4) {
        a(view, -1, z4);
    }

    public void c(android.view.View view, int i5, android.view.ViewGroup.LayoutParams layoutParams, boolean z4) {
        int iK = i5 < 0 ? this.f2051a.k() : h(i5);
        this.f2052b.e(iK, z4);
        if (z4) {
            l(view);
        }
        this.f2051a.h(view, iK, layoutParams);
    }

    public void d(int i5) {
        int iH = h(i5);
        this.f2052b.f(iH);
        this.f2051a.f(iH);
    }

    public android.view.View e(int i5) {
        int size = this.f2053c.size();
        for (int i6 = 0; i6 < size; i6++) {
            android.view.View view = this.f2053c.get(i6);
            androidx.recyclerview.widget.RecyclerView.b0 b0VarE = this.f2051a.e(view);
            if (b0VarE.getLayoutPosition() == i5 && !b0VarE.o() && !b0VarE.p()) {
                return view;
            }
        }
        return null;
    }

    public android.view.View f(int i5) {
        return this.f2051a.a(h(i5));
    }

    public int g() {
        return this.f2051a.k() - this.f2053c.size();
    }

    public final int h(int i5) {
        if (i5 < 0) {
            return -1;
        }
        int iK = this.f2051a.k();
        int i6 = i5;
        while (i6 < iK) {
            int iB = i5 - (i6 - this.f2052b.b(i6));
            if (iB == 0) {
                while (this.f2052b.d(i6)) {
                    i6++;
                }
                return i6;
            }
            i6 += iB;
        }
        return -1;
    }

    public android.view.View i(int i5) {
        return this.f2051a.a(i5);
    }

    public int j() {
        return this.f2051a.k();
    }

    public void k(android.view.View view) {
        int iJ = this.f2051a.j(view);
        if (iJ >= 0) {
            this.f2052b.h(iJ);
            l(view);
        } else {
            throw new java.lang.IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    public final void l(android.view.View view) {
        this.f2053c.add(view);
        this.f2051a.b(view);
    }

    public int m(android.view.View view) {
        int iJ = this.f2051a.j(view);
        if (iJ == -1 || this.f2052b.d(iJ)) {
            return -1;
        }
        return iJ - this.f2052b.b(iJ);
    }

    public boolean n(android.view.View view) {
        return this.f2053c.contains(view);
    }

    public void o() {
        this.f2052b.g();
        for (int size = this.f2053c.size() - 1; size >= 0; size--) {
            this.f2051a.g(this.f2053c.get(size));
            this.f2053c.remove(size);
        }
        this.f2051a.d();
    }

    public void p(android.view.View view) {
        int iJ = this.f2051a.j(view);
        if (iJ < 0) {
            return;
        }
        if (this.f2052b.f(iJ)) {
            t(view);
        }
        this.f2051a.c(iJ);
    }

    public void q(int i5) {
        int iH = h(i5);
        android.view.View viewA = this.f2051a.a(iH);
        if (viewA == null) {
            return;
        }
        if (this.f2052b.f(iH)) {
            t(viewA);
        }
        this.f2051a.c(iH);
    }

    public boolean r(android.view.View view) {
        int iJ = this.f2051a.j(view);
        if (iJ == -1) {
            t(view);
            return true;
        }
        if (!this.f2052b.d(iJ)) {
            return false;
        }
        this.f2052b.f(iJ);
        t(view);
        this.f2051a.c(iJ);
        return true;
    }

    public void s(android.view.View view) {
        int iJ = this.f2051a.j(view);
        if (iJ < 0) {
            throw new java.lang.IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (this.f2052b.d(iJ)) {
            this.f2052b.a(iJ);
            t(view);
        } else {
            throw new java.lang.RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public final boolean t(android.view.View view) {
        if (!this.f2053c.remove(view)) {
            return false;
        }
        this.f2051a.g(view);
        return true;
    }

    public java.lang.String toString() {
        return this.f2052b.toString() + ", hidden list:" + this.f2053c.size();
    }
}
