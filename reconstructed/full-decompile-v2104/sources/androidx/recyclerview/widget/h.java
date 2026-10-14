package androidx.recyclerview.widget;

/* JADX INFO: compiled from: OrientationHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.recyclerview.widget.RecyclerView.p f2163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.graphics.Rect f2165c;

    /* JADX INFO: compiled from: OrientationHelper.java */
    public class a extends androidx.recyclerview.widget.h {
        public a(androidx.recyclerview.widget.RecyclerView.p pVar) {
            super(pVar, null);
        }

        @Override // androidx.recyclerview.widget.h
        public int d(android.view.View view) {
            return this.f2163a.S(view) + ((android.view.ViewGroup.MarginLayoutParams) ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
        }

        @Override // androidx.recyclerview.widget.h
        public int e(android.view.View view) {
            androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams = (androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f2163a.R(view) + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // androidx.recyclerview.widget.h
        public int f(android.view.View view) {
            androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams = (androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f2163a.Q(view) + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.h
        public int g(android.view.View view) {
            return this.f2163a.P(view) - ((android.view.ViewGroup.MarginLayoutParams) ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
        }

        @Override // androidx.recyclerview.widget.h
        public int h() {
            return this.f2163a.m0();
        }

        @Override // androidx.recyclerview.widget.h
        public int i() {
            return this.f2163a.m0() - this.f2163a.d0();
        }

        @Override // androidx.recyclerview.widget.h
        public int j() {
            return this.f2163a.d0();
        }

        @Override // androidx.recyclerview.widget.h
        public int k() {
            return this.f2163a.n0();
        }

        @Override // androidx.recyclerview.widget.h
        public int l() {
            return this.f2163a.W();
        }

        @Override // androidx.recyclerview.widget.h
        public int m() {
            return this.f2163a.c0();
        }

        @Override // androidx.recyclerview.widget.h
        public int n() {
            return (this.f2163a.m0() - this.f2163a.c0()) - this.f2163a.d0();
        }

        @Override // androidx.recyclerview.widget.h
        public int p(android.view.View view) {
            this.f2163a.l0(view, true, this.f2165c);
            return this.f2165c.right;
        }

        @Override // androidx.recyclerview.widget.h
        public int q(android.view.View view) {
            this.f2163a.l0(view, true, this.f2165c);
            return this.f2165c.left;
        }

        @Override // androidx.recyclerview.widget.h
        public void r(int i5) {
            this.f2163a.A0(i5);
        }
    }

    /* JADX INFO: compiled from: OrientationHelper.java */
    public class b extends androidx.recyclerview.widget.h {
        public b(androidx.recyclerview.widget.RecyclerView.p pVar) {
            super(pVar, null);
        }

        @Override // androidx.recyclerview.widget.h
        public int d(android.view.View view) {
            return this.f2163a.N(view) + ((android.view.ViewGroup.MarginLayoutParams) ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.h
        public int e(android.view.View view) {
            androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams = (androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f2163a.Q(view) + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.h
        public int f(android.view.View view) {
            androidx.recyclerview.widget.RecyclerView.LayoutParams layoutParams = (androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams();
            return this.f2163a.R(view) + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // androidx.recyclerview.widget.h
        public int g(android.view.View view) {
            return this.f2163a.T(view) - ((android.view.ViewGroup.MarginLayoutParams) ((androidx.recyclerview.widget.RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
        }

        @Override // androidx.recyclerview.widget.h
        public int h() {
            return this.f2163a.V();
        }

        @Override // androidx.recyclerview.widget.h
        public int i() {
            return this.f2163a.V() - this.f2163a.b0();
        }

        @Override // androidx.recyclerview.widget.h
        public int j() {
            return this.f2163a.b0();
        }

        @Override // androidx.recyclerview.widget.h
        public int k() {
            return this.f2163a.W();
        }

        @Override // androidx.recyclerview.widget.h
        public int l() {
            return this.f2163a.n0();
        }

        @Override // androidx.recyclerview.widget.h
        public int m() {
            return this.f2163a.e0();
        }

        @Override // androidx.recyclerview.widget.h
        public int n() {
            return (this.f2163a.V() - this.f2163a.e0()) - this.f2163a.b0();
        }

        @Override // androidx.recyclerview.widget.h
        public int p(android.view.View view) {
            this.f2163a.l0(view, true, this.f2165c);
            return this.f2165c.bottom;
        }

        @Override // androidx.recyclerview.widget.h
        public int q(android.view.View view) {
            this.f2163a.l0(view, true, this.f2165c);
            return this.f2165c.top;
        }

        @Override // androidx.recyclerview.widget.h
        public void r(int i5) {
            this.f2163a.B0(i5);
        }
    }

    public /* synthetic */ h(androidx.recyclerview.widget.RecyclerView.p pVar, androidx.recyclerview.widget.h.a aVar) {
        this(pVar);
    }

    public static androidx.recyclerview.widget.h a(androidx.recyclerview.widget.RecyclerView.p pVar) {
        return new androidx.recyclerview.widget.h.a(pVar);
    }

    public static androidx.recyclerview.widget.h b(androidx.recyclerview.widget.RecyclerView.p pVar, int i5) {
        if (i5 == 0) {
            return a(pVar);
        }
        if (i5 == 1) {
            return c(pVar);
        }
        throw new java.lang.IllegalArgumentException("invalid orientation");
    }

    public static androidx.recyclerview.widget.h c(androidx.recyclerview.widget.RecyclerView.p pVar) {
        return new androidx.recyclerview.widget.h.b(pVar);
    }

    public abstract int d(android.view.View view);

    public abstract int e(android.view.View view);

    public abstract int f(android.view.View view);

    public abstract int g(android.view.View view);

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m();

    public abstract int n();

    public int o() {
        if (Integer.MIN_VALUE == this.f2164b) {
            return 0;
        }
        return n() - this.f2164b;
    }

    public abstract int p(android.view.View view);

    public abstract int q(android.view.View view);

    public abstract void r(int i5);

    public void s() {
        this.f2164b = n();
    }

    public h(androidx.recyclerview.widget.RecyclerView.p pVar) {
        this.f2164b = Integer.MIN_VALUE;
        this.f2165c = new android.graphics.Rect();
        this.f2163a = pVar;
    }
}
