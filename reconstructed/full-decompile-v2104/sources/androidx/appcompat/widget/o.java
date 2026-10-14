package androidx.appcompat.widget;

/* JADX INFO: compiled from: DrawableUtils.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final android.graphics.Rect f1008a = new android.graphics.Rect();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static java.lang.Class<?> f1009b;

    static {
        try {
            f1009b = java.lang.Class.forName("android.graphics.Insets");
        } catch (java.lang.ClassNotFoundException unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(android.graphics.drawable.Drawable drawable) {
        if (!(drawable instanceof android.graphics.drawable.DrawableContainer)) {
            if (drawable instanceof p.b) {
                return a(((p.b) drawable).a());
            }
            if (drawable instanceof c.a) {
                return a(((c.a) drawable).a());
            }
            if (drawable instanceof android.graphics.drawable.ScaleDrawable) {
                return a(((android.graphics.drawable.ScaleDrawable) drawable).getDrawable());
            }
            return true;
        }
        android.graphics.drawable.Drawable.ConstantState constantState = drawable.getConstantState();
        if (!(constantState instanceof android.graphics.drawable.DrawableContainer.DrawableContainerState)) {
            return true;
        }
        for (android.graphics.drawable.Drawable drawable2 : ((android.graphics.drawable.DrawableContainer.DrawableContainerState) constantState).getChildren()) {
            if (!a(drawable2)) {
                return false;
            }
        }
        return true;
    }

    public static void b(android.graphics.drawable.Drawable drawable) {
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static android.graphics.Rect c(android.graphics.drawable.Drawable drawable) {
        if (f1009b != null) {
            try {
                android.graphics.drawable.Drawable drawableJ = p.a.j(drawable);
                java.lang.Object objInvoke = drawableJ.getClass().getMethod("getOpticalInsets", new java.lang.Class[0]).invoke(drawableJ, new java.lang.Object[0]);
                if (objInvoke != null) {
                    android.graphics.Rect rect = new android.graphics.Rect();
                    for (java.lang.reflect.Field field : f1009b.getFields()) {
                        java.lang.String name = field.getName();
                        byte b5 = -1;
                        switch (name.hashCode()) {
                            case -1383228885:
                                if (name.equals("bottom")) {
                                    b5 = 3;
                                }
                                break;
                            case 115029:
                                if (name.equals("top")) {
                                    b5 = 1;
                                }
                                break;
                            case 3317767:
                                if (name.equals("left")) {
                                    b5 = 0;
                                }
                                break;
                            case 108511772:
                                if (name.equals("right")) {
                                    b5 = 2;
                                }
                                break;
                        }
                        if (b5 == 0) {
                            rect.left = field.getInt(objInvoke);
                        } else if (b5 == 1) {
                            rect.top = field.getInt(objInvoke);
                        } else if (b5 == 2) {
                            rect.right = field.getInt(objInvoke);
                        } else if (b5 == 3) {
                            rect.bottom = field.getInt(objInvoke);
                        }
                    }
                    return rect;
                }
            } catch (java.lang.Exception unused) {
                android.util.Log.e("DrawableUtils", "Couldn't obtain the optical insets. Ignoring.");
            }
        }
        return f1008a;
    }

    public static android.graphics.PorterDuff.Mode d(int i5, android.graphics.PorterDuff.Mode mode) {
        if (i5 == 3) {
            return android.graphics.PorterDuff.Mode.SRC_OVER;
        }
        if (i5 == 5) {
            return android.graphics.PorterDuff.Mode.SRC_IN;
        }
        if (i5 == 9) {
            return android.graphics.PorterDuff.Mode.SRC_ATOP;
        }
        switch (i5) {
            case 14:
                return android.graphics.PorterDuff.Mode.MULTIPLY;
            case 15:
                return android.graphics.PorterDuff.Mode.SCREEN;
            case 16:
                return android.graphics.PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
