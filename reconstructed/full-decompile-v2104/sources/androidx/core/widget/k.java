package androidx.core.widget;

/* JADX INFO: compiled from: TextViewCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class k {

    /* JADX INFO: compiled from: TextViewCompat.java */
    public static class a {
        public static boolean a(android.widget.TextView textView) {
            return textView.getIncludeFontPadding();
        }

        public static int b(android.widget.TextView textView) {
            return textView.getMaxLines();
        }

        public static int c(android.widget.TextView textView) {
            return textView.getMinLines();
        }
    }

    /* JADX INFO: compiled from: TextViewCompat.java */
    public static class b {
        public static android.graphics.drawable.Drawable[] a(android.widget.TextView textView) {
            return textView.getCompoundDrawablesRelative();
        }

        public static int b(android.view.View view) {
            return view.getLayoutDirection();
        }

        public static int c(android.view.View view) {
            return view.getTextDirection();
        }

        public static java.util.Locale d(android.widget.TextView textView) {
            return textView.getTextLocale();
        }

        public static void e(android.widget.TextView textView, android.graphics.drawable.Drawable drawable, android.graphics.drawable.Drawable drawable2, android.graphics.drawable.Drawable drawable3, android.graphics.drawable.Drawable drawable4) {
            textView.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        }

        public static void f(android.widget.TextView textView, int i5, int i6, int i7, int i8) {
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(i5, i6, i7, i8);
        }

        public static void g(android.widget.TextView textView, android.graphics.drawable.Drawable drawable, android.graphics.drawable.Drawable drawable2, android.graphics.drawable.Drawable drawable3, android.graphics.drawable.Drawable drawable4) {
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        }

        public static void h(android.view.View view, int i5) {
            view.setTextDirection(i5);
        }
    }

    /* JADX INFO: compiled from: TextViewCompat.java */
    public static class c {
        public static int a(android.widget.TextView textView) {
            return textView.getBreakStrategy();
        }

        public static android.content.res.ColorStateList b(android.widget.TextView textView) {
            return textView.getCompoundDrawableTintList();
        }

        public static android.graphics.PorterDuff.Mode c(android.widget.TextView textView) {
            return textView.getCompoundDrawableTintMode();
        }

        public static int d(android.widget.TextView textView) {
            return textView.getHyphenationFrequency();
        }

        public static void e(android.widget.TextView textView, int i5) {
            textView.setBreakStrategy(i5);
        }

        public static void f(android.widget.TextView textView, android.content.res.ColorStateList colorStateList) {
            textView.setCompoundDrawableTintList(colorStateList);
        }

        public static void g(android.widget.TextView textView, android.graphics.PorterDuff.Mode mode) {
            textView.setCompoundDrawableTintMode(mode);
        }

        public static void h(android.widget.TextView textView, int i5) {
            textView.setHyphenationFrequency(i5);
        }
    }

    /* JADX INFO: compiled from: TextViewCompat.java */
    public static class d {
        public static java.lang.String[] a(android.icu.text.DecimalFormatSymbols decimalFormatSymbols) {
            return decimalFormatSymbols.getDigitStrings();
        }

        public static android.text.PrecomputedText.Params b(android.widget.TextView textView) {
            return textView.getTextMetricsParams();
        }

        public static void c(android.widget.TextView textView, int i5) {
            textView.setFirstBaselineToTopHeight(i5);
        }
    }

    public static int a(android.widget.TextView textView) {
        return textView.getPaddingTop() - textView.getPaint().getFontMetricsInt().top;
    }

    public static int b(android.widget.TextView textView) {
        return textView.getPaddingBottom() + textView.getPaint().getFontMetricsInt().bottom;
    }

    public static int c(android.text.TextDirectionHeuristic textDirectionHeuristic) {
        if (textDirectionHeuristic == android.text.TextDirectionHeuristics.FIRSTSTRONG_RTL || textDirectionHeuristic == android.text.TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 1;
        }
        if (textDirectionHeuristic == android.text.TextDirectionHeuristics.ANYRTL_LTR) {
            return 2;
        }
        if (textDirectionHeuristic == android.text.TextDirectionHeuristics.LTR) {
            return 3;
        }
        if (textDirectionHeuristic == android.text.TextDirectionHeuristics.RTL) {
            return 4;
        }
        if (textDirectionHeuristic == android.text.TextDirectionHeuristics.LOCALE) {
            return 5;
        }
        if (textDirectionHeuristic == android.text.TextDirectionHeuristics.FIRSTSTRONG_LTR) {
            return 6;
        }
        return textDirectionHeuristic == android.text.TextDirectionHeuristics.FIRSTSTRONG_RTL ? 7 : 1;
    }

    public static u.a.C0084a d(android.widget.TextView textView) {
        return new u.a.C0084a(androidx.core.widget.k.d.b(textView));
    }

    public static void e(android.widget.TextView textView, int i5) {
        v.h.a(i5);
        androidx.core.widget.k.d.c(textView, i5);
    }

    public static void f(android.widget.TextView textView, int i5) {
        v.h.a(i5);
        android.graphics.Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
        int i6 = androidx.core.widget.k.a.a(textView) ? fontMetricsInt.bottom : fontMetricsInt.descent;
        if (i5 > java.lang.Math.abs(i6)) {
            textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i5 - i6);
        }
    }

    public static void g(android.widget.TextView textView, int i5) {
        v.h.a(i5);
        int fontMetricsInt = textView.getPaint().getFontMetricsInt(null);
        if (i5 != fontMetricsInt) {
            textView.setLineSpacing(i5 - fontMetricsInt, 1.0f);
        }
    }

    public static void h(android.widget.TextView textView, u.a aVar) {
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            textView.setText(aVar.b());
        } else {
            if (!d(textView).a(aVar.a())) {
                throw new java.lang.IllegalArgumentException("Given text can not be applied to TextView.");
            }
            textView.setText(aVar);
        }
    }

    public static void i(android.widget.TextView textView, int i5) {
        textView.setTextAppearance(i5);
    }

    public static void j(android.widget.TextView textView, u.a.C0084a c0084a) {
        androidx.core.widget.k.b.h(textView, c(c0084a.d()));
        textView.getPaint().set(c0084a.e());
        androidx.core.widget.k.c.e(textView, c0084a.b());
        androidx.core.widget.k.c.h(textView, c0084a.c());
    }

    public static android.view.ActionMode.Callback k(android.widget.TextView textView, android.view.ActionMode.Callback callback) {
        return callback;
    }
}
