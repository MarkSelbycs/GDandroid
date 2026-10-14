package p;

/* JADX INFO: compiled from: DrawableCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a {

    /* JADX INFO: renamed from: p.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DrawableCompat.java */
    public static class C0069a {
        public static int a(android.graphics.drawable.Drawable drawable) {
            return drawable.getAlpha();
        }

        public static android.graphics.drawable.Drawable b(android.graphics.drawable.DrawableContainer.DrawableContainerState drawableContainerState, int i5) {
            return drawableContainerState.getChild(i5);
        }

        public static android.graphics.drawable.Drawable c(android.graphics.drawable.InsetDrawable insetDrawable) {
            return insetDrawable.getDrawable();
        }

        public static boolean d(android.graphics.drawable.Drawable drawable) {
            return drawable.isAutoMirrored();
        }

        public static void e(android.graphics.drawable.Drawable drawable, boolean z4) {
            drawable.setAutoMirrored(z4);
        }
    }

    /* JADX INFO: compiled from: DrawableCompat.java */
    public static class b {
        public static void a(android.graphics.drawable.Drawable drawable, android.content.res.Resources.Theme theme) {
            drawable.applyTheme(theme);
        }

        public static boolean b(android.graphics.drawable.Drawable drawable) {
            return drawable.canApplyTheme();
        }

        public static android.graphics.ColorFilter c(android.graphics.drawable.Drawable drawable) {
            return drawable.getColorFilter();
        }

        public static void d(android.graphics.drawable.Drawable drawable, android.content.res.Resources resources, org.xmlpull.v1.XmlPullParser xmlPullParser, android.util.AttributeSet attributeSet, android.content.res.Resources.Theme theme) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        }

        public static void e(android.graphics.drawable.Drawable drawable, float f5, float f6) {
            drawable.setHotspot(f5, f6);
        }

        public static void f(android.graphics.drawable.Drawable drawable, int i5, int i6, int i7, int i8) {
            drawable.setHotspotBounds(i5, i6, i7, i8);
        }

        public static void g(android.graphics.drawable.Drawable drawable, int i5) {
            drawable.setTint(i5);
        }

        public static void h(android.graphics.drawable.Drawable drawable, android.content.res.ColorStateList colorStateList) {
            drawable.setTintList(colorStateList);
        }

        public static void i(android.graphics.drawable.Drawable drawable, android.graphics.PorterDuff.Mode mode) {
            drawable.setTintMode(mode);
        }
    }

    /* JADX INFO: compiled from: DrawableCompat.java */
    public static class c {
        public static int a(android.graphics.drawable.Drawable drawable) {
            return drawable.getLayoutDirection();
        }

        public static boolean b(android.graphics.drawable.Drawable drawable, int i5) {
            return drawable.setLayoutDirection(i5);
        }
    }

    public static boolean a(android.graphics.drawable.Drawable drawable) {
        return p.a.C0069a.d(drawable);
    }

    @java.lang.Deprecated
    public static void b(android.graphics.drawable.Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    public static void c(android.graphics.drawable.Drawable drawable, boolean z4) {
        p.a.C0069a.e(drawable, z4);
    }

    public static void d(android.graphics.drawable.Drawable drawable, float f5, float f6) {
        p.a.b.e(drawable, f5, f6);
    }

    public static void e(android.graphics.drawable.Drawable drawable, int i5, int i6, int i7, int i8) {
        p.a.b.f(drawable, i5, i6, i7, i8);
    }

    public static boolean f(android.graphics.drawable.Drawable drawable, int i5) {
        return p.a.c.b(drawable, i5);
    }

    public static void g(android.graphics.drawable.Drawable drawable, int i5) {
        p.a.b.g(drawable, i5);
    }

    public static void h(android.graphics.drawable.Drawable drawable, android.content.res.ColorStateList colorStateList) {
        p.a.b.h(drawable, colorStateList);
    }

    public static void i(android.graphics.drawable.Drawable drawable, android.graphics.PorterDuff.Mode mode) {
        p.a.b.i(drawable, mode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends android.graphics.drawable.Drawable> T j(android.graphics.drawable.Drawable drawable) {
        return drawable instanceof p.b ? (T) ((p.b) drawable).a() : drawable;
    }

    public static android.graphics.drawable.Drawable k(android.graphics.drawable.Drawable drawable) {
        return drawable;
    }
}
