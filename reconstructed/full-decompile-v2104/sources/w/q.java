package w;

/* JADX INFO: compiled from: ViewCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"PrivateConstructorForUtilityClass"})
public class q {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static java.lang.reflect.Field f6669c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.concurrent.atomic.AtomicInteger f6667a = new java.util.concurrent.atomic.AtomicInteger(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static java.util.WeakHashMap<android.view.View, w.w> f6668b = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f6670d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f6671e = {androidx.core.R.id.accessibility_custom_action_0, androidx.core.R.id.accessibility_custom_action_1, androidx.core.R.id.accessibility_custom_action_2, androidx.core.R.id.accessibility_custom_action_3, androidx.core.R.id.accessibility_custom_action_4, androidx.core.R.id.accessibility_custom_action_5, androidx.core.R.id.accessibility_custom_action_6, androidx.core.R.id.accessibility_custom_action_7, androidx.core.R.id.accessibility_custom_action_8, androidx.core.R.id.accessibility_custom_action_9, androidx.core.R.id.accessibility_custom_action_10, androidx.core.R.id.accessibility_custom_action_11, androidx.core.R.id.accessibility_custom_action_12, androidx.core.R.id.accessibility_custom_action_13, androidx.core.R.id.accessibility_custom_action_14, androidx.core.R.id.accessibility_custom_action_15, androidx.core.R.id.accessibility_custom_action_16, androidx.core.R.id.accessibility_custom_action_17, androidx.core.R.id.accessibility_custom_action_18, androidx.core.R.id.accessibility_custom_action_19, androidx.core.R.id.accessibility_custom_action_20, androidx.core.R.id.accessibility_custom_action_21, androidx.core.R.id.accessibility_custom_action_22, androidx.core.R.id.accessibility_custom_action_23, androidx.core.R.id.accessibility_custom_action_24, androidx.core.R.id.accessibility_custom_action_25, androidx.core.R.id.accessibility_custom_action_26, androidx.core.R.id.accessibility_custom_action_27, androidx.core.R.id.accessibility_custom_action_28, androidx.core.R.id.accessibility_custom_action_29, androidx.core.R.id.accessibility_custom_action_30, androidx.core.R.id.accessibility_custom_action_31};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final w.o f6672f = new w.o() { // from class: w.p
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final w.q.e f6673g = new w.q.e();

    /* JADX INFO: compiled from: ViewCompat.java */
    public class a extends w.q.f<java.lang.Boolean> {
        public a(int i5, java.lang.Class cls, int i6) {
            super(i5, cls, i6);
        }

        @Override // w.q.f
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.Boolean c(android.view.View view) {
            return java.lang.Boolean.valueOf(w.q.o.d(view));
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public class b extends w.q.f<java.lang.CharSequence> {
        public b(int i5, java.lang.Class cls, int i6, int i7) {
            super(i5, cls, i6, i7);
        }

        @Override // w.q.f
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.CharSequence c(android.view.View view) {
            return w.q.o.b(view);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public class c extends w.q.f<java.lang.CharSequence> {
        public c(int i5, java.lang.Class cls, int i6, int i7) {
            super(i5, cls, i6, i7);
        }

        @Override // w.q.f
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.CharSequence c(android.view.View view) {
            return w.q.C0097q.a(view);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public class d extends w.q.f<java.lang.Boolean> {
        public d(int i5, java.lang.Class cls, int i6) {
            super(i5, cls, i6);
        }

        @Override // w.q.f
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.Boolean c(android.view.View view) {
            return java.lang.Boolean.valueOf(w.q.o.c(view));
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class e implements android.view.ViewTreeObserver.OnGlobalLayoutListener, android.view.View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.WeakHashMap<android.view.View, java.lang.Boolean> f6674a = new java.util.WeakHashMap<>();

        public final void a(android.view.View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(android.view.View view) {
            a(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(android.view.View view) {
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static abstract class f<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f6675a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.Class<T> f6676b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f6677c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f6678d;

        public f(int i5, java.lang.Class<T> cls, int i6) {
            this(i5, cls, 0, i6);
        }

        public final boolean a() {
            return true;
        }

        public final boolean b() {
            return android.os.Build.VERSION.SDK_INT >= this.f6677c;
        }

        public abstract T c(android.view.View view);

        public T d(android.view.View view) {
            if (b()) {
                return c(view);
            }
            if (!a()) {
                return null;
            }
            T t5 = (T) view.getTag(this.f6675a);
            if (this.f6676b.isInstance(t5)) {
                return t5;
            }
            return null;
        }

        public f(int i5, java.lang.Class<T> cls, int i6, int i7) {
            this.f6675a = i5;
            this.f6676b = cls;
            this.f6678d = i6;
            this.f6677c = i7;
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class g {
        public static boolean a(android.view.View view) {
            return view.hasOnClickListeners();
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class h {
        public static android.view.accessibility.AccessibilityNodeProvider a(android.view.View view) {
            return view.getAccessibilityNodeProvider();
        }

        public static boolean b(android.view.View view) {
            return view.getFitsSystemWindows();
        }

        public static int c(android.view.View view) {
            return view.getImportantForAccessibility();
        }

        public static int d(android.view.View view) {
            return view.getMinimumHeight();
        }

        public static int e(android.view.View view) {
            return view.getMinimumWidth();
        }

        public static android.view.ViewParent f(android.view.View view) {
            return view.getParentForAccessibility();
        }

        public static int g(android.view.View view) {
            return view.getWindowSystemUiVisibility();
        }

        public static boolean h(android.view.View view) {
            return view.hasOverlappingRendering();
        }

        public static boolean i(android.view.View view) {
            return view.hasTransientState();
        }

        public static boolean j(android.view.View view, int i5, android.os.Bundle bundle) {
            return view.performAccessibilityAction(i5, bundle);
        }

        public static void k(android.view.View view) {
            view.postInvalidateOnAnimation();
        }

        public static void l(android.view.View view, int i5, int i6, int i7, int i8) {
            view.postInvalidateOnAnimation(i5, i6, i7, i8);
        }

        public static void m(android.view.View view, java.lang.Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        public static void n(android.view.View view, java.lang.Runnable runnable, long j5) {
            view.postOnAnimationDelayed(runnable, j5);
        }

        public static void o(android.view.ViewTreeObserver viewTreeObserver, android.view.ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }

        public static void p(android.view.View view) {
            view.requestFitSystemWindows();
        }

        public static void q(android.view.View view, android.graphics.drawable.Drawable drawable) {
            view.setBackground(drawable);
        }

        public static void r(android.view.View view, boolean z4) {
            view.setHasTransientState(z4);
        }

        public static void s(android.view.View view, int i5) {
            view.setImportantForAccessibility(i5);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class i {
        public static int a() {
            return android.view.View.generateViewId();
        }

        public static android.view.Display b(android.view.View view) {
            return view.getDisplay();
        }

        public static int c(android.view.View view) {
            return view.getLabelFor();
        }

        public static int d(android.view.View view) {
            return view.getLayoutDirection();
        }

        public static int e(android.view.View view) {
            return view.getPaddingEnd();
        }

        public static int f(android.view.View view) {
            return view.getPaddingStart();
        }

        public static boolean g(android.view.View view) {
            return view.isPaddingRelative();
        }

        public static void h(android.view.View view, int i5) {
            view.setLabelFor(i5);
        }

        public static void i(android.view.View view, android.graphics.Paint paint) {
            view.setLayerPaint(paint);
        }

        public static void j(android.view.View view, int i5) {
            view.setLayoutDirection(i5);
        }

        public static void k(android.view.View view, int i5, int i6, int i7, int i8) {
            view.setPaddingRelative(i5, i6, i7, i8);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class j {
        public static int a(android.view.View view) {
            return view.getAccessibilityLiveRegion();
        }

        public static boolean b(android.view.View view) {
            return view.isAttachedToWindow();
        }

        public static boolean c(android.view.View view) {
            return view.isLaidOut();
        }

        public static boolean d(android.view.View view) {
            return view.isLayoutDirectionResolved();
        }

        public static void e(android.view.ViewParent viewParent, android.view.View view, android.view.View view2, int i5) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i5);
        }

        public static void f(android.view.View view, int i5) {
            view.setAccessibilityLiveRegion(i5);
        }

        public static void g(android.view.accessibility.AccessibilityEvent accessibilityEvent, int i5) {
            accessibilityEvent.setContentChangeTypes(i5);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class k {
        public static android.view.WindowInsets a(android.view.View view, android.view.WindowInsets windowInsets) {
            return view.dispatchApplyWindowInsets(windowInsets);
        }

        public static android.view.WindowInsets b(android.view.View view, android.view.WindowInsets windowInsets) {
            return view.onApplyWindowInsets(windowInsets);
        }

        public static void c(android.view.View view) {
            view.requestApplyInsets();
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class l {

        /* JADX INFO: compiled from: ViewCompat.java */
        public class a implements android.view.View.OnApplyWindowInsetsListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public w.a0 f6679a = null;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ android.view.View f6680b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ w.n f6681c;

            public a(android.view.View view, w.n nVar) {
                this.f6680b = view;
                this.f6681c = nVar;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public android.view.WindowInsets onApplyWindowInsets(android.view.View view, android.view.WindowInsets windowInsets) {
                w.a0 a0VarT = w.a0.t(windowInsets, view);
                int i5 = android.os.Build.VERSION.SDK_INT;
                if (i5 < 30) {
                    w.q.l.a(windowInsets, this.f6680b);
                    if (a0VarT.equals(this.f6679a)) {
                        return this.f6681c.a(view, a0VarT).r();
                    }
                }
                this.f6679a = a0VarT;
                w.a0 a0VarA = this.f6681c.a(view, a0VarT);
                if (i5 >= 30) {
                    return a0VarA.r();
                }
                w.q.N(view);
                return a0VarA.r();
            }
        }

        public static void a(android.view.WindowInsets windowInsets, android.view.View view) {
            android.view.View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (android.view.View.OnApplyWindowInsetsListener) view.getTag(androidx.core.R.id.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        public static w.a0 b(android.view.View view, w.a0 a0Var, android.graphics.Rect rect) {
            android.view.WindowInsets windowInsetsR = a0Var.r();
            if (windowInsetsR != null) {
                return w.a0.t(view.computeSystemWindowInsets(windowInsetsR, rect), view);
            }
            rect.setEmpty();
            return a0Var;
        }

        public static boolean c(android.view.View view, float f5, float f6, boolean z4) {
            return view.dispatchNestedFling(f5, f6, z4);
        }

        public static boolean d(android.view.View view, float f5, float f6) {
            return view.dispatchNestedPreFling(f5, f6);
        }

        public static boolean e(android.view.View view, int i5, int i6, int[] iArr, int[] iArr2) {
            return view.dispatchNestedPreScroll(i5, i6, iArr, iArr2);
        }

        public static boolean f(android.view.View view, int i5, int i6, int i7, int i8, int[] iArr) {
            return view.dispatchNestedScroll(i5, i6, i7, i8, iArr);
        }

        public static android.content.res.ColorStateList g(android.view.View view) {
            return view.getBackgroundTintList();
        }

        public static android.graphics.PorterDuff.Mode h(android.view.View view) {
            return view.getBackgroundTintMode();
        }

        public static float i(android.view.View view) {
            return view.getElevation();
        }

        public static w.a0 j(android.view.View view) {
            return w.a0.a.a(view);
        }

        public static java.lang.String k(android.view.View view) {
            return view.getTransitionName();
        }

        public static float l(android.view.View view) {
            return view.getTranslationZ();
        }

        public static float m(android.view.View view) {
            return view.getZ();
        }

        public static boolean n(android.view.View view) {
            return view.hasNestedScrollingParent();
        }

        public static boolean o(android.view.View view) {
            return view.isImportantForAccessibility();
        }

        public static boolean p(android.view.View view) {
            return view.isNestedScrollingEnabled();
        }

        public static void q(android.view.View view, android.content.res.ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
        }

        public static void r(android.view.View view, android.graphics.PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
        }

        public static void s(android.view.View view, float f5) {
            view.setElevation(f5);
        }

        public static void t(android.view.View view, boolean z4) {
            view.setNestedScrollingEnabled(z4);
        }

        public static void u(android.view.View view, w.n nVar) {
            if (android.os.Build.VERSION.SDK_INT < 30) {
                view.setTag(androidx.core.R.id.tag_on_apply_window_listener, nVar);
            }
            if (nVar == null) {
                view.setOnApplyWindowInsetsListener((android.view.View.OnApplyWindowInsetsListener) view.getTag(androidx.core.R.id.tag_window_insets_animation_callback));
            } else {
                view.setOnApplyWindowInsetsListener(new w.q.l.a(view, nVar));
            }
        }

        public static void v(android.view.View view, java.lang.String str) {
            view.setTransitionName(str);
        }

        public static void w(android.view.View view, float f5) {
            view.setTranslationZ(f5);
        }

        public static void x(android.view.View view, float f5) {
            view.setZ(f5);
        }

        public static boolean y(android.view.View view, int i5) {
            return view.startNestedScroll(i5);
        }

        public static void z(android.view.View view) {
            view.stopNestedScroll();
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class m {
        public static w.a0 a(android.view.View view) {
            android.view.WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            w.a0 a0VarS = w.a0.s(rootWindowInsets);
            a0VarS.p(a0VarS);
            a0VarS.d(view.getRootView());
            return a0VarS;
        }

        public static int b(android.view.View view) {
            return view.getScrollIndicators();
        }

        public static void c(android.view.View view, int i5) {
            view.setScrollIndicators(i5);
        }

        public static void d(android.view.View view, int i5, int i6) {
            view.setScrollIndicators(i5, i6);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class n {
        public static void a(android.view.View view, java.util.Collection<android.view.View> collection, int i5) {
            view.addKeyboardNavigationClusters(collection, i5);
        }

        public static int b(android.view.View view) {
            return view.getImportantForAutofill();
        }

        public static int c(android.view.View view) {
            return view.getNextClusterForwardId();
        }

        public static boolean d(android.view.View view) {
            return view.hasExplicitFocusable();
        }

        public static boolean e(android.view.View view) {
            return view.isFocusedByDefault();
        }

        public static boolean f(android.view.View view) {
            return view.isImportantForAutofill();
        }

        public static boolean g(android.view.View view) {
            return view.isKeyboardNavigationCluster();
        }

        public static android.view.View h(android.view.View view, android.view.View view2, int i5) {
            return view.keyboardNavigationClusterSearch(view2, i5);
        }

        public static boolean i(android.view.View view) {
            return view.restoreDefaultFocus();
        }

        public static void j(android.view.View view, java.lang.String... strArr) {
            view.setAutofillHints(strArr);
        }

        public static void k(android.view.View view, boolean z4) {
            view.setFocusedByDefault(z4);
        }

        public static void l(android.view.View view, int i5) {
            view.setImportantForAutofill(i5);
        }

        public static void m(android.view.View view, boolean z4) {
            view.setKeyboardNavigationCluster(z4);
        }

        public static void n(android.view.View view, int i5) {
            view.setNextClusterForwardId(i5);
        }

        public static void o(android.view.View view, java.lang.CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class o {
        public static void a(android.view.View view, final w.q.r rVar) {
            int i5 = androidx.core.R.id.tag_unhandled_key_listeners;
            j.g gVar = (j.g) view.getTag(i5);
            if (gVar == null) {
                gVar = new j.g();
                view.setTag(i5, gVar);
            }
            java.util.Objects.requireNonNull(rVar);
            android.view.View.OnUnhandledKeyEventListener onUnhandledKeyEventListener = new android.view.View.OnUnhandledKeyEventListener() { // from class: w.r
                @Override // android.view.View.OnUnhandledKeyEventListener
                public final boolean onUnhandledKeyEvent(android.view.View view2, android.view.KeyEvent keyEvent) {
                    return rVar.onUnhandledKeyEvent(view2, keyEvent);
                }
            };
            gVar.put(rVar, onUnhandledKeyEventListener);
            view.addOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        public static java.lang.CharSequence b(android.view.View view) {
            return view.getAccessibilityPaneTitle();
        }

        public static boolean c(android.view.View view) {
            return view.isAccessibilityHeading();
        }

        public static boolean d(android.view.View view) {
            return view.isScreenReaderFocusable();
        }

        public static void e(android.view.View view, w.q.r rVar) {
            android.view.View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
            j.g gVar = (j.g) view.getTag(androidx.core.R.id.tag_unhandled_key_listeners);
            if (gVar == null || (onUnhandledKeyEventListener = (android.view.View.OnUnhandledKeyEventListener) gVar.get(rVar)) == null) {
                return;
            }
            view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        public static <T> T f(android.view.View view, int i5) {
            return (T) view.requireViewById(i5);
        }

        public static void g(android.view.View view, boolean z4) {
            view.setAccessibilityHeading(z4);
        }

        public static void h(android.view.View view, java.lang.CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        public static void i(android.view.View view, boolean z4) {
            view.setScreenReaderFocusable(z4);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public static class p {
        public static android.view.View.AccessibilityDelegate a(android.view.View view) {
            return view.getAccessibilityDelegate();
        }

        public static java.util.List<android.graphics.Rect> b(android.view.View view) {
            return view.getSystemGestureExclusionRects();
        }

        public static void c(android.view.View view, android.content.Context context, int[] iArr, android.util.AttributeSet attributeSet, android.content.res.TypedArray typedArray, int i5, int i6) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i5, i6);
        }

        public static void d(android.view.View view, java.util.List<android.graphics.Rect> list) {
            view.setSystemGestureExclusionRects(list);
        }
    }

    /* JADX INFO: renamed from: w.q$q, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ViewCompat.java */
    public static class C0097q {
        public static java.lang.CharSequence a(android.view.View view) {
            return view.getStateDescription();
        }

        public static void b(android.view.View view, java.lang.CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public interface r {
        boolean onUnhandledKeyEvent(android.view.View view, android.view.KeyEvent keyEvent);
    }

    public static boolean A(android.view.View view) {
        return w.q.h.i(view);
    }

    public static boolean B(android.view.View view) {
        java.lang.Boolean boolD = a().d(view);
        return boolD != null && boolD.booleanValue();
    }

    public static boolean C(android.view.View view) {
        return w.q.j.b(view);
    }

    public static boolean D(android.view.View view) {
        return w.q.j.c(view);
    }

    public static boolean E(android.view.View view) {
        return w.q.l.p(view);
    }

    public static boolean F(android.view.View view) {
        java.lang.Boolean boolD = P().d(view);
        return boolD != null && boolD.booleanValue();
    }

    public static void G(android.view.View view, int i5) {
        view.offsetLeftAndRight(i5);
    }

    public static void H(android.view.View view, int i5) {
        view.offsetTopAndBottom(i5);
    }

    public static w.a0 I(android.view.View view, w.a0 a0Var) {
        android.view.WindowInsets windowInsetsR = a0Var.r();
        if (windowInsetsR != null) {
            android.view.WindowInsets windowInsetsB = w.q.k.b(view, windowInsetsR);
            if (!windowInsetsB.equals(windowInsetsR)) {
                return w.a0.t(windowInsetsB, view);
            }
        }
        return a0Var;
    }

    public static w.q.f<java.lang.CharSequence> J() {
        return new w.q.b(androidx.core.R.id.tag_accessibility_pane_title, java.lang.CharSequence.class, 8, 28);
    }

    public static void K(android.view.View view) {
        w.q.h.k(view);
    }

    public static void L(android.view.View view, java.lang.Runnable runnable) {
        w.q.h.m(view, runnable);
    }

    @android.annotation.SuppressLint({"LambdaLast"})
    public static void M(android.view.View view, java.lang.Runnable runnable, long j5) {
        w.q.h.n(view, runnable, j5);
    }

    public static void N(android.view.View view) {
        w.q.k.c(view);
    }

    public static void O(android.view.View view, @android.annotation.SuppressLint({"ContextFirst"}) android.content.Context context, int[] iArr, android.util.AttributeSet attributeSet, android.content.res.TypedArray typedArray, int i5, int i6) {
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            w.q.p.c(view, context, iArr, attributeSet, typedArray, i5, i6);
        }
    }

    public static w.q.f<java.lang.Boolean> P() {
        return new w.q.a(androidx.core.R.id.tag_screen_reader_focusable, java.lang.Boolean.class, 28);
    }

    public static void Q(android.view.View view, w.a aVar) {
        if (aVar == null && (f(view) instanceof w.a.C0095a)) {
            aVar = new w.a();
        }
        view.setAccessibilityDelegate(aVar == null ? null : aVar.d());
    }

    public static void R(android.view.View view, android.graphics.drawable.Drawable drawable) {
        w.q.h.q(view, drawable);
    }

    public static void S(android.view.View view, android.content.res.ColorStateList colorStateList) {
        w.q.l.q(view, colorStateList);
    }

    public static void T(android.view.View view, android.graphics.PorterDuff.Mode mode) {
        w.q.l.r(view, mode);
    }

    public static void U(android.view.View view, float f5) {
        w.q.l.s(view, f5);
    }

    public static void V(android.view.View view, int i5) {
        w.q.h.s(view, i5);
    }

    public static void W(android.view.View view, int i5) {
        w.q.n.l(view, i5);
    }

    public static void X(android.view.View view, android.graphics.Paint paint) {
        w.q.i.i(view, paint);
    }

    public static void Y(android.view.View view, w.n nVar) {
        w.q.l.u(view, nVar);
    }

    public static void Z(android.view.View view, int i5, int i6) {
        w.q.m.d(view, i5, i6);
    }

    public static w.q.f<java.lang.Boolean> a() {
        return new w.q.d(androidx.core.R.id.tag_accessibility_heading, java.lang.Boolean.class, 28);
    }

    public static void a0(android.view.View view, java.lang.String str) {
        w.q.l.v(view, str);
    }

    public static w.w b(android.view.View view) {
        if (f6668b == null) {
            f6668b = new java.util.WeakHashMap<>();
        }
        w.w wVar = f6668b.get(view);
        if (wVar != null) {
            return wVar;
        }
        w.w wVar2 = new w.w(view);
        f6668b.put(view, wVar2);
        return wVar2;
    }

    public static w.q.f<java.lang.CharSequence> b0() {
        return new w.q.c(androidx.core.R.id.tag_state_description, java.lang.CharSequence.class, 64, 30);
    }

    public static w.a0 c(android.view.View view, w.a0 a0Var) {
        android.view.WindowInsets windowInsetsR = a0Var.r();
        if (windowInsetsR != null) {
            android.view.WindowInsets windowInsetsA = w.q.k.a(view, windowInsetsR);
            if (!windowInsetsA.equals(windowInsetsR)) {
                return w.a0.t(windowInsetsA, view);
            }
        }
        return a0Var;
    }

    public static void c0(android.view.View view) {
        w.q.l.z(view);
    }

    public static boolean d(android.view.View view, android.view.KeyEvent keyEvent) {
        return false;
    }

    public static w.a e(android.view.View view) {
        android.view.View.AccessibilityDelegate accessibilityDelegateF = f(view);
        if (accessibilityDelegateF == null) {
            return null;
        }
        return accessibilityDelegateF instanceof w.a.C0095a ? ((w.a.C0095a) accessibilityDelegateF).f6621a : new w.a(accessibilityDelegateF);
    }

    public static android.view.View.AccessibilityDelegate f(android.view.View view) {
        return android.os.Build.VERSION.SDK_INT >= 29 ? w.q.p.a(view) : g(view);
    }

    public static android.view.View.AccessibilityDelegate g(android.view.View view) {
        if (f6670d) {
            return null;
        }
        if (f6669c == null) {
            try {
                java.lang.reflect.Field declaredField = android.view.View.class.getDeclaredField("mAccessibilityDelegate");
                f6669c = declaredField;
                declaredField.setAccessible(true);
            } catch (java.lang.Throwable unused) {
                f6670d = true;
                return null;
            }
        }
        try {
            java.lang.Object obj = f6669c.get(view);
            if (obj instanceof android.view.View.AccessibilityDelegate) {
                return (android.view.View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (java.lang.Throwable unused2) {
            f6670d = true;
            return null;
        }
    }

    public static java.lang.CharSequence h(android.view.View view) {
        return J().d(view);
    }

    public static android.content.res.ColorStateList i(android.view.View view) {
        return w.q.l.g(view);
    }

    public static android.graphics.PorterDuff.Mode j(android.view.View view) {
        return w.q.l.h(view);
    }

    public static android.view.Display k(android.view.View view) {
        return w.q.i.b(view);
    }

    public static float l(android.view.View view) {
        return w.q.l.i(view);
    }

    public static boolean m(android.view.View view) {
        return w.q.h.b(view);
    }

    public static int n(android.view.View view) {
        return w.q.h.c(view);
    }

    @android.annotation.SuppressLint({"InlinedApi"})
    public static int o(android.view.View view) {
        return w.q.n.b(view);
    }

    public static int p(android.view.View view) {
        return w.q.i.d(view);
    }

    public static int q(android.view.View view) {
        return w.q.h.d(view);
    }

    public static int r(android.view.View view) {
        return w.q.h.e(view);
    }

    public static android.view.ViewParent s(android.view.View view) {
        return w.q.h.f(view);
    }

    public static w.a0 t(android.view.View view) {
        return w.q.m.a(view);
    }

    public static java.lang.CharSequence u(android.view.View view) {
        return b0().d(view);
    }

    public static java.lang.String v(android.view.View view) {
        return w.q.l.k(view);
    }

    @java.lang.Deprecated
    public static int w(android.view.View view) {
        return w.q.h.g(view);
    }

    public static float x(android.view.View view) {
        return w.q.l.m(view);
    }

    public static boolean y(android.view.View view) {
        return w.q.g.a(view);
    }

    public static boolean z(android.view.View view) {
        return w.q.h.h(view);
    }
}
