package androidx.constraintlayout.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class ConstraintHelper extends android.view.View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f1098a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.content.Context f1100c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public l.j f1101d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1102e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.lang.String f1103f;

    public ConstraintHelper(android.content.Context context) {
        super(context);
        this.f1098a = new int[32];
        this.f1102e = false;
        this.f1100c = context;
        b(null);
    }

    private void setIds(java.lang.String str) {
        if (str == null) {
            return;
        }
        int i5 = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i5);
            if (iIndexOf == -1) {
                a(str.substring(i5));
                return;
            } else {
                a(str.substring(i5, iIndexOf));
                i5 = iIndexOf + 1;
            }
        }
    }

    public final void a(java.lang.String str) {
        int iIntValue;
        java.lang.Object objC;
        if (str == null || this.f1100c == null) {
            return;
        }
        java.lang.String strTrim = str.trim();
        try {
            iIntValue = androidx.constraintlayout.widget.R.id.class.getField(strTrim).getInt(null);
        } catch (java.lang.Exception unused) {
            iIntValue = 0;
        }
        if (iIntValue == 0) {
            iIntValue = this.f1100c.getResources().getIdentifier(strTrim, "id", this.f1100c.getPackageName());
        }
        if (iIntValue == 0 && isInEditMode() && (getParent() instanceof androidx.constraintlayout.widget.ConstraintLayout) && (objC = ((androidx.constraintlayout.widget.ConstraintLayout) getParent()).c(0, strTrim)) != null && (objC instanceof java.lang.Integer)) {
            iIntValue = ((java.lang.Integer) objC).intValue();
        }
        if (iIntValue != 0) {
            setTag(iIntValue, null);
            return;
        }
        android.util.Log.w("ConstraintHelper", "Could not find id of \"" + strTrim + "\"");
    }

    public void b(android.util.AttributeSet attributeSet) {
        if (attributeSet != null) {
            android.content.res.TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i5 = 0; i5 < indexCount; i5++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i5);
                if (index == androidx.constraintlayout.widget.R.styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    java.lang.String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f1103f = string;
                    setIds(string);
                }
            }
        }
    }

    public void c(androidx.constraintlayout.widget.ConstraintLayout constraintLayout) {
    }

    public void d(androidx.constraintlayout.widget.ConstraintLayout constraintLayout) {
    }

    public void e(androidx.constraintlayout.widget.ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            setIds(this.f1103f);
        }
        l.j jVar = this.f1101d;
        if (jVar == null) {
            return;
        }
        jVar.J0();
        for (int i5 = 0; i5 < this.f1099b; i5++) {
            android.view.View viewE = constraintLayout.e(this.f1098a[i5]);
            if (viewE != null) {
                this.f1101d.I0(constraintLayout.f(viewE));
            }
        }
    }

    public void f() {
        if (this.f1101d == null) {
            return;
        }
        android.view.ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) {
            ((androidx.constraintlayout.widget.ConstraintLayout.LayoutParams) layoutParams).f1146l0 = this.f1101d;
        }
    }

    public int[] getReferencedIds() {
        return java.util.Arrays.copyOf(this.f1098a, this.f1099b);
    }

    @Override // android.view.View
    public void onDraw(android.graphics.Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i5, int i6) {
        if (this.f1102e) {
            super.onMeasure(i5, i6);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f1099b = 0;
        for (int i5 : iArr) {
            setTag(i5, null);
        }
    }

    @Override // android.view.View
    public void setTag(int i5, java.lang.Object obj) {
        int i6 = this.f1099b + 1;
        int[] iArr = this.f1098a;
        if (i6 > iArr.length) {
            this.f1098a = java.util.Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f1098a;
        int i7 = this.f1099b;
        iArr2[i7] = i5;
        this.f1099b = i7 + 1;
    }

    public ConstraintHelper(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1098a = new int[32];
        this.f1102e = false;
        this.f1100c = context;
        b(attributeSet);
    }

    public ConstraintHelper(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.f1098a = new int[32];
        this.f1102e = false;
        this.f1100c = context;
        b(attributeSet);
    }
}
