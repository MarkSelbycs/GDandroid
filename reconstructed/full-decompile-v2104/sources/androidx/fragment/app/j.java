package androidx.fragment.app;

/* JADX INFO: compiled from: FragmentTransitionCompat21.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class j extends androidx.fragment.app.k {

    /* JADX INFO: compiled from: FragmentTransitionCompat21.java */
    public class a extends android.transition.Transition.EpicenterCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ android.graphics.Rect f1713a;

        public a(android.graphics.Rect rect) {
            this.f1713a = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public android.graphics.Rect onGetEpicenter(android.transition.Transition transition) {
            return this.f1713a;
        }
    }

    /* JADX INFO: compiled from: FragmentTransitionCompat21.java */
    public class b implements android.transition.Transition.TransitionListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ android.view.View f1715a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f1716b;

        public b(android.view.View view, java.util.ArrayList arrayList) {
            this.f1715a = view;
            this.f1716b = arrayList;
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(android.transition.Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(android.transition.Transition transition) {
            transition.removeListener(this);
            this.f1715a.setVisibility(8);
            int size = this.f1716b.size();
            for (int i5 = 0; i5 < size; i5++) {
                ((android.view.View) this.f1716b.get(i5)).setVisibility(0);
            }
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionPause(android.transition.Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionResume(android.transition.Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionStart(android.transition.Transition transition) {
        }
    }

    /* JADX INFO: compiled from: FragmentTransitionCompat21.java */
    public class c implements android.transition.Transition.TransitionListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.Object f1718a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f1719b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.lang.Object f1720c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f1721d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ java.lang.Object f1722e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f1723f;

        public c(java.lang.Object obj, java.util.ArrayList arrayList, java.lang.Object obj2, java.util.ArrayList arrayList2, java.lang.Object obj3, java.util.ArrayList arrayList3) {
            this.f1718a = obj;
            this.f1719b = arrayList;
            this.f1720c = obj2;
            this.f1721d = arrayList2;
            this.f1722e = obj3;
            this.f1723f = arrayList3;
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(android.transition.Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(android.transition.Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionPause(android.transition.Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionResume(android.transition.Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionStart(android.transition.Transition transition) {
            java.lang.Object obj = this.f1718a;
            if (obj != null) {
                androidx.fragment.app.j.this.q(obj, this.f1719b, null);
            }
            java.lang.Object obj2 = this.f1720c;
            if (obj2 != null) {
                androidx.fragment.app.j.this.q(obj2, this.f1721d, null);
            }
            java.lang.Object obj3 = this.f1722e;
            if (obj3 != null) {
                androidx.fragment.app.j.this.q(obj3, this.f1723f, null);
            }
        }
    }

    /* JADX INFO: compiled from: FragmentTransitionCompat21.java */
    public class d extends android.transition.Transition.EpicenterCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ android.graphics.Rect f1725a;

        public d(android.graphics.Rect rect) {
            this.f1725a = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public android.graphics.Rect onGetEpicenter(android.transition.Transition transition) {
            android.graphics.Rect rect = this.f1725a;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return this.f1725a;
        }
    }

    public static boolean B(android.transition.Transition transition) {
        return (androidx.fragment.app.k.l(transition.getTargetIds()) && androidx.fragment.app.k.l(transition.getTargetNames()) && androidx.fragment.app.k.l(transition.getTargetTypes())) ? false : true;
    }

    @Override // androidx.fragment.app.k
    public java.lang.Object A(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        android.transition.TransitionSet transitionSet = new android.transition.TransitionSet();
        transitionSet.addTransition((android.transition.Transition) obj);
        return transitionSet;
    }

    @Override // androidx.fragment.app.k
    public void a(java.lang.Object obj, android.view.View view) {
        if (obj != null) {
            ((android.transition.Transition) obj).addTarget(view);
        }
    }

    @Override // androidx.fragment.app.k
    public void b(java.lang.Object obj, java.util.ArrayList<android.view.View> arrayList) {
        android.transition.Transition transition = (android.transition.Transition) obj;
        if (transition == null) {
            return;
        }
        int i5 = 0;
        if (transition instanceof android.transition.TransitionSet) {
            android.transition.TransitionSet transitionSet = (android.transition.TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            while (i5 < transitionCount) {
                b(transitionSet.getTransitionAt(i5), arrayList);
                i5++;
            }
            return;
        }
        if (B(transition) || !androidx.fragment.app.k.l(transition.getTargets())) {
            return;
        }
        int size = arrayList.size();
        while (i5 < size) {
            transition.addTarget(arrayList.get(i5));
            i5++;
        }
    }

    @Override // androidx.fragment.app.k
    public void c(android.view.ViewGroup viewGroup, java.lang.Object obj) {
        android.transition.TransitionManager.beginDelayedTransition(viewGroup, (android.transition.Transition) obj);
    }

    @Override // androidx.fragment.app.k
    public boolean e(java.lang.Object obj) {
        return obj instanceof android.transition.Transition;
    }

    @Override // androidx.fragment.app.k
    public java.lang.Object g(java.lang.Object obj) {
        if (obj != null) {
            return ((android.transition.Transition) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.k
    public java.lang.Object m(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        android.transition.Transition ordering = (android.transition.Transition) obj;
        android.transition.Transition transition = (android.transition.Transition) obj2;
        android.transition.Transition transition2 = (android.transition.Transition) obj3;
        if (ordering != null && transition != null) {
            ordering = new android.transition.TransitionSet().addTransition(ordering).addTransition(transition).setOrdering(1);
        } else if (ordering == null) {
            ordering = transition != null ? transition : null;
        }
        if (transition2 == null) {
            return ordering;
        }
        android.transition.TransitionSet transitionSet = new android.transition.TransitionSet();
        if (ordering != null) {
            transitionSet.addTransition(ordering);
        }
        transitionSet.addTransition(transition2);
        return transitionSet;
    }

    @Override // androidx.fragment.app.k
    public java.lang.Object n(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        android.transition.TransitionSet transitionSet = new android.transition.TransitionSet();
        if (obj != null) {
            transitionSet.addTransition((android.transition.Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.addTransition((android.transition.Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.addTransition((android.transition.Transition) obj3);
        }
        return transitionSet;
    }

    @Override // androidx.fragment.app.k
    public void p(java.lang.Object obj, android.view.View view) {
        if (obj != null) {
            ((android.transition.Transition) obj).removeTarget(view);
        }
    }

    @Override // androidx.fragment.app.k
    public void q(java.lang.Object obj, java.util.ArrayList<android.view.View> arrayList, java.util.ArrayList<android.view.View> arrayList2) {
        java.util.List<android.view.View> targets;
        android.transition.Transition transition = (android.transition.Transition) obj;
        int i5 = 0;
        if (transition instanceof android.transition.TransitionSet) {
            android.transition.TransitionSet transitionSet = (android.transition.TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            while (i5 < transitionCount) {
                q(transitionSet.getTransitionAt(i5), arrayList, arrayList2);
                i5++;
            }
            return;
        }
        if (B(transition) || (targets = transition.getTargets()) == null || targets.size() != arrayList.size() || !targets.containsAll(arrayList)) {
            return;
        }
        int size = arrayList2 == null ? 0 : arrayList2.size();
        while (i5 < size) {
            transition.addTarget(arrayList2.get(i5));
            i5++;
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            transition.removeTarget(arrayList.get(size2));
        }
    }

    @Override // androidx.fragment.app.k
    public void r(java.lang.Object obj, android.view.View view, java.util.ArrayList<android.view.View> arrayList) {
        ((android.transition.Transition) obj).addListener(new androidx.fragment.app.j.b(view, arrayList));
    }

    @Override // androidx.fragment.app.k
    public void t(java.lang.Object obj, java.lang.Object obj2, java.util.ArrayList<android.view.View> arrayList, java.lang.Object obj3, java.util.ArrayList<android.view.View> arrayList2, java.lang.Object obj4, java.util.ArrayList<android.view.View> arrayList3) {
        ((android.transition.Transition) obj).addListener(new androidx.fragment.app.j.c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.k
    public void u(java.lang.Object obj, android.graphics.Rect rect) {
        if (obj != null) {
            ((android.transition.Transition) obj).setEpicenterCallback(new androidx.fragment.app.j.d(rect));
        }
    }

    @Override // androidx.fragment.app.k
    public void v(java.lang.Object obj, android.view.View view) {
        if (view != null) {
            android.graphics.Rect rect = new android.graphics.Rect();
            k(view, rect);
            ((android.transition.Transition) obj).setEpicenterCallback(new androidx.fragment.app.j.a(rect));
        }
    }

    @Override // androidx.fragment.app.k
    public void y(java.lang.Object obj, android.view.View view, java.util.ArrayList<android.view.View> arrayList) {
        android.transition.TransitionSet transitionSet = (android.transition.TransitionSet) obj;
        java.util.List<android.view.View> targets = transitionSet.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            androidx.fragment.app.k.d(targets, arrayList.get(i5));
        }
        targets.add(view);
        arrayList.add(view);
        b(transitionSet, arrayList);
    }

    @Override // androidx.fragment.app.k
    public void z(java.lang.Object obj, java.util.ArrayList<android.view.View> arrayList, java.util.ArrayList<android.view.View> arrayList2) {
        android.transition.TransitionSet transitionSet = (android.transition.TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            q(transitionSet, arrayList, arrayList2);
        }
    }
}
