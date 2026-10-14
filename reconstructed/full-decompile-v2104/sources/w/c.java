package w;

/* JADX INFO: compiled from: DisplayCutoutCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.view.DisplayCutout f6658a;

    /* JADX INFO: compiled from: DisplayCutoutCompat.java */
    public static class a {
        public static android.view.DisplayCutout a(android.graphics.Rect rect, java.util.List<android.graphics.Rect> list) {
            return new android.view.DisplayCutout(rect, list);
        }

        public static java.util.List<android.graphics.Rect> b(android.view.DisplayCutout displayCutout) {
            return displayCutout.getBoundingRects();
        }

        public static int c(android.view.DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetBottom();
        }

        public static int d(android.view.DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetLeft();
        }

        public static int e(android.view.DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetRight();
        }

        public static int f(android.view.DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetTop();
        }
    }

    public c(android.view.DisplayCutout displayCutout) {
        this.f6658a = displayCutout;
    }

    public static w.c e(android.view.DisplayCutout displayCutout) {
        if (displayCutout == null) {
            return null;
        }
        return new w.c(displayCutout);
    }

    public int a() {
        return w.c.a.c(this.f6658a);
    }

    public int b() {
        return w.c.a.d(this.f6658a);
    }

    public int c() {
        return w.c.a.e(this.f6658a);
    }

    public int d() {
        return w.c.a.f(this.f6658a);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || w.c.class != obj.getClass()) {
            return false;
        }
        return v.d.a(this.f6658a, ((w.c) obj).f6658a);
    }

    public int hashCode() {
        android.view.DisplayCutout displayCutout = this.f6658a;
        if (displayCutout == null) {
            return 0;
        }
        return displayCutout.hashCode();
    }

    public java.lang.String toString() {
        return "DisplayCutoutCompat{" + this.f6658a + "}";
    }
}
