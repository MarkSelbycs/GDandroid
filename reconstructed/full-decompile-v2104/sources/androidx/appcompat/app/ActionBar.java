package androidx.appcompat.app;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class ActionBar {

    public interface a {
        void a(boolean z4);
    }

    @java.lang.Deprecated
    public static abstract class b {
        public abstract java.lang.CharSequence a();

        public abstract android.view.View b();

        public abstract android.graphics.drawable.Drawable c();

        public abstract java.lang.CharSequence d();

        public abstract void e();
    }

    public boolean g() {
        return false;
    }

    public abstract boolean h();

    public abstract void i(boolean z4);

    public abstract int j();

    public abstract android.content.Context k();

    public abstract void l();

    public boolean m() {
        return false;
    }

    public void n(android.content.res.Configuration configuration) {
    }

    public void o() {
    }

    public abstract boolean p(int i5, android.view.KeyEvent keyEvent);

    public boolean q(android.view.KeyEvent keyEvent) {
        return false;
    }

    public boolean r() {
        return false;
    }

    public abstract void s(boolean z4);

    public abstract void t(boolean z4);

    public abstract void u(java.lang.CharSequence charSequence);

    public e.b v(e.b.a aVar) {
        return null;
    }

    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f178a;

        public LayoutParams(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f178a = 0;
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.ActionBarLayout);
            this.f178a = typedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.ActionBarLayout_android_layout_gravity, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams(int i5, int i6) {
            super(i5, i6);
            this.f178a = 8388627;
        }

        public LayoutParams(androidx.appcompat.app.ActionBar.LayoutParams layoutParams) {
            super((android.view.ViewGroup.MarginLayoutParams) layoutParams);
            this.f178a = 0;
            this.f178a = layoutParams.f178a;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f178a = 0;
        }
    }
}
