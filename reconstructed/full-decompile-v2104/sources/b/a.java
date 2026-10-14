package b;

/* JADX INFO: compiled from: AppCompatResources.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.ThreadLocal<android.util.TypedValue> f2891a = new java.lang.ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.WeakHashMap<android.content.Context, android.util.SparseArray<java.lang.Object>> f2892b = new java.util.WeakHashMap<>(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.lang.Object f2893c = new java.lang.Object();

    public static android.content.res.ColorStateList a(android.content.Context context, int i5) {
        return context.getColorStateList(i5);
    }

    public static android.graphics.drawable.Drawable b(android.content.Context context, int i5) {
        return androidx.appcompat.widget.f.m().o(context, i5);
    }
}
