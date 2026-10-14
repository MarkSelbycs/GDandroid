package x;

/* JADX INFO: compiled from: AccessibilityEventCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b {

    /* JADX INFO: compiled from: AccessibilityEventCompat.java */
    public static class a {
        public static int a(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            return accessibilityEvent.getContentChangeTypes();
        }

        public static void b(android.view.accessibility.AccessibilityEvent accessibilityEvent, int i5) {
            accessibilityEvent.setContentChangeTypes(i5);
        }
    }

    public static int a(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        return x.b.a.a(accessibilityEvent);
    }

    public static void b(android.view.accessibility.AccessibilityEvent accessibilityEvent, int i5) {
        x.b.a.b(accessibilityEvent, i5);
    }
}
