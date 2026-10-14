package m;

/* JADX INFO: compiled from: ViewGroupUtils.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.ThreadLocal<android.graphics.Matrix> f5156a = new java.lang.ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.lang.ThreadLocal<android.graphics.RectF> f5157b = new java.lang.ThreadLocal<>();

    public static void a(android.view.ViewGroup viewGroup, android.view.View view, android.graphics.Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        c(viewGroup, view, rect);
    }

    public static void b(android.view.ViewParent viewParent, android.view.View view, android.graphics.Matrix matrix) {
        java.lang.Object parent = view.getParent();
        if ((parent instanceof android.view.View) && parent != viewParent) {
            android.view.View view2 = (android.view.View) parent;
            b(viewParent, view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        if (view.getMatrix().isIdentity()) {
            return;
        }
        matrix.preConcat(view.getMatrix());
    }

    public static void c(android.view.ViewGroup viewGroup, android.view.View view, android.graphics.Rect rect) {
        java.lang.ThreadLocal<android.graphics.Matrix> threadLocal = f5156a;
        android.graphics.Matrix matrix = threadLocal.get();
        if (matrix == null) {
            matrix = new android.graphics.Matrix();
            threadLocal.set(matrix);
        } else {
            matrix.reset();
        }
        b(viewGroup, view, matrix);
        java.lang.ThreadLocal<android.graphics.RectF> threadLocal2 = f5157b;
        android.graphics.RectF rectF = threadLocal2.get();
        if (rectF == null) {
            rectF = new android.graphics.RectF();
            threadLocal2.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }
}
