package w;

/* JADX INFO: compiled from: GravityCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d {

    /* JADX INFO: compiled from: GravityCompat.java */
    public static class a {
        public static void a(int i5, int i6, int i7, android.graphics.Rect rect, int i8, int i9, android.graphics.Rect rect2, int i10) {
            android.view.Gravity.apply(i5, i6, i7, rect, i8, i9, rect2, i10);
        }

        public static void b(int i5, int i6, int i7, android.graphics.Rect rect, android.graphics.Rect rect2, int i8) {
            android.view.Gravity.apply(i5, i6, i7, rect, rect2, i8);
        }

        public static void c(int i5, android.graphics.Rect rect, android.graphics.Rect rect2, int i6) {
            android.view.Gravity.applyDisplay(i5, rect, rect2, i6);
        }
    }

    public static void a(int i5, int i6, int i7, android.graphics.Rect rect, android.graphics.Rect rect2, int i8) {
        w.d.a.b(i5, i6, i7, rect, rect2, i8);
    }

    public static int b(int i5, int i6) {
        return android.view.Gravity.getAbsoluteGravity(i5, i6);
    }
}
