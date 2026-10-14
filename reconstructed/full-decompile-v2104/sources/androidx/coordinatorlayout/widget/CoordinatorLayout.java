package androidx.coordinatorlayout.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CoordinatorLayout extends android.view.ViewGroup implements w.k {
    public static final java.lang.ThreadLocal<java.util.Map<java.lang.String, java.lang.reflect.Constructor<androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior>>> A;
    public static final java.util.Comparator<android.view.View> B;
    public static final v.e<android.graphics.Rect> C;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final java.lang.String f1231y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final java.lang.Class<?>[] f1232z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.List<android.view.View> f1233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m.a<android.view.View> f1234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.List<android.view.View> f1235c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.List<android.view.View> f1236d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f1237e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public android.graphics.Paint f1238f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1239g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1240h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f1241i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public android.view.View f1242o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public android.view.View f1243p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public androidx.coordinatorlayout.widget.CoordinatorLayout.f f1244q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1245r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public w.a0 f1246s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f1247t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public android.graphics.drawable.Drawable f1248u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public android.view.ViewGroup.OnHierarchyChangeListener f1249v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public w.n f1250w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final w.m f1251x;

    public static abstract class Behavior<V extends android.view.View> {
        public Behavior() {
        }

        @java.lang.Deprecated
        public void A(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.View view) {
        }

        public void B(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.View view, int i5) {
            if (i5 == 0) {
                A(coordinatorLayout, v4, view);
            }
        }

        public boolean C(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.MotionEvent motionEvent) {
            return false;
        }

        public boolean a(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4) {
            return d(coordinatorLayout, v4) > 0.0f;
        }

        public boolean b(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.graphics.Rect rect) {
            return false;
        }

        public int c(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4) {
            return -16777216;
        }

        public float d(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4) {
            return 0.0f;
        }

        public boolean e(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.View view) {
            return false;
        }

        public w.a0 f(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, w.a0 a0Var) {
            return a0Var;
        }

        public void g(androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar) {
        }

        public boolean h(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.View view) {
            return false;
        }

        public void i(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.View view) {
        }

        public void j() {
        }

        public boolean k(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.MotionEvent motionEvent) {
            return false;
        }

        public boolean l(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, int i5) {
            return false;
        }

        public boolean m(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, int i5, int i6, int i7, int i8) {
            return false;
        }

        public boolean n(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.View view, float f5, float f6, boolean z4) {
            return false;
        }

        public boolean o(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.View view, float f5, float f6) {
            return false;
        }

        @java.lang.Deprecated
        public void p(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.View view, int i5, int i6, int[] iArr) {
        }

        public void q(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.View view, int i5, int i6, int[] iArr, int i7) {
            if (i7 == 0) {
                p(coordinatorLayout, v4, view, i5, i6, iArr);
            }
        }

        @java.lang.Deprecated
        public void r(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.View view, int i5, int i6, int i7, int i8) {
        }

        public void s(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.View view, int i5, int i6, int i7, int i8, int i9) {
            if (i9 == 0) {
                r(coordinatorLayout, v4, view, i5, i6, i7, i8);
            }
        }

        @java.lang.Deprecated
        public void t(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.View view, android.view.View view2, int i5) {
        }

        public void u(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.View view, android.view.View view2, int i5, int i6) {
            if (i6 == 0) {
                t(coordinatorLayout, v4, view, view2, i5);
            }
        }

        public boolean v(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.graphics.Rect rect, boolean z4) {
            return false;
        }

        public void w(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.os.Parcelable parcelable) {
        }

        public android.os.Parcelable x(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4) {
            return android.view.View.BaseSavedState.EMPTY_STATE;
        }

        @java.lang.Deprecated
        public boolean y(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.View view, android.view.View view2, int i5) {
            return false;
        }

        public boolean z(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v4, android.view.View view, android.view.View view2, int i5, int i6) {
            if (i6 == 0) {
                return y(coordinatorLayout, v4, view, view2, i5);
            }
            return false;
        }

        public Behavior(android.content.Context context, android.util.AttributeSet attributeSet) {
        }
    }

    public class a implements w.n {
        public a() {
        }

        @Override // w.n
        public w.a0 a(android.view.View view, w.a0 a0Var) {
            return androidx.coordinatorlayout.widget.CoordinatorLayout.this.S(a0Var);
        }
    }

    public interface b {
        androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior a();
    }

    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.RUNTIME)
    @java.lang.Deprecated
    public @interface c {
        java.lang.Class<? extends androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior> value();
    }

    public class d implements android.view.ViewGroup.OnHierarchyChangeListener {
        public d() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(android.view.View view, android.view.View view2) {
            android.view.ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = androidx.coordinatorlayout.widget.CoordinatorLayout.this.f1249v;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(android.view.View view, android.view.View view2) {
            androidx.coordinatorlayout.widget.CoordinatorLayout.this.D(2);
            android.view.ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = androidx.coordinatorlayout.widget.CoordinatorLayout.this.f1249v;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public class f implements android.view.ViewTreeObserver.OnPreDrawListener {
        public f() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            androidx.coordinatorlayout.widget.CoordinatorLayout.this.D(0);
            return true;
        }
    }

    public static class g implements java.util.Comparator<android.view.View> {
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(android.view.View view, android.view.View view2) {
            float fX = w.q.x(view);
            float fX2 = w.q.x(view2);
            if (fX > fX2) {
                return -1;
            }
            return fX < fX2 ? 1 : 0;
        }
    }

    static {
        java.lang.Package r5 = androidx.coordinatorlayout.widget.CoordinatorLayout.class.getPackage();
        f1231y = r5 != null ? r5.getName() : null;
        B = new androidx.coordinatorlayout.widget.CoordinatorLayout.g();
        f1232z = new java.lang.Class[]{android.content.Context.class, android.util.AttributeSet.class};
        A = new java.lang.ThreadLocal<>();
        C = new v.g(12);
    }

    public CoordinatorLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, androidx.coordinatorlayout.R.attr.coordinatorLayoutStyle);
    }

    public static androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior G(android.content.Context context, android.util.AttributeSet attributeSet, java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0) {
            java.lang.String str2 = f1231y;
            if (!android.text.TextUtils.isEmpty(str2)) {
                str = str2 + '.' + str;
            }
        }
        try {
            java.lang.ThreadLocal<java.util.Map<java.lang.String, java.lang.reflect.Constructor<androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior>>> threadLocal = A;
            java.util.Map map = threadLocal.get();
            if (map == null) {
                map = new java.util.HashMap();
                threadLocal.set((java.util.Map<java.lang.String, java.lang.reflect.Constructor<androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior>>) map);
            }
            java.lang.reflect.Constructor<?> constructor = (java.lang.reflect.Constructor) map.get(str);
            if (constructor == null) {
                constructor = context.getClassLoader().loadClass(str).getConstructor(f1232z);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return (androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior) constructor.newInstance(context, attributeSet);
        } catch (java.lang.Exception e5) {
            throw new java.lang.RuntimeException("Could not inflate Behavior subclass " + str, e5);
        }
    }

    public static void K(android.graphics.Rect rect) {
        rect.setEmpty();
        C.a(rect);
    }

    public static int N(int i5) {
        if (i5 == 0) {
            return 17;
        }
        return i5;
    }

    public static int O(int i5) {
        if ((i5 & 7) == 0) {
            i5 |= 8388611;
        }
        return (i5 & 112) == 0 ? i5 | 48 : i5;
    }

    public static int P(int i5) {
        if (i5 == 0) {
            return 8388661;
        }
        return i5;
    }

    public static android.graphics.Rect g() {
        android.graphics.Rect rectB = C.b();
        return rectB == null ? new android.graphics.Rect() : rectB;
    }

    public static int i(int i5, int i6, int i7) {
        if (i5 < i6) {
            return i6;
        }
        return i5 > i7 ? i7 : i5;
    }

    public final void A(android.view.View view, int i5, int i6) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams();
        int iB = w.d.b(P(eVar.f1257c), i6);
        int i7 = iB & 7;
        int i8 = iB & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i6 == 1) {
            i5 = width - i5;
        }
        int iT = t(i5) - measuredWidth;
        int i9 = 0;
        if (i7 == 1) {
            iT += measuredWidth / 2;
        } else if (i7 == 5) {
            iT += measuredWidth;
        }
        if (i8 == 16) {
            i9 = 0 + (measuredHeight / 2);
        } else if (i8 == 80) {
            i9 = measuredHeight + 0;
        }
        int iMax = java.lang.Math.max(getPaddingLeft() + ((android.view.ViewGroup.MarginLayoutParams) eVar).leftMargin, java.lang.Math.min(iT, ((width - getPaddingRight()) - measuredWidth) - ((android.view.ViewGroup.MarginLayoutParams) eVar).rightMargin));
        int iMax2 = java.lang.Math.max(getPaddingTop() + ((android.view.ViewGroup.MarginLayoutParams) eVar).topMargin, java.lang.Math.min(i9, ((height - getPaddingBottom()) - measuredHeight) - ((android.view.ViewGroup.MarginLayoutParams) eVar).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth + iMax, measuredHeight + iMax2);
    }

    public final void B(android.view.View view, android.graphics.Rect rect, int i5) {
        boolean z4;
        boolean z5;
        int width;
        int i6;
        int i7;
        int i8;
        int height;
        int i9;
        int i10;
        int i11;
        if (w.q.D(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams();
            androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE = eVar.e();
            android.graphics.Rect rectG = g();
            android.graphics.Rect rectG2 = g();
            rectG2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (behaviorE == null || !behaviorE.b(this, view, rectG)) {
                rectG.set(rectG2);
            } else if (!rectG2.contains(rectG)) {
                throw new java.lang.IllegalArgumentException("Rect should be within the child's bounds. Rect:" + rectG.toShortString() + " | Bounds:" + rectG2.toShortString());
            }
            K(rectG2);
            if (rectG.isEmpty()) {
                K(rectG);
                return;
            }
            int iB = w.d.b(eVar.f1262h, i5);
            boolean z6 = true;
            if ((iB & 48) != 48 || (i10 = (rectG.top - ((android.view.ViewGroup.MarginLayoutParams) eVar).topMargin) - eVar.f1264j) >= (i11 = rect.top)) {
                z4 = false;
            } else {
                R(view, i11 - i10);
                z4 = true;
            }
            if ((iB & 80) == 80 && (height = ((getHeight() - rectG.bottom) - ((android.view.ViewGroup.MarginLayoutParams) eVar).bottomMargin) + eVar.f1264j) < (i9 = rect.bottom)) {
                R(view, height - i9);
                z4 = true;
            }
            if (!z4) {
                R(view, 0);
            }
            if ((iB & 3) != 3 || (i7 = (rectG.left - ((android.view.ViewGroup.MarginLayoutParams) eVar).leftMargin) - eVar.f1263i) >= (i8 = rect.left)) {
                z5 = false;
            } else {
                Q(view, i8 - i7);
                z5 = true;
            }
            if ((iB & 5) != 5 || (width = ((getWidth() - rectG.right) - ((android.view.ViewGroup.MarginLayoutParams) eVar).rightMargin) + eVar.f1263i) >= (i6 = rect.right)) {
                z6 = z5;
            } else {
                Q(view, width - i6);
            }
            if (!z6) {
                Q(view, 0);
            }
            K(rectG);
        }
    }

    public void C(android.view.View view, int i5) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE;
        androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams();
        if (eVar.f1265k != null) {
            android.graphics.Rect rectG = g();
            android.graphics.Rect rectG2 = g();
            android.graphics.Rect rectG3 = g();
            q(eVar.f1265k, rectG);
            p(view, false, rectG2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            s(view, i5, rectG, rectG3, eVar, measuredWidth, measuredHeight);
            boolean z4 = (rectG3.left == rectG2.left && rectG3.top == rectG2.top) ? false : true;
            j(eVar, rectG3, measuredWidth, measuredHeight);
            int i6 = rectG3.left - rectG2.left;
            int i7 = rectG3.top - rectG2.top;
            if (i6 != 0) {
                w.q.G(view, i6);
            }
            if (i7 != 0) {
                w.q.H(view, i7);
            }
            if (z4 && (behaviorE = eVar.e()) != null) {
                behaviorE.h(this, view, eVar.f1265k);
            }
            K(rectG);
            K(rectG2);
            K(rectG3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00ca  */
    public final void D(int i5) {
        int i6;
        androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE;
        boolean zH;
        int iP = w.q.p(this);
        int size = this.f1233a.size();
        android.graphics.Rect rectG = g();
        android.graphics.Rect rectG2 = g();
        android.graphics.Rect rectG3 = g();
        for (int i7 = 0; i7 < size; i7++) {
            android.view.View view = this.f1233a.get(i7);
            androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams();
            if (i5 != 0 || view.getVisibility() != 8) {
                for (int i8 = 0; i8 < i7; i8++) {
                    if (eVar.f1266l == this.f1233a.get(i8)) {
                        C(view, iP);
                    }
                }
                p(view, true, rectG2);
                if (eVar.f1261g != 0 && !rectG2.isEmpty()) {
                    int iB = w.d.b(eVar.f1261g, iP);
                    int i9 = iB & 112;
                    if (i9 == 48) {
                        rectG.top = java.lang.Math.max(rectG.top, rectG2.bottom);
                    } else if (i9 == 80) {
                        rectG.bottom = java.lang.Math.max(rectG.bottom, getHeight() - rectG2.top);
                    }
                    int i10 = iB & 7;
                    if (i10 == 3) {
                        rectG.left = java.lang.Math.max(rectG.left, rectG2.right);
                    } else if (i10 == 5) {
                        rectG.right = java.lang.Math.max(rectG.right, getWidth() - rectG2.left);
                    }
                }
                if (eVar.f1262h != 0 && view.getVisibility() == 0) {
                    B(view, rectG, iP);
                }
                if (i5 != 2) {
                    u(view, rectG3);
                    if (!rectG3.equals(rectG2)) {
                        J(view, rectG2);
                        for (i6 = i7 + 1; i6 < size; i6++) {
                            android.view.View view2 = this.f1233a.get(i6);
                            androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar2 = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) view2.getLayoutParams();
                            behaviorE = eVar2.e();
                            if (behaviorE == null && behaviorE.e(this, view2, view)) {
                                if (i5 == 0 && eVar2.f()) {
                                    eVar2.j();
                                } else {
                                    if (i5 != 2) {
                                        zH = behaviorE.h(this, view2, view);
                                    } else {
                                        behaviorE.i(this, view2, view);
                                        zH = true;
                                    }
                                    if (i5 == 1) {
                                        eVar2.o(zH);
                                    }
                                }
                            }
                        }
                    }
                } else {
                    while (i6 < size) {
                        android.view.View view3 = this.f1233a.get(i6);
                        androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar3 = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) view3.getLayoutParams();
                        behaviorE = eVar3.e();
                        if (behaviorE == null) {
                        }
                    }
                }
            }
        }
        K(rectG);
        K(rectG2);
        K(rectG3);
    }

    public void E(android.view.View view, int i5) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams();
        if (eVar.a()) {
            throw new java.lang.IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        android.view.View view2 = eVar.f1265k;
        if (view2 != null) {
            z(view, view2, i5);
            return;
        }
        int i6 = eVar.f1259e;
        if (i6 >= 0) {
            A(view, i6, i5);
        } else {
            y(view, i5);
        }
    }

    public void F(android.view.View view, int i5, int i6, int i7, int i8) {
        measureChildWithMargins(view, i5, i6, i7, i8);
    }

    public final boolean H(android.view.MotionEvent motionEvent, int i5) {
        int actionMasked = motionEvent.getActionMasked();
        java.util.List<android.view.View> list = this.f1235c;
        w(list);
        int size = list.size();
        android.view.MotionEvent motionEventObtain = null;
        boolean zK = false;
        boolean z4 = false;
        for (int i6 = 0; i6 < size; i6++) {
            android.view.View view = list.get(i6);
            androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams();
            androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE = eVar.e();
            if (!(zK || z4) || actionMasked == 0) {
                if (!zK && behaviorE != null) {
                    if (i5 == 0) {
                        zK = behaviorE.k(this, view, motionEvent);
                    } else if (i5 == 1) {
                        zK = behaviorE.C(this, view, motionEvent);
                    }
                    if (zK) {
                        this.f1242o = view;
                    }
                }
                boolean zC = eVar.c();
                boolean zH = eVar.h(this, view);
                z4 = zH && !zC;
                if (zH && !z4) {
                    break;
                }
            } else if (behaviorE != null) {
                if (motionEventObtain == null) {
                    long jUptimeMillis = android.os.SystemClock.uptimeMillis();
                    motionEventObtain = android.view.MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i5 == 0) {
                    behaviorE.k(this, view, motionEventObtain);
                } else if (i5 == 1) {
                    behaviorE.C(this, view, motionEventObtain);
                }
            }
        }
        list.clear();
        return zK;
    }

    public final void I() {
        this.f1233a.clear();
        this.f1234b.c();
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            androidx.coordinatorlayout.widget.CoordinatorLayout.e eVarV = v(childAt);
            eVarV.d(this, childAt);
            this.f1234b.b(childAt);
            for (int i6 = 0; i6 < childCount; i6++) {
                if (i6 != i5) {
                    android.view.View childAt2 = getChildAt(i6);
                    if (eVarV.b(this, childAt, childAt2)) {
                        if (!this.f1234b.d(childAt2)) {
                            this.f1234b.b(childAt2);
                        }
                        this.f1234b.a(childAt2, childAt);
                    }
                }
            }
        }
        this.f1233a.addAll(this.f1234b.g());
        java.util.Collections.reverse(this.f1233a);
    }

    public void J(android.view.View view, android.graphics.Rect rect) {
        ((androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams()).p(rect);
    }

    public void L() {
        if (this.f1240h && this.f1244q != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f1244q);
        }
        this.f1245r = false;
    }

    public final void M(boolean z4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE = ((androidx.coordinatorlayout.widget.CoordinatorLayout.e) childAt.getLayoutParams()).e();
            if (behaviorE != null) {
                long jUptimeMillis = android.os.SystemClock.uptimeMillis();
                android.view.MotionEvent motionEventObtain = android.view.MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z4) {
                    behaviorE.k(this, childAt, motionEventObtain);
                } else {
                    behaviorE.C(this, childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i6 = 0; i6 < childCount; i6++) {
            ((androidx.coordinatorlayout.widget.CoordinatorLayout.e) getChildAt(i6).getLayoutParams()).l();
        }
        this.f1242o = null;
        this.f1239g = false;
    }

    public final void Q(android.view.View view, int i5) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams();
        int i6 = eVar.f1263i;
        if (i6 != i5) {
            w.q.G(view, i5 - i6);
            eVar.f1263i = i5;
        }
    }

    public final void R(android.view.View view, int i5) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams();
        int i6 = eVar.f1264j;
        if (i6 != i5) {
            w.q.H(view, i5 - i6);
            eVar.f1264j = i5;
        }
    }

    public final w.a0 S(w.a0 a0Var) {
        if (v.d.a(this.f1246s, a0Var)) {
            return a0Var;
        }
        this.f1246s = a0Var;
        boolean z4 = a0Var != null && a0Var.k() > 0;
        this.f1247t = z4;
        setWillNotDraw(!z4 && getBackground() == null);
        w.a0 a0VarK = k(a0Var);
        requestLayout();
        return a0VarK;
    }

    public final void T() {
        if (!w.q.m(this)) {
            w.q.Y(this, null);
            return;
        }
        if (this.f1250w == null) {
            this.f1250w = new androidx.coordinatorlayout.widget.CoordinatorLayout.a();
        }
        w.q.Y(this, this.f1250w);
        setSystemUiVisibility(1280);
    }

    @Override // w.k
    public void a(android.view.View view, android.view.View view2, int i5, int i6) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE;
        this.f1251x.c(view, view2, i5, i6);
        this.f1243p = view2;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            android.view.View childAt = getChildAt(i7);
            androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) childAt.getLayoutParams();
            if (eVar.i(i6) && (behaviorE = eVar.e()) != null) {
                behaviorE.u(this, childAt, view, view2, i5, i6);
            }
        }
    }

    @Override // w.k
    public void b(android.view.View view, int i5) {
        this.f1251x.e(view, i5);
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            android.view.View childAt = getChildAt(i6);
            androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) childAt.getLayoutParams();
            if (eVar.i(i5)) {
                androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE = eVar.e();
                if (behaviorE != null) {
                    behaviorE.B(this, childAt, view, i5);
                }
                eVar.k(i5);
                eVar.j();
            }
        }
        this.f1243p = null;
    }

    @Override // w.k
    public void c(android.view.View view, int i5, int i6, int[] iArr, int i7) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE;
        int childCount = getChildCount();
        boolean z4 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            android.view.View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) childAt.getLayoutParams();
                if (eVar.i(i7) && (behaviorE = eVar.e()) != null) {
                    int[] iArr2 = this.f1237e;
                    iArr2[1] = 0;
                    iArr2[0] = 0;
                    behaviorE.q(this, childAt, view, i5, i6, iArr2, i7);
                    int[] iArr3 = this.f1237e;
                    iMax = i5 > 0 ? java.lang.Math.max(iMax, iArr3[0]) : java.lang.Math.min(iMax, iArr3[0]);
                    int[] iArr4 = this.f1237e;
                    iMax2 = i6 > 0 ? java.lang.Math.max(iMax2, iArr4[1]) : java.lang.Math.min(iMax2, iArr4[1]);
                    z4 = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z4) {
            D(1);
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof androidx.coordinatorlayout.widget.CoordinatorLayout.e) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(android.graphics.Canvas canvas, android.view.View view, long j5) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams();
        androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behavior = eVar.f1255a;
        if (behavior != null) {
            float fD = behavior.d(this, view);
            if (fD > 0.0f) {
                if (this.f1238f == null) {
                    this.f1238f = new android.graphics.Paint();
                }
                this.f1238f.setColor(eVar.f1255a.c(this, view));
                this.f1238f.setAlpha(i(java.lang.Math.round(fD * 255.0f), 0, 255));
                int iSave = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), android.graphics.Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.f1238f);
                canvas.restoreToCount(iSave);
            }
        }
        return super.drawChild(canvas, view, j5);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        android.graphics.drawable.Drawable drawable = this.f1248u;
        boolean state = false;
        if (drawable != null && drawable.isStateful()) {
            state = false | drawable.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // w.k
    public void e(android.view.View view, int i5, int i6, int i7, int i8, int i9) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE;
        int childCount = getChildCount();
        boolean z4 = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            android.view.View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) childAt.getLayoutParams();
                if (eVar.i(i9) && (behaviorE = eVar.e()) != null) {
                    behaviorE.s(this, childAt, view, i5, i6, i7, i8, i9);
                    z4 = true;
                }
            }
        }
        if (z4) {
            D(1);
        }
    }

    @Override // w.k
    public boolean f(android.view.View view, android.view.View view2, int i5, int i6) {
        int childCount = getChildCount();
        boolean z4 = false;
        for (int i7 = 0; i7 < childCount; i7++) {
            android.view.View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) childAt.getLayoutParams();
                androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE = eVar.e();
                if (behaviorE != null) {
                    boolean z5 = behaviorE.z(this, childAt, view, view2, i5, i6);
                    z4 |= z5;
                    eVar.q(i6, z5);
                } else {
                    eVar.q(i6, false);
                }
            }
        }
        return z4;
    }

    public final java.util.List<android.view.View> getDependencySortedChildren() {
        I();
        return java.util.Collections.unmodifiableList(this.f1233a);
    }

    public final w.a0 getLastWindowInsets() {
        return this.f1246s;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f1251x.a();
    }

    public android.graphics.drawable.Drawable getStatusBarBackground() {
        return this.f1248u;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return java.lang.Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return java.lang.Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    public void h() {
        if (this.f1240h) {
            if (this.f1244q == null) {
                this.f1244q = new androidx.coordinatorlayout.widget.CoordinatorLayout.f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f1244q);
        }
        this.f1245r = true;
    }

    public final void j(androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar, android.graphics.Rect rect, int i5, int i6) {
        int width = getWidth();
        int height = getHeight();
        int iMax = java.lang.Math.max(getPaddingLeft() + ((android.view.ViewGroup.MarginLayoutParams) eVar).leftMargin, java.lang.Math.min(rect.left, ((width - getPaddingRight()) - i5) - ((android.view.ViewGroup.MarginLayoutParams) eVar).rightMargin));
        int iMax2 = java.lang.Math.max(getPaddingTop() + ((android.view.ViewGroup.MarginLayoutParams) eVar).topMargin, java.lang.Math.min(rect.top, ((height - getPaddingBottom()) - i6) - ((android.view.ViewGroup.MarginLayoutParams) eVar).bottomMargin));
        rect.set(iMax, iMax2, i5 + iMax, i6 + iMax2);
    }

    public final w.a0 k(w.a0 a0Var) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE;
        if (a0Var.l()) {
            return a0Var;
        }
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            if (w.q.m(childAt) && (behaviorE = ((androidx.coordinatorlayout.widget.CoordinatorLayout.e) childAt.getLayoutParams()).e()) != null) {
                a0Var = behaviorE.f(this, childAt, a0Var);
                if (a0Var.l()) {
                    break;
                }
            }
        }
        return a0Var;
    }

    public void l() {
        int childCount = getChildCount();
        boolean z4 = false;
        for (int i5 = 0; i5 < childCount; i5++) {
            if (x(getChildAt(i5))) {
                z4 = true;
                break;
            }
        }
        if (z4 != this.f1245r) {
            if (z4) {
                h();
            } else {
                L();
            }
        }
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public androidx.coordinatorlayout.widget.CoordinatorLayout.e generateDefaultLayoutParams() {
        return new androidx.coordinatorlayout.widget.CoordinatorLayout.e(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public androidx.coordinatorlayout.widget.CoordinatorLayout.e generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new androidx.coordinatorlayout.widget.CoordinatorLayout.e(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public androidx.coordinatorlayout.widget.CoordinatorLayout.e generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof androidx.coordinatorlayout.widget.CoordinatorLayout.e) {
            return new androidx.coordinatorlayout.widget.CoordinatorLayout.e((androidx.coordinatorlayout.widget.CoordinatorLayout.e) layoutParams);
        }
        return layoutParams instanceof android.view.ViewGroup.MarginLayoutParams ? new androidx.coordinatorlayout.widget.CoordinatorLayout.e((android.view.ViewGroup.MarginLayoutParams) layoutParams) : new androidx.coordinatorlayout.widget.CoordinatorLayout.e(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        M(false);
        if (this.f1245r) {
            if (this.f1244q == null) {
                this.f1244q = new androidx.coordinatorlayout.widget.CoordinatorLayout.f();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f1244q);
        }
        if (this.f1246s == null && w.q.m(this)) {
            w.q.N(this);
        }
        this.f1240h = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        M(false);
        if (this.f1245r && this.f1244q != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f1244q);
        }
        android.view.View view = this.f1243p;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f1240h = false;
    }

    @Override // android.view.View
    public void onDraw(android.graphics.Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f1247t || this.f1248u == null) {
            return;
        }
        w.a0 a0Var = this.f1246s;
        int iK = a0Var != null ? a0Var.k() : 0;
        if (iK > 0) {
            this.f1248u.setBounds(0, 0, getWidth(), iK);
            this.f1248u.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            M(true);
        }
        boolean zH = H(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            M(true);
        }
        return zH;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE;
        int iP = w.q.p(this);
        int size = this.f1233a.size();
        for (int i9 = 0; i9 < size; i9++) {
            android.view.View view = this.f1233a.get(i9);
            if (view.getVisibility() != 8 && ((behaviorE = ((androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams()).e()) == null || !behaviorE.l(this, view, iP))) {
                E(view, iP);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:42:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:45:0x011d  */
    @Override // android.view.View
    public void onMeasure(int i5, int i6) {
        int i7;
        int iMax;
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE;
        androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        I();
        l();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int iP = w.q.p(this);
        boolean z4 = iP == 1;
        int mode = android.view.View.MeasureSpec.getMode(i5);
        int size = android.view.View.MeasureSpec.getSize(i5);
        int mode2 = android.view.View.MeasureSpec.getMode(i6);
        int size2 = android.view.View.MeasureSpec.getSize(i6);
        int i14 = paddingLeft + paddingRight;
        int i15 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z5 = this.f1246s != null && w.q.m(this);
        int size3 = this.f1233a.size();
        int i16 = suggestedMinimumWidth;
        int i17 = suggestedMinimumHeight;
        int iCombineMeasuredStates = 0;
        int i18 = 0;
        while (i18 < size3) {
            android.view.View view = this.f1233a.get(i18);
            if (view.getVisibility() == 8) {
                i12 = i18;
                i9 = size3;
                i10 = paddingLeft;
            } else {
                androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar2 = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams();
                int i19 = eVar2.f1259e;
                if (i19 < 0 || mode == 0) {
                    i7 = iCombineMeasuredStates;
                } else {
                    int iT = t(i19);
                    int iB = w.d.b(P(eVar2.f1257c), iP) & 7;
                    i7 = iCombineMeasuredStates;
                    if ((iB == 3 && !z4) || (iB == 5 && z4)) {
                        iMax = java.lang.Math.max(0, (size - paddingRight) - iT);
                    } else if ((iB == 5 && !z4) || (iB == 3 && z4)) {
                        iMax = java.lang.Math.max(0, iT - paddingLeft);
                    }
                    if (z5 || w.q.m(view)) {
                        iMakeMeasureSpec = i5;
                        iMakeMeasureSpec2 = i6;
                    } else {
                        int i20 = this.f1246s.i() + this.f1246s.j();
                        int iK = this.f1246s.k() + this.f1246s.h();
                        iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(size - i20, mode);
                        iMakeMeasureSpec2 = android.view.View.MeasureSpec.makeMeasureSpec(size2 - iK, mode2);
                    }
                    behaviorE = eVar2.e();
                    if (behaviorE != null) {
                        eVar = eVar2;
                        i11 = i7;
                        i12 = i18;
                        i8 = i17;
                        i10 = paddingLeft;
                        i13 = i16;
                        i9 = size3;
                        if (!behaviorE.m(this, view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0)) {
                        }
                        androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar3 = eVar;
                        int iMax2 = java.lang.Math.max(i13, i14 + view.getMeasuredWidth() + ((android.view.ViewGroup.MarginLayoutParams) eVar3).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) eVar3).rightMargin);
                        int iMax3 = java.lang.Math.max(i8, i15 + view.getMeasuredHeight() + ((android.view.ViewGroup.MarginLayoutParams) eVar3).topMargin + ((android.view.ViewGroup.MarginLayoutParams) eVar3).bottomMargin);
                        iCombineMeasuredStates = android.view.View.combineMeasuredStates(i11, view.getMeasuredState());
                        i16 = iMax2;
                        i17 = iMax3;
                    } else {
                        eVar = eVar2;
                        i8 = i17;
                        i9 = size3;
                        i10 = paddingLeft;
                        i11 = i7;
                        i12 = i18;
                        i13 = i16;
                    }
                    F(view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0);
                    androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar4 = eVar;
                    int iMax4 = java.lang.Math.max(i13, i14 + view.getMeasuredWidth() + ((android.view.ViewGroup.MarginLayoutParams) eVar4).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) eVar4).rightMargin);
                    int iMax5 = java.lang.Math.max(i8, i15 + view.getMeasuredHeight() + ((android.view.ViewGroup.MarginLayoutParams) eVar4).topMargin + ((android.view.ViewGroup.MarginLayoutParams) eVar4).bottomMargin);
                    iCombineMeasuredStates = android.view.View.combineMeasuredStates(i11, view.getMeasuredState());
                    i16 = iMax4;
                    i17 = iMax5;
                }
                iMax = 0;
                if (z5) {
                    iMakeMeasureSpec = i5;
                    iMakeMeasureSpec2 = i6;
                } else {
                    iMakeMeasureSpec = i5;
                    iMakeMeasureSpec2 = i6;
                }
                behaviorE = eVar2.e();
                if (behaviorE != null) {
                    eVar = eVar2;
                    i11 = i7;
                    i12 = i18;
                    i8 = i17;
                    i10 = paddingLeft;
                    i13 = i16;
                    i9 = size3;
                    if (!behaviorE.m(this, view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0)) {
                    }
                    androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar5 = eVar;
                    int iMax6 = java.lang.Math.max(i13, i14 + view.getMeasuredWidth() + ((android.view.ViewGroup.MarginLayoutParams) eVar5).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) eVar5).rightMargin);
                    int iMax7 = java.lang.Math.max(i8, i15 + view.getMeasuredHeight() + ((android.view.ViewGroup.MarginLayoutParams) eVar5).topMargin + ((android.view.ViewGroup.MarginLayoutParams) eVar5).bottomMargin);
                    iCombineMeasuredStates = android.view.View.combineMeasuredStates(i11, view.getMeasuredState());
                    i16 = iMax6;
                    i17 = iMax7;
                } else {
                    eVar = eVar2;
                    i8 = i17;
                    i9 = size3;
                    i10 = paddingLeft;
                    i11 = i7;
                    i12 = i18;
                    i13 = i16;
                }
                F(view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0);
                androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar6 = eVar;
                int iMax8 = java.lang.Math.max(i13, i14 + view.getMeasuredWidth() + ((android.view.ViewGroup.MarginLayoutParams) eVar6).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) eVar6).rightMargin);
                int iMax9 = java.lang.Math.max(i8, i15 + view.getMeasuredHeight() + ((android.view.ViewGroup.MarginLayoutParams) eVar6).topMargin + ((android.view.ViewGroup.MarginLayoutParams) eVar6).bottomMargin);
                iCombineMeasuredStates = android.view.View.combineMeasuredStates(i11, view.getMeasuredState());
                i16 = iMax8;
                i17 = iMax9;
            }
            i18 = i12 + 1;
            paddingLeft = i10;
            size3 = i9;
        }
        int i21 = iCombineMeasuredStates;
        setMeasuredDimension(android.view.View.resolveSizeAndState(i16, i5, (-16777216) & i21), android.view.View.resolveSizeAndState(i17, i6, i21 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(android.view.View view, float f5, float f6, boolean z4) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE;
        int childCount = getChildCount();
        boolean zN = false;
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) childAt.getLayoutParams();
                if (eVar.i(0) && (behaviorE = eVar.e()) != null) {
                    zN |= behaviorE.n(this, childAt, view, f5, f6, z4);
                }
            }
        }
        if (zN) {
            D(1);
        }
        return zN;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(android.view.View view, float f5, float f6) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE;
        int childCount = getChildCount();
        boolean zO = false;
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) childAt.getLayoutParams();
                if (eVar.i(0) && (behaviorE = eVar.e()) != null) {
                    zO |= behaviorE.o(this, childAt, view, f5, f6);
                }
            }
        }
        return zO;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(android.view.View view, int i5, int i6, int[] iArr) {
        c(view, i5, i6, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(android.view.View view, int i5, int i6, int i7, int i8) {
        e(view, i5, i6, i7, i8, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(android.view.View view, android.view.View view2, int i5) {
        a(view, view2, i5, 0);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        android.os.Parcelable parcelable2;
        if (!(parcelable instanceof androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState savedState = (androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        android.util.SparseArray<android.os.Parcelable> sparseArray = savedState.f1252a;
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            int id = childAt.getId();
            androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE = v(childAt).e();
            if (id != -1 && behaviorE != null && (parcelable2 = sparseArray.get(id)) != null) {
                behaviorE.w(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        android.os.Parcelable parcelableX;
        androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState savedState = new androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState(super.onSaveInstanceState());
        android.util.SparseArray<android.os.Parcelable> sparseArray = new android.util.SparseArray<>();
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            int id = childAt.getId();
            androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE = ((androidx.coordinatorlayout.widget.CoordinatorLayout.e) childAt.getLayoutParams()).e();
            if (id != -1 && behaviorE != null && (parcelableX = behaviorE.x(this, childAt)) != null) {
                sparseArray.append(id, parcelableX);
            }
        }
        savedState.f1252a = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(android.view.View view, android.view.View view2, int i5) {
        return f(view, view2, i5, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(android.view.View view) {
        b(view, 0);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002b A[PHI: r3
  0x002b: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:9:0x0022, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:14:0x0031  */
    /* JADX WARN: Code duplicated, block: B:15:0x0037 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0039  */
    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:22:0x0054  */
    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        boolean zH;
        boolean zC;
        android.view.MotionEvent motionEventObtain;
        int actionMasked = motionEvent.getActionMasked();
        if (this.f1242o == null) {
            zH = H(motionEvent, 1);
            if (!zH) {
                zC = false;
            }
            motionEventObtain = null;
            if (this.f1242o == null) {
                zC |= super.onTouchEvent(motionEvent);
            } else if (zH) {
                long jUptimeMillis = android.os.SystemClock.uptimeMillis();
                motionEventObtain = android.view.MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                super.onTouchEvent(motionEventObtain);
            }
            if (motionEventObtain != null) {
                motionEventObtain.recycle();
            }
            if (actionMasked != 1 || actionMasked == 3) {
                M(false);
            }
            return zC;
        }
        zH = false;
        androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE = ((androidx.coordinatorlayout.widget.CoordinatorLayout.e) this.f1242o.getLayoutParams()).e();
        if (behaviorE != null) {
            zC = behaviorE.C(this, this.f1242o, motionEvent);
        } else {
            zC = false;
        }
        motionEventObtain = null;
        if (this.f1242o == null) {
            zC |= super.onTouchEvent(motionEvent);
        } else if (zH) {
            long jUptimeMillis2 = android.os.SystemClock.uptimeMillis();
            motionEventObtain = android.view.MotionEvent.obtain(jUptimeMillis2, jUptimeMillis2, 3, 0.0f, 0.0f, 0);
            super.onTouchEvent(motionEventObtain);
        }
        if (motionEventObtain != null) {
            motionEventObtain.recycle();
        }
        if (actionMasked != 1) {
            M(false);
        } else {
            M(false);
        }
        return zC;
    }

    public void p(android.view.View view, boolean z4, android.graphics.Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z4) {
            q(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public void q(android.view.View view, android.graphics.Rect rect) {
        m.b.a(this, view, rect);
    }

    public void r(android.view.View view, int i5, android.graphics.Rect rect, android.graphics.Rect rect2) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        s(view, i5, rect, rect2, eVar, measuredWidth, measuredHeight);
        j(eVar, rect2, measuredWidth, measuredHeight);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(android.view.View view, android.graphics.Rect rect, boolean z4) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorE = ((androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams()).e();
        if (behaviorE == null || !behaviorE.v(this, view, rect, z4)) {
            return super.requestChildRectangleOnScreen(view, rect, z4);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z4) {
        super.requestDisallowInterceptTouchEvent(z4);
        if (!z4 || this.f1239g) {
            return;
        }
        M(false);
        this.f1239g = true;
    }

    public final void s(android.view.View view, int i5, android.graphics.Rect rect, android.graphics.Rect rect2, androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar, int i6, int i7) {
        int iWidth;
        int iHeight;
        int iB = w.d.b(N(eVar.f1257c), i5);
        int iB2 = w.d.b(O(eVar.f1258d), i5);
        int i8 = iB & 7;
        int i9 = iB & 112;
        int i10 = iB2 & 7;
        int i11 = iB2 & 112;
        if (i10 != 1) {
            iWidth = i10 != 5 ? rect.left : rect.right;
        } else {
            iWidth = rect.left + (rect.width() / 2);
        }
        if (i11 != 16) {
            iHeight = i11 != 80 ? rect.top : rect.bottom;
        } else {
            iHeight = rect.top + (rect.height() / 2);
        }
        if (i8 == 1) {
            iWidth -= i6 / 2;
        } else if (i8 != 5) {
            iWidth -= i6;
        }
        if (i9 == 16) {
            iHeight -= i7 / 2;
        } else if (i9 != 80) {
            iHeight -= i7;
        }
        rect2.set(iWidth, iHeight, i6 + iWidth, i7 + iHeight);
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z4) {
        super.setFitsSystemWindows(z4);
        T();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(android.view.ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f1249v = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable drawable2 = this.f1248u;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            android.graphics.drawable.Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f1248u = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f1248u.setState(getDrawableState());
                }
                p.a.f(this.f1248u, w.q.p(this));
                this.f1248u.setVisible(getVisibility() == 0, false);
                this.f1248u.setCallback(this);
            }
            w.q.K(this);
        }
    }

    public void setStatusBarBackgroundColor(int i5) {
        setStatusBarBackground(new android.graphics.drawable.ColorDrawable(i5));
    }

    public void setStatusBarBackgroundResource(int i5) {
        setStatusBarBackground(i5 != 0 ? androidx.core.content.a.b(getContext(), i5) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i5) {
        super.setVisibility(i5);
        boolean z4 = i5 == 0;
        android.graphics.drawable.Drawable drawable = this.f1248u;
        if (drawable == null || drawable.isVisible() == z4) {
            return;
        }
        this.f1248u.setVisible(z4, false);
    }

    public final int t(int i5) {
        int[] iArr = this.f1241i;
        if (iArr == null) {
            android.util.Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i5);
            return 0;
        }
        if (i5 >= 0 && i5 < iArr.length) {
            return iArr[i5];
        }
        android.util.Log.e("CoordinatorLayout", "Keyline index " + i5 + " out of range for " + this);
        return 0;
    }

    public void u(android.view.View view, android.graphics.Rect rect) {
        rect.set(((androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams()).g());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public androidx.coordinatorlayout.widget.CoordinatorLayout.e v(android.view.View view) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams();
        if (!eVar.f1256b) {
            if (view instanceof androidx.coordinatorlayout.widget.CoordinatorLayout.b) {
                androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behaviorA = ((androidx.coordinatorlayout.widget.CoordinatorLayout.b) view).a();
                if (behaviorA == null) {
                    android.util.Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                eVar.n(behaviorA);
                eVar.f1256b = true;
            } else {
                androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar = null;
                for (java.lang.Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                    cVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.c) superclass.getAnnotation(androidx.coordinatorlayout.widget.CoordinatorLayout.c.class);
                    if (cVar != null) {
                        break;
                    }
                }
                if (cVar != null) {
                    try {
                        eVar.n(cVar.value().getDeclaredConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]));
                    } catch (java.lang.Exception e5) {
                        android.util.Log.e("CoordinatorLayout", "Default behavior class " + cVar.value().getName() + " could not be instantiated. Did you forget a default constructor?", e5);
                    }
                }
                eVar.f1256b = true;
            }
        }
        return eVar;
    }

    @Override // android.view.View
    public boolean verifyDrawable(android.graphics.drawable.Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1248u;
    }

    public final void w(java.util.List<android.view.View> list) {
        list.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i5 = childCount - 1; i5 >= 0; i5--) {
            list.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i5) : i5));
        }
        java.util.Comparator<android.view.View> comparator = B;
        if (comparator != null) {
            java.util.Collections.sort(list, comparator);
        }
    }

    public final boolean x(android.view.View view) {
        return this.f1234b.h(view);
    }

    public final void y(android.view.View view, int i5) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams();
        android.graphics.Rect rectG = g();
        rectG.set(getPaddingLeft() + ((android.view.ViewGroup.MarginLayoutParams) eVar).leftMargin, getPaddingTop() + ((android.view.ViewGroup.MarginLayoutParams) eVar).topMargin, (getWidth() - getPaddingRight()) - ((android.view.ViewGroup.MarginLayoutParams) eVar).rightMargin, (getHeight() - getPaddingBottom()) - ((android.view.ViewGroup.MarginLayoutParams) eVar).bottomMargin);
        if (this.f1246s != null && w.q.m(this) && !w.q.m(view)) {
            rectG.left += this.f1246s.i();
            rectG.top += this.f1246s.k();
            rectG.right -= this.f1246s.j();
            rectG.bottom -= this.f1246s.h();
        }
        android.graphics.Rect rectG2 = g();
        w.d.a(O(eVar.f1257c), view.getMeasuredWidth(), view.getMeasuredHeight(), rectG, rectG2, i5);
        view.layout(rectG2.left, rectG2.top, rectG2.right, rectG2.bottom);
        K(rectG);
        K(rectG2);
    }

    public final void z(android.view.View view, android.view.View view2, int i5) {
        android.graphics.Rect rectG = g();
        android.graphics.Rect rectG2 = g();
        try {
            q(view2, rectG);
            r(view, i5, rectG, rectG2);
            view.layout(rectG2.left, rectG2.top, rectG2.right, rectG2.bottom);
        } finally {
            K(rectG);
            K(rectG2);
        }
    }

    public CoordinatorLayout(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.f1233a = new java.util.ArrayList();
        this.f1234b = new m.a<>();
        this.f1235c = new java.util.ArrayList();
        this.f1236d = new java.util.ArrayList();
        this.f1237e = new int[2];
        this.f1251x = new w.m(this);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = i5 == 0 ? context.obtainStyledAttributes(attributeSet, androidx.coordinatorlayout.R.styleable.CoordinatorLayout, 0, androidx.coordinatorlayout.R.style.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, androidx.coordinatorlayout.R.styleable.CoordinatorLayout, i5, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(androidx.coordinatorlayout.R.styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            android.content.res.Resources resources = context.getResources();
            this.f1241i = resources.getIntArray(resourceId);
            float f5 = resources.getDisplayMetrics().density;
            int length = this.f1241i.length;
            for (int i6 = 0; i6 < length; i6++) {
                int[] iArr = this.f1241i;
                iArr[i6] = (int) (iArr[i6] * f5);
            }
        }
        this.f1248u = typedArrayObtainStyledAttributes.getDrawable(androidx.coordinatorlayout.R.styleable.CoordinatorLayout_statusBarBackground);
        typedArrayObtainStyledAttributes.recycle();
        T();
        super.setOnHierarchyChangeListener(new androidx.coordinatorlayout.widget.CoordinatorLayout.d());
    }

    public static class SavedState extends androidx.customview.view.AbsSavedState {
        public static final android.os.Parcelable.Creator<androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState> CREATOR = new androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState.a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public android.util.SparseArray<android.os.Parcelable> f1252a;

        public static class a implements android.os.Parcelable.ClassLoaderCreator<androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState createFromParcel(android.os.Parcel parcel) {
                return new androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                return new androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState[] newArray(int i5) {
                return new androidx.coordinatorlayout.widget.CoordinatorLayout.SavedState[i5];
            }
        }

        public SavedState(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            super(parcel, classLoader);
            int i5 = parcel.readInt();
            int[] iArr = new int[i5];
            parcel.readIntArray(iArr);
            android.os.Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
            this.f1252a = new android.util.SparseArray<>(i5);
            for (int i6 = 0; i6 < i5; i6++) {
                this.f1252a.append(iArr[i6], parcelableArray[i6]);
            }
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i5) {
            super.writeToParcel(parcel, i5);
            android.util.SparseArray<android.os.Parcelable> sparseArray = this.f1252a;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            android.os.Parcelable[] parcelableArr = new android.os.Parcelable[size];
            for (int i6 = 0; i6 < size; i6++) {
                iArr[i6] = this.f1252a.keyAt(i6);
                parcelableArr[i6] = this.f1252a.valueAt(i6);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i5);
        }

        public SavedState(android.os.Parcelable parcelable) {
            super(parcelable);
        }
    }

    public static class e extends android.view.ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior f1255a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1256b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1257c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1258d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1259e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1260f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f1261g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f1262h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f1263i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f1264j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public android.view.View f1265k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public android.view.View f1266l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f1267m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f1268n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f1269o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public boolean f1270p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final android.graphics.Rect f1271q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public java.lang.Object f1272r;

        public e(int i5, int i6) {
            super(i5, i6);
            this.f1256b = false;
            this.f1257c = 0;
            this.f1258d = 0;
            this.f1259e = -1;
            this.f1260f = -1;
            this.f1261g = 0;
            this.f1262h = 0;
            this.f1271q = new android.graphics.Rect();
        }

        public boolean a() {
            return this.f1265k == null && this.f1260f != -1;
        }

        public boolean b(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.view.View view2) {
            androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behavior;
            return view2 == this.f1266l || r(view2, w.q.p(coordinatorLayout)) || ((behavior = this.f1255a) != null && behavior.e(coordinatorLayout, view, view2));
        }

        public boolean c() {
            if (this.f1255a == null) {
                this.f1267m = false;
            }
            return this.f1267m;
        }

        public android.view.View d(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view) {
            if (this.f1260f == -1) {
                this.f1266l = null;
                this.f1265k = null;
                return null;
            }
            if (this.f1265k == null || !s(view, coordinatorLayout)) {
                m(view, coordinatorLayout);
            }
            return this.f1265k;
        }

        public androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior e() {
            return this.f1255a;
        }

        public boolean f() {
            return this.f1270p;
        }

        public android.graphics.Rect g() {
            return this.f1271q;
        }

        public boolean h(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view) {
            boolean z4 = this.f1267m;
            if (z4) {
                return true;
            }
            androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behavior = this.f1255a;
            boolean zA = (behavior != null ? behavior.a(coordinatorLayout, view) : false) | z4;
            this.f1267m = zA;
            return zA;
        }

        public boolean i(int i5) {
            if (i5 == 0) {
                return this.f1268n;
            }
            if (i5 != 1) {
                return false;
            }
            return this.f1269o;
        }

        public void j() {
            this.f1270p = false;
        }

        public void k(int i5) {
            q(i5, false);
        }

        public void l() {
            this.f1267m = false;
        }

        public final void m(android.view.View view, androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout) {
            android.view.View viewFindViewById = coordinatorLayout.findViewById(this.f1260f);
            this.f1265k = viewFindViewById;
            if (viewFindViewById == null) {
                if (coordinatorLayout.isInEditMode()) {
                    this.f1266l = null;
                    this.f1265k = null;
                    return;
                }
                throw new java.lang.IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f1260f) + " to anchor view " + view);
            }
            if (viewFindViewById == coordinatorLayout) {
                if (!coordinatorLayout.isInEditMode()) {
                    throw new java.lang.IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
                this.f1266l = null;
                this.f1265k = null;
                return;
            }
            for (android.view.ViewParent parent = viewFindViewById.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                if (parent == view) {
                    if (!coordinatorLayout.isInEditMode()) {
                        throw new java.lang.IllegalStateException("Anchor must not be a descendant of the anchored view");
                    }
                    this.f1266l = null;
                    this.f1265k = null;
                    return;
                }
                if (parent instanceof android.view.View) {
                    viewFindViewById = parent;
                }
            }
            this.f1266l = viewFindViewById;
        }

        public void n(androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behavior) {
            androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behavior2 = this.f1255a;
            if (behavior2 != behavior) {
                if (behavior2 != null) {
                    behavior2.j();
                }
                this.f1255a = behavior;
                this.f1272r = null;
                this.f1256b = true;
                if (behavior != null) {
                    behavior.g(this);
                }
            }
        }

        public void o(boolean z4) {
            this.f1270p = z4;
        }

        public void p(android.graphics.Rect rect) {
            this.f1271q.set(rect);
        }

        public void q(int i5, boolean z4) {
            if (i5 == 0) {
                this.f1268n = z4;
            } else {
                if (i5 != 1) {
                    return;
                }
                this.f1269o = z4;
            }
        }

        public final boolean r(android.view.View view, int i5) {
            int iB = w.d.b(((androidx.coordinatorlayout.widget.CoordinatorLayout.e) view.getLayoutParams()).f1261g, i5);
            return iB != 0 && (w.d.b(this.f1262h, i5) & iB) == iB;
        }

        public final boolean s(android.view.View view, androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout) {
            if (this.f1265k.getId() != this.f1260f) {
                return false;
            }
            android.view.View view2 = this.f1265k;
            for (android.view.ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent == null || parent == view) {
                    this.f1266l = null;
                    this.f1265k = null;
                    return false;
                }
                if (parent instanceof android.view.View) {
                    view2 = parent;
                }
            }
            this.f1266l = view2;
            return true;
        }

        public e(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1256b = false;
            this.f1257c = 0;
            this.f1258d = 0;
            this.f1259e = -1;
            this.f1260f = -1;
            this.f1261g = 0;
            this.f1262h = 0;
            this.f1271q = new android.graphics.Rect();
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.coordinatorlayout.R.styleable.CoordinatorLayout_Layout);
            this.f1257c = typedArrayObtainStyledAttributes.getInteger(androidx.coordinatorlayout.R.styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f1260f = typedArrayObtainStyledAttributes.getResourceId(androidx.coordinatorlayout.R.styleable.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f1258d = typedArrayObtainStyledAttributes.getInteger(androidx.coordinatorlayout.R.styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f1259e = typedArrayObtainStyledAttributes.getInteger(androidx.coordinatorlayout.R.styleable.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f1261g = typedArrayObtainStyledAttributes.getInt(androidx.coordinatorlayout.R.styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f1262h = typedArrayObtainStyledAttributes.getInt(androidx.coordinatorlayout.R.styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            int i5 = androidx.coordinatorlayout.R.styleable.CoordinatorLayout_Layout_layout_behavior;
            boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i5);
            this.f1256b = zHasValue;
            if (zHasValue) {
                this.f1255a = androidx.coordinatorlayout.widget.CoordinatorLayout.G(context, attributeSet, typedArrayObtainStyledAttributes.getString(i5));
            }
            typedArrayObtainStyledAttributes.recycle();
            androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior behavior = this.f1255a;
            if (behavior != null) {
                behavior.g(this);
            }
        }

        public e(androidx.coordinatorlayout.widget.CoordinatorLayout.e eVar) {
            super((android.view.ViewGroup.MarginLayoutParams) eVar);
            this.f1256b = false;
            this.f1257c = 0;
            this.f1258d = 0;
            this.f1259e = -1;
            this.f1260f = -1;
            this.f1261g = 0;
            this.f1262h = 0;
            this.f1271q = new android.graphics.Rect();
        }

        public e(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1256b = false;
            this.f1257c = 0;
            this.f1258d = 0;
            this.f1259e = -1;
            this.f1260f = -1;
            this.f1261g = 0;
            this.f1262h = 0;
            this.f1271q = new android.graphics.Rect();
        }

        public e(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1256b = false;
            this.f1257c = 0;
            this.f1258d = 0;
            this.f1259e = -1;
            this.f1260f = -1;
            this.f1261g = 0;
            this.f1262h = 0;
            this.f1271q = new android.graphics.Rect();
        }
    }
}
