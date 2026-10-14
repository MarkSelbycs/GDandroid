package androidx.core.widget;

/* JADX INFO: compiled from: CompoundButtonCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c {

    /* JADX INFO: compiled from: CompoundButtonCompat.java */
    public static class a {
        public static android.content.res.ColorStateList a(android.widget.CompoundButton compoundButton) {
            return compoundButton.getButtonTintList();
        }

        public static android.graphics.PorterDuff.Mode b(android.widget.CompoundButton compoundButton) {
            return compoundButton.getButtonTintMode();
        }

        public static void c(android.widget.CompoundButton compoundButton, android.content.res.ColorStateList colorStateList) {
            compoundButton.setButtonTintList(colorStateList);
        }

        public static void d(android.widget.CompoundButton compoundButton, android.graphics.PorterDuff.Mode mode) {
            compoundButton.setButtonTintMode(mode);
        }
    }

    /* JADX INFO: compiled from: CompoundButtonCompat.java */
    public static class b {
        public static android.graphics.drawable.Drawable a(android.widget.CompoundButton compoundButton) {
            return compoundButton.getButtonDrawable();
        }
    }

    public static android.graphics.drawable.Drawable a(android.widget.CompoundButton compoundButton) {
        return androidx.core.widget.c.b.a(compoundButton);
    }

    public static void b(android.widget.CompoundButton compoundButton, android.content.res.ColorStateList colorStateList) {
        androidx.core.widget.c.a.c(compoundButton, colorStateList);
    }

    public static void c(android.widget.CompoundButton compoundButton, android.graphics.PorterDuff.Mode mode) {
        androidx.core.widget.c.a.d(compoundButton, mode);
    }
}
