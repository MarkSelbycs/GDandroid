package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class ViewStubCompat extends android.view.View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f889a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.lang.ref.WeakReference<android.view.View> f891c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.view.LayoutInflater f892d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.appcompat.widget.ViewStubCompat.a f893e;

    public interface a {
        void a(androidx.appcompat.widget.ViewStubCompat viewStubCompat, android.view.View view);
    }

    public ViewStubCompat(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public android.view.View a() {
        android.view.ViewParent parent = getParent();
        if (parent == null || !(parent instanceof android.view.ViewGroup)) {
            throw new java.lang.IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        }
        if (this.f889a == 0) {
            throw new java.lang.IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) parent;
        android.view.LayoutInflater layoutInflaterFrom = this.f892d;
        if (layoutInflaterFrom == null) {
            layoutInflaterFrom = android.view.LayoutInflater.from(getContext());
        }
        android.view.View viewInflate = layoutInflaterFrom.inflate(this.f889a, viewGroup, false);
        int i5 = this.f890b;
        if (i5 != -1) {
            viewInflate.setId(i5);
        }
        int iIndexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        android.view.ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(viewInflate, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(viewInflate, iIndexOfChild);
        }
        this.f891c = new java.lang.ref.WeakReference<>(viewInflate);
        androidx.appcompat.widget.ViewStubCompat.a aVar = this.f893e;
        if (aVar != null) {
            aVar.a(this, viewInflate);
        }
        return viewInflate;
    }

    @Override // android.view.View
    public void dispatchDraw(android.graphics.Canvas canvas) {
    }

    @Override // android.view.View
    @android.annotation.SuppressLint({"MissingSuperCall"})
    public void draw(android.graphics.Canvas canvas) {
    }

    public int getInflatedId() {
        return this.f890b;
    }

    public android.view.LayoutInflater getLayoutInflater() {
        return this.f892d;
    }

    public int getLayoutResource() {
        return this.f889a;
    }

    @Override // android.view.View
    public void onMeasure(int i5, int i6) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i5) {
        this.f890b = i5;
    }

    public void setLayoutInflater(android.view.LayoutInflater layoutInflater) {
        this.f892d = layoutInflater;
    }

    public void setLayoutResource(int i5) {
        this.f889a = i5;
    }

    public void setOnInflateListener(androidx.appcompat.widget.ViewStubCompat.a aVar) {
        this.f893e = aVar;
    }

    @Override // android.view.View
    public void setVisibility(int i5) {
        java.lang.ref.WeakReference<android.view.View> weakReference = this.f891c;
        if (weakReference != null) {
            android.view.View view = weakReference.get();
            if (view == null) {
                throw new java.lang.IllegalStateException("setVisibility called on un-referenced view");
            }
            view.setVisibility(i5);
            return;
        }
        super.setVisibility(i5);
        if (i5 == 0 || i5 == 4) {
            a();
        }
    }

    public ViewStubCompat(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.f889a = 0;
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.ViewStubCompat, i5, 0);
        this.f890b = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.ViewStubCompat_android_inflatedId, -1);
        this.f889a = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.ViewStubCompat_android_layout, 0);
        setId(typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.ViewStubCompat_android_id, -1));
        typedArrayObtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }
}
