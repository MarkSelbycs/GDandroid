package w;

/* JADX INFO: compiled from: MarginLayoutParamsCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class g {

    /* JADX INFO: compiled from: MarginLayoutParamsCompat.java */
    public static class a {
        public static int a(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.getLayoutDirection();
        }

        public static int b(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.getMarginEnd();
        }

        public static int c(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.getMarginStart();
        }

        public static boolean d(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.isMarginRelative();
        }

        public static void e(android.view.ViewGroup.MarginLayoutParams marginLayoutParams, int i5) {
            marginLayoutParams.resolveLayoutDirection(i5);
        }

        public static void f(android.view.ViewGroup.MarginLayoutParams marginLayoutParams, int i5) {
            marginLayoutParams.setLayoutDirection(i5);
        }

        public static void g(android.view.ViewGroup.MarginLayoutParams marginLayoutParams, int i5) {
            marginLayoutParams.setMarginEnd(i5);
        }

        public static void h(android.view.ViewGroup.MarginLayoutParams marginLayoutParams, int i5) {
            marginLayoutParams.setMarginStart(i5);
        }
    }

    public static int a(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
        return w.g.a.b(marginLayoutParams);
    }

    public static int b(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
        return w.g.a.c(marginLayoutParams);
    }
}
