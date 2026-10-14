package x;

/* JADX INFO: compiled from: AccessibilityRecordCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e {

    /* JADX INFO: compiled from: AccessibilityRecordCompat.java */
    public static class a {
        public static int a(android.view.accessibility.AccessibilityRecord accessibilityRecord) {
            return accessibilityRecord.getMaxScrollX();
        }

        public static int b(android.view.accessibility.AccessibilityRecord accessibilityRecord) {
            return accessibilityRecord.getMaxScrollY();
        }

        public static void c(android.view.accessibility.AccessibilityRecord accessibilityRecord, int i5) {
            accessibilityRecord.setMaxScrollX(i5);
        }

        public static void d(android.view.accessibility.AccessibilityRecord accessibilityRecord, int i5) {
            accessibilityRecord.setMaxScrollY(i5);
        }
    }

    public static void a(android.view.accessibility.AccessibilityRecord accessibilityRecord, int i5) {
        x.e.a.c(accessibilityRecord, i5);
    }

    public static void b(android.view.accessibility.AccessibilityRecord accessibilityRecord, int i5) {
        x.e.a.d(accessibilityRecord, i5);
    }
}
