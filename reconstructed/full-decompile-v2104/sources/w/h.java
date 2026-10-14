package w;

/* JADX INFO: compiled from: MenuItemCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class h {

    /* JADX INFO: compiled from: MenuItemCompat.java */
    public static class a {
        public static int a(android.view.MenuItem menuItem) {
            return menuItem.getAlphabeticModifiers();
        }

        public static java.lang.CharSequence b(android.view.MenuItem menuItem) {
            return menuItem.getContentDescription();
        }

        public static android.content.res.ColorStateList c(android.view.MenuItem menuItem) {
            return menuItem.getIconTintList();
        }

        public static android.graphics.PorterDuff.Mode d(android.view.MenuItem menuItem) {
            return menuItem.getIconTintMode();
        }

        public static int e(android.view.MenuItem menuItem) {
            return menuItem.getNumericModifiers();
        }

        public static java.lang.CharSequence f(android.view.MenuItem menuItem) {
            return menuItem.getTooltipText();
        }

        public static android.view.MenuItem g(android.view.MenuItem menuItem, char c5, int i5) {
            return menuItem.setAlphabeticShortcut(c5, i5);
        }

        public static android.view.MenuItem h(android.view.MenuItem menuItem, java.lang.CharSequence charSequence) {
            return menuItem.setContentDescription(charSequence);
        }

        public static android.view.MenuItem i(android.view.MenuItem menuItem, android.content.res.ColorStateList colorStateList) {
            return menuItem.setIconTintList(colorStateList);
        }

        public static android.view.MenuItem j(android.view.MenuItem menuItem, android.graphics.PorterDuff.Mode mode) {
            return menuItem.setIconTintMode(mode);
        }

        public static android.view.MenuItem k(android.view.MenuItem menuItem, char c5, int i5) {
            return menuItem.setNumericShortcut(c5, i5);
        }

        public static android.view.MenuItem l(android.view.MenuItem menuItem, char c5, char c6, int i5, int i6) {
            return menuItem.setShortcut(c5, c6, i5, i6);
        }

        public static android.view.MenuItem m(android.view.MenuItem menuItem, java.lang.CharSequence charSequence) {
            return menuItem.setTooltipText(charSequence);
        }
    }

    public static android.view.MenuItem a(android.view.MenuItem menuItem, w.b bVar) {
        if (menuItem instanceof q.b) {
            return ((q.b) menuItem).a(bVar);
        }
        android.util.Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    public static void b(android.view.MenuItem menuItem, char c5, int i5) {
        if (menuItem instanceof q.b) {
            ((q.b) menuItem).setAlphabeticShortcut(c5, i5);
        } else {
            w.h.a.g(menuItem, c5, i5);
        }
    }

    public static void c(android.view.MenuItem menuItem, java.lang.CharSequence charSequence) {
        if (menuItem instanceof q.b) {
            ((q.b) menuItem).setContentDescription(charSequence);
        } else {
            w.h.a.h(menuItem, charSequence);
        }
    }

    public static void d(android.view.MenuItem menuItem, android.content.res.ColorStateList colorStateList) {
        if (menuItem instanceof q.b) {
            ((q.b) menuItem).setIconTintList(colorStateList);
        } else {
            w.h.a.i(menuItem, colorStateList);
        }
    }

    public static void e(android.view.MenuItem menuItem, android.graphics.PorterDuff.Mode mode) {
        if (menuItem instanceof q.b) {
            ((q.b) menuItem).setIconTintMode(mode);
        } else {
            w.h.a.j(menuItem, mode);
        }
    }

    public static void f(android.view.MenuItem menuItem, char c5, int i5) {
        if (menuItem instanceof q.b) {
            ((q.b) menuItem).setNumericShortcut(c5, i5);
        } else {
            w.h.a.k(menuItem, c5, i5);
        }
    }

    public static void g(android.view.MenuItem menuItem, java.lang.CharSequence charSequence) {
        if (menuItem instanceof q.b) {
            ((q.b) menuItem).setTooltipText(charSequence);
        } else {
            w.h.a.m(menuItem, charSequence);
        }
    }
}
