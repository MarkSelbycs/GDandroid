package androidx.core.widget;

/* JADX INFO: compiled from: EdgeEffectCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f {

    /* JADX INFO: compiled from: EdgeEffectCompat.java */
    public static class a {
        public static void a(android.widget.EdgeEffect edgeEffect, float f5, float f6) {
            edgeEffect.onPull(f5, f6);
        }
    }

    /* JADX INFO: compiled from: EdgeEffectCompat.java */
    public static class b {
        public static android.widget.EdgeEffect a(android.content.Context context, android.util.AttributeSet attributeSet) {
            try {
                return new android.widget.EdgeEffect(context, attributeSet);
            } catch (java.lang.Throwable unused) {
                return new android.widget.EdgeEffect(context);
            }
        }

        public static float b(android.widget.EdgeEffect edgeEffect) {
            try {
                return edgeEffect.getDistance();
            } catch (java.lang.Throwable unused) {
                return 0.0f;
            }
        }

        public static float c(android.widget.EdgeEffect edgeEffect, float f5, float f6) {
            try {
                return edgeEffect.onPullDistance(f5, f6);
            } catch (java.lang.Throwable unused) {
                edgeEffect.onPull(f5, f6);
                return 0.0f;
            }
        }
    }

    public static android.widget.EdgeEffect a(android.content.Context context, android.util.AttributeSet attributeSet) {
        return android.os.Build.VERSION.SDK_INT >= 31 ? androidx.core.widget.f.b.a(context, attributeSet) : new android.widget.EdgeEffect(context);
    }

    public static float b(android.widget.EdgeEffect edgeEffect) {
        if (android.os.Build.VERSION.SDK_INT >= 31) {
            return androidx.core.widget.f.b.b(edgeEffect);
        }
        return 0.0f;
    }

    public static void c(android.widget.EdgeEffect edgeEffect, float f5, float f6) {
        androidx.core.widget.f.a.a(edgeEffect, f5, f6);
    }

    public static float d(android.widget.EdgeEffect edgeEffect, float f5, float f6) {
        if (android.os.Build.VERSION.SDK_INT >= 31) {
            return androidx.core.widget.f.b.c(edgeEffect, f5, f6);
        }
        c(edgeEffect, f5, f6);
        return f5;
    }
}
