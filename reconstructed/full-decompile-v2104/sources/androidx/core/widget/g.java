package androidx.core.widget;

/* JADX INFO: compiled from: ImageViewCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g {

    /* JADX INFO: compiled from: ImageViewCompat.java */
    public static class a {
        public static android.content.res.ColorStateList a(android.widget.ImageView imageView) {
            return imageView.getImageTintList();
        }

        public static android.graphics.PorterDuff.Mode b(android.widget.ImageView imageView) {
            return imageView.getImageTintMode();
        }

        public static void c(android.widget.ImageView imageView, android.content.res.ColorStateList colorStateList) {
            imageView.setImageTintList(colorStateList);
        }

        public static void d(android.widget.ImageView imageView, android.graphics.PorterDuff.Mode mode) {
            imageView.setImageTintMode(mode);
        }
    }

    public static android.content.res.ColorStateList a(android.widget.ImageView imageView) {
        return androidx.core.widget.g.a.a(imageView);
    }

    public static android.graphics.PorterDuff.Mode b(android.widget.ImageView imageView) {
        return androidx.core.widget.g.a.b(imageView);
    }

    public static void c(android.widget.ImageView imageView, android.content.res.ColorStateList colorStateList) {
        androidx.core.widget.g.a.c(imageView, colorStateList);
    }

    public static void d(android.widget.ImageView imageView, android.graphics.PorterDuff.Mode mode) {
        androidx.core.widget.g.a.d(imageView, mode);
    }
}
