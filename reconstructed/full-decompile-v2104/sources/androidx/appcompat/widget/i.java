package androidx.appcompat.widget;

/* JADX INFO: compiled from: AppCompatProgressBarHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f974c = {android.R.attr.indeterminateDrawable, android.R.attr.progressDrawable};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.widget.ProgressBar f975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.graphics.Bitmap f976b;

    public i(android.widget.ProgressBar progressBar) {
        this.f975a = progressBar;
    }

    public final android.graphics.drawable.shapes.Shape a() {
        return new android.graphics.drawable.shapes.RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null);
    }

    public android.graphics.Bitmap b() {
        return this.f976b;
    }

    public void c(android.util.AttributeSet attributeSet, int i5) {
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(this.f975a.getContext(), attributeSet, f974c, i5, 0);
        android.graphics.drawable.Drawable drawableG = d0VarT.g(0);
        if (drawableG != null) {
            this.f975a.setIndeterminateDrawable(e(drawableG));
        }
        android.graphics.drawable.Drawable drawableG2 = d0VarT.g(1);
        if (drawableG2 != null) {
            this.f975a.setProgressDrawable(d(drawableG2, false));
        }
        d0VarT.u();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final android.graphics.drawable.Drawable d(android.graphics.drawable.Drawable drawable, boolean z4) {
        if (drawable instanceof p.b) {
            p.b bVar = (p.b) drawable;
            android.graphics.drawable.Drawable drawableA = bVar.a();
            if (drawableA != null) {
                bVar.b(d(drawableA, z4));
            }
        } else {
            if (drawable instanceof android.graphics.drawable.LayerDrawable) {
                android.graphics.drawable.LayerDrawable layerDrawable = (android.graphics.drawable.LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                android.graphics.drawable.Drawable[] drawableArr = new android.graphics.drawable.Drawable[numberOfLayers];
                for (int i5 = 0; i5 < numberOfLayers; i5++) {
                    int id = layerDrawable.getId(i5);
                    drawableArr[i5] = d(layerDrawable.getDrawable(i5), id == 16908301 || id == 16908303);
                }
                android.graphics.drawable.LayerDrawable layerDrawable2 = new android.graphics.drawable.LayerDrawable(drawableArr);
                for (int i6 = 0; i6 < numberOfLayers; i6++) {
                    layerDrawable2.setId(i6, layerDrawable.getId(i6));
                }
                return layerDrawable2;
            }
            if (drawable instanceof android.graphics.drawable.BitmapDrawable) {
                android.graphics.drawable.BitmapDrawable bitmapDrawable = (android.graphics.drawable.BitmapDrawable) drawable;
                android.graphics.Bitmap bitmap = bitmapDrawable.getBitmap();
                if (this.f976b == null) {
                    this.f976b = bitmap;
                }
                android.graphics.drawable.ShapeDrawable shapeDrawable = new android.graphics.drawable.ShapeDrawable(a());
                shapeDrawable.getPaint().setShader(new android.graphics.BitmapShader(bitmap, android.graphics.Shader.TileMode.REPEAT, android.graphics.Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z4 ? new android.graphics.drawable.ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }

    public final android.graphics.drawable.Drawable e(android.graphics.drawable.Drawable drawable) {
        if (!(drawable instanceof android.graphics.drawable.AnimationDrawable)) {
            return drawable;
        }
        android.graphics.drawable.AnimationDrawable animationDrawable = (android.graphics.drawable.AnimationDrawable) drawable;
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        android.graphics.drawable.AnimationDrawable animationDrawable2 = new android.graphics.drawable.AnimationDrawable();
        animationDrawable2.setOneShot(animationDrawable.isOneShot());
        for (int i5 = 0; i5 < numberOfFrames; i5++) {
            android.graphics.drawable.Drawable drawableD = d(animationDrawable.getFrame(i5), true);
            drawableD.setLevel(10000);
            animationDrawable2.addFrame(drawableD, animationDrawable.getDuration(i5));
        }
        animationDrawable2.setLevel(10000);
        return animationDrawable2;
    }
}
