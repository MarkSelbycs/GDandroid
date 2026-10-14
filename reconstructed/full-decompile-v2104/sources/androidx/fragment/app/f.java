package androidx.fragment.app;

/* JADX INFO: compiled from: FragmentManager.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f extends androidx.fragment.app.e implements android.view.LayoutInflater.Factory2 {
    public static boolean J;
    public static java.lang.reflect.Field K;
    public static final android.view.animation.Interpolator L = new android.view.animation.DecelerateInterpolator(2.5f);
    public static final android.view.animation.Interpolator M = new android.view.animation.DecelerateInterpolator(1.5f);
    public static final android.view.animation.Interpolator N = new android.view.animation.AccelerateInterpolator(2.5f);
    public static final android.view.animation.Interpolator O = new android.view.animation.AccelerateInterpolator(1.5f);
    public boolean A;
    public java.util.ArrayList<androidx.fragment.app.a> B;
    public java.util.ArrayList<java.lang.Boolean> C;
    public java.util.ArrayList<androidx.fragment.app.Fragment> D;
    public java.util.ArrayList<androidx.fragment.app.f.m> G;
    public androidx.fragment.app.g H;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.ArrayList<androidx.fragment.app.f.l> f1623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1624b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public android.util.SparseArray<androidx.fragment.app.Fragment> f1627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.util.ArrayList<androidx.fragment.app.a> f1628f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public java.util.ArrayList<androidx.fragment.app.Fragment> f1629g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public java.util.ArrayList<androidx.fragment.app.a> f1630h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public java.util.ArrayList<java.lang.Integer> f1631i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public java.util.ArrayList<androidx.fragment.app.e.a> f1632o;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public androidx.fragment.app.d f1635r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public androidx.fragment.app.b f1636s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public androidx.fragment.app.Fragment f1637t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public androidx.fragment.app.Fragment f1638u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f1639v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f1640w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f1641x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f1642y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public java.lang.String f1643z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1625c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.ArrayList<androidx.fragment.app.Fragment> f1626d = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final java.util.concurrent.CopyOnWriteArrayList<androidx.fragment.app.f.j> f1633p = new java.util.concurrent.CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1634q = 0;
    public android.os.Bundle E = null;
    public android.util.SparseArray<android.os.Parcelable> F = null;
    public java.lang.Runnable I = new androidx.fragment.app.f.a();

    /* JADX INFO: compiled from: FragmentManager.java */
    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.fragment.app.f.this.f0();
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public class b extends androidx.fragment.app.f.AnimationAnimationListenerC0012f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ android.view.ViewGroup f1645b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.Fragment f1646c;

        /* JADX INFO: compiled from: FragmentManager.java */
        public class a implements java.lang.Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (androidx.fragment.app.f.b.this.f1646c.h() != null) {
                    androidx.fragment.app.f.b.this.f1646c.Q0(null);
                    androidx.fragment.app.f.b bVar = androidx.fragment.app.f.b.this;
                    androidx.fragment.app.f fVar = androidx.fragment.app.f.this;
                    androidx.fragment.app.Fragment fragment = bVar.f1646c;
                    fVar.G0(fragment, fragment.z(), 0, 0, false);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(android.view.animation.Animation.AnimationListener animationListener, android.view.ViewGroup viewGroup, androidx.fragment.app.Fragment fragment) {
            super(animationListener);
            this.f1645b = viewGroup;
            this.f1646c = fragment;
        }

        @Override // androidx.fragment.app.f.AnimationAnimationListenerC0012f, android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(android.view.animation.Animation animation) {
            super.onAnimationEnd(animation);
            this.f1645b.post(new androidx.fragment.app.f.b.a());
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public class c extends android.animation.AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ android.view.ViewGroup f1649a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ android.view.View f1650b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.Fragment f1651c;

        public c(android.view.ViewGroup viewGroup, android.view.View view, androidx.fragment.app.Fragment fragment) {
            this.f1649a = viewGroup;
            this.f1650b = view;
            this.f1651c = fragment;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            this.f1649a.endViewTransition(this.f1650b);
            android.animation.Animator animatorI = this.f1651c.i();
            this.f1651c.R0(null);
            if (animatorI == null || this.f1649a.indexOfChild(this.f1650b) >= 0) {
                return;
            }
            androidx.fragment.app.f fVar = androidx.fragment.app.f.this;
            androidx.fragment.app.Fragment fragment = this.f1651c;
            fVar.G0(fragment, fragment.z(), 0, 0, false);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public class d extends android.animation.AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ android.view.ViewGroup f1653a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ android.view.View f1654b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.Fragment f1655c;

        public d(android.view.ViewGroup viewGroup, android.view.View view, androidx.fragment.app.Fragment fragment) {
            this.f1653a = viewGroup;
            this.f1654b = view;
            this.f1655c = fragment;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            this.f1653a.endViewTransition(this.f1654b);
            animator.removeListener(this);
            android.view.View view = this.f1655c.N;
            if (view != null) {
                view.setVisibility(8);
            }
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public static class e extends androidx.fragment.app.f.AnimationAnimationListenerC0012f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public android.view.View f1657b;

        /* JADX INFO: compiled from: FragmentManager.java */
        public class a implements java.lang.Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                androidx.fragment.app.f.e.this.f1657b.setLayerType(0, null);
            }
        }

        public e(android.view.View view, android.view.animation.Animation.AnimationListener animationListener) {
            super(animationListener);
            this.f1657b = view;
        }

        @Override // androidx.fragment.app.f.AnimationAnimationListenerC0012f, android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(android.view.animation.Animation animation) {
            w.q.C(this.f1657b);
            this.f1657b.post(new androidx.fragment.app.f.e.a());
            super.onAnimationEnd(animation);
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.f$f, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FragmentManager.java */
    public static class AnimationAnimationListenerC0012f implements android.view.animation.Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.view.animation.Animation.AnimationListener f1659a;

        public AnimationAnimationListenerC0012f(android.view.animation.Animation.AnimationListener animationListener) {
            this.f1659a = animationListener;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(android.view.animation.Animation animation) {
            android.view.animation.Animation.AnimationListener animationListener = this.f1659a;
            if (animationListener != null) {
                animationListener.onAnimationEnd(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(android.view.animation.Animation animation) {
            android.view.animation.Animation.AnimationListener animationListener = this.f1659a;
            if (animationListener != null) {
                animationListener.onAnimationRepeat(animation);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(android.view.animation.Animation animation) {
            android.view.animation.Animation.AnimationListener animationListener = this.f1659a;
            if (animationListener != null) {
                animationListener.onAnimationStart(animation);
            }
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public static class h extends android.animation.AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public android.view.View f1662a;

        public h(android.view.View view) {
            this.f1662a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            this.f1662a.setLayerType(0, null);
            animator.removeListener(this);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(android.animation.Animator animator) {
            this.f1662a.setLayerType(2, null);
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public static final class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f1668a;
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public static class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int[] f1669a = {android.R.attr.name, android.R.attr.id, android.R.attr.tag};
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public interface l {
        boolean a(java.util.ArrayList<androidx.fragment.app.a> arrayList, java.util.ArrayList<java.lang.Boolean> arrayList2);
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public static class m implements androidx.fragment.app.Fragment.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f1670a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final androidx.fragment.app.a f1671b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1672c;

        public m(androidx.fragment.app.a aVar, boolean z4) {
            this.f1670a = z4;
            this.f1671b = aVar;
        }

        @Override // androidx.fragment.app.Fragment.f
        public void a() {
            int i5 = this.f1672c - 1;
            this.f1672c = i5;
            if (i5 != 0) {
                return;
            }
            this.f1671b.f1590a.X0();
        }

        @Override // androidx.fragment.app.Fragment.f
        public void b() {
            this.f1672c++;
        }

        public void c() {
            androidx.fragment.app.a aVar = this.f1671b;
            aVar.f1590a.r(aVar, this.f1670a, false, false);
        }

        public void d() {
            boolean z4 = this.f1672c > 0;
            androidx.fragment.app.f fVar = this.f1671b.f1590a;
            int size = fVar.f1626d.size();
            for (int i5 = 0; i5 < size; i5++) {
                androidx.fragment.app.Fragment fragment = fVar.f1626d.get(i5);
                fragment.X0(null);
                if (z4 && fragment.H()) {
                    fragment.Z0();
                }
            }
            androidx.fragment.app.a aVar = this.f1671b;
            aVar.f1590a.r(aVar, this.f1670a, !z4, true);
        }

        public boolean e() {
            return this.f1672c == 0;
        }
    }

    public static boolean B0(android.animation.Animator animator) {
        if (animator == null) {
            return false;
        }
        if (animator instanceof android.animation.ValueAnimator) {
            for (android.animation.PropertyValuesHolder propertyValuesHolder : ((android.animation.ValueAnimator) animator).getValues()) {
                if ("alpha".equals(propertyValuesHolder.getPropertyName())) {
                    return true;
                }
            }
        } else if (animator instanceof android.animation.AnimatorSet) {
            java.util.ArrayList<android.animation.Animator> childAnimations = ((android.animation.AnimatorSet) animator).getChildAnimations();
            for (int i5 = 0; i5 < childAnimations.size(); i5++) {
                if (B0(childAnimations.get(i5))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean C0(androidx.fragment.app.f.g gVar) {
        android.view.animation.Animation animation = gVar.f1660a;
        if (animation instanceof android.view.animation.AlphaAnimation) {
            return true;
        }
        if (!(animation instanceof android.view.animation.AnimationSet)) {
            return B0(gVar.f1661b);
        }
        java.util.List<android.view.animation.Animation> animations = ((android.view.animation.AnimationSet) animation).getAnimations();
        for (int i5 = 0; i5 < animations.size(); i5++) {
            if (animations.get(i5) instanceof android.view.animation.AlphaAnimation) {
                return true;
            }
        }
        return false;
    }

    public static int S0(int i5) {
        if (i5 == 4097) {
            return 8194;
        }
        if (i5 != 4099) {
            return i5 != 8194 ? 0 : 4097;
        }
        return 4099;
    }

    public static void Z0(android.view.View view, androidx.fragment.app.f.g gVar) {
        if (view == null || gVar == null || !c1(view, gVar)) {
            return;
        }
        android.animation.Animator animator = gVar.f1661b;
        if (animator != null) {
            animator.addListener(new androidx.fragment.app.f.h(view));
            return;
        }
        android.view.animation.Animation.AnimationListener animationListenerP0 = p0(gVar.f1660a);
        view.setLayerType(2, null);
        gVar.f1660a.setAnimationListener(new androidx.fragment.app.f.e(view, animationListenerP0));
    }

    public static void b1(androidx.fragment.app.g gVar) {
        if (gVar == null) {
            return;
        }
        java.util.List<androidx.fragment.app.Fragment> listB = gVar.b();
        if (listB != null) {
            java.util.Iterator<androidx.fragment.app.Fragment> it = listB.iterator();
            while (it.hasNext()) {
                it.next().I = true;
            }
        }
        java.util.List<androidx.fragment.app.g> listA = gVar.a();
        if (listA != null) {
            java.util.Iterator<androidx.fragment.app.g> it2 = listA.iterator();
            while (it2.hasNext()) {
                b1(it2.next());
            }
        }
    }

    public static boolean c1(android.view.View view, androidx.fragment.app.f.g gVar) {
        return view != null && gVar != null && view.getLayerType() == 0 && w.q.z(view) && C0(gVar);
    }

    public static void g0(java.util.ArrayList<androidx.fragment.app.a> arrayList, java.util.ArrayList<java.lang.Boolean> arrayList2, int i5, int i6) {
        while (i5 < i6) {
            androidx.fragment.app.a aVar = arrayList.get(i5);
            if (arrayList2.get(i5).booleanValue()) {
                aVar.g(-1);
                aVar.m(i5 == i6 + (-1));
            } else {
                aVar.g(1);
                aVar.l();
            }
            i5++;
        }
    }

    public static int g1(int i5, boolean z4) {
        if (i5 == 4097) {
            return z4 ? 1 : 2;
        }
        if (i5 == 4099) {
            return z4 ? 5 : 6;
        }
        if (i5 != 8194) {
            return -1;
        }
        return z4 ? 3 : 4;
    }

    public static android.view.animation.Animation.AnimationListener p0(android.view.animation.Animation animation) {
        try {
            if (K == null) {
                java.lang.reflect.Field declaredField = android.view.animation.Animation.class.getDeclaredField("mListener");
                K = declaredField;
                declaredField.setAccessible(true);
            }
            return (android.view.animation.Animation.AnimationListener) K.get(animation);
        } catch (java.lang.IllegalAccessException e5) {
            android.util.Log.e("FragmentManager", "Cannot access Animation's mListener field", e5);
            return null;
        } catch (java.lang.NoSuchFieldException e6) {
            android.util.Log.e("FragmentManager", "No field with the name mListener is found in Animation class", e6);
            return null;
        }
    }

    public static androidx.fragment.app.f.g x0(android.content.Context context, float f5, float f6) {
        android.view.animation.AlphaAnimation alphaAnimation = new android.view.animation.AlphaAnimation(f5, f6);
        alphaAnimation.setInterpolator(M);
        alphaAnimation.setDuration(220L);
        return new androidx.fragment.app.f.g(alphaAnimation);
    }

    public static androidx.fragment.app.f.g z0(android.content.Context context, float f5, float f6, float f7, float f8) {
        android.view.animation.AnimationSet animationSet = new android.view.animation.AnimationSet(false);
        android.view.animation.ScaleAnimation scaleAnimation = new android.view.animation.ScaleAnimation(f5, f6, f5, f6, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(L);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        android.view.animation.AlphaAnimation alphaAnimation = new android.view.animation.AlphaAnimation(f7, f8);
        alphaAnimation.setInterpolator(M);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return new androidx.fragment.app.f.g(animationSet);
    }

    public void A() {
        Y(1);
    }

    public final void A0(j.b<androidx.fragment.app.Fragment> bVar) {
        int size = bVar.size();
        for (int i5 = 0; i5 < size; i5++) {
            androidx.fragment.app.Fragment fragmentH = bVar.h(i5);
            if (!fragmentH.f1513p) {
                android.view.View viewA = fragmentH.A();
                fragmentH.U = viewA.getAlpha();
                viewA.setAlpha(0.0f);
            }
        }
    }

    public void B() {
        for (int i5 = 0; i5 < this.f1626d.size(); i5++) {
            androidx.fragment.app.Fragment fragment = this.f1626d.get(i5);
            if (fragment != null) {
                fragment.C0();
            }
        }
    }

    public void C(boolean z4) {
        for (int size = this.f1626d.size() - 1; size >= 0; size--) {
            androidx.fragment.app.Fragment fragment = this.f1626d.get(size);
            if (fragment != null) {
                fragment.D0(z4);
            }
        }
    }

    public void D(androidx.fragment.app.Fragment fragment, android.os.Bundle bundle, boolean z4) {
        androidx.fragment.app.Fragment fragment2 = this.f1637t;
        if (fragment2 != null) {
            androidx.fragment.app.e eVarP = fragment2.p();
            if (eVarP instanceof androidx.fragment.app.f) {
                ((androidx.fragment.app.f) eVarP).D(fragment, bundle, true);
            }
        }
        for (androidx.fragment.app.f.j jVar : this.f1633p) {
            if (!z4 || jVar.f1668a) {
                java.util.Objects.requireNonNull(jVar);
                throw null;
            }
        }
    }

    public void D0(androidx.fragment.app.Fragment fragment) {
        if (fragment == null) {
            return;
        }
        int iMin = this.f1634q;
        if (fragment.f1514q) {
            iMin = fragment.G() ? java.lang.Math.min(iMin, 1) : java.lang.Math.min(iMin, 0);
        }
        G0(fragment, iMin, fragment.s(), fragment.t(), false);
        if (fragment.N != null) {
            androidx.fragment.app.Fragment fragmentL0 = l0(fragment);
            if (fragmentL0 != null) {
                android.view.View view = fragmentL0.N;
                android.view.ViewGroup viewGroup = fragment.M;
                int iIndexOfChild = viewGroup.indexOfChild(view);
                int iIndexOfChild2 = viewGroup.indexOfChild(fragment.N);
                if (iIndexOfChild2 < iIndexOfChild) {
                    viewGroup.removeViewAt(iIndexOfChild2);
                    viewGroup.addView(fragment.N, iIndexOfChild);
                }
            }
            if (fragment.S && fragment.M != null) {
                float f5 = fragment.U;
                if (f5 > 0.0f) {
                    fragment.N.setAlpha(f5);
                }
                fragment.U = 0.0f;
                fragment.S = false;
                androidx.fragment.app.f.g gVarV0 = v0(fragment, fragment.s(), true, fragment.t());
                if (gVarV0 != null) {
                    Z0(fragment.N, gVarV0);
                    android.view.animation.Animation animation = gVarV0.f1660a;
                    if (animation != null) {
                        fragment.N.startAnimation(animation);
                    } else {
                        gVarV0.f1661b.setTarget(fragment.N);
                        gVarV0.f1661b.start();
                    }
                }
            }
        }
        if (fragment.T) {
            s(fragment);
        }
    }

    public void E(androidx.fragment.app.Fragment fragment, android.content.Context context, boolean z4) {
        androidx.fragment.app.Fragment fragment2 = this.f1637t;
        if (fragment2 != null) {
            androidx.fragment.app.e eVarP = fragment2.p();
            if (eVarP instanceof androidx.fragment.app.f) {
                ((androidx.fragment.app.f) eVarP).E(fragment, context, true);
            }
        }
        for (androidx.fragment.app.f.j jVar : this.f1633p) {
            if (!z4 || jVar.f1668a) {
                java.util.Objects.requireNonNull(jVar);
                throw null;
            }
        }
    }

    public void E0(int i5, boolean z4) {
        androidx.fragment.app.d dVar;
        if (this.f1635r == null && i5 != 0) {
            throw new java.lang.IllegalStateException("No activity");
        }
        if (z4 || i5 != this.f1634q) {
            this.f1634q = i5;
            if (this.f1627e != null) {
                int size = this.f1626d.size();
                for (int i6 = 0; i6 < size; i6++) {
                    D0(this.f1626d.get(i6));
                }
                int size2 = this.f1627e.size();
                for (int i7 = 0; i7 < size2; i7++) {
                    androidx.fragment.app.Fragment fragmentValueAt = this.f1627e.valueAt(i7);
                    if (fragmentValueAt != null && ((fragmentValueAt.f1514q || fragmentValueAt.G) && !fragmentValueAt.S)) {
                        D0(fragmentValueAt);
                    }
                }
                e1();
                if (this.f1639v && (dVar = this.f1635r) != null && this.f1634q == 4) {
                    dVar.n();
                    this.f1639v = false;
                }
            }
        }
    }

    public void F(androidx.fragment.app.Fragment fragment, android.os.Bundle bundle, boolean z4) {
        androidx.fragment.app.Fragment fragment2 = this.f1637t;
        if (fragment2 != null) {
            androidx.fragment.app.e eVarP = fragment2.p();
            if (eVarP instanceof androidx.fragment.app.f) {
                ((androidx.fragment.app.f) eVarP).F(fragment, bundle, true);
            }
        }
        for (androidx.fragment.app.f.j jVar : this.f1633p) {
            if (!z4 || jVar.f1668a) {
                java.util.Objects.requireNonNull(jVar);
                throw null;
            }
        }
    }

    public void F0(androidx.fragment.app.Fragment fragment) {
        G0(fragment, this.f1634q, 0, 0, false);
    }

    public void G(androidx.fragment.app.Fragment fragment, boolean z4) {
        androidx.fragment.app.Fragment fragment2 = this.f1637t;
        if (fragment2 != null) {
            androidx.fragment.app.e eVarP = fragment2.p();
            if (eVarP instanceof androidx.fragment.app.f) {
                ((androidx.fragment.app.f) eVarP).G(fragment, true);
            }
        }
        for (androidx.fragment.app.f.j jVar : this.f1633p) {
            if (!z4 || jVar.f1668a) {
                java.util.Objects.requireNonNull(jVar);
                throw null;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:131:0x0292  */
    /* JADX WARN: Code duplicated, block: B:133:0x0296  */
    /* JADX WARN: Code duplicated, block: B:136:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:138:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:188:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:190:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:192:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:193:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:195:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:218:0x041d  */
    /* JADX WARN: Code duplicated, block: B:222:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:133:0x0296, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:138:0x02b6, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:218:0x041d, please report this as an issue */
    public void G0(androidx.fragment.app.Fragment fragment, int i5, int i6, int i7, boolean z4) {
        int i8;
        android.view.ViewGroup viewGroup;
        android.view.ViewGroup viewGroup2;
        java.lang.String resourceName;
        int i9;
        int i10 = 1;
        if (!fragment.f1513p || fragment.G) {
            i8 = i5;
            if (i8 > 1) {
                i8 = 1;
            }
        } else {
            i8 = i5;
        }
        if (fragment.f1514q && i8 > (i9 = fragment.f1502a)) {
            i8 = (i9 == 0 && fragment.G()) ? 1 : fragment.f1502a;
        }
        int i11 = (!fragment.P || fragment.f1502a >= 3 || i8 <= 2) ? i8 : 2;
        int i12 = fragment.f1502a;
        if (i12 > i11) {
            if (i12 > i11) {
                if (i12 != 1) {
                    if (i12 != 2) {
                        if (i12 != 3) {
                            if (i12 == 4) {
                                if (i11 < 4) {
                                    if (J) {
                                        android.util.Log.v("FragmentManager", "movefrom RESUMED: " + fragment);
                                    }
                                    fragment.G0();
                                    I(fragment, false);
                                }
                            }
                        }
                        if (i11 < 3) {
                            if (J) {
                                android.util.Log.v("FragmentManager", "movefrom STARTED: " + fragment);
                            }
                            fragment.M0();
                            O(fragment, false);
                        }
                    }
                    if (i11 < 2) {
                        if (J) {
                            android.util.Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + fragment);
                        }
                        if (fragment.N != null && this.f1635r.m(fragment) && fragment.f1505c == null) {
                            V0(fragment);
                        }
                        fragment.z0();
                        Q(fragment, false);
                        android.view.View view = fragment.N;
                        if (view != null && (viewGroup = fragment.M) != null) {
                            viewGroup.endViewTransition(view);
                            fragment.N.clearAnimation();
                            androidx.fragment.app.f.g gVarV0 = (this.f1634q <= 0 || this.f1642y || fragment.N.getVisibility() != 0 || fragment.U < 0.0f) ? null : v0(fragment, i6, false, i7);
                            fragment.U = 0.0f;
                            if (gVarV0 != null) {
                                l(fragment, gVarV0, i11);
                            }
                            fragment.M.removeView(fragment.N);
                        }
                        fragment.M = null;
                        fragment.N = null;
                        fragment.Z = null;
                        fragment.f1503a0.i(null);
                        fragment.O = null;
                        fragment.f1516s = false;
                    }
                    if (i11 >= 1) {
                        if (this.f1642y) {
                            if (fragment.h() != null) {
                                android.view.View viewH = fragment.h();
                                fragment.Q0(null);
                                viewH.clearAnimation();
                            } else if (fragment.i() != null) {
                                android.animation.Animator animatorI = fragment.i();
                                fragment.R0(null);
                                animatorI.cancel();
                            }
                        }
                        if (fragment.h() == null) {
                        }
                        fragment.Y0(i11);
                    }
                } else if (i11 >= 1) {
                    if (this.f1642y) {
                        if (fragment.h() != null) {
                            android.view.View viewH2 = fragment.h();
                            fragment.Q0(null);
                            viewH2.clearAnimation();
                        } else if (fragment.i() != null) {
                            android.animation.Animator animatorI2 = fragment.i();
                            fragment.R0(null);
                            animatorI2.cancel();
                        }
                    }
                    if (fragment.h() == null || fragment.i() != null) {
                        fragment.Y0(i11);
                    } else {
                        if (J) {
                            android.util.Log.v("FragmentManager", "movefrom CREATED: " + fragment);
                        }
                        if (fragment.I) {
                            fragment.f1502a = 0;
                        } else {
                            fragment.y0();
                            G(fragment, false);
                        }
                        fragment.A0();
                        H(fragment, false);
                        if (!z4) {
                            if (fragment.I) {
                                fragment.f1521x = null;
                                fragment.B = null;
                                fragment.f1520w = null;
                            } else {
                                y0(fragment);
                            }
                        }
                    }
                }
            }
            if (fragment.f1502a != i10) {
                android.util.Log.w("FragmentManager", "moveToState: Fragment state for " + fragment + " not updated inline; expected state " + i10 + " found " + fragment.f1502a);
                fragment.f1502a = i10;
            }
        }
        if (fragment.f1515r && !fragment.f1516s) {
            return;
        }
        if (fragment.h() != null || fragment.i() != null) {
            fragment.Q0(null);
            fragment.R0(null);
            G0(fragment, fragment.z(), 0, 0, true);
        }
        int i13 = fragment.f1502a;
        if (i13 != 0) {
            if (i13 != 1) {
                if (i13 != 2) {
                    if (i13 == 3) {
                    }
                }
                if (i11 > 3) {
                    if (J) {
                        android.util.Log.v("FragmentManager", "moveto RESUMED: " + fragment);
                    }
                    fragment.J0();
                    L(fragment, false);
                    fragment.f1504b = null;
                    fragment.f1505c = null;
                }
            }
            if (i11 > 2) {
                if (J) {
                    android.util.Log.v("FragmentManager", "moveto STARTED: " + fragment);
                }
                fragment.L0();
                N(fragment, false);
            }
            if (i11 > 3) {
                if (J) {
                    android.util.Log.v("FragmentManager", "moveto RESUMED: " + fragment);
                }
                fragment.J0();
                L(fragment, false);
                fragment.f1504b = null;
                fragment.f1505c = null;
            }
        } else if (i11 > 0) {
            if (J) {
                android.util.Log.v("FragmentManager", "moveto CREATED: " + fragment);
            }
            android.os.Bundle bundle = fragment.f1504b;
            if (bundle != null) {
                bundle.setClassLoader(this.f1635r.e().getClassLoader());
                fragment.f1505c = fragment.f1504b.getSparseParcelableArray("android:view_state");
                androidx.fragment.app.Fragment fragmentQ0 = q0(fragment.f1504b, "android:target_state");
                fragment.f1510h = fragmentQ0;
                if (fragmentQ0 != null) {
                    fragment.f1512o = fragment.f1504b.getInt("android:target_req_state", 0);
                }
                java.lang.Boolean bool = fragment.f1506d;
                if (bool != null) {
                    fragment.Q = bool.booleanValue();
                    fragment.f1506d = null;
                } else {
                    fragment.Q = fragment.f1504b.getBoolean("android:user_visible_hint", true);
                }
                if (!fragment.Q) {
                    fragment.P = true;
                    if (i11 > 2) {
                        i11 = 2;
                    }
                }
            }
            androidx.fragment.app.d dVar = this.f1635r;
            fragment.f1521x = dVar;
            androidx.fragment.app.Fragment fragment2 = this.f1637t;
            fragment.B = fragment2;
            fragment.f1520w = fragment2 != null ? fragment2.f1522y : dVar.f();
            androidx.fragment.app.Fragment fragment3 = fragment.f1510h;
            if (fragment3 != null) {
                androidx.fragment.app.Fragment fragment4 = this.f1627e.get(fragment3.f1507e);
                androidx.fragment.app.Fragment fragment5 = fragment.f1510h;
                if (fragment4 != fragment5) {
                    throw new java.lang.IllegalStateException("Fragment " + fragment + " declared target fragment " + fragment.f1510h + " that does not belong to this FragmentManager!");
                }
                if (fragment5.f1502a < 1) {
                    G0(fragment5, 1, 0, 0, true);
                }
            }
            J(fragment, this.f1635r.e(), false);
            fragment.L = false;
            fragment.O(this.f1635r.e());
            if (!fragment.L) {
                throw new androidx.fragment.app.m("Fragment " + fragment + " did not call through to super.onAttach()");
            }
            androidx.fragment.app.Fragment fragment6 = fragment.B;
            if (fragment6 == null) {
                this.f1635r.h(fragment);
            } else {
                fragment6.P(fragment);
            }
            E(fragment, this.f1635r.e(), false);
            if (fragment.W) {
                fragment.O0(fragment.f1504b);
                fragment.f1502a = 1;
            } else {
                K(fragment, fragment.f1504b, false);
                fragment.v0(fragment.f1504b);
                F(fragment, fragment.f1504b, false);
            }
            fragment.I = false;
        }
        e0(fragment);
        if (i11 > 1) {
            if (J) {
                android.util.Log.v("FragmentManager", "moveto ACTIVITY_CREATED: " + fragment);
            }
            if (!fragment.f1515r) {
                int i14 = fragment.D;
                if (i14 != 0) {
                    if (i14 == -1) {
                        f1(new java.lang.IllegalArgumentException("Cannot create fragment " + fragment + " for a container view with no id"));
                    }
                    viewGroup2 = (android.view.ViewGroup) this.f1636s.b(fragment.D);
                    if (viewGroup2 == null && !fragment.f1517t) {
                        try {
                            resourceName = fragment.v().getResourceName(fragment.D);
                        } catch (android.content.res.Resources.NotFoundException unused) {
                            resourceName = "unknown";
                        }
                        f1(new java.lang.IllegalArgumentException("No view found for id 0x" + java.lang.Integer.toHexString(fragment.D) + " (" + resourceName + ") for fragment " + fragment));
                    }
                } else {
                    viewGroup2 = null;
                }
                fragment.M = viewGroup2;
                fragment.x0(fragment.B0(fragment.f1504b), viewGroup2, fragment.f1504b);
                android.view.View view2 = fragment.N;
                if (view2 != null) {
                    fragment.O = view2;
                    view2.setSaveFromParentEnabled(false);
                    if (viewGroup2 != null) {
                        viewGroup2.addView(fragment.N);
                    }
                    if (fragment.F) {
                        fragment.N.setVisibility(8);
                    }
                    fragment.p0(fragment.N, fragment.f1504b);
                    P(fragment, fragment.N, fragment.f1504b, false);
                    fragment.S = fragment.N.getVisibility() == 0 && fragment.M != null;
                } else {
                    fragment.O = null;
                }
            }
            fragment.s0(fragment.f1504b);
            D(fragment, fragment.f1504b, false);
            if (fragment.N != null) {
                fragment.P0(fragment.f1504b);
            }
            fragment.f1504b = null;
        }
        if (i11 > 2) {
            if (J) {
                android.util.Log.v("FragmentManager", "moveto STARTED: " + fragment);
            }
            fragment.L0();
            N(fragment, false);
        }
        if (i11 > 3) {
            if (J) {
                android.util.Log.v("FragmentManager", "moveto RESUMED: " + fragment);
            }
            fragment.J0();
            L(fragment, false);
            fragment.f1504b = null;
            fragment.f1505c = null;
        }
        i10 = i11;
        if (fragment.f1502a != i10) {
            android.util.Log.w("FragmentManager", "moveToState: Fragment state for " + fragment + " not updated inline; expected state " + i10 + " found " + fragment.f1502a);
            fragment.f1502a = i10;
        }
    }

    public void H(androidx.fragment.app.Fragment fragment, boolean z4) {
        androidx.fragment.app.Fragment fragment2 = this.f1637t;
        if (fragment2 != null) {
            androidx.fragment.app.e eVarP = fragment2.p();
            if (eVarP instanceof androidx.fragment.app.f) {
                ((androidx.fragment.app.f) eVarP).H(fragment, true);
            }
        }
        for (androidx.fragment.app.f.j jVar : this.f1633p) {
            if (!z4 || jVar.f1668a) {
                java.util.Objects.requireNonNull(jVar);
                throw null;
            }
        }
    }

    public void H0() {
        this.H = null;
        this.f1640w = false;
        this.f1641x = false;
        int size = this.f1626d.size();
        for (int i5 = 0; i5 < size; i5++) {
            androidx.fragment.app.Fragment fragment = this.f1626d.get(i5);
            if (fragment != null) {
                fragment.K();
            }
        }
    }

    public void I(androidx.fragment.app.Fragment fragment, boolean z4) {
        androidx.fragment.app.Fragment fragment2 = this.f1637t;
        if (fragment2 != null) {
            androidx.fragment.app.e eVarP = fragment2.p();
            if (eVarP instanceof androidx.fragment.app.f) {
                ((androidx.fragment.app.f) eVarP).I(fragment, true);
            }
        }
        for (androidx.fragment.app.f.j jVar : this.f1633p) {
            if (!z4 || jVar.f1668a) {
                java.util.Objects.requireNonNull(jVar);
                throw null;
            }
        }
    }

    public void I0(androidx.fragment.app.Fragment fragment) {
        if (fragment.P) {
            if (this.f1624b) {
                this.A = true;
            } else {
                fragment.P = false;
                G0(fragment, this.f1634q, 0, 0, false);
            }
        }
    }

    public void J(androidx.fragment.app.Fragment fragment, android.content.Context context, boolean z4) {
        androidx.fragment.app.Fragment fragment2 = this.f1637t;
        if (fragment2 != null) {
            androidx.fragment.app.e eVarP = fragment2.p();
            if (eVarP instanceof androidx.fragment.app.f) {
                ((androidx.fragment.app.f) eVarP).J(fragment, context, true);
            }
        }
        for (androidx.fragment.app.f.j jVar : this.f1633p) {
            if (!z4 || jVar.f1668a) {
                java.util.Objects.requireNonNull(jVar);
                throw null;
            }
        }
    }

    public final boolean J0(java.lang.String str, int i5, int i6) {
        androidx.fragment.app.e eVarR0;
        f0();
        d0(true);
        androidx.fragment.app.Fragment fragment = this.f1638u;
        if (fragment != null && i5 < 0 && str == null && (eVarR0 = fragment.r0()) != null && eVarR0.g()) {
            return true;
        }
        boolean zK0 = K0(this.B, this.C, str, i5, i6);
        if (zK0) {
            this.f1624b = true;
            try {
                O0(this.B, this.C);
                q();
            } catch (java.lang.Throwable th) {
                q();
                throw th;
            }
        }
        a0();
        o();
        return zK0;
    }

    public void K(androidx.fragment.app.Fragment fragment, android.os.Bundle bundle, boolean z4) {
        androidx.fragment.app.Fragment fragment2 = this.f1637t;
        if (fragment2 != null) {
            androidx.fragment.app.e eVarP = fragment2.p();
            if (eVarP instanceof androidx.fragment.app.f) {
                ((androidx.fragment.app.f) eVarP).K(fragment, bundle, true);
            }
        }
        for (androidx.fragment.app.f.j jVar : this.f1633p) {
            if (!z4 || jVar.f1668a) {
                java.util.Objects.requireNonNull(jVar);
                throw null;
            }
        }
    }

    public boolean K0(java.util.ArrayList<androidx.fragment.app.a> arrayList, java.util.ArrayList<java.lang.Boolean> arrayList2, java.lang.String str, int i5, int i6) {
        int i7;
        java.util.ArrayList<androidx.fragment.app.a> arrayList3 = this.f1628f;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i5 < 0 && (i6 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f1628f.remove(size));
            arrayList2.add(java.lang.Boolean.TRUE);
        } else {
            if (str != null || i5 >= 0) {
                int size2 = arrayList3.size() - 1;
                while (size2 >= 0) {
                    androidx.fragment.app.a aVar = this.f1628f.get(size2);
                    if ((str != null && str.equals(aVar.o())) || (i5 >= 0 && i5 == aVar.f1602m)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i6 & 1) != 0) {
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        androidx.fragment.app.a aVar2 = this.f1628f.get(size2);
                        if (str == null || !str.equals(aVar2.o())) {
                            if (i5 < 0 || i5 != aVar2.f1602m) {
                                break;
                            }
                        }
                    }
                }
                i7 = size2;
            } else {
                i7 = -1;
            }
            if (i7 == this.f1628f.size() - 1) {
                return false;
            }
            for (int size3 = this.f1628f.size() - 1; size3 > i7; size3--) {
                arrayList.add(this.f1628f.remove(size3));
                arrayList2.add(java.lang.Boolean.TRUE);
            }
        }
        return true;
    }

    public void L(androidx.fragment.app.Fragment fragment, boolean z4) {
        androidx.fragment.app.Fragment fragment2 = this.f1637t;
        if (fragment2 != null) {
            androidx.fragment.app.e eVarP = fragment2.p();
            if (eVarP instanceof androidx.fragment.app.f) {
                ((androidx.fragment.app.f) eVarP).L(fragment, true);
            }
        }
        for (androidx.fragment.app.f.j jVar : this.f1633p) {
            if (!z4 || jVar.f1668a) {
                java.util.Objects.requireNonNull(jVar);
                throw null;
            }
        }
    }

    public final int L0(java.util.ArrayList<androidx.fragment.app.a> arrayList, java.util.ArrayList<java.lang.Boolean> arrayList2, int i5, int i6, j.b<androidx.fragment.app.Fragment> bVar) {
        int i7 = i6;
        for (int i8 = i6 - 1; i8 >= i5; i8--) {
            androidx.fragment.app.a aVar = arrayList.get(i8);
            boolean zBooleanValue = arrayList2.get(i8).booleanValue();
            if (aVar.s() && !aVar.q(arrayList, i8 + 1, i6)) {
                if (this.G == null) {
                    this.G = new java.util.ArrayList<>();
                }
                androidx.fragment.app.f.m mVar = new androidx.fragment.app.f.m(aVar, zBooleanValue);
                this.G.add(mVar);
                aVar.u(mVar);
                if (zBooleanValue) {
                    aVar.l();
                } else {
                    aVar.m(false);
                }
                i7--;
                if (i8 != i7) {
                    arrayList.remove(i8);
                    arrayList.add(i7, aVar);
                }
                h(bVar);
            }
        }
        return i7;
    }

    public void M(androidx.fragment.app.Fragment fragment, android.os.Bundle bundle, boolean z4) {
        androidx.fragment.app.Fragment fragment2 = this.f1637t;
        if (fragment2 != null) {
            androidx.fragment.app.e eVarP = fragment2.p();
            if (eVarP instanceof androidx.fragment.app.f) {
                ((androidx.fragment.app.f) eVarP).M(fragment, bundle, true);
            }
        }
        for (androidx.fragment.app.f.j jVar : this.f1633p) {
            if (!z4 || jVar.f1668a) {
                java.util.Objects.requireNonNull(jVar);
                throw null;
            }
        }
    }

    public void M0(android.os.Bundle bundle, java.lang.String str, androidx.fragment.app.Fragment fragment) {
        if (fragment.f1507e < 0) {
            f1(new java.lang.IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putInt(str, fragment.f1507e);
    }

    public void N(androidx.fragment.app.Fragment fragment, boolean z4) {
        androidx.fragment.app.Fragment fragment2 = this.f1637t;
        if (fragment2 != null) {
            androidx.fragment.app.e eVarP = fragment2.p();
            if (eVarP instanceof androidx.fragment.app.f) {
                ((androidx.fragment.app.f) eVarP).N(fragment, true);
            }
        }
        for (androidx.fragment.app.f.j jVar : this.f1633p) {
            if (!z4 || jVar.f1668a) {
                java.util.Objects.requireNonNull(jVar);
                throw null;
            }
        }
    }

    public void N0(androidx.fragment.app.Fragment fragment) {
        if (J) {
            android.util.Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.f1519v);
        }
        boolean z4 = !fragment.G();
        if (!fragment.G || z4) {
            synchronized (this.f1626d) {
                this.f1626d.remove(fragment);
            }
            if (fragment.J && fragment.K) {
                this.f1639v = true;
            }
            fragment.f1513p = false;
            fragment.f1514q = true;
        }
    }

    public void O(androidx.fragment.app.Fragment fragment, boolean z4) {
        androidx.fragment.app.Fragment fragment2 = this.f1637t;
        if (fragment2 != null) {
            androidx.fragment.app.e eVarP = fragment2.p();
            if (eVarP instanceof androidx.fragment.app.f) {
                ((androidx.fragment.app.f) eVarP).O(fragment, true);
            }
        }
        for (androidx.fragment.app.f.j jVar : this.f1633p) {
            if (!z4 || jVar.f1668a) {
                java.util.Objects.requireNonNull(jVar);
                throw null;
            }
        }
    }

    public final void O0(java.util.ArrayList<androidx.fragment.app.a> arrayList, java.util.ArrayList<java.lang.Boolean> arrayList2) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (arrayList2 == null || arrayList.size() != arrayList2.size()) {
            throw new java.lang.IllegalStateException("Internal error with the back stack records");
        }
        i0(arrayList, arrayList2);
        int size = arrayList.size();
        int i5 = 0;
        int i6 = 0;
        while (i5 < size) {
            if (!arrayList.get(i5).f1609t) {
                if (i6 != i5) {
                    h0(arrayList, arrayList2, i6, i5);
                }
                i6 = i5 + 1;
                if (arrayList2.get(i5).booleanValue()) {
                    while (i6 < size && arrayList2.get(i6).booleanValue() && !arrayList.get(i6).f1609t) {
                        i6++;
                    }
                }
                h0(arrayList, arrayList2, i5, i6);
                i5 = i6 - 1;
            }
            i5++;
        }
        if (i6 != size) {
            h0(arrayList, arrayList2, i6, size);
        }
    }

    public void P(androidx.fragment.app.Fragment fragment, android.view.View view, android.os.Bundle bundle, boolean z4) {
        androidx.fragment.app.Fragment fragment2 = this.f1637t;
        if (fragment2 != null) {
            androidx.fragment.app.e eVarP = fragment2.p();
            if (eVarP instanceof androidx.fragment.app.f) {
                ((androidx.fragment.app.f) eVarP).P(fragment, view, bundle, true);
            }
        }
        for (androidx.fragment.app.f.j jVar : this.f1633p) {
            if (!z4 || jVar.f1668a) {
                java.util.Objects.requireNonNull(jVar);
                throw null;
            }
        }
    }

    public void P0() {
        if (this.f1632o != null) {
            for (int i5 = 0; i5 < this.f1632o.size(); i5++) {
                this.f1632o.get(i5).a();
            }
        }
    }

    public void Q(androidx.fragment.app.Fragment fragment, boolean z4) {
        androidx.fragment.app.Fragment fragment2 = this.f1637t;
        if (fragment2 != null) {
            androidx.fragment.app.e eVarP = fragment2.p();
            if (eVarP instanceof androidx.fragment.app.f) {
                ((androidx.fragment.app.f) eVarP).Q(fragment, true);
            }
        }
        for (androidx.fragment.app.f.j jVar : this.f1633p) {
            if (!z4 || jVar.f1668a) {
                java.util.Objects.requireNonNull(jVar);
                throw null;
            }
        }
    }

    public void Q0(android.os.Parcelable parcelable, androidx.fragment.app.g gVar) {
        java.util.List<androidx.fragment.app.g> listA;
        java.util.List<androidx.lifecycle.q> listC;
        androidx.fragment.app.FragmentState[] fragmentStateArr;
        if (parcelable == null) {
            return;
        }
        androidx.fragment.app.FragmentManagerState fragmentManagerState = (androidx.fragment.app.FragmentManagerState) parcelable;
        if (fragmentManagerState.f1561a == null) {
            return;
        }
        if (gVar != null) {
            java.util.List<androidx.fragment.app.Fragment> listB = gVar.b();
            listA = gVar.a();
            listC = gVar.c();
            int size = listB != null ? listB.size() : 0;
            for (int i5 = 0; i5 < size; i5++) {
                androidx.fragment.app.Fragment fragment = listB.get(i5);
                if (J) {
                    android.util.Log.v("FragmentManager", "restoreAllState: re-attaching retained " + fragment);
                }
                int i6 = 0;
                while (true) {
                    fragmentStateArr = fragmentManagerState.f1561a;
                    if (i6 >= fragmentStateArr.length || fragmentStateArr[i6].f1567b == fragment.f1507e) {
                        break;
                    } else {
                        i6++;
                    }
                }
                if (i6 == fragmentStateArr.length) {
                    f1(new java.lang.IllegalStateException("Could not find active fragment with index " + fragment.f1507e));
                }
                androidx.fragment.app.FragmentState fragmentState = fragmentManagerState.f1561a[i6];
                fragmentState.f1577q = fragment;
                fragment.f1505c = null;
                fragment.f1519v = 0;
                fragment.f1516s = false;
                fragment.f1513p = false;
                fragment.f1510h = null;
                android.os.Bundle bundle = fragmentState.f1576p;
                if (bundle != null) {
                    bundle.setClassLoader(this.f1635r.e().getClassLoader());
                    fragment.f1505c = fragmentState.f1576p.getSparseParcelableArray("android:view_state");
                    fragment.f1504b = fragmentState.f1576p;
                }
            }
        } else {
            listA = null;
            listC = null;
        }
        this.f1627e = new android.util.SparseArray<>(fragmentManagerState.f1561a.length);
        int i7 = 0;
        while (true) {
            androidx.fragment.app.FragmentState[] fragmentStateArr2 = fragmentManagerState.f1561a;
            if (i7 >= fragmentStateArr2.length) {
                break;
            }
            androidx.fragment.app.FragmentState fragmentState2 = fragmentStateArr2[i7];
            if (fragmentState2 != null) {
                androidx.fragment.app.Fragment fragmentA = fragmentState2.a(this.f1635r, this.f1636s, this.f1637t, (listA == null || i7 >= listA.size()) ? null : listA.get(i7), (listC == null || i7 >= listC.size()) ? null : listC.get(i7));
                if (J) {
                    android.util.Log.v("FragmentManager", "restoreAllState: active #" + i7 + ": " + fragmentA);
                }
                this.f1627e.put(fragmentA.f1507e, fragmentA);
                fragmentState2.f1577q = null;
            }
            i7++;
        }
        if (gVar != null) {
            java.util.List<androidx.fragment.app.Fragment> listB2 = gVar.b();
            int size2 = listB2 != null ? listB2.size() : 0;
            for (int i8 = 0; i8 < size2; i8++) {
                androidx.fragment.app.Fragment fragment2 = listB2.get(i8);
                int i9 = fragment2.f1511i;
                if (i9 >= 0) {
                    androidx.fragment.app.Fragment fragment3 = this.f1627e.get(i9);
                    fragment2.f1510h = fragment3;
                    if (fragment3 == null) {
                        android.util.Log.w("FragmentManager", "Re-attaching retained fragment " + fragment2 + " target no longer exists: " + fragment2.f1511i);
                    }
                }
            }
        }
        this.f1626d.clear();
        if (fragmentManagerState.f1562b != null) {
            int i10 = 0;
            while (true) {
                int[] iArr = fragmentManagerState.f1562b;
                if (i10 >= iArr.length) {
                    break;
                }
                androidx.fragment.app.Fragment fragment4 = this.f1627e.get(iArr[i10]);
                if (fragment4 == null) {
                    f1(new java.lang.IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.f1562b[i10]));
                }
                fragment4.f1513p = true;
                if (J) {
                    android.util.Log.v("FragmentManager", "restoreAllState: added #" + i10 + ": " + fragment4);
                }
                if (this.f1626d.contains(fragment4)) {
                    throw new java.lang.IllegalStateException("Already added!");
                }
                synchronized (this.f1626d) {
                    this.f1626d.add(fragment4);
                }
                i10++;
            }
        }
        if (fragmentManagerState.f1563c != null) {
            this.f1628f = new java.util.ArrayList<>(fragmentManagerState.f1563c.length);
            int i11 = 0;
            while (true) {
                androidx.fragment.app.BackStackState[] backStackStateArr = fragmentManagerState.f1563c;
                if (i11 >= backStackStateArr.length) {
                    break;
                }
                androidx.fragment.app.a aVarA = backStackStateArr[i11].a(this);
                if (J) {
                    android.util.Log.v("FragmentManager", "restoreAllState: back stack #" + i11 + " (index " + aVarA.f1602m + "): " + aVarA);
                    java.io.PrintWriter printWriter = new java.io.PrintWriter(new v.c("FragmentManager"));
                    aVarA.k("  ", printWriter, false);
                    printWriter.close();
                }
                this.f1628f.add(aVarA);
                int i12 = aVarA.f1602m;
                if (i12 >= 0) {
                    Y0(i12, aVarA);
                }
                i11++;
            }
        } else {
            this.f1628f = null;
        }
        int i13 = fragmentManagerState.f1564d;
        if (i13 >= 0) {
            this.f1638u = this.f1627e.get(i13);
        }
        this.f1625c = fragmentManagerState.f1565e;
    }

    public boolean R(android.view.MenuItem menuItem) {
        if (this.f1634q < 1) {
            return false;
        }
        for (int i5 = 0; i5 < this.f1626d.size(); i5++) {
            androidx.fragment.app.Fragment fragment = this.f1626d.get(i5);
            if (fragment != null && fragment.E0(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public androidx.fragment.app.g R0() {
        b1(this.H);
        return this.H;
    }

    public void S(android.view.Menu menu) {
        if (this.f1634q < 1) {
            return;
        }
        for (int i5 = 0; i5 < this.f1626d.size(); i5++) {
            androidx.fragment.app.Fragment fragment = this.f1626d.get(i5);
            if (fragment != null) {
                fragment.F0(menu);
            }
        }
    }

    public void T() {
        Y(3);
    }

    public android.os.Parcelable T0() {
        int[] iArr;
        int size;
        m0();
        b0();
        f0();
        this.f1640w = true;
        androidx.fragment.app.BackStackState[] backStackStateArr = null;
        this.H = null;
        android.util.SparseArray<androidx.fragment.app.Fragment> sparseArray = this.f1627e;
        if (sparseArray == null || sparseArray.size() <= 0) {
            return null;
        }
        int size2 = this.f1627e.size();
        androidx.fragment.app.FragmentState[] fragmentStateArr = new androidx.fragment.app.FragmentState[size2];
        boolean z4 = false;
        for (int i5 = 0; i5 < size2; i5++) {
            androidx.fragment.app.Fragment fragmentValueAt = this.f1627e.valueAt(i5);
            if (fragmentValueAt != null) {
                if (fragmentValueAt.f1507e < 0) {
                    f1(new java.lang.IllegalStateException("Failure saving state: active " + fragmentValueAt + " has cleared index: " + fragmentValueAt.f1507e));
                }
                androidx.fragment.app.FragmentState fragmentState = new androidx.fragment.app.FragmentState(fragmentValueAt);
                fragmentStateArr[i5] = fragmentState;
                if (fragmentValueAt.f1502a <= 0 || fragmentState.f1576p != null) {
                    fragmentState.f1576p = fragmentValueAt.f1504b;
                } else {
                    fragmentState.f1576p = U0(fragmentValueAt);
                    androidx.fragment.app.Fragment fragment = fragmentValueAt.f1510h;
                    if (fragment != null) {
                        if (fragment.f1507e < 0) {
                            f1(new java.lang.IllegalStateException("Failure saving state: " + fragmentValueAt + " has target not in fragment manager: " + fragmentValueAt.f1510h));
                        }
                        if (fragmentState.f1576p == null) {
                            fragmentState.f1576p = new android.os.Bundle();
                        }
                        M0(fragmentState.f1576p, "android:target_state", fragmentValueAt.f1510h);
                        int i6 = fragmentValueAt.f1512o;
                        if (i6 != 0) {
                            fragmentState.f1576p.putInt("android:target_req_state", i6);
                        }
                    }
                }
                if (J) {
                    android.util.Log.v("FragmentManager", "Saved state of " + fragmentValueAt + ": " + fragmentState.f1576p);
                }
                z4 = true;
            }
        }
        if (!z4) {
            if (J) {
                android.util.Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        int size3 = this.f1626d.size();
        if (size3 > 0) {
            iArr = new int[size3];
            for (int i7 = 0; i7 < size3; i7++) {
                iArr[i7] = this.f1626d.get(i7).f1507e;
                if (iArr[i7] < 0) {
                    f1(new java.lang.IllegalStateException("Failure saving state: active " + this.f1626d.get(i7) + " has cleared index: " + iArr[i7]));
                }
                if (J) {
                    android.util.Log.v("FragmentManager", "saveAllState: adding fragment #" + i7 + ": " + this.f1626d.get(i7));
                }
            }
        } else {
            iArr = null;
        }
        java.util.ArrayList<androidx.fragment.app.a> arrayList = this.f1628f;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            backStackStateArr = new androidx.fragment.app.BackStackState[size];
            for (int i8 = 0; i8 < size; i8++) {
                backStackStateArr[i8] = new androidx.fragment.app.BackStackState(this.f1628f.get(i8));
                if (J) {
                    android.util.Log.v("FragmentManager", "saveAllState: adding back stack #" + i8 + ": " + this.f1628f.get(i8));
                }
            }
        }
        androidx.fragment.app.FragmentManagerState fragmentManagerState = new androidx.fragment.app.FragmentManagerState();
        fragmentManagerState.f1561a = fragmentStateArr;
        fragmentManagerState.f1562b = iArr;
        fragmentManagerState.f1563c = backStackStateArr;
        androidx.fragment.app.Fragment fragment2 = this.f1638u;
        if (fragment2 != null) {
            fragmentManagerState.f1564d = fragment2.f1507e;
        }
        fragmentManagerState.f1565e = this.f1625c;
        W0();
        return fragmentManagerState;
    }

    public void U(boolean z4) {
        for (int size = this.f1626d.size() - 1; size >= 0; size--) {
            androidx.fragment.app.Fragment fragment = this.f1626d.get(size);
            if (fragment != null) {
                fragment.H0(z4);
            }
        }
    }

    public android.os.Bundle U0(androidx.fragment.app.Fragment fragment) {
        if (this.E == null) {
            this.E = new android.os.Bundle();
        }
        fragment.K0(this.E);
        M(fragment, this.E, false);
        android.os.Bundle bundle = null;
        if (!this.E.isEmpty()) {
            android.os.Bundle bundle2 = this.E;
            this.E = null;
            bundle = bundle2;
        }
        if (fragment.N != null) {
            V0(fragment);
        }
        if (fragment.f1505c != null) {
            if (bundle == null) {
                bundle = new android.os.Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", fragment.f1505c);
        }
        if (!fragment.Q) {
            if (bundle == null) {
                bundle = new android.os.Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.Q);
        }
        return bundle;
    }

    public boolean V(android.view.Menu menu) {
        if (this.f1634q < 1) {
            return false;
        }
        boolean z4 = false;
        for (int i5 = 0; i5 < this.f1626d.size(); i5++) {
            androidx.fragment.app.Fragment fragment = this.f1626d.get(i5);
            if (fragment != null && fragment.I0(menu)) {
                z4 = true;
            }
        }
        return z4;
    }

    public void V0(androidx.fragment.app.Fragment fragment) {
        if (fragment.O == null) {
            return;
        }
        android.util.SparseArray<android.os.Parcelable> sparseArray = this.F;
        if (sparseArray == null) {
            this.F = new android.util.SparseArray<>();
        } else {
            sparseArray.clear();
        }
        fragment.O.saveHierarchyState(this.F);
        if (this.F.size() > 0) {
            fragment.f1505c = this.F;
            this.F = null;
        }
    }

    public void W() {
        this.f1640w = false;
        this.f1641x = false;
        Y(4);
    }

    public void W0() {
        java.util.ArrayList arrayList;
        java.util.ArrayList arrayList2;
        java.util.ArrayList arrayList3;
        androidx.fragment.app.g gVar;
        if (this.f1627e != null) {
            arrayList = null;
            arrayList2 = null;
            arrayList3 = null;
            for (int i5 = 0; i5 < this.f1627e.size(); i5++) {
                androidx.fragment.app.Fragment fragmentValueAt = this.f1627e.valueAt(i5);
                if (fragmentValueAt != null) {
                    if (fragmentValueAt.H) {
                        if (arrayList == null) {
                            arrayList = new java.util.ArrayList();
                        }
                        arrayList.add(fragmentValueAt);
                        androidx.fragment.app.Fragment fragment = fragmentValueAt.f1510h;
                        fragmentValueAt.f1511i = fragment != null ? fragment.f1507e : -1;
                        if (J) {
                            android.util.Log.v("FragmentManager", "retainNonConfig: keeping retained " + fragmentValueAt);
                        }
                    }
                    androidx.fragment.app.f fVar = fragmentValueAt.f1522y;
                    if (fVar != null) {
                        fVar.W0();
                        gVar = fragmentValueAt.f1522y.H;
                    } else {
                        gVar = fragmentValueAt.f1523z;
                    }
                    if (arrayList2 == null && gVar != null) {
                        arrayList2 = new java.util.ArrayList(this.f1627e.size());
                        for (int i6 = 0; i6 < i5; i6++) {
                            arrayList2.add(null);
                        }
                    }
                    if (arrayList2 != null) {
                        arrayList2.add(gVar);
                    }
                    if (arrayList3 == null && fragmentValueAt.A != null) {
                        arrayList3 = new java.util.ArrayList(this.f1627e.size());
                        for (int i7 = 0; i7 < i5; i7++) {
                            arrayList3.add(null);
                        }
                    }
                    if (arrayList3 != null) {
                        arrayList3.add(fragmentValueAt.A);
                    }
                }
            }
        } else {
            arrayList = null;
            arrayList2 = null;
            arrayList3 = null;
        }
        if (arrayList == null && arrayList2 == null && arrayList3 == null) {
            this.H = null;
        } else {
            this.H = new androidx.fragment.app.g(arrayList, arrayList2, arrayList3);
        }
    }

    public void X() {
        this.f1640w = false;
        this.f1641x = false;
        Y(3);
    }

    public void X0() {
        synchronized (this) {
            java.util.ArrayList<androidx.fragment.app.f.m> arrayList = this.G;
            boolean z4 = false;
            boolean z5 = (arrayList == null || arrayList.isEmpty()) ? false : true;
            java.util.ArrayList<androidx.fragment.app.f.l> arrayList2 = this.f1623a;
            if (arrayList2 != null && arrayList2.size() == 1) {
                z4 = true;
            }
            if (z5 || z4) {
                this.f1635r.g().removeCallbacks(this.I);
                this.f1635r.g().post(this.I);
            }
        }
    }

    public final void Y(int i5) {
        try {
            this.f1624b = true;
            E0(i5, false);
            this.f1624b = false;
            f0();
        } catch (java.lang.Throwable th) {
            this.f1624b = false;
            throw th;
        }
    }

    public void Y0(int i5, androidx.fragment.app.a aVar) {
        synchronized (this) {
            if (this.f1630h == null) {
                this.f1630h = new java.util.ArrayList<>();
            }
            int size = this.f1630h.size();
            if (i5 < size) {
                if (J) {
                    android.util.Log.v("FragmentManager", "Setting back stack index " + i5 + " to " + aVar);
                }
                this.f1630h.set(i5, aVar);
            } else {
                while (size < i5) {
                    this.f1630h.add(null);
                    if (this.f1631i == null) {
                        this.f1631i = new java.util.ArrayList<>();
                    }
                    if (J) {
                        android.util.Log.v("FragmentManager", "Adding available back stack index " + size);
                    }
                    this.f1631i.add(java.lang.Integer.valueOf(size));
                    size++;
                }
                if (J) {
                    android.util.Log.v("FragmentManager", "Adding back stack index " + i5 + " with " + aVar);
                }
                this.f1630h.add(aVar);
            }
        }
    }

    public void Z() {
        this.f1641x = true;
        Y(2);
    }

    @Override // androidx.fragment.app.e
    public androidx.fragment.app.h a() {
        return new androidx.fragment.app.a(this);
    }

    public void a0() {
        if (this.A) {
            this.A = false;
            e1();
        }
    }

    public void a1(androidx.fragment.app.Fragment fragment) {
        if (fragment == null || (this.f1627e.get(fragment.f1507e) == fragment && (fragment.f1521x == null || fragment.p() == this))) {
            this.f1638u = fragment;
            return;
        }
        throw new java.lang.IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    @Override // androidx.fragment.app.e
    public void b(java.lang.String str, java.io.FileDescriptor fileDescriptor, java.io.PrintWriter printWriter, java.lang.String[] strArr) {
        int size;
        int size2;
        int size3;
        int size4;
        int size5;
        java.lang.String str2 = str + "    ";
        android.util.SparseArray<androidx.fragment.app.Fragment> sparseArray = this.f1627e;
        if (sparseArray != null && (size5 = sparseArray.size()) > 0) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
            printWriter.println(":");
            for (int i5 = 0; i5 < size5; i5++) {
                androidx.fragment.app.Fragment fragmentValueAt = this.f1627e.valueAt(i5);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i5);
                printWriter.print(": ");
                printWriter.println(fragmentValueAt);
                if (fragmentValueAt != null) {
                    fragmentValueAt.b(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        int size6 = this.f1626d.size();
        if (size6 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i6 = 0; i6 < size6; i6++) {
                androidx.fragment.app.Fragment fragment = this.f1626d.get(i6);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i6);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
        java.util.ArrayList<androidx.fragment.app.Fragment> arrayList = this.f1629g;
        if (arrayList != null && (size4 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i7 = 0; i7 < size4; i7++) {
                androidx.fragment.app.Fragment fragment2 = this.f1629g.get(i7);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i7);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        java.util.ArrayList<androidx.fragment.app.a> arrayList2 = this.f1628f;
        if (arrayList2 != null && (size3 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i8 = 0; i8 < size3; i8++) {
                androidx.fragment.app.a aVar = this.f1628f.get(i8);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i8);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.j(str2, fileDescriptor, printWriter, strArr);
            }
        }
        synchronized (this) {
            java.util.ArrayList<androidx.fragment.app.a> arrayList3 = this.f1630h;
            if (arrayList3 != null && (size2 = arrayList3.size()) > 0) {
                printWriter.print(str);
                printWriter.println("Back Stack Indices:");
                for (int i9 = 0; i9 < size2; i9++) {
                    java.lang.Object obj = (androidx.fragment.app.a) this.f1630h.get(i9);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i9);
                    printWriter.print(": ");
                    printWriter.println(obj);
                }
            }
            java.util.ArrayList<java.lang.Integer> arrayList4 = this.f1631i;
            if (arrayList4 != null && arrayList4.size() > 0) {
                printWriter.print(str);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(java.util.Arrays.toString(this.f1631i.toArray()));
            }
        }
        java.util.ArrayList<androidx.fragment.app.f.l> arrayList5 = this.f1623a;
        if (arrayList5 != null && (size = arrayList5.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Pending Actions:");
            for (int i10 = 0; i10 < size; i10++) {
                java.lang.Object obj2 = (androidx.fragment.app.f.l) this.f1623a.get(i10);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(obj2);
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f1635r);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f1636s);
        if (this.f1637t != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f1637t);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f1634q);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f1640w);
        printWriter.print(" mStopped=");
        printWriter.print(this.f1641x);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f1642y);
        if (this.f1639v) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f1639v);
        }
        if (this.f1643z != null) {
            printWriter.print(str);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.f1643z);
        }
    }

    public final void b0() {
        android.util.SparseArray<androidx.fragment.app.Fragment> sparseArray = this.f1627e;
        int size = sparseArray == null ? 0 : sparseArray.size();
        for (int i5 = 0; i5 < size; i5++) {
            androidx.fragment.app.Fragment fragmentValueAt = this.f1627e.valueAt(i5);
            if (fragmentValueAt != null) {
                if (fragmentValueAt.h() != null) {
                    int iZ = fragmentValueAt.z();
                    android.view.View viewH = fragmentValueAt.h();
                    android.view.animation.Animation animation = viewH.getAnimation();
                    if (animation != null) {
                        animation.cancel();
                        viewH.clearAnimation();
                    }
                    fragmentValueAt.Q0(null);
                    G0(fragmentValueAt, iZ, 0, 0, false);
                } else if (fragmentValueAt.i() != null) {
                    fragmentValueAt.i().end();
                }
            }
        }
    }

    @Override // androidx.fragment.app.e
    public boolean c() {
        boolean zF0 = f0();
        m0();
        return zF0;
    }

    public void c0(androidx.fragment.app.f.l lVar, boolean z4) {
        if (!z4) {
            p();
        }
        synchronized (this) {
            if (!this.f1642y && this.f1635r != null) {
                if (this.f1623a == null) {
                    this.f1623a = new java.util.ArrayList<>();
                }
                this.f1623a.add(lVar);
                X0();
                return;
            }
            if (!z4) {
                throw new java.lang.IllegalStateException("Activity has been destroyed");
            }
        }
    }

    @Override // androidx.fragment.app.e
    public androidx.fragment.app.Fragment d(java.lang.String str) {
        if (str != null) {
            for (int size = this.f1626d.size() - 1; size >= 0; size--) {
                androidx.fragment.app.Fragment fragment = this.f1626d.get(size);
                if (fragment != null && str.equals(fragment.E)) {
                    return fragment;
                }
            }
        }
        android.util.SparseArray<androidx.fragment.app.Fragment> sparseArray = this.f1627e;
        if (sparseArray == null || str == null) {
            return null;
        }
        for (int size2 = sparseArray.size() - 1; size2 >= 0; size2--) {
            androidx.fragment.app.Fragment fragmentValueAt = this.f1627e.valueAt(size2);
            if (fragmentValueAt != null && str.equals(fragmentValueAt.E)) {
                return fragmentValueAt;
            }
        }
        return null;
    }

    public final void d0(boolean z4) {
        if (this.f1624b) {
            throw new java.lang.IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f1635r == null) {
            throw new java.lang.IllegalStateException("Fragment host has been destroyed");
        }
        if (android.os.Looper.myLooper() != this.f1635r.g().getLooper()) {
            throw new java.lang.IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z4) {
            p();
        }
        if (this.B == null) {
            this.B = new java.util.ArrayList<>();
            this.C = new java.util.ArrayList<>();
        }
        this.f1624b = true;
        try {
            i0(null, null);
        } finally {
            this.f1624b = false;
        }
    }

    public void d1(androidx.fragment.app.Fragment fragment) {
        if (J) {
            android.util.Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.F) {
            fragment.F = false;
            fragment.T = !fragment.T;
        }
    }

    @Override // androidx.fragment.app.e
    public java.util.List<androidx.fragment.app.Fragment> e() {
        java.util.List<androidx.fragment.app.Fragment> list;
        if (this.f1626d.isEmpty()) {
            return java.util.Collections.emptyList();
        }
        synchronized (this.f1626d) {
            list = (java.util.List) this.f1626d.clone();
        }
        return list;
    }

    public void e0(androidx.fragment.app.Fragment fragment) {
        if (!fragment.f1515r || fragment.f1518u) {
            return;
        }
        fragment.x0(fragment.B0(fragment.f1504b), null, fragment.f1504b);
        android.view.View view = fragment.N;
        if (view == null) {
            fragment.O = null;
            return;
        }
        fragment.O = view;
        view.setSaveFromParentEnabled(false);
        if (fragment.F) {
            fragment.N.setVisibility(8);
        }
        fragment.p0(fragment.N, fragment.f1504b);
        P(fragment, fragment.N, fragment.f1504b, false);
    }

    public void e1() {
        if (this.f1627e == null) {
            return;
        }
        for (int i5 = 0; i5 < this.f1627e.size(); i5++) {
            androidx.fragment.app.Fragment fragmentValueAt = this.f1627e.valueAt(i5);
            if (fragmentValueAt != null) {
                I0(fragmentValueAt);
            }
        }
    }

    @Override // androidx.fragment.app.e
    public boolean f() {
        return this.f1640w || this.f1641x;
    }

    public boolean f0() {
        d0(true);
        boolean z4 = false;
        while (o0(this.B, this.C)) {
            this.f1624b = true;
            try {
                O0(this.B, this.C);
                q();
                z4 = true;
            } catch (java.lang.Throwable th) {
                q();
                throw th;
            }
        }
        a0();
        o();
        return z4;
    }

    public final void f1(java.lang.RuntimeException runtimeException) {
        android.util.Log.e("FragmentManager", runtimeException.getMessage());
        android.util.Log.e("FragmentManager", "Activity state:");
        java.io.PrintWriter printWriter = new java.io.PrintWriter(new v.c("FragmentManager"));
        androidx.fragment.app.d dVar = this.f1635r;
        if (dVar != null) {
            try {
                dVar.i("  ", null, printWriter, new java.lang.String[0]);
                throw runtimeException;
            } catch (java.lang.Exception e5) {
                android.util.Log.e("FragmentManager", "Failed dumping state", e5);
                throw runtimeException;
            }
        }
        try {
            b("  ", null, printWriter, new java.lang.String[0]);
            throw runtimeException;
        } catch (java.lang.Exception e6) {
            android.util.Log.e("FragmentManager", "Failed dumping state", e6);
            throw runtimeException;
        }
    }

    @Override // androidx.fragment.app.e
    public boolean g() {
        p();
        return J0(null, -1, 0);
    }

    public final void h(j.b<androidx.fragment.app.Fragment> bVar) {
        int i5 = this.f1634q;
        if (i5 < 1) {
            return;
        }
        int iMin = java.lang.Math.min(i5, 3);
        int size = this.f1626d.size();
        for (int i6 = 0; i6 < size; i6++) {
            androidx.fragment.app.Fragment fragment = this.f1626d.get(i6);
            if (fragment.f1502a < iMin) {
                G0(fragment, iMin, fragment.r(), fragment.s(), false);
                if (fragment.N != null && !fragment.F && fragment.S) {
                    bVar.add(fragment);
                }
            }
        }
    }

    public final void h0(java.util.ArrayList<androidx.fragment.app.a> arrayList, java.util.ArrayList<java.lang.Boolean> arrayList2, int i5, int i6) {
        int i7;
        int i8;
        int i9 = i5;
        boolean z4 = arrayList.get(i9).f1609t;
        java.util.ArrayList<androidx.fragment.app.Fragment> arrayList3 = this.D;
        if (arrayList3 == null) {
            this.D = new java.util.ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.D.addAll(this.f1626d);
        androidx.fragment.app.Fragment fragmentS0 = s0();
        boolean z5 = false;
        for (int i10 = i9; i10 < i6; i10++) {
            androidx.fragment.app.a aVar = arrayList.get(i10);
            fragmentS0 = !arrayList2.get(i10).booleanValue() ? aVar.n(this.D, fragmentS0) : aVar.v(this.D, fragmentS0);
            z5 = z5 || aVar.f1598i;
        }
        this.D.clear();
        if (!z4) {
            androidx.fragment.app.i.B(this, arrayList, arrayList2, i5, i6, false);
        }
        g0(arrayList, arrayList2, i5, i6);
        if (z4) {
            j.b<androidx.fragment.app.Fragment> bVar = new j.b<>();
            h(bVar);
            int iL0 = L0(arrayList, arrayList2, i5, i6, bVar);
            A0(bVar);
            i7 = iL0;
        } else {
            i7 = i6;
        }
        if (i7 != i9 && z4) {
            androidx.fragment.app.i.B(this, arrayList, arrayList2, i5, i7, true);
            E0(this.f1634q, true);
        }
        while (i9 < i6) {
            androidx.fragment.app.a aVar2 = arrayList.get(i9);
            if (arrayList2.get(i9).booleanValue() && (i8 = aVar2.f1602m) >= 0) {
                n0(i8);
                aVar2.f1602m = -1;
            }
            aVar2.t();
            i9++;
        }
        if (z5) {
            P0();
        }
    }

    public void i(androidx.fragment.app.a aVar) {
        if (this.f1628f == null) {
            this.f1628f = new java.util.ArrayList<>();
        }
        this.f1628f.add(aVar);
    }

    public final void i0(java.util.ArrayList<androidx.fragment.app.a> arrayList, java.util.ArrayList<java.lang.Boolean> arrayList2) {
        int iIndexOf;
        int iIndexOf2;
        java.util.ArrayList<androidx.fragment.app.f.m> arrayList3 = this.G;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i5 = 0;
        while (i5 < size) {
            androidx.fragment.app.f.m mVar = this.G.get(i5);
            if (arrayList != null && !mVar.f1670a && (iIndexOf2 = arrayList.indexOf(mVar.f1671b)) != -1 && arrayList2.get(iIndexOf2).booleanValue()) {
                mVar.c();
            } else if (mVar.e() || (arrayList != null && mVar.f1671b.q(arrayList, 0, arrayList.size()))) {
                this.G.remove(i5);
                i5--;
                size--;
                if (arrayList == null || mVar.f1670a || (iIndexOf = arrayList.indexOf(mVar.f1671b)) == -1 || !arrayList2.get(iIndexOf).booleanValue()) {
                    mVar.d();
                } else {
                    mVar.c();
                }
            }
            i5++;
        }
    }

    public void j(androidx.fragment.app.Fragment fragment, boolean z4) {
        if (J) {
            android.util.Log.v("FragmentManager", "add: " + fragment);
        }
        w0(fragment);
        if (fragment.G) {
            return;
        }
        if (this.f1626d.contains(fragment)) {
            throw new java.lang.IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f1626d) {
            this.f1626d.add(fragment);
        }
        fragment.f1513p = true;
        fragment.f1514q = false;
        if (fragment.N == null) {
            fragment.T = false;
        }
        if (fragment.J && fragment.K) {
            this.f1639v = true;
        }
        if (z4) {
            F0(fragment);
        }
    }

    public androidx.fragment.app.Fragment j0(int i5) {
        for (int size = this.f1626d.size() - 1; size >= 0; size--) {
            androidx.fragment.app.Fragment fragment = this.f1626d.get(size);
            if (fragment != null && fragment.C == i5) {
                return fragment;
            }
        }
        android.util.SparseArray<androidx.fragment.app.Fragment> sparseArray = this.f1627e;
        if (sparseArray == null) {
            return null;
        }
        for (int size2 = sparseArray.size() - 1; size2 >= 0; size2--) {
            androidx.fragment.app.Fragment fragmentValueAt = this.f1627e.valueAt(size2);
            if (fragmentValueAt != null && fragmentValueAt.C == i5) {
                return fragmentValueAt;
            }
        }
        return null;
    }

    public int k(androidx.fragment.app.a aVar) {
        synchronized (this) {
            java.util.ArrayList<java.lang.Integer> arrayList = this.f1631i;
            if (arrayList != null && arrayList.size() > 0) {
                java.util.ArrayList<java.lang.Integer> arrayList2 = this.f1631i;
                int iIntValue = arrayList2.remove(arrayList2.size() - 1).intValue();
                if (J) {
                    android.util.Log.v("FragmentManager", "Adding back stack index " + iIntValue + " with " + aVar);
                }
                this.f1630h.set(iIntValue, aVar);
                return iIntValue;
            }
            if (this.f1630h == null) {
                this.f1630h = new java.util.ArrayList<>();
            }
            int size = this.f1630h.size();
            if (J) {
                android.util.Log.v("FragmentManager", "Setting back stack index " + size + " to " + aVar);
            }
            this.f1630h.add(aVar);
            return size;
        }
    }

    public androidx.fragment.app.Fragment k0(java.lang.String str) {
        androidx.fragment.app.Fragment fragmentD;
        android.util.SparseArray<androidx.fragment.app.Fragment> sparseArray = this.f1627e;
        if (sparseArray == null || str == null) {
            return null;
        }
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            androidx.fragment.app.Fragment fragmentValueAt = this.f1627e.valueAt(size);
            if (fragmentValueAt != null && (fragmentD = fragmentValueAt.d(str)) != null) {
                return fragmentD;
            }
        }
        return null;
    }

    public final void l(androidx.fragment.app.Fragment fragment, androidx.fragment.app.f.g gVar, int i5) {
        android.view.View view = fragment.N;
        android.view.ViewGroup viewGroup = fragment.M;
        viewGroup.startViewTransition(view);
        fragment.Y0(i5);
        if (gVar.f1660a != null) {
            androidx.fragment.app.f.i iVar = new androidx.fragment.app.f.i(gVar.f1660a, viewGroup, view);
            fragment.Q0(fragment.N);
            iVar.setAnimationListener(new androidx.fragment.app.f.b(p0(iVar), viewGroup, fragment));
            Z0(view, gVar);
            fragment.N.startAnimation(iVar);
            return;
        }
        android.animation.Animator animator = gVar.f1661b;
        fragment.R0(animator);
        animator.addListener(new androidx.fragment.app.f.c(viewGroup, view, fragment));
        animator.setTarget(fragment.N);
        Z0(fragment.N, gVar);
        animator.start();
    }

    public final androidx.fragment.app.Fragment l0(androidx.fragment.app.Fragment fragment) {
        android.view.ViewGroup viewGroup = fragment.M;
        android.view.View view = fragment.N;
        if (viewGroup != null && view != null) {
            for (int iIndexOf = this.f1626d.indexOf(fragment) - 1; iIndexOf >= 0; iIndexOf--) {
                androidx.fragment.app.Fragment fragment2 = this.f1626d.get(iIndexOf);
                if (fragment2.M == viewGroup && fragment2.N != null) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public void m(androidx.fragment.app.d dVar, androidx.fragment.app.b bVar, androidx.fragment.app.Fragment fragment) {
        if (this.f1635r != null) {
            throw new java.lang.IllegalStateException("Already attached");
        }
        this.f1635r = dVar;
        this.f1636s = bVar;
        this.f1637t = fragment;
    }

    public final void m0() {
        if (this.G != null) {
            while (!this.G.isEmpty()) {
                this.G.remove(0).d();
            }
        }
    }

    public void n(androidx.fragment.app.Fragment fragment) {
        if (J) {
            android.util.Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.G) {
            fragment.G = false;
            if (fragment.f1513p) {
                return;
            }
            if (this.f1626d.contains(fragment)) {
                throw new java.lang.IllegalStateException("Fragment already added: " + fragment);
            }
            if (J) {
                android.util.Log.v("FragmentManager", "add from attach: " + fragment);
            }
            synchronized (this.f1626d) {
                this.f1626d.add(fragment);
            }
            fragment.f1513p = true;
            if (fragment.J && fragment.K) {
                this.f1639v = true;
            }
        }
    }

    public void n0(int i5) {
        synchronized (this) {
            this.f1630h.set(i5, null);
            if (this.f1631i == null) {
                this.f1631i = new java.util.ArrayList<>();
            }
            if (J) {
                android.util.Log.v("FragmentManager", "Freeing back stack index " + i5);
            }
            this.f1631i.add(java.lang.Integer.valueOf(i5));
        }
    }

    public final void o() {
        android.util.SparseArray<androidx.fragment.app.Fragment> sparseArray = this.f1627e;
        if (sparseArray != null) {
            for (int size = sparseArray.size() - 1; size >= 0; size--) {
                if (this.f1627e.valueAt(size) == null) {
                    android.util.SparseArray<androidx.fragment.app.Fragment> sparseArray2 = this.f1627e;
                    sparseArray2.delete(sparseArray2.keyAt(size));
                }
            }
        }
    }

    public final boolean o0(java.util.ArrayList<androidx.fragment.app.a> arrayList, java.util.ArrayList<java.lang.Boolean> arrayList2) {
        synchronized (this) {
            java.util.ArrayList<androidx.fragment.app.f.l> arrayList3 = this.f1623a;
            if (arrayList3 != null && arrayList3.size() != 0) {
                int size = this.f1623a.size();
                boolean zA = false;
                for (int i5 = 0; i5 < size; i5++) {
                    zA |= this.f1623a.get(i5).a(arrayList, arrayList2);
                }
                this.f1623a.clear();
                this.f1635r.g().removeCallbacks(this.I);
                return zA;
            }
            return false;
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public android.view.View onCreateView(android.view.View view, java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) {
        if (!"fragment".equals(str)) {
            return null;
        }
        java.lang.String attributeValue = attributeSet.getAttributeValue(null, "class");
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.fragment.app.f.k.f1669a);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(0);
        }
        java.lang.String str2 = attributeValue;
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        java.lang.String string = typedArrayObtainStyledAttributes.getString(2);
        typedArrayObtainStyledAttributes.recycle();
        if (!androidx.fragment.app.Fragment.J(this.f1635r.e(), str2)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new java.lang.IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        androidx.fragment.app.Fragment fragmentJ0 = resourceId != -1 ? j0(resourceId) : null;
        if (fragmentJ0 == null && string != null) {
            fragmentJ0 = d(string);
        }
        if (fragmentJ0 == null && id != -1) {
            fragmentJ0 = j0(id);
        }
        if (J) {
            android.util.Log.v("FragmentManager", "onCreateView: id=0x" + java.lang.Integer.toHexString(resourceId) + " fname=" + str2 + " existing=" + fragmentJ0);
        }
        if (fragmentJ0 == null) {
            fragmentJ0 = this.f1636s.a(context, str2, null);
            fragmentJ0.f1515r = true;
            fragmentJ0.C = resourceId != 0 ? resourceId : id;
            fragmentJ0.D = id;
            fragmentJ0.E = string;
            fragmentJ0.f1516s = true;
            fragmentJ0.f1520w = this;
            androidx.fragment.app.d dVar = this.f1635r;
            fragmentJ0.f1521x = dVar;
            fragmentJ0.d0(dVar.e(), attributeSet, fragmentJ0.f1504b);
            j(fragmentJ0, true);
        } else {
            if (fragmentJ0.f1516s) {
                throw new java.lang.IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + java.lang.Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + java.lang.Integer.toHexString(id) + " with another fragment for " + str2);
            }
            fragmentJ0.f1516s = true;
            androidx.fragment.app.d dVar2 = this.f1635r;
            fragmentJ0.f1521x = dVar2;
            if (!fragmentJ0.I) {
                fragmentJ0.d0(dVar2.e(), attributeSet, fragmentJ0.f1504b);
            }
        }
        androidx.fragment.app.Fragment fragment = fragmentJ0;
        if (this.f1634q >= 1 || !fragment.f1515r) {
            F0(fragment);
        } else {
            G0(fragment, 1, 0, 0, false);
        }
        android.view.View view2 = fragment.N;
        if (view2 != null) {
            if (resourceId != 0) {
                view2.setId(resourceId);
            }
            if (fragment.N.getTag() == null) {
                fragment.N.setTag(string);
            }
            return fragment.N;
        }
        throw new java.lang.IllegalStateException("Fragment " + str2 + " did not create a view.");
    }

    public final void p() {
        if (f()) {
            throw new java.lang.IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.f1643z == null) {
            return;
        }
        throw new java.lang.IllegalStateException("Can not perform this action inside of " + this.f1643z);
    }

    public final void q() {
        this.f1624b = false;
        this.C.clear();
        this.B.clear();
    }

    public androidx.fragment.app.Fragment q0(android.os.Bundle bundle, java.lang.String str) {
        int i5 = bundle.getInt(str, -1);
        if (i5 == -1) {
            return null;
        }
        androidx.fragment.app.Fragment fragment = this.f1627e.get(i5);
        if (fragment == null) {
            f1(new java.lang.IllegalStateException("Fragment no longer exists for key " + str + ": index " + i5));
        }
        return fragment;
    }

    public void r(androidx.fragment.app.a aVar, boolean z4, boolean z5, boolean z6) {
        if (z4) {
            aVar.m(z6);
        } else {
            aVar.l();
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(1);
        java.util.ArrayList arrayList2 = new java.util.ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(java.lang.Boolean.valueOf(z4));
        if (z5) {
            androidx.fragment.app.i.B(this, arrayList, arrayList2, 0, 1, true);
        }
        if (z6) {
            E0(this.f1634q, true);
        }
        android.util.SparseArray<androidx.fragment.app.Fragment> sparseArray = this.f1627e;
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i5 = 0; i5 < size; i5++) {
                androidx.fragment.app.Fragment fragmentValueAt = this.f1627e.valueAt(i5);
                if (fragmentValueAt != null && fragmentValueAt.N != null && fragmentValueAt.S && aVar.p(fragmentValueAt.D)) {
                    float f5 = fragmentValueAt.U;
                    if (f5 > 0.0f) {
                        fragmentValueAt.N.setAlpha(f5);
                    }
                    if (z6) {
                        fragmentValueAt.U = 0.0f;
                    } else {
                        fragmentValueAt.U = -1.0f;
                        fragmentValueAt.S = false;
                    }
                }
            }
        }
    }

    public android.view.LayoutInflater.Factory2 r0() {
        return this;
    }

    public void s(androidx.fragment.app.Fragment fragment) {
        android.animation.Animator animator;
        if (fragment.N != null) {
            androidx.fragment.app.f.g gVarV0 = v0(fragment, fragment.s(), !fragment.F, fragment.t());
            if (gVarV0 == null || (animator = gVarV0.f1661b) == null) {
                if (gVarV0 != null) {
                    Z0(fragment.N, gVarV0);
                    fragment.N.startAnimation(gVarV0.f1660a);
                    gVarV0.f1660a.start();
                }
                fragment.N.setVisibility((!fragment.F || fragment.F()) ? 0 : 8);
                if (fragment.F()) {
                    fragment.T0(false);
                }
            } else {
                animator.setTarget(fragment.N);
                if (!fragment.F) {
                    fragment.N.setVisibility(0);
                } else if (fragment.F()) {
                    fragment.T0(false);
                } else {
                    android.view.ViewGroup viewGroup = fragment.M;
                    android.view.View view = fragment.N;
                    viewGroup.startViewTransition(view);
                    gVarV0.f1661b.addListener(new androidx.fragment.app.f.d(viewGroup, view, fragment));
                }
                Z0(fragment.N, gVarV0);
                gVarV0.f1661b.start();
            }
        }
        if (fragment.f1513p && fragment.J && fragment.K) {
            this.f1639v = true;
        }
        fragment.T = false;
        fragment.b0(fragment.F);
    }

    public androidx.fragment.app.Fragment s0() {
        return this.f1638u;
    }

    public void t(androidx.fragment.app.Fragment fragment) {
        if (J) {
            android.util.Log.v("FragmentManager", "detach: " + fragment);
        }
        if (fragment.G) {
            return;
        }
        fragment.G = true;
        if (fragment.f1513p) {
            if (J) {
                android.util.Log.v("FragmentManager", "remove from detach: " + fragment);
            }
            synchronized (this.f1626d) {
                this.f1626d.remove(fragment);
            }
            if (fragment.J && fragment.K) {
                this.f1639v = true;
            }
            fragment.f1513p = false;
        }
    }

    public void t0(androidx.fragment.app.Fragment fragment) {
        if (J) {
            android.util.Log.v("FragmentManager", "hide: " + fragment);
        }
        if (fragment.F) {
            return;
        }
        fragment.F = true;
        fragment.T = true ^ fragment.T;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(com.alibaba.fastjson.asm.Opcodes.IOR);
        sb.append("FragmentManager{");
        sb.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
        sb.append(" in ");
        androidx.fragment.app.Fragment fragment = this.f1637t;
        if (fragment != null) {
            v.b.a(fragment, sb);
        } else {
            v.b.a(this.f1635r, sb);
        }
        sb.append("}}");
        return sb.toString();
    }

    public void u() {
        this.f1640w = false;
        this.f1641x = false;
        Y(2);
    }

    public boolean u0(int i5) {
        return this.f1634q >= i5;
    }

    public void v(android.content.res.Configuration configuration) {
        for (int i5 = 0; i5 < this.f1626d.size(); i5++) {
            androidx.fragment.app.Fragment fragment = this.f1626d.get(i5);
            if (fragment != null) {
                fragment.t0(configuration);
            }
        }
    }

    public androidx.fragment.app.f.g v0(androidx.fragment.app.Fragment fragment, int i5, boolean z4, int i6) {
        int iG1;
        int iR = fragment.r();
        android.view.animation.Animation animationS = fragment.S(i5, z4, iR);
        if (animationS != null) {
            return new androidx.fragment.app.f.g(animationS);
        }
        android.animation.Animator animatorT = fragment.T(i5, z4, iR);
        if (animatorT != null) {
            return new androidx.fragment.app.f.g(animatorT);
        }
        if (iR != 0) {
            boolean zEquals = "anim".equals(this.f1635r.e().getResources().getResourceTypeName(iR));
            boolean z5 = false;
            if (zEquals) {
                try {
                    android.view.animation.Animation animationLoadAnimation = android.view.animation.AnimationUtils.loadAnimation(this.f1635r.e(), iR);
                    if (animationLoadAnimation != null) {
                        return new androidx.fragment.app.f.g(animationLoadAnimation);
                    }
                    z5 = true;
                } catch (android.content.res.Resources.NotFoundException e5) {
                    throw e5;
                } catch (java.lang.RuntimeException unused) {
                }
            }
            if (!z5) {
                try {
                    android.animation.Animator animatorLoadAnimator = android.animation.AnimatorInflater.loadAnimator(this.f1635r.e(), iR);
                    if (animatorLoadAnimator != null) {
                        return new androidx.fragment.app.f.g(animatorLoadAnimator);
                    }
                } catch (java.lang.RuntimeException e6) {
                    if (zEquals) {
                        throw e6;
                    }
                    android.view.animation.Animation animationLoadAnimation2 = android.view.animation.AnimationUtils.loadAnimation(this.f1635r.e(), iR);
                    if (animationLoadAnimation2 != null) {
                        return new androidx.fragment.app.f.g(animationLoadAnimation2);
                    }
                }
            }
        }
        if (i5 == 0 || (iG1 = g1(i5, z4)) < 0) {
            return null;
        }
        switch (iG1) {
            case 1:
                return z0(this.f1635r.e(), 1.125f, 1.0f, 0.0f, 1.0f);
            case 2:
                return z0(this.f1635r.e(), 1.0f, 0.975f, 1.0f, 0.0f);
            case 3:
                return z0(this.f1635r.e(), 0.975f, 1.0f, 0.0f, 1.0f);
            case 4:
                return z0(this.f1635r.e(), 1.0f, 1.075f, 1.0f, 0.0f);
            case 5:
                return x0(this.f1635r.e(), 0.0f, 1.0f);
            case 6:
                return x0(this.f1635r.e(), 1.0f, 0.0f);
            default:
                if (i6 != 0 || !this.f1635r.l()) {
                    return null;
                }
                this.f1635r.k();
                return null;
        }
    }

    public boolean w(android.view.MenuItem menuItem) {
        if (this.f1634q < 1) {
            return false;
        }
        for (int i5 = 0; i5 < this.f1626d.size(); i5++) {
            androidx.fragment.app.Fragment fragment = this.f1626d.get(i5);
            if (fragment != null && fragment.u0(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void w0(androidx.fragment.app.Fragment fragment) {
        if (fragment.f1507e >= 0) {
            return;
        }
        int i5 = this.f1625c;
        this.f1625c = i5 + 1;
        fragment.U0(i5, this.f1637t);
        if (this.f1627e == null) {
            this.f1627e = new android.util.SparseArray<>();
        }
        this.f1627e.put(fragment.f1507e, fragment);
        if (J) {
            android.util.Log.v("FragmentManager", "Allocated fragment index " + fragment);
        }
    }

    public void x() {
        this.f1640w = false;
        this.f1641x = false;
        Y(1);
    }

    public boolean y(android.view.Menu menu, android.view.MenuInflater menuInflater) {
        if (this.f1634q < 1) {
            return false;
        }
        java.util.ArrayList<androidx.fragment.app.Fragment> arrayList = null;
        boolean z4 = false;
        for (int i5 = 0; i5 < this.f1626d.size(); i5++) {
            androidx.fragment.app.Fragment fragment = this.f1626d.get(i5);
            if (fragment != null && fragment.w0(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new java.util.ArrayList<>();
                }
                arrayList.add(fragment);
                z4 = true;
            }
        }
        if (this.f1629g != null) {
            for (int i6 = 0; i6 < this.f1629g.size(); i6++) {
                androidx.fragment.app.Fragment fragment2 = this.f1629g.get(i6);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.X();
                }
            }
        }
        this.f1629g = arrayList;
        return z4;
    }

    public void y0(androidx.fragment.app.Fragment fragment) {
        if (fragment.f1507e < 0) {
            return;
        }
        if (J) {
            android.util.Log.v("FragmentManager", "Freeing fragment index " + fragment);
        }
        this.f1627e.put(fragment.f1507e, null);
        fragment.B();
    }

    public void z() {
        this.f1642y = true;
        f0();
        Y(0);
        this.f1635r = null;
        this.f1636s = null;
        this.f1637t = null;
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.view.animation.Animation f1660a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final android.animation.Animator f1661b;

        public g(android.view.animation.Animation animation) {
            this.f1660a = animation;
            this.f1661b = null;
            if (animation == null) {
                throw new java.lang.IllegalStateException("Animation cannot be null");
            }
        }

        public g(android.animation.Animator animator) {
            this.f1660a = null;
            this.f1661b = animator;
            if (animator == null) {
                throw new java.lang.IllegalStateException("Animator cannot be null");
            }
        }
    }

    /* JADX INFO: compiled from: FragmentManager.java */
    public static class i extends android.view.animation.AnimationSet implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.view.ViewGroup f1663a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final android.view.View f1664b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f1665c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f1666d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f1667e;

        public i(android.view.animation.Animation animation, android.view.ViewGroup viewGroup, android.view.View view) {
            super(false);
            this.f1667e = true;
            this.f1663a = viewGroup;
            this.f1664b = view;
            addAnimation(animation);
            viewGroup.post(this);
        }

        @Override // android.view.animation.AnimationSet, android.view.animation.Animation
        public boolean getTransformation(long j5, android.view.animation.Transformation transformation) {
            this.f1667e = true;
            if (this.f1665c) {
                return !this.f1666d;
            }
            if (!super.getTransformation(j5, transformation)) {
                this.f1665c = true;
                androidx.fragment.app.l.a(this.f1663a, this);
            }
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f1665c || !this.f1667e) {
                this.f1663a.endViewTransition(this.f1664b);
                this.f1666d = true;
            } else {
                this.f1667e = false;
                this.f1663a.post(this);
            }
        }

        @Override // android.view.animation.Animation
        public boolean getTransformation(long j5, android.view.animation.Transformation transformation, float f5) {
            this.f1667e = true;
            if (this.f1665c) {
                return !this.f1666d;
            }
            if (!super.getTransformation(j5, transformation, f5)) {
                this.f1665c = true;
                androidx.fragment.app.l.a(this.f1663a, this);
            }
            return true;
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public android.view.View onCreateView(java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
