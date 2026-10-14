package androidx.core.widget;

/* JADX INFO: compiled from: PopupWindowCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class j {

    /* JADX INFO: compiled from: PopupWindowCompat.java */
    public static class a {
        public static void a(android.widget.PopupWindow popupWindow, android.view.View view, int i5, int i6, int i7) {
            popupWindow.showAsDropDown(view, i5, i6, i7);
        }
    }

    /* JADX INFO: compiled from: PopupWindowCompat.java */
    public static class b {
        public static boolean a(android.widget.PopupWindow popupWindow) {
            return popupWindow.getOverlapAnchor();
        }

        public static int b(android.widget.PopupWindow popupWindow) {
            return popupWindow.getWindowLayoutType();
        }

        public static void c(android.widget.PopupWindow popupWindow, boolean z4) {
            popupWindow.setOverlapAnchor(z4);
        }

        public static void d(android.widget.PopupWindow popupWindow, int i5) {
            popupWindow.setWindowLayoutType(i5);
        }
    }

    public static void a(android.widget.PopupWindow popupWindow, boolean z4) {
        androidx.core.widget.j.b.c(popupWindow, z4);
    }

    public static void b(android.widget.PopupWindow popupWindow, int i5) {
        androidx.core.widget.j.b.d(popupWindow, i5);
    }

    public static void c(android.widget.PopupWindow popupWindow, android.view.View view, int i5, int i6, int i7) {
        androidx.core.widget.j.a.a(popupWindow, view, i5, i6, i7);
    }
}
