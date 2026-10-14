package j0;

/* JADX INFO: compiled from: CircleImageView.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends android.widget.ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.view.animation.Animation.AnimationListener f4746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4747b;

    /* JADX INFO: renamed from: j0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CircleImageView.java */
    public class C0064a extends android.graphics.drawable.shapes.OvalShape {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public android.graphics.RadialGradient f4748a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public android.graphics.Paint f4749b = new android.graphics.Paint();

        public C0064a(int i5) {
            j0.a.this.f4747b = i5;
            a((int) rect().width());
        }

        public final void a(int i5) {
            float f5 = i5 / 2;
            android.graphics.RadialGradient radialGradient = new android.graphics.RadialGradient(f5, f5, j0.a.this.f4747b, new int[]{1023410176, 0}, (float[]) null, android.graphics.Shader.TileMode.CLAMP);
            this.f4748a = radialGradient;
            this.f4749b.setShader(radialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(android.graphics.Canvas canvas, android.graphics.Paint paint) {
            int width = j0.a.this.getWidth() / 2;
            float f5 = width;
            float height = j0.a.this.getHeight() / 2;
            canvas.drawCircle(f5, height, f5, this.f4749b);
            canvas.drawCircle(f5, height, width - j0.a.this.f4747b, paint);
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void onResize(float f5, float f6) {
            super.onResize(f5, f6);
            a((int) f5);
        }
    }

    public a(android.content.Context context, int i5) {
        android.graphics.drawable.ShapeDrawable shapeDrawable;
        super(context);
        float f5 = getContext().getResources().getDisplayMetrics().density;
        int i6 = (int) (1.75f * f5);
        int i7 = (int) (0.0f * f5);
        this.f4747b = (int) (3.5f * f5);
        if (a()) {
            shapeDrawable = new android.graphics.drawable.ShapeDrawable(new android.graphics.drawable.shapes.OvalShape());
            w.q.U(this, f5 * 4.0f);
        } else {
            android.graphics.drawable.ShapeDrawable shapeDrawable2 = new android.graphics.drawable.ShapeDrawable(new j0.a.C0064a(this.f4747b));
            setLayerType(1, shapeDrawable2.getPaint());
            shapeDrawable2.getPaint().setShadowLayer(this.f4747b, i7, i6, 503316480);
            int i8 = this.f4747b;
            setPadding(i8, i8, i8, i8);
            shapeDrawable = shapeDrawable2;
        }
        shapeDrawable.getPaint().setColor(i5);
        w.q.R(this, shapeDrawable);
    }

    public final boolean a() {
        return true;
    }

    public void b(android.view.animation.Animation.AnimationListener animationListener) {
        this.f4746a = animationListener;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        android.view.animation.Animation.AnimationListener animationListener = this.f4746a;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        android.view.animation.Animation.AnimationListener animationListener = this.f4746a;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i5, int i6) {
        super.onMeasure(i5, i6);
        if (a()) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth() + (this.f4747b * 2), getMeasuredHeight() + (this.f4747b * 2));
    }

    @Override // android.view.View
    public void setBackgroundColor(int i5) {
        if (getBackground() instanceof android.graphics.drawable.ShapeDrawable) {
            ((android.graphics.drawable.ShapeDrawable) getBackground()).getPaint().setColor(i5);
        }
    }
}
