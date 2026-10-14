package w;

/* JADX INFO: compiled from: ViewParentCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class u {

    /* JADX INFO: compiled from: ViewParentCompat.java */
    public static class a {
        public static boolean a(android.view.ViewParent viewParent, android.view.View view, float f5, float f6, boolean z4) {
            return viewParent.onNestedFling(view, f5, f6, z4);
        }

        public static boolean b(android.view.ViewParent viewParent, android.view.View view, float f5, float f6) {
            return viewParent.onNestedPreFling(view, f5, f6);
        }

        public static void c(android.view.ViewParent viewParent, android.view.View view, int i5, int i6, int[] iArr) {
            viewParent.onNestedPreScroll(view, i5, i6, iArr);
        }

        public static void d(android.view.ViewParent viewParent, android.view.View view, int i5, int i6, int i7, int i8) {
            viewParent.onNestedScroll(view, i5, i6, i7, i8);
        }

        public static void e(android.view.ViewParent viewParent, android.view.View view, android.view.View view2, int i5) {
            viewParent.onNestedScrollAccepted(view, view2, i5);
        }

        public static boolean f(android.view.ViewParent viewParent, android.view.View view, android.view.View view2, int i5) {
            return viewParent.onStartNestedScroll(view, view2, i5);
        }

        public static void g(android.view.ViewParent viewParent, android.view.View view) {
            viewParent.onStopNestedScroll(view);
        }
    }

    public static boolean a(android.view.ViewParent viewParent, android.view.View view, float f5, float f6, boolean z4) {
        try {
            return w.u.a.a(viewParent, view, f5, f6, z4);
        } catch (java.lang.AbstractMethodError e5) {
            android.util.Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedFling", e5);
            return false;
        }
    }

    public static boolean b(android.view.ViewParent viewParent, android.view.View view, float f5, float f6) {
        try {
            return w.u.a.b(viewParent, view, f5, f6);
        } catch (java.lang.AbstractMethodError e5) {
            android.util.Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e5);
            return false;
        }
    }

    public static void c(android.view.ViewParent viewParent, android.view.View view, int i5, int i6, int[] iArr, int i7) {
        if (viewParent instanceof w.k) {
            ((w.k) viewParent).c(view, i5, i6, iArr, i7);
            return;
        }
        if (i7 == 0) {
            try {
                w.u.a.c(viewParent, view, i5, i6, iArr);
            } catch (java.lang.AbstractMethodError e5) {
                android.util.Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e5);
            }
        }
    }

    public static void d(android.view.ViewParent viewParent, android.view.View view, int i5, int i6, int i7, int i8, int i9, int[] iArr) {
        if (viewParent instanceof w.l) {
            ((w.l) viewParent).d(view, i5, i6, i7, i8, i9, iArr);
            return;
        }
        iArr[0] = iArr[0] + i7;
        iArr[1] = iArr[1] + i8;
        if (viewParent instanceof w.k) {
            ((w.k) viewParent).e(view, i5, i6, i7, i8, i9);
            return;
        }
        if (i9 == 0) {
            try {
                w.u.a.d(viewParent, view, i5, i6, i7, i8);
            } catch (java.lang.AbstractMethodError e5) {
                android.util.Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e5);
            }
        }
    }

    public static void e(android.view.ViewParent viewParent, android.view.View view, android.view.View view2, int i5, int i6) {
        if (viewParent instanceof w.k) {
            ((w.k) viewParent).a(view, view2, i5, i6);
            return;
        }
        if (i6 == 0) {
            try {
                w.u.a.e(viewParent, view, view2, i5);
            } catch (java.lang.AbstractMethodError e5) {
                android.util.Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e5);
            }
        }
    }

    public static boolean f(android.view.ViewParent viewParent, android.view.View view, android.view.View view2, int i5, int i6) {
        if (viewParent instanceof w.k) {
            return ((w.k) viewParent).f(view, view2, i5, i6);
        }
        if (i6 != 0) {
            return false;
        }
        try {
            return w.u.a.f(viewParent, view, view2, i5);
        } catch (java.lang.AbstractMethodError e5) {
            android.util.Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e5);
            return false;
        }
    }

    public static void g(android.view.ViewParent viewParent, android.view.View view, int i5) {
        if (viewParent instanceof w.k) {
            ((w.k) viewParent).b(view, i5);
            return;
        }
        if (i5 == 0) {
            try {
                w.u.a.g(viewParent, view);
            } catch (java.lang.AbstractMethodError e5) {
                android.util.Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e5);
            }
        }
    }
}
