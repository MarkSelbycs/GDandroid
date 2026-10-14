package c;

/* JADX INFO: compiled from: DrawableWrapper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends android.graphics.drawable.Drawable implements android.graphics.drawable.Drawable.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.graphics.drawable.Drawable f2975a;

    public a(android.graphics.drawable.Drawable drawable) {
        b(drawable);
    }

    public android.graphics.drawable.Drawable a() {
        return this.f2975a;
    }

    public void b(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable drawable2 = this.f2975a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f2975a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(android.graphics.Canvas canvas) {
        this.f2975a.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f2975a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.drawable.Drawable getCurrent() {
        return this.f2975a.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f2975a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f2975a.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f2975a.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f2975a.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f2975a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(android.graphics.Rect rect) {
        return this.f2975a.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f2975a.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.Region getTransparentRegion() {
        return this.f2975a.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(android.graphics.drawable.Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return p.a.a(this.f2975a);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f2975a.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        p.a.b(this.f2975a);
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(android.graphics.Rect rect) {
        this.f2975a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i5) {
        return this.f2975a.setLevel(i5);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(android.graphics.drawable.Drawable drawable, java.lang.Runnable runnable, long j5) {
        scheduleSelf(runnable, j5);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i5) {
        this.f2975a.setAlpha(i5);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z4) {
        p.a.c(this.f2975a, z4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i5) {
        this.f2975a.setChangingConfigurations(i5);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(android.graphics.ColorFilter colorFilter) {
        this.f2975a.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z4) {
        this.f2975a.setDither(z4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z4) {
        this.f2975a.setFilterBitmap(z4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f5, float f6) {
        p.a.d(this.f2975a, f5, f6);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i5, int i6, int i7, int i8) {
        p.a.e(this.f2975a, i5, i6, i7, i8);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return this.f2975a.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i5) {
        p.a.g(this.f2975a, i5);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(android.content.res.ColorStateList colorStateList) {
        p.a.h(this.f2975a, colorStateList);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(android.graphics.PorterDuff.Mode mode) {
        p.a.i(this.f2975a, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z4, boolean z5) {
        return super.setVisible(z4, z5) || this.f2975a.setVisible(z4, z5);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(android.graphics.drawable.Drawable drawable, java.lang.Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
