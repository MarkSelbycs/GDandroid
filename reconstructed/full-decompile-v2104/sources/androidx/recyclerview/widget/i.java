package androidx.recyclerview.widget;

/* JADX INFO: compiled from: RecyclerViewAccessibilityDelegate.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i extends w.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.recyclerview.widget.RecyclerView f2166d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final androidx.recyclerview.widget.i.a f2167e;

    /* JADX INFO: compiled from: RecyclerViewAccessibilityDelegate.java */
    public static class a extends w.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final androidx.recyclerview.widget.i f2168d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public java.util.Map<android.view.View, w.a> f2169e = new java.util.WeakHashMap();

        public a(androidx.recyclerview.widget.i iVar) {
            this.f2168d = iVar;
        }

        @Override // w.a
        public boolean a(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            w.a aVar = this.f2169e.get(view);
            return aVar != null ? aVar.a(view, accessibilityEvent) : super.a(view, accessibilityEvent);
        }

        @Override // w.a
        public x.d b(android.view.View view) {
            w.a aVar = this.f2169e.get(view);
            return aVar != null ? aVar.b(view) : super.b(view);
        }

        @Override // w.a
        public void f(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            w.a aVar = this.f2169e.get(view);
            if (aVar != null) {
                aVar.f(view, accessibilityEvent);
            } else {
                super.f(view, accessibilityEvent);
            }
        }

        @Override // w.a
        public void g(android.view.View view, x.c cVar) {
            if (this.f2168d.o() || this.f2168d.f2166d.getLayoutManager() == null) {
                super.g(view, cVar);
                return;
            }
            this.f2168d.f2166d.getLayoutManager().M0(view, cVar);
            w.a aVar = this.f2169e.get(view);
            if (aVar != null) {
                aVar.g(view, cVar);
            } else {
                super.g(view, cVar);
            }
        }

        @Override // w.a
        public void h(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            w.a aVar = this.f2169e.get(view);
            if (aVar != null) {
                aVar.h(view, accessibilityEvent);
            } else {
                super.h(view, accessibilityEvent);
            }
        }

        @Override // w.a
        public boolean i(android.view.ViewGroup viewGroup, android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            w.a aVar = this.f2169e.get(viewGroup);
            return aVar != null ? aVar.i(viewGroup, view, accessibilityEvent) : super.i(viewGroup, view, accessibilityEvent);
        }

        @Override // w.a
        public boolean j(android.view.View view, int i5, android.os.Bundle bundle) {
            if (this.f2168d.o() || this.f2168d.f2166d.getLayoutManager() == null) {
                return super.j(view, i5, bundle);
            }
            w.a aVar = this.f2169e.get(view);
            if (aVar != null) {
                if (aVar.j(view, i5, bundle)) {
                    return true;
                }
            } else if (super.j(view, i5, bundle)) {
                return true;
            }
            return this.f2168d.f2166d.getLayoutManager().f1(view, i5, bundle);
        }

        @Override // w.a
        public void l(android.view.View view, int i5) {
            w.a aVar = this.f2169e.get(view);
            if (aVar != null) {
                aVar.l(view, i5);
            } else {
                super.l(view, i5);
            }
        }

        @Override // w.a
        public void m(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            w.a aVar = this.f2169e.get(view);
            if (aVar != null) {
                aVar.m(view, accessibilityEvent);
            } else {
                super.m(view, accessibilityEvent);
            }
        }

        public w.a n(android.view.View view) {
            return this.f2169e.remove(view);
        }

        public void o(android.view.View view) {
            w.a aVarE = w.q.e(view);
            if (aVarE == null || aVarE == this) {
                return;
            }
            this.f2169e.put(view, aVarE);
        }
    }

    public i(androidx.recyclerview.widget.RecyclerView recyclerView) {
        this.f2166d = recyclerView;
        w.a aVarN = n();
        if (aVarN == null || !(aVarN instanceof androidx.recyclerview.widget.i.a)) {
            this.f2167e = new androidx.recyclerview.widget.i.a(this);
        } else {
            this.f2167e = (androidx.recyclerview.widget.i.a) aVarN;
        }
    }

    @Override // w.a
    public void f(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        super.f(view, accessibilityEvent);
        if (!(view instanceof androidx.recyclerview.widget.RecyclerView) || o()) {
            return;
        }
        androidx.recyclerview.widget.RecyclerView recyclerView = (androidx.recyclerview.widget.RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().I0(accessibilityEvent);
        }
    }

    @Override // w.a
    public void g(android.view.View view, x.c cVar) {
        super.g(view, cVar);
        if (o() || this.f2166d.getLayoutManager() == null) {
            return;
        }
        this.f2166d.getLayoutManager().L0(cVar);
    }

    @Override // w.a
    public boolean j(android.view.View view, int i5, android.os.Bundle bundle) {
        if (super.j(view, i5, bundle)) {
            return true;
        }
        if (o() || this.f2166d.getLayoutManager() == null) {
            return false;
        }
        return this.f2166d.getLayoutManager().d1(i5, bundle);
    }

    public w.a n() {
        return this.f2167e;
    }

    public boolean o() {
        return this.f2166d.j0();
    }
}
