package androidx.appcompat.widget;

/* JADX INFO: compiled from: AppCompatTextViewAutoSizeHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final android.graphics.RectF f996k = new android.graphics.RectF();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.reflect.Method> f997l = new java.util.concurrent.ConcurrentHashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f998a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f999b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f1000c = -1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f1001d = -1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f1002e = -1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f1003f = new int[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1004g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public android.text.TextPaint f1005h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final android.widget.TextView f1006i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final android.content.Context f1007j;

    public l(android.widget.TextView textView) {
        this.f1006i = textView;
        this.f1007j = textView.getContext();
    }

    public void a() {
        if (m()) {
            if (this.f999b) {
                if (this.f1006i.getMeasuredHeight() <= 0 || this.f1006i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = ((java.lang.Boolean) l(this.f1006i, "getHorizontallyScrolling", java.lang.Boolean.FALSE)).booleanValue() ? 1048576 : (this.f1006i.getMeasuredWidth() - this.f1006i.getTotalPaddingLeft()) - this.f1006i.getTotalPaddingRight();
                int height = (this.f1006i.getHeight() - this.f1006i.getCompoundPaddingBottom()) - this.f1006i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                android.graphics.RectF rectF = f996k;
                synchronized (rectF) {
                    rectF.setEmpty();
                    rectF.right = measuredWidth;
                    rectF.bottom = height;
                    float fE = e(rectF);
                    if (fE != this.f1006i.getTextSize()) {
                        s(0, fE);
                    }
                }
            }
            this.f999b = true;
        }
    }

    public final int[] b(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        java.util.Arrays.sort(iArr);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (int i5 : iArr) {
            if (i5 > 0 && java.util.Collections.binarySearch(arrayList, java.lang.Integer.valueOf(i5)) < 0) {
                arrayList.add(java.lang.Integer.valueOf(i5));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i6 = 0; i6 < size; i6++) {
            iArr2[i6] = ((java.lang.Integer) arrayList.get(i6)).intValue();
        }
        return iArr2;
    }

    public final void c() {
        this.f998a = 0;
        this.f1001d = -1.0f;
        this.f1002e = -1.0f;
        this.f1000c = -1.0f;
        this.f1003f = new int[0];
        this.f999b = false;
    }

    public final android.text.StaticLayout d(java.lang.CharSequence charSequence, android.text.Layout.Alignment alignment, int i5, int i6) {
        android.text.TextDirectionHeuristic textDirectionHeuristic = (android.text.TextDirectionHeuristic) l(this.f1006i, "getTextDirectionHeuristic", android.text.TextDirectionHeuristics.FIRSTSTRONG_LTR);
        android.text.StaticLayout.Builder hyphenationFrequency = android.text.StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f1005h, i5).setAlignment(alignment).setLineSpacing(this.f1006i.getLineSpacingExtra(), this.f1006i.getLineSpacingMultiplier()).setIncludePad(this.f1006i.getIncludeFontPadding()).setBreakStrategy(this.f1006i.getBreakStrategy()).setHyphenationFrequency(this.f1006i.getHyphenationFrequency());
        if (i6 == -1) {
            i6 = Integer.MAX_VALUE;
        }
        return hyphenationFrequency.setMaxLines(i6).setTextDirection(textDirectionHeuristic).build();
    }

    public final int e(android.graphics.RectF rectF) {
        int length = this.f1003f.length;
        if (length == 0) {
            throw new java.lang.IllegalStateException("No available text sizes to choose from.");
        }
        int i5 = 0;
        int i6 = 1;
        int i7 = length - 1;
        while (true) {
            int i8 = i6;
            int i9 = i5;
            i5 = i8;
            while (i5 <= i7) {
                int i10 = (i5 + i7) / 2;
                if (w(this.f1003f[i10], rectF)) {
                    i6 = i10 + 1;
                } else {
                    i9 = i10 - 1;
                    i7 = i9;
                }
            }
            return this.f1003f[i9];
        }
    }

    public int f() {
        return java.lang.Math.round(this.f1002e);
    }

    public int g() {
        return java.lang.Math.round(this.f1001d);
    }

    public int h() {
        return java.lang.Math.round(this.f1000c);
    }

    public int[] i() {
        return this.f1003f;
    }

    public int j() {
        return this.f998a;
    }

    public final java.lang.reflect.Method k(java.lang.String str) {
        try {
            java.lang.reflect.Method declaredMethod = f997l.get(str);
            if (declaredMethod == null && (declaredMethod = android.widget.TextView.class.getDeclaredMethod(str, new java.lang.Class[0])) != null) {
                declaredMethod.setAccessible(true);
                f997l.put(str, declaredMethod);
            }
            return declaredMethod;
        } catch (java.lang.Exception e5) {
            android.util.Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e5);
            return null;
        }
    }

    public final <T> T l(java.lang.Object obj, java.lang.String str, T t5) {
        try {
            return (T) k(str).invoke(obj, new java.lang.Object[0]);
        } catch (java.lang.Exception e5) {
            android.util.Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e5);
            return t5;
        }
    }

    public boolean m() {
        return x() && this.f998a != 0;
    }

    public void n(android.util.AttributeSet attributeSet, int i5) {
        int resourceId;
        android.content.res.TypedArray typedArrayObtainStyledAttributes = this.f1007j.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.AppCompatTextView, i5, 0);
        int i6 = androidx.appcompat.R.styleable.AppCompatTextView_autoSizeTextType;
        if (typedArrayObtainStyledAttributes.hasValue(i6)) {
            this.f998a = typedArrayObtainStyledAttributes.getInt(i6, 0);
        }
        int i7 = androidx.appcompat.R.styleable.AppCompatTextView_autoSizeStepGranularity;
        float dimension = typedArrayObtainStyledAttributes.hasValue(i7) ? typedArrayObtainStyledAttributes.getDimension(i7, -1.0f) : -1.0f;
        int i8 = androidx.appcompat.R.styleable.AppCompatTextView_autoSizeMinTextSize;
        float dimension2 = typedArrayObtainStyledAttributes.hasValue(i8) ? typedArrayObtainStyledAttributes.getDimension(i8, -1.0f) : -1.0f;
        int i9 = androidx.appcompat.R.styleable.AppCompatTextView_autoSizeMaxTextSize;
        float dimension3 = typedArrayObtainStyledAttributes.hasValue(i9) ? typedArrayObtainStyledAttributes.getDimension(i9, -1.0f) : -1.0f;
        int i10 = androidx.appcompat.R.styleable.AppCompatTextView_autoSizePresetSizes;
        if (typedArrayObtainStyledAttributes.hasValue(i10) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(i10, 0)) > 0) {
            android.content.res.TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            u(typedArrayObtainTypedArray);
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!x()) {
            this.f998a = 0;
            return;
        }
        if (this.f998a == 1) {
            if (!this.f1004g) {
                android.util.DisplayMetrics displayMetrics = this.f1007j.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    dimension2 = android.util.TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                if (dimension3 == -1.0f) {
                    dimension3 = android.util.TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                y(dimension2, dimension3, dimension);
            }
            t();
        }
    }

    public void o(int i5, int i6, int i7, int i8) throws java.lang.IllegalArgumentException {
        if (x()) {
            android.util.DisplayMetrics displayMetrics = this.f1007j.getResources().getDisplayMetrics();
            y(android.util.TypedValue.applyDimension(i8, i5, displayMetrics), android.util.TypedValue.applyDimension(i8, i6, displayMetrics), android.util.TypedValue.applyDimension(i8, i7, displayMetrics));
            if (t()) {
                a();
            }
        }
    }

    public void p(int[] iArr, int i5) throws java.lang.IllegalArgumentException {
        if (x()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i5 == 0) {
                    iArrCopyOf = java.util.Arrays.copyOf(iArr, length);
                } else {
                    android.util.DisplayMetrics displayMetrics = this.f1007j.getResources().getDisplayMetrics();
                    for (int i6 = 0; i6 < length; i6++) {
                        iArrCopyOf[i6] = java.lang.Math.round(android.util.TypedValue.applyDimension(i5, iArr[i6], displayMetrics));
                    }
                }
                this.f1003f = b(iArrCopyOf);
                if (!v()) {
                    throw new java.lang.IllegalArgumentException("None of the preset sizes is valid: " + java.util.Arrays.toString(iArr));
                }
            } else {
                this.f1004g = false;
            }
            if (t()) {
                a();
            }
        }
    }

    public void q(int i5) {
        if (x()) {
            if (i5 == 0) {
                c();
                return;
            }
            if (i5 != 1) {
                throw new java.lang.IllegalArgumentException("Unknown auto-size text type: " + i5);
            }
            android.util.DisplayMetrics displayMetrics = this.f1007j.getResources().getDisplayMetrics();
            y(android.util.TypedValue.applyDimension(2, 12.0f, displayMetrics), android.util.TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (t()) {
                a();
            }
        }
    }

    public final void r(float f5) {
        if (f5 != this.f1006i.getPaint().getTextSize()) {
            this.f1006i.getPaint().setTextSize(f5);
            boolean zIsInLayout = this.f1006i.isInLayout();
            if (this.f1006i.getLayout() != null) {
                this.f999b = false;
                try {
                    java.lang.reflect.Method methodK = k("nullLayouts");
                    if (methodK != null) {
                        methodK.invoke(this.f1006i, new java.lang.Object[0]);
                    }
                } catch (java.lang.Exception e5) {
                    android.util.Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e5);
                }
                if (zIsInLayout) {
                    this.f1006i.forceLayout();
                } else {
                    this.f1006i.requestLayout();
                }
                this.f1006i.invalidate();
            }
        }
    }

    public void s(int i5, float f5) {
        android.content.Context context = this.f1007j;
        r(android.util.TypedValue.applyDimension(i5, f5, (context == null ? android.content.res.Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }

    public final boolean t() {
        if (x() && this.f998a == 1) {
            if (!this.f1004g || this.f1003f.length == 0) {
                float fRound = java.lang.Math.round(this.f1001d);
                int i5 = 1;
                while (java.lang.Math.round(this.f1000c + fRound) <= java.lang.Math.round(this.f1002e)) {
                    i5++;
                    fRound += this.f1000c;
                }
                int[] iArr = new int[i5];
                float f5 = this.f1001d;
                for (int i6 = 0; i6 < i5; i6++) {
                    iArr[i6] = java.lang.Math.round(f5);
                    f5 += this.f1000c;
                }
                this.f1003f = b(iArr);
            }
            this.f999b = true;
        } else {
            this.f999b = false;
        }
        return this.f999b;
    }

    public final void u(android.content.res.TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i5 = 0; i5 < length; i5++) {
                iArr[i5] = typedArray.getDimensionPixelSize(i5, -1);
            }
            this.f1003f = b(iArr);
            v();
        }
    }

    public final boolean v() {
        int[] iArr = this.f1003f;
        int length = iArr.length;
        boolean z4 = length > 0;
        this.f1004g = z4;
        if (z4) {
            this.f998a = 1;
            this.f1001d = iArr[0];
            this.f1002e = iArr[length - 1];
            this.f1000c = -1.0f;
        }
        return z4;
    }

    public final boolean w(int i5, android.graphics.RectF rectF) {
        java.lang.CharSequence transformation;
        java.lang.CharSequence text = this.f1006i.getText();
        android.text.method.TransformationMethod transformationMethod = this.f1006i.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.f1006i)) != null) {
            text = transformation;
        }
        int maxLines = this.f1006i.getMaxLines();
        android.text.TextPaint textPaint = this.f1005h;
        if (textPaint == null) {
            this.f1005h = new android.text.TextPaint();
        } else {
            textPaint.reset();
        }
        this.f1005h.set(this.f1006i.getPaint());
        this.f1005h.setTextSize(i5);
        android.text.StaticLayout staticLayoutD = d(text, (android.text.Layout.Alignment) l(this.f1006i, "getLayoutAlignment", android.text.Layout.Alignment.ALIGN_NORMAL), java.lang.Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (staticLayoutD.getLineCount() <= maxLines && staticLayoutD.getLineEnd(staticLayoutD.getLineCount() - 1) == text.length())) && ((float) staticLayoutD.getHeight()) <= rectF.bottom;
    }

    public final boolean x() {
        return !(this.f1006i instanceof androidx.appcompat.widget.AppCompatEditText);
    }

    public final void y(float f5, float f6, float f7) throws java.lang.IllegalArgumentException {
        if (f5 <= 0.0f) {
            throw new java.lang.IllegalArgumentException("Minimum auto-size text size (" + f5 + "px) is less or equal to (0px)");
        }
        if (f6 <= f5) {
            throw new java.lang.IllegalArgumentException("Maximum auto-size text size (" + f6 + "px) is less or equal to minimum auto-size text size (" + f5 + "px)");
        }
        if (f7 <= 0.0f) {
            throw new java.lang.IllegalArgumentException("The auto-size step granularity (" + f7 + "px) is less or equal to (0px)");
        }
        this.f998a = 1;
        this.f1001d = f5;
        this.f1002e = f6;
        this.f1000c = f7;
        this.f1004g = false;
    }
}
