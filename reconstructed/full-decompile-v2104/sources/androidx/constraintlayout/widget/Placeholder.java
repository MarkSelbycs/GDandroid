package androidx.constraintlayout.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class Placeholder extends android.view.View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1177a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.view.View f1178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1179c;

    public Placeholder(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1177a = -1;
        this.f1178b = null;
        this.f1179c = 4;
        a(attributeSet);
    }

    public final void a(android.util.AttributeSet attributeSet) {
        super.setVisibility(this.f1179c);
        this.f1177a = -1;
        if (attributeSet != null) {
            android.content.res.TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, androidx.constraintlayout.widget.R.styleable.ConstraintLayout_placeholder);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i5 = 0; i5 < indexCount; i5++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i5);
                if (index == androidx.constraintlayout.widget.R.styleable.ConstraintLayout_placeholder_content) {
                    this.f1177a = typedArrayObtainStyledAttributes.getResourceId(index, this.f1177a);
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintLayout_placeholder_emptyVisibility) {
                    this.f1179c = typedArrayObtainStyledAttributes.getInt(index, this.f1179c);
                }
            }
        }
    }

    public void b(androidx.constraintlayout.widget.ConstraintLayout constraintLayout) {
        if (this.f1178b == null) {
            return;
        }
        androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams = (androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) getLayoutParams();
        androidx.constraintlayout.widget.ConstraintLayout.LayoutParams layoutParams2 = (androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) this.f1178b.getLayoutParams();
        layoutParams2.f1146l0.x0(0);
        layoutParams.f1146l0.y0(layoutParams2.f1146l0.D());
        layoutParams.f1146l0.b0(layoutParams2.f1146l0.r());
        layoutParams2.f1146l0.x0(8);
    }

    public void c(androidx.constraintlayout.widget.ConstraintLayout constraintLayout) {
        if (this.f1177a == -1 && !isInEditMode()) {
            setVisibility(this.f1179c);
        }
        android.view.View viewFindViewById = constraintLayout.findViewById(this.f1177a);
        this.f1178b = viewFindViewById;
        if (viewFindViewById != null) {
            ((androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) viewFindViewById.getLayoutParams()).f1124a0 = true;
            this.f1178b.setVisibility(0);
            setVisibility(0);
        }
    }

    public android.view.View getContent() {
        return this.f1178b;
    }

    public int getEmptyVisibility() {
        return this.f1179c;
    }

    @Override // android.view.View
    public void onDraw(android.graphics.Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            android.graphics.Paint paint = new android.graphics.Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(android.graphics.Paint.Align.CENTER);
            paint.setTypeface(android.graphics.Typeface.create(android.graphics.Typeface.DEFAULT, 0));
            android.graphics.Rect rect = new android.graphics.Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int iHeight = rect.height();
            int iWidth = rect.width();
            paint.setTextAlign(android.graphics.Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((iWidth / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((iHeight / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i5) {
        android.view.View viewFindViewById;
        if (this.f1177a == i5) {
            return;
        }
        android.view.View view = this.f1178b;
        if (view != null) {
            view.setVisibility(0);
            ((androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) this.f1178b.getLayoutParams()).f1124a0 = false;
            this.f1178b = null;
        }
        this.f1177a = i5;
        if (i5 == -1 || (viewFindViewById = ((android.view.View) getParent()).findViewById(i5)) == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i5) {
        this.f1179c = i5;
    }

    public Placeholder(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.f1177a = -1;
        this.f1178b = null;
        this.f1179c = 4;
        a(attributeSet);
    }
}
