package w;

/* JADX INFO: compiled from: ViewGroupCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class t {

    /* JADX INFO: compiled from: ViewGroupCompat.java */
    public static class a {
        public static int a(android.view.ViewGroup viewGroup) {
            return viewGroup.getNestedScrollAxes();
        }

        public static boolean b(android.view.ViewGroup viewGroup) {
            return viewGroup.isTransitionGroup();
        }

        public static void c(android.view.ViewGroup viewGroup, boolean z4) {
            viewGroup.setTransitionGroup(z4);
        }
    }

    public static boolean a(android.view.ViewGroup viewGroup) {
        return w.t.a.b(viewGroup);
    }
}
