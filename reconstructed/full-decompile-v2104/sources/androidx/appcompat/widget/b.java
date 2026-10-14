package androidx.appcompat.widget;

/* JADX INFO: compiled from: ActionBarBackgroundDrawable.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends android.graphics.drawable.Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.appcompat.widget.ActionBarContainer f909a;

    public b(androidx.appcompat.widget.ActionBarContainer actionBarContainer) {
        this.f909a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(android.graphics.Canvas canvas) {
        androidx.appcompat.widget.ActionBarContainer actionBarContainer = this.f909a;
        if (actionBarContainer.f579h) {
            android.graphics.drawable.Drawable drawable = actionBarContainer.f578g;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        android.graphics.drawable.Drawable drawable2 = actionBarContainer.f576e;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        androidx.appcompat.widget.ActionBarContainer actionBarContainer2 = this.f909a;
        android.graphics.drawable.Drawable drawable3 = actionBarContainer2.f577f;
        if (drawable3 == null || !actionBarContainer2.f580i) {
            return;
        }
        drawable3.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(android.graphics.Outline outline) {
        androidx.appcompat.widget.ActionBarContainer actionBarContainer = this.f909a;
        if (actionBarContainer.f579h) {
            android.graphics.drawable.Drawable drawable = actionBarContainer.f578g;
            if (drawable != null) {
                drawable.getOutline(outline);
                return;
            }
            return;
        }
        android.graphics.drawable.Drawable drawable2 = actionBarContainer.f576e;
        if (drawable2 != null) {
            drawable2.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i5) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(android.graphics.ColorFilter colorFilter) {
    }
}
