package androidx.appcompat.widget;

/* JADX INFO: compiled from: TintResources.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c0 extends androidx.appcompat.widget.u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.ref.WeakReference<android.content.Context> f914b;

    public c0(android.content.Context context, android.content.res.Resources resources) {
        super(resources);
        this.f914b = new java.lang.ref.WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.u, android.content.res.Resources
    public android.graphics.drawable.Drawable getDrawable(int i5) throws android.content.res.Resources.NotFoundException {
        android.graphics.drawable.Drawable drawable = super.getDrawable(i5);
        android.content.Context context = this.f914b.get();
        if (drawable != null && context != null) {
            androidx.appcompat.widget.f.m();
            androidx.appcompat.widget.f.C(context, i5, drawable);
        }
        return drawable;
    }
}
