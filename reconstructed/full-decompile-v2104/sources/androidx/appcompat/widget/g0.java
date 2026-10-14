package androidx.appcompat.widget;

/* JADX INFO: compiled from: VectorEnabledTintResources.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g0 extends android.content.res.Resources {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f967b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.ref.WeakReference<android.content.Context> f968a;

    public g0(android.content.Context context, android.content.res.Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f968a = new java.lang.ref.WeakReference<>(context);
    }

    public static boolean a() {
        return f967b;
    }

    public static boolean b() {
        a();
        return false;
    }

    public final android.graphics.drawable.Drawable c(int i5) {
        return super.getDrawable(i5);
    }

    @Override // android.content.res.Resources
    public android.graphics.drawable.Drawable getDrawable(int i5) throws android.content.res.Resources.NotFoundException {
        android.content.Context context = this.f968a.get();
        return context != null ? androidx.appcompat.widget.f.m().y(context, this, i5) : super.getDrawable(i5);
    }
}
