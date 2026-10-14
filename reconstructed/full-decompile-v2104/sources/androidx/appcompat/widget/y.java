package androidx.appcompat.widget;

/* JADX INFO: compiled from: ThemeUtils.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.ThreadLocal<android.util.TypedValue> f1085a = new java.lang.ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f1086b = {-16842910};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f1087c = {android.R.attr.state_focused};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f1088d = {android.R.attr.state_activated};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f1089e = {android.R.attr.state_pressed};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f1090f = {android.R.attr.state_checked};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[] f1091g = {android.R.attr.state_selected};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int[] f1092h = {-16842919, -16842908};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f1093i = new int[0];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[] f1094j = new int[1];

    public static int a(android.content.Context context, int i5) {
        android.content.res.ColorStateList colorStateListD = d(context, i5);
        if (colorStateListD != null && colorStateListD.isStateful()) {
            return colorStateListD.getColorForState(f1086b, colorStateListD.getDefaultColor());
        }
        android.util.TypedValue typedValueE = e();
        context.getTheme().resolveAttribute(android.R.attr.disabledAlpha, typedValueE, true);
        return c(context, i5, typedValueE.getFloat());
    }

    public static int b(android.content.Context context, int i5) {
        int[] iArr = f1094j;
        iArr[0] = i5;
        androidx.appcompat.widget.d0 d0VarS = androidx.appcompat.widget.d0.s(context, null, iArr);
        try {
            return d0VarS.b(0, 0);
        } finally {
            d0VarS.u();
        }
    }

    public static int c(android.content.Context context, int i5, float f5) {
        int iB = b(context, i5);
        return o.a.d(iB, java.lang.Math.round(android.graphics.Color.alpha(iB) * f5));
    }

    public static android.content.res.ColorStateList d(android.content.Context context, int i5) {
        int[] iArr = f1094j;
        iArr[0] = i5;
        androidx.appcompat.widget.d0 d0VarS = androidx.appcompat.widget.d0.s(context, null, iArr);
        try {
            return d0VarS.c(0);
        } finally {
            d0VarS.u();
        }
    }

    public static android.util.TypedValue e() {
        java.lang.ThreadLocal<android.util.TypedValue> threadLocal = f1085a;
        android.util.TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        android.util.TypedValue typedValue2 = new android.util.TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }
}
