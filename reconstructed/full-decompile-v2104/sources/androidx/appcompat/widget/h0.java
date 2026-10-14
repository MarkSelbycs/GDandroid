package androidx.appcompat.widget;

/* JADX INFO: compiled from: ViewUtils.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static java.lang.reflect.Method f973a;

    static {
        try {
            java.lang.reflect.Method declaredMethod = android.view.View.class.getDeclaredMethod("computeFitSystemWindows", android.graphics.Rect.class, android.graphics.Rect.class);
            f973a = declaredMethod;
            if (declaredMethod.isAccessible()) {
                return;
            }
            f973a.setAccessible(true);
        } catch (java.lang.NoSuchMethodException unused) {
            android.util.Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
        }
    }

    public static void a(android.view.View view, android.graphics.Rect rect, android.graphics.Rect rect2) {
        java.lang.reflect.Method method = f973a;
        if (method != null) {
            try {
                method.invoke(view, rect, rect2);
            } catch (java.lang.Exception e5) {
                android.util.Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e5);
            }
        }
    }

    public static boolean b(android.view.View view) {
        return w.q.p(view) == 1;
    }

    public static void c(android.view.View view) {
        try {
            java.lang.reflect.Method method = view.getClass().getMethod("makeOptionalFitsSystemWindows", new java.lang.Class[0]);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(view, new java.lang.Object[0]);
        } catch (java.lang.IllegalAccessException e5) {
            android.util.Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e5);
        } catch (java.lang.NoSuchMethodException unused) {
            android.util.Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
        } catch (java.lang.reflect.InvocationTargetException e6) {
            android.util.Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e6);
        }
    }
}
