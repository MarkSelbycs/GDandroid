package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AppCompatImageView extends android.widget.ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.appcompat.widget.d f695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.appcompat.widget.h f696b;

    public AppCompatImageView(android.content.Context context) {
        this(context, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.d dVar = this.f695a;
        if (dVar != null) {
            dVar.b();
        }
        androidx.appcompat.widget.h hVar = this.f696b;
        if (hVar != null) {
            hVar.b();
        }
    }

    public android.content.res.ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.d dVar = this.f695a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    public android.graphics.PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.d dVar = this.f695a;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    public android.content.res.ColorStateList getSupportImageTintList() {
        androidx.appcompat.widget.h hVar = this.f696b;
        if (hVar != null) {
            return hVar.c();
        }
        return null;
    }

    public android.graphics.PorterDuff.Mode getSupportImageTintMode() {
        androidx.appcompat.widget.h hVar = this.f696b;
        if (hVar != null) {
            return hVar.d();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f696b.e() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(android.graphics.drawable.Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.d dVar = this.f695a;
        if (dVar != null) {
            dVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i5) {
        super.setBackgroundResource(i5);
        androidx.appcompat.widget.d dVar = this.f695a;
        if (dVar != null) {
            dVar.g(i5);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(android.graphics.Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        androidx.appcompat.widget.h hVar = this.f696b;
        if (hVar != null) {
            hVar.b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(android.graphics.drawable.Drawable drawable) {
        super.setImageDrawable(drawable);
        androidx.appcompat.widget.h hVar = this.f696b;
        if (hVar != null) {
            hVar.b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i5) {
        androidx.appcompat.widget.h hVar = this.f696b;
        if (hVar != null) {
            hVar.g(i5);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(android.net.Uri uri) {
        super.setImageURI(uri);
        androidx.appcompat.widget.h hVar = this.f696b;
        if (hVar != null) {
            hVar.b();
        }
    }

    public void setSupportBackgroundTintList(android.content.res.ColorStateList colorStateList) {
        androidx.appcompat.widget.d dVar = this.f695a;
        if (dVar != null) {
            dVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(android.graphics.PorterDuff.Mode mode) {
        androidx.appcompat.widget.d dVar = this.f695a;
        if (dVar != null) {
            dVar.j(mode);
        }
    }

    public void setSupportImageTintList(android.content.res.ColorStateList colorStateList) {
        androidx.appcompat.widget.h hVar = this.f696b;
        if (hVar != null) {
            hVar.h(colorStateList);
        }
    }

    public void setSupportImageTintMode(android.graphics.PorterDuff.Mode mode) {
        androidx.appcompat.widget.h hVar = this.f696b;
        if (hVar != null) {
            hVar.i(mode);
        }
    }

    public AppCompatImageView(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppCompatImageView(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(androidx.appcompat.widget.a0.b(context), attributeSet, i5);
        androidx.appcompat.widget.d dVar = new androidx.appcompat.widget.d(this);
        this.f695a = dVar;
        dVar.e(attributeSet, i5);
        androidx.appcompat.widget.h hVar = new androidx.appcompat.widget.h(this);
        this.f696b = hVar;
        hVar.f(attributeSet, i5);
    }
}
