package w;

/* JADX INFO: compiled from: ViewConfigurationCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class s {

    /* JADX INFO: compiled from: ViewConfigurationCompat.java */
    public static class a {
        public static float a(android.view.ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledHorizontalScrollFactor();
        }

        public static float b(android.view.ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledVerticalScrollFactor();
        }
    }

    /* JADX INFO: compiled from: ViewConfigurationCompat.java */
    public static class b {
        public static int a(android.view.ViewConfiguration viewConfiguration) {
            return viewConfiguration.getScaledHoverSlop();
        }

        public static boolean b(android.view.ViewConfiguration viewConfiguration) {
            return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
        }
    }

    public static float a(android.view.ViewConfiguration viewConfiguration, android.content.Context context) {
        return w.s.a.a(viewConfiguration);
    }

    public static float b(android.view.ViewConfiguration viewConfiguration, android.content.Context context) {
        return w.s.a.b(viewConfiguration);
    }

    public static boolean c(android.view.ViewConfiguration viewConfiguration, android.content.Context context) {
        return w.s.b.b(viewConfiguration);
    }
}
