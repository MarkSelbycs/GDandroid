package androidx.recyclerview.widget;

/* JADX INFO: compiled from: SimpleItemAnimator.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class k extends androidx.recyclerview.widget.RecyclerView.m {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2170g = true;

    public final void A(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        I(b0Var);
        h(b0Var);
    }

    public final void B(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        J(b0Var);
    }

    public final void C(androidx.recyclerview.widget.RecyclerView.b0 b0Var, boolean z4) {
        K(b0Var, z4);
        h(b0Var);
    }

    public final void D(androidx.recyclerview.widget.RecyclerView.b0 b0Var, boolean z4) {
        L(b0Var, z4);
    }

    public final void E(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        M(b0Var);
        h(b0Var);
    }

    public final void F(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        N(b0Var);
    }

    public final void G(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        O(b0Var);
        h(b0Var);
    }

    public final void H(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        P(b0Var);
    }

    public void I(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
    }

    public void J(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
    }

    public void K(androidx.recyclerview.widget.RecyclerView.b0 b0Var, boolean z4) {
    }

    public void L(androidx.recyclerview.widget.RecyclerView.b0 b0Var, boolean z4) {
    }

    public void M(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
    }

    public void N(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
    }

    public void O(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
    }

    public void P(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean a(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2) {
        int i5;
        int i6;
        return (cVar == null || ((i5 = cVar.f1938a) == (i6 = cVar2.f1938a) && cVar.f1939b == cVar2.f1939b)) ? w(b0Var) : y(b0Var, i5, cVar.f1939b, i6, cVar2.f1939b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean b(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.b0 b0Var2, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2) {
        int i5;
        int i6;
        int i7 = cVar.f1938a;
        int i8 = cVar.f1939b;
        if (b0Var2.C()) {
            int i9 = cVar.f1938a;
            i6 = cVar.f1939b;
            i5 = i9;
        } else {
            i5 = cVar2.f1938a;
            i6 = cVar2.f1939b;
        }
        return x(b0Var, b0Var2, i7, i8, i5, i6);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean c(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2) {
        int i5 = cVar.f1938a;
        int i6 = cVar.f1939b;
        android.view.View view = b0Var.itemView;
        int left = cVar2 == null ? view.getLeft() : cVar2.f1938a;
        int top = cVar2 == null ? view.getTop() : cVar2.f1939b;
        if (b0Var.p() || (i5 == left && i6 == top)) {
            return z(b0Var);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return y(b0Var, i5, i6, left, top);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean d(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2) {
        int i5 = cVar.f1938a;
        int i6 = cVar2.f1938a;
        if (i5 != i6 || cVar.f1939b != cVar2.f1939b) {
            return y(b0Var, i5, cVar.f1939b, i6, cVar2.f1939b);
        }
        E(b0Var);
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean f(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        return !this.f2170g || b0Var.o();
    }

    public abstract boolean w(androidx.recyclerview.widget.RecyclerView.b0 b0Var);

    public abstract boolean x(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.b0 b0Var2, int i5, int i6, int i7, int i8);

    public abstract boolean y(androidx.recyclerview.widget.RecyclerView.b0 b0Var, int i5, int i6, int i7, int i8);

    public abstract boolean z(androidx.recyclerview.widget.RecyclerView.b0 b0Var);
}
