package androidx.appcompat.widget;

/* JADX INFO: compiled from: TintTypedArray.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.content.res.TypedArray f922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.util.TypedValue f923c;

    public d0(android.content.Context context, android.content.res.TypedArray typedArray) {
        this.f921a = context;
        this.f922b = typedArray;
    }

    public static androidx.appcompat.widget.d0 r(android.content.Context context, int i5, int[] iArr) {
        return new androidx.appcompat.widget.d0(context, context.obtainStyledAttributes(i5, iArr));
    }

    public static androidx.appcompat.widget.d0 s(android.content.Context context, android.util.AttributeSet attributeSet, int[] iArr) {
        return new androidx.appcompat.widget.d0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static androidx.appcompat.widget.d0 t(android.content.Context context, android.util.AttributeSet attributeSet, int[] iArr, int i5, int i6) {
        return new androidx.appcompat.widget.d0(context, context.obtainStyledAttributes(attributeSet, iArr, i5, i6));
    }

    public boolean a(int i5, boolean z4) {
        return this.f922b.getBoolean(i5, z4);
    }

    public int b(int i5, int i6) {
        return this.f922b.getColor(i5, i6);
    }

    public android.content.res.ColorStateList c(int i5) {
        int resourceId;
        android.content.res.ColorStateList colorStateListA;
        return (!this.f922b.hasValue(i5) || (resourceId = this.f922b.getResourceId(i5, 0)) == 0 || (colorStateListA = b.a.a(this.f921a, resourceId)) == null) ? this.f922b.getColorStateList(i5) : colorStateListA;
    }

    public int d(int i5, int i6) {
        return this.f922b.getDimensionPixelOffset(i5, i6);
    }

    public int e(int i5, int i6) {
        return this.f922b.getDimensionPixelSize(i5, i6);
    }

    public android.graphics.drawable.Drawable f(int i5) {
        int resourceId;
        return (!this.f922b.hasValue(i5) || (resourceId = this.f922b.getResourceId(i5, 0)) == 0) ? this.f922b.getDrawable(i5) : b.a.b(this.f921a, resourceId);
    }

    public android.graphics.drawable.Drawable g(int i5) {
        int resourceId;
        if (!this.f922b.hasValue(i5) || (resourceId = this.f922b.getResourceId(i5, 0)) == 0) {
            return null;
        }
        return androidx.appcompat.widget.f.m().p(this.f921a, resourceId, true);
    }

    public float h(int i5, float f5) {
        return this.f922b.getFloat(i5, f5);
    }

    public android.graphics.Typeface i(int i5, int i6, n.d.a aVar) {
        int resourceId = this.f922b.getResourceId(i5, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f923c == null) {
            this.f923c = new android.util.TypedValue();
        }
        return n.d.a(this.f921a, resourceId, this.f923c, i6, aVar);
    }

    public int j(int i5, int i6) {
        return this.f922b.getInt(i5, i6);
    }

    public int k(int i5, int i6) {
        return this.f922b.getInteger(i5, i6);
    }

    public int l(int i5, int i6) {
        return this.f922b.getLayoutDimension(i5, i6);
    }

    public int m(int i5, int i6) {
        return this.f922b.getResourceId(i5, i6);
    }

    public java.lang.String n(int i5) {
        return this.f922b.getString(i5);
    }

    public java.lang.CharSequence o(int i5) {
        return this.f922b.getText(i5);
    }

    public java.lang.CharSequence[] p(int i5) {
        return this.f922b.getTextArray(i5);
    }

    public boolean q(int i5) {
        return this.f922b.hasValue(i5);
    }

    public void u() {
        this.f922b.recycle();
    }
}
