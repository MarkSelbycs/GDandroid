package androidx.recyclerview.widget;

/* JADX INFO: compiled from: DefaultItemAnimator.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c extends androidx.recyclerview.widget.k {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static android.animation.TimeInterpolator f2056s;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> f2057h = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> f2058i = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public java.util.ArrayList<androidx.recyclerview.widget.c.j> f2059j = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public java.util.ArrayList<androidx.recyclerview.widget.c.i> f2060k = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public java.util.ArrayList<java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0>> f2061l = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public java.util.ArrayList<java.util.ArrayList<androidx.recyclerview.widget.c.j>> f2062m = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public java.util.ArrayList<java.util.ArrayList<androidx.recyclerview.widget.c.i>> f2063n = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> f2064o = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> f2065p = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> f2066q = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> f2067r = new java.util.ArrayList<>();

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    public class a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f2068a;

        public a(java.util.ArrayList arrayList) {
            this.f2068a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (androidx.recyclerview.widget.c.j jVar : this.f2068a) {
                androidx.recyclerview.widget.c.this.S(jVar.f2102a, jVar.f2103b, jVar.f2104c, jVar.f2105d, jVar.f2106e);
            }
            this.f2068a.clear();
            androidx.recyclerview.widget.c.this.f2062m.remove(this.f2068a);
        }
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    public class b implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f2070a;

        public b(java.util.ArrayList arrayList) {
            this.f2070a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            java.util.Iterator it = this.f2070a.iterator();
            while (it.hasNext()) {
                androidx.recyclerview.widget.c.this.R((androidx.recyclerview.widget.c.i) it.next());
            }
            this.f2070a.clear();
            androidx.recyclerview.widget.c.this.f2063n.remove(this.f2070a);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    public class RunnableC0015c implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f2072a;

        public RunnableC0015c(java.util.ArrayList arrayList) {
            this.f2072a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            java.util.Iterator it = this.f2072a.iterator();
            while (it.hasNext()) {
                androidx.recyclerview.widget.c.this.Q((androidx.recyclerview.widget.RecyclerView.b0) it.next());
            }
            this.f2072a.clear();
            androidx.recyclerview.widget.c.this.f2061l.remove(this.f2072a);
        }
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    public class d extends android.animation.AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ androidx.recyclerview.widget.RecyclerView.b0 f2074a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ android.view.ViewPropertyAnimator f2075b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ android.view.View f2076c;

        public d(androidx.recyclerview.widget.RecyclerView.b0 b0Var, android.view.ViewPropertyAnimator viewPropertyAnimator, android.view.View view) {
            this.f2074a = b0Var;
            this.f2075b = viewPropertyAnimator;
            this.f2076c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            this.f2075b.setListener(null);
            this.f2076c.setAlpha(1.0f);
            androidx.recyclerview.widget.c.this.G(this.f2074a);
            androidx.recyclerview.widget.c.this.f2066q.remove(this.f2074a);
            androidx.recyclerview.widget.c.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(android.animation.Animator animator) {
            androidx.recyclerview.widget.c.this.H(this.f2074a);
        }
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    public class e extends android.animation.AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ androidx.recyclerview.widget.RecyclerView.b0 f2078a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ android.view.View f2079b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ android.view.ViewPropertyAnimator f2080c;

        public e(androidx.recyclerview.widget.RecyclerView.b0 b0Var, android.view.View view, android.view.ViewPropertyAnimator viewPropertyAnimator) {
            this.f2078a = b0Var;
            this.f2079b = view;
            this.f2080c = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(android.animation.Animator animator) {
            this.f2079b.setAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            this.f2080c.setListener(null);
            androidx.recyclerview.widget.c.this.A(this.f2078a);
            androidx.recyclerview.widget.c.this.f2064o.remove(this.f2078a);
            androidx.recyclerview.widget.c.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(android.animation.Animator animator) {
            androidx.recyclerview.widget.c.this.B(this.f2078a);
        }
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    public class f extends android.animation.AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ androidx.recyclerview.widget.RecyclerView.b0 f2082a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f2083b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ android.view.View f2084c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ int f2085d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ android.view.ViewPropertyAnimator f2086e;

        public f(androidx.recyclerview.widget.RecyclerView.b0 b0Var, int i5, android.view.View view, int i6, android.view.ViewPropertyAnimator viewPropertyAnimator) {
            this.f2082a = b0Var;
            this.f2083b = i5;
            this.f2084c = view;
            this.f2085d = i6;
            this.f2086e = viewPropertyAnimator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(android.animation.Animator animator) {
            if (this.f2083b != 0) {
                this.f2084c.setTranslationX(0.0f);
            }
            if (this.f2085d != 0) {
                this.f2084c.setTranslationY(0.0f);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            this.f2086e.setListener(null);
            androidx.recyclerview.widget.c.this.E(this.f2082a);
            androidx.recyclerview.widget.c.this.f2065p.remove(this.f2082a);
            androidx.recyclerview.widget.c.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(android.animation.Animator animator) {
            androidx.recyclerview.widget.c.this.F(this.f2082a);
        }
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    public class g extends android.animation.AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ androidx.recyclerview.widget.c.i f2088a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ android.view.ViewPropertyAnimator f2089b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ android.view.View f2090c;

        public g(androidx.recyclerview.widget.c.i iVar, android.view.ViewPropertyAnimator viewPropertyAnimator, android.view.View view) {
            this.f2088a = iVar;
            this.f2089b = viewPropertyAnimator;
            this.f2090c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            this.f2089b.setListener(null);
            this.f2090c.setAlpha(1.0f);
            this.f2090c.setTranslationX(0.0f);
            this.f2090c.setTranslationY(0.0f);
            androidx.recyclerview.widget.c.this.C(this.f2088a.f2096a, true);
            androidx.recyclerview.widget.c.this.f2067r.remove(this.f2088a.f2096a);
            androidx.recyclerview.widget.c.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(android.animation.Animator animator) {
            androidx.recyclerview.widget.c.this.D(this.f2088a.f2096a, true);
        }
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    public class h extends android.animation.AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ androidx.recyclerview.widget.c.i f2092a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ android.view.ViewPropertyAnimator f2093b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ android.view.View f2094c;

        public h(androidx.recyclerview.widget.c.i iVar, android.view.ViewPropertyAnimator viewPropertyAnimator, android.view.View view) {
            this.f2092a = iVar;
            this.f2093b = viewPropertyAnimator;
            this.f2094c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            this.f2093b.setListener(null);
            this.f2094c.setAlpha(1.0f);
            this.f2094c.setTranslationX(0.0f);
            this.f2094c.setTranslationY(0.0f);
            androidx.recyclerview.widget.c.this.C(this.f2092a.f2097b, false);
            androidx.recyclerview.widget.c.this.f2067r.remove(this.f2092a.f2097b);
            androidx.recyclerview.widget.c.this.V();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(android.animation.Animator animator) {
            androidx.recyclerview.widget.c.this.D(this.f2092a.f2097b, false);
        }
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    public static class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView.b0 f2102a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2103b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2104c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2105d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2106e;

        public j(androidx.recyclerview.widget.RecyclerView.b0 b0Var, int i5, int i6, int i7, int i8) {
            this.f2102a = b0Var;
            this.f2103b = i5;
            this.f2104c = i6;
            this.f2105d = i7;
            this.f2106e = i8;
        }
    }

    public void Q(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        android.view.View view = b0Var.itemView;
        android.view.ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f2064o.add(b0Var);
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(l()).setListener(new androidx.recyclerview.widget.c.e(b0Var, view, viewPropertyAnimatorAnimate)).start();
    }

    public void R(androidx.recyclerview.widget.c.i iVar) {
        androidx.recyclerview.widget.RecyclerView.b0 b0Var = iVar.f2096a;
        android.view.View view = b0Var == null ? null : b0Var.itemView;
        androidx.recyclerview.widget.RecyclerView.b0 b0Var2 = iVar.f2097b;
        android.view.View view2 = b0Var2 != null ? b0Var2.itemView : null;
        if (view != null) {
            android.view.ViewPropertyAnimator duration = view.animate().setDuration(m());
            this.f2067r.add(iVar.f2096a);
            duration.translationX(iVar.f2100e - iVar.f2098c);
            duration.translationY(iVar.f2101f - iVar.f2099d);
            duration.alpha(0.0f).setListener(new androidx.recyclerview.widget.c.g(iVar, duration, view)).start();
        }
        if (view2 != null) {
            android.view.ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.f2067r.add(iVar.f2097b);
            viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(m()).alpha(1.0f).setListener(new androidx.recyclerview.widget.c.h(iVar, viewPropertyAnimatorAnimate, view2)).start();
        }
    }

    public void S(androidx.recyclerview.widget.RecyclerView.b0 b0Var, int i5, int i6, int i7, int i8) {
        android.view.View view = b0Var.itemView;
        int i9 = i7 - i5;
        int i10 = i8 - i6;
        if (i9 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i10 != 0) {
            view.animate().translationY(0.0f);
        }
        android.view.ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f2065p.add(b0Var);
        viewPropertyAnimatorAnimate.setDuration(n()).setListener(new androidx.recyclerview.widget.c.f(b0Var, i9, view, i10, viewPropertyAnimatorAnimate)).start();
    }

    public final void T(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        android.view.View view = b0Var.itemView;
        android.view.ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.f2066q.add(b0Var);
        viewPropertyAnimatorAnimate.setDuration(o()).alpha(0.0f).setListener(new androidx.recyclerview.widget.c.d(b0Var, viewPropertyAnimatorAnimate, view)).start();
    }

    public void U(java.util.List<androidx.recyclerview.widget.RecyclerView.b0> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).itemView.animate().cancel();
        }
    }

    public void V() {
        if (p()) {
            return;
        }
        i();
    }

    public final void W(java.util.List<androidx.recyclerview.widget.c.i> list, androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        for (int size = list.size() - 1; size >= 0; size--) {
            androidx.recyclerview.widget.c.i iVar = list.get(size);
            if (Y(iVar, b0Var) && iVar.f2096a == null && iVar.f2097b == null) {
                list.remove(iVar);
            }
        }
    }

    public final void X(androidx.recyclerview.widget.c.i iVar) {
        androidx.recyclerview.widget.RecyclerView.b0 b0Var = iVar.f2096a;
        if (b0Var != null) {
            Y(iVar, b0Var);
        }
        androidx.recyclerview.widget.RecyclerView.b0 b0Var2 = iVar.f2097b;
        if (b0Var2 != null) {
            Y(iVar, b0Var2);
        }
    }

    public final boolean Y(androidx.recyclerview.widget.c.i iVar, androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        boolean z4 = false;
        if (iVar.f2097b == b0Var) {
            iVar.f2097b = null;
        } else {
            if (iVar.f2096a != b0Var) {
                return false;
            }
            iVar.f2096a = null;
            z4 = true;
        }
        b0Var.itemView.setAlpha(1.0f);
        b0Var.itemView.setTranslationX(0.0f);
        b0Var.itemView.setTranslationY(0.0f);
        C(b0Var, z4);
        return true;
    }

    public final void Z(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        if (f2056s == null) {
            f2056s = new android.animation.ValueAnimator().getInterpolator();
        }
        b0Var.itemView.animate().setInterpolator(f2056s);
        j(b0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean g(androidx.recyclerview.widget.RecyclerView.b0 b0Var, java.util.List<java.lang.Object> list) {
        return !list.isEmpty() || super.g(b0Var, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void j(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        android.view.View view = b0Var.itemView;
        view.animate().cancel();
        int size = this.f2059j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (this.f2059j.get(size).f2102a == b0Var) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                E(b0Var);
                this.f2059j.remove(size);
            }
        }
        W(this.f2060k, b0Var);
        if (this.f2057h.remove(b0Var)) {
            view.setAlpha(1.0f);
            G(b0Var);
        }
        if (this.f2058i.remove(b0Var)) {
            view.setAlpha(1.0f);
            A(b0Var);
        }
        for (int size2 = this.f2063n.size() - 1; size2 >= 0; size2--) {
            java.util.ArrayList<androidx.recyclerview.widget.c.i> arrayList = this.f2063n.get(size2);
            W(arrayList, b0Var);
            if (arrayList.isEmpty()) {
                this.f2063n.remove(size2);
            }
        }
        for (int size3 = this.f2062m.size() - 1; size3 >= 0; size3--) {
            java.util.ArrayList<androidx.recyclerview.widget.c.j> arrayList2 = this.f2062m.get(size3);
            for (int size4 = arrayList2.size() - 1; size4 >= 0; size4--) {
                if (arrayList2.get(size4).f2102a == b0Var) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    E(b0Var);
                    arrayList2.remove(size4);
                    if (!arrayList2.isEmpty()) {
                        break;
                    }
                    this.f2062m.remove(size3);
                    break;
                }
            }
        }
        for (int size5 = this.f2061l.size() - 1; size5 >= 0; size5--) {
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> arrayList3 = this.f2061l.get(size5);
            if (arrayList3.remove(b0Var)) {
                view.setAlpha(1.0f);
                A(b0Var);
                if (arrayList3.isEmpty()) {
                    this.f2061l.remove(size5);
                }
            }
        }
        this.f2066q.remove(b0Var);
        this.f2064o.remove(b0Var);
        this.f2067r.remove(b0Var);
        this.f2065p.remove(b0Var);
        V();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void k() {
        int size = this.f2059j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            androidx.recyclerview.widget.c.j jVar = this.f2059j.get(size);
            android.view.View view = jVar.f2102a.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            E(jVar.f2102a);
            this.f2059j.remove(size);
        }
        for (int size2 = this.f2057h.size() - 1; size2 >= 0; size2--) {
            G(this.f2057h.get(size2));
            this.f2057h.remove(size2);
        }
        int size3 = this.f2058i.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            androidx.recyclerview.widget.RecyclerView.b0 b0Var = this.f2058i.get(size3);
            b0Var.itemView.setAlpha(1.0f);
            A(b0Var);
            this.f2058i.remove(size3);
        }
        for (int size4 = this.f2060k.size() - 1; size4 >= 0; size4--) {
            X(this.f2060k.get(size4));
        }
        this.f2060k.clear();
        if (p()) {
            for (int size5 = this.f2062m.size() - 1; size5 >= 0; size5--) {
                java.util.ArrayList<androidx.recyclerview.widget.c.j> arrayList = this.f2062m.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    androidx.recyclerview.widget.c.j jVar2 = arrayList.get(size6);
                    android.view.View view2 = jVar2.f2102a.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    E(jVar2.f2102a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.f2062m.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.f2061l.size() - 1; size7 >= 0; size7--) {
                java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> arrayList2 = this.f2061l.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    androidx.recyclerview.widget.RecyclerView.b0 b0Var2 = arrayList2.get(size8);
                    b0Var2.itemView.setAlpha(1.0f);
                    A(b0Var2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.f2061l.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.f2063n.size() - 1; size9 >= 0; size9--) {
                java.util.ArrayList<androidx.recyclerview.widget.c.i> arrayList3 = this.f2063n.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    X(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.f2063n.remove(arrayList3);
                    }
                }
            }
            U(this.f2066q);
            U(this.f2065p);
            U(this.f2064o);
            U(this.f2067r);
            i();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public boolean p() {
        return (this.f2058i.isEmpty() && this.f2060k.isEmpty() && this.f2059j.isEmpty() && this.f2057h.isEmpty() && this.f2065p.isEmpty() && this.f2066q.isEmpty() && this.f2064o.isEmpty() && this.f2067r.isEmpty() && this.f2062m.isEmpty() && this.f2061l.isEmpty() && this.f2063n.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void u() {
        boolean z4 = !this.f2057h.isEmpty();
        boolean z5 = !this.f2059j.isEmpty();
        boolean z6 = !this.f2060k.isEmpty();
        boolean z7 = !this.f2058i.isEmpty();
        if (z4 || z5 || z7 || z6) {
            java.util.Iterator<androidx.recyclerview.widget.RecyclerView.b0> it = this.f2057h.iterator();
            while (it.hasNext()) {
                T(it.next());
            }
            this.f2057h.clear();
            if (z5) {
                java.util.ArrayList<androidx.recyclerview.widget.c.j> arrayList = new java.util.ArrayList<>();
                arrayList.addAll(this.f2059j);
                this.f2062m.add(arrayList);
                this.f2059j.clear();
                androidx.recyclerview.widget.c.a aVar = new androidx.recyclerview.widget.c.a(arrayList);
                if (z4) {
                    w.q.M(arrayList.get(0).f2102a.itemView, aVar, o());
                } else {
                    aVar.run();
                }
            }
            if (z6) {
                java.util.ArrayList<androidx.recyclerview.widget.c.i> arrayList2 = new java.util.ArrayList<>();
                arrayList2.addAll(this.f2060k);
                this.f2063n.add(arrayList2);
                this.f2060k.clear();
                androidx.recyclerview.widget.c.b bVar = new androidx.recyclerview.widget.c.b(arrayList2);
                if (z4) {
                    w.q.M(arrayList2.get(0).f2096a.itemView, bVar, o());
                } else {
                    bVar.run();
                }
            }
            if (z7) {
                java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.b0> arrayList3 = new java.util.ArrayList<>();
                arrayList3.addAll(this.f2058i);
                this.f2061l.add(arrayList3);
                this.f2058i.clear();
                androidx.recyclerview.widget.c.RunnableC0015c runnableC0015c = new androidx.recyclerview.widget.c.RunnableC0015c(arrayList3);
                if (z4 || z5 || z6) {
                    w.q.M(arrayList3.get(0).itemView, runnableC0015c, (z4 ? o() : 0L) + java.lang.Math.max(z5 ? n() : 0L, z6 ? m() : 0L));
                } else {
                    runnableC0015c.run();
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.k
    public boolean w(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        Z(b0Var);
        b0Var.itemView.setAlpha(0.0f);
        this.f2058i.add(b0Var);
        return true;
    }

    @Override // androidx.recyclerview.widget.k
    public boolean x(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.b0 b0Var2, int i5, int i6, int i7, int i8) {
        if (b0Var == b0Var2) {
            return y(b0Var, i5, i6, i7, i8);
        }
        float translationX = b0Var.itemView.getTranslationX();
        float translationY = b0Var.itemView.getTranslationY();
        float alpha = b0Var.itemView.getAlpha();
        Z(b0Var);
        int i9 = (int) ((i7 - i5) - translationX);
        int i10 = (int) ((i8 - i6) - translationY);
        b0Var.itemView.setTranslationX(translationX);
        b0Var.itemView.setTranslationY(translationY);
        b0Var.itemView.setAlpha(alpha);
        if (b0Var2 != null) {
            Z(b0Var2);
            b0Var2.itemView.setTranslationX(-i9);
            b0Var2.itemView.setTranslationY(-i10);
            b0Var2.itemView.setAlpha(0.0f);
        }
        this.f2060k.add(new androidx.recyclerview.widget.c.i(b0Var, b0Var2, i5, i6, i7, i8));
        return true;
    }

    @Override // androidx.recyclerview.widget.k
    public boolean y(androidx.recyclerview.widget.RecyclerView.b0 b0Var, int i5, int i6, int i7, int i8) {
        android.view.View view = b0Var.itemView;
        int translationX = i5 + ((int) view.getTranslationX());
        int translationY = i6 + ((int) b0Var.itemView.getTranslationY());
        Z(b0Var);
        int i9 = i7 - translationX;
        int i10 = i8 - translationY;
        if (i9 == 0 && i10 == 0) {
            E(b0Var);
            return false;
        }
        if (i9 != 0) {
            view.setTranslationX(-i9);
        }
        if (i10 != 0) {
            view.setTranslationY(-i10);
        }
        this.f2059j.add(new androidx.recyclerview.widget.c.j(b0Var, translationX, translationY, i7, i8));
        return true;
    }

    @Override // androidx.recyclerview.widget.k
    public boolean z(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        Z(b0Var);
        this.f2057h.add(b0Var);
        return true;
    }

    /* JADX INFO: compiled from: DefaultItemAnimator.java */
    public static class i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView.b0 f2096a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView.b0 f2097b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2098c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2099d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2100e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2101f;

        public i(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.b0 b0Var2) {
            this.f2096a = b0Var;
            this.f2097b = b0Var2;
        }

        public java.lang.String toString() {
            return "ChangeInfo{oldHolder=" + this.f2096a + ", newHolder=" + this.f2097b + ", fromX=" + this.f2098c + ", fromY=" + this.f2099d + ", toX=" + this.f2100e + ", toY=" + this.f2101f + '}';
        }

        public i(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.b0 b0Var2, int i5, int i6, int i7, int i8) {
            this(b0Var, b0Var2);
            this.f2098c = i5;
            this.f2099d = i6;
            this.f2100e = i7;
            this.f2101f = i8;
        }
    }
}
