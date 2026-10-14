package androidx.constraintlayout.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class Constraints extends android.view.ViewGroup {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.constraintlayout.widget.a f1163a;

    public Constraints(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        c(attributeSet);
        super.setVisibility(8);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public androidx.constraintlayout.widget.Constraints.LayoutParams generateDefaultLayoutParams() {
        return new androidx.constraintlayout.widget.Constraints.LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public androidx.constraintlayout.widget.Constraints.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new androidx.constraintlayout.widget.Constraints.LayoutParams(getContext(), attributeSet);
    }

    public final void c(android.util.AttributeSet attributeSet) {
        android.util.Log.v("Constraints", " ################# init");
    }

    public androidx.constraintlayout.widget.a getConstraintSet() {
        if (this.f1163a == null) {
            this.f1163a = new androidx.constraintlayout.widget.a();
        }
        this.f1163a.b(this);
        return this.f1163a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new androidx.constraintlayout.widget.ConstraintLayout.LayoutParams(layoutParams);
    }

    public Constraints(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        c(attributeSet);
        super.setVisibility(8);
    }

    public static class LayoutParams extends androidx.constraintlayout.widget.ConstraintLayout.LayoutParams {

        /* JADX INFO: renamed from: n0, reason: collision with root package name */
        public float f1164n0;

        /* JADX INFO: renamed from: o0, reason: collision with root package name */
        public boolean f1165o0;

        /* JADX INFO: renamed from: p0, reason: collision with root package name */
        public float f1166p0;

        /* JADX INFO: renamed from: q0, reason: collision with root package name */
        public float f1167q0;

        /* JADX INFO: renamed from: r0, reason: collision with root package name */
        public float f1168r0;

        /* JADX INFO: renamed from: s0, reason: collision with root package name */
        public float f1169s0;

        /* JADX INFO: renamed from: t0, reason: collision with root package name */
        public float f1170t0;

        /* JADX INFO: renamed from: u0, reason: collision with root package name */
        public float f1171u0;

        /* JADX INFO: renamed from: v0, reason: collision with root package name */
        public float f1172v0;

        /* JADX INFO: renamed from: w0, reason: collision with root package name */
        public float f1173w0;

        /* JADX INFO: renamed from: x0, reason: collision with root package name */
        public float f1174x0;

        /* JADX INFO: renamed from: y0, reason: collision with root package name */
        public float f1175y0;

        /* JADX INFO: renamed from: z0, reason: collision with root package name */
        public float f1176z0;

        public LayoutParams(int i5, int i6) {
            super(i5, i6);
            this.f1164n0 = 1.0f;
            this.f1165o0 = false;
            this.f1166p0 = 0.0f;
            this.f1167q0 = 0.0f;
            this.f1168r0 = 0.0f;
            this.f1169s0 = 0.0f;
            this.f1170t0 = 1.0f;
            this.f1171u0 = 1.0f;
            this.f1172v0 = 0.0f;
            this.f1173w0 = 0.0f;
            this.f1174x0 = 0.0f;
            this.f1175y0 = 0.0f;
            this.f1176z0 = 0.0f;
        }

        public LayoutParams(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1164n0 = 1.0f;
            this.f1165o0 = false;
            this.f1166p0 = 0.0f;
            this.f1167q0 = 0.0f;
            this.f1168r0 = 0.0f;
            this.f1169s0 = 0.0f;
            this.f1170t0 = 1.0f;
            this.f1171u0 = 1.0f;
            this.f1172v0 = 0.0f;
            this.f1173w0 = 0.0f;
            this.f1174x0 = 0.0f;
            this.f1175y0 = 0.0f;
            this.f1176z0 = 0.0f;
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.constraintlayout.widget.R.styleable.ConstraintSet);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i5 = 0; i5 < indexCount; i5++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i5);
                if (index == androidx.constraintlayout.widget.R.styleable.ConstraintSet_android_alpha) {
                    this.f1164n0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1164n0);
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintSet_android_elevation) {
                    this.f1166p0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1166p0);
                    this.f1165o0 = true;
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintSet_android_rotationX) {
                    this.f1168r0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1168r0);
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintSet_android_rotationY) {
                    this.f1169s0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1169s0);
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintSet_android_rotation) {
                    this.f1167q0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1167q0);
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintSet_android_scaleX) {
                    this.f1170t0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1170t0);
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintSet_android_scaleY) {
                    this.f1171u0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1171u0);
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintSet_android_transformPivotX) {
                    this.f1172v0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1172v0);
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintSet_android_transformPivotY) {
                    this.f1173w0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1173w0);
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintSet_android_translationX) {
                    this.f1174x0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1174x0);
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintSet_android_translationY) {
                    this.f1175y0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1175y0);
                } else if (index == androidx.constraintlayout.widget.R.styleable.ConstraintSet_android_translationZ) {
                    this.f1174x0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1176z0);
                }
            }
        }
    }
}
