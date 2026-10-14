package androidx.fragment.app;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class FragmentTabHost extends android.widget.TabHost implements android.widget.TabHost.OnTabChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.ArrayList<androidx.fragment.app.FragmentTabHost.a> f1578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.content.Context f1579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.fragment.app.e f1580c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1581d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public android.widget.TabHost.OnTabChangeListener f1582e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public androidx.fragment.app.FragmentTabHost.a f1583f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1584g;

    public static class SavedState extends android.view.View.BaseSavedState {
        public static final android.os.Parcelable.Creator<androidx.fragment.app.FragmentTabHost.SavedState> CREATOR = new androidx.fragment.app.FragmentTabHost.SavedState.a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.lang.String f1585a;

        public static class a implements android.os.Parcelable.Creator<androidx.fragment.app.FragmentTabHost.SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public androidx.fragment.app.FragmentTabHost.SavedState createFromParcel(android.os.Parcel parcel) {
                return new androidx.fragment.app.FragmentTabHost.SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public androidx.fragment.app.FragmentTabHost.SavedState[] newArray(int i5) {
                return new androidx.fragment.app.FragmentTabHost.SavedState[i5];
            }
        }

        public SavedState(android.os.Parcelable parcelable) {
            super(parcelable);
        }

        public java.lang.String toString() {
            return "FragmentTabHost.SavedState{" + java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)) + " curTab=" + this.f1585a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i5) {
            super.writeToParcel(parcel, i5);
            parcel.writeString(this.f1585a);
        }

        public SavedState(android.os.Parcel parcel) {
            super(parcel);
            this.f1585a = parcel.readString();
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.String f1586a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.Class<?> f1587b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final android.os.Bundle f1588c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public androidx.fragment.app.Fragment f1589d;
    }

    public FragmentTabHost(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1578a = new java.util.ArrayList<>();
        c(context, attributeSet);
    }

    public final androidx.fragment.app.h a(java.lang.String str, androidx.fragment.app.h hVar) {
        androidx.fragment.app.Fragment fragment;
        androidx.fragment.app.FragmentTabHost.a aVarB = b(str);
        if (this.f1583f != aVarB) {
            if (hVar == null) {
                hVar = this.f1580c.a();
            }
            androidx.fragment.app.FragmentTabHost.a aVar = this.f1583f;
            if (aVar != null && (fragment = aVar.f1589d) != null) {
                hVar.e(fragment);
            }
            if (aVarB != null) {
                androidx.fragment.app.Fragment fragment2 = aVarB.f1589d;
                if (fragment2 == null) {
                    androidx.fragment.app.Fragment fragmentC = androidx.fragment.app.Fragment.C(this.f1579b, aVarB.f1587b.getName(), aVarB.f1588c);
                    aVarB.f1589d = fragmentC;
                    hVar.b(this.f1581d, fragmentC, aVarB.f1586a);
                } else {
                    hVar.c(fragment2);
                }
            }
            this.f1583f = aVarB;
        }
        return hVar;
    }

    public final androidx.fragment.app.FragmentTabHost.a b(java.lang.String str) {
        int size = this.f1578a.size();
        for (int i5 = 0; i5 < size; i5++) {
            androidx.fragment.app.FragmentTabHost.a aVar = this.f1578a.get(i5);
            if (aVar.f1586a.equals(str)) {
                return aVar;
            }
        }
        return null;
    }

    public final void c(android.content.Context context, android.util.AttributeSet attributeSet) {
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{android.R.attr.inflatedId}, 0, 0);
        this.f1581d = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        java.lang.String currentTabTag = getCurrentTabTag();
        int size = this.f1578a.size();
        androidx.fragment.app.h hVarA = null;
        for (int i5 = 0; i5 < size; i5++) {
            androidx.fragment.app.FragmentTabHost.a aVar = this.f1578a.get(i5);
            androidx.fragment.app.Fragment fragmentD = this.f1580c.d(aVar.f1586a);
            aVar.f1589d = fragmentD;
            if (fragmentD != null && !fragmentD.E()) {
                if (aVar.f1586a.equals(currentTabTag)) {
                    this.f1583f = aVar;
                } else {
                    if (hVarA == null) {
                        hVarA = this.f1580c.a();
                    }
                    hVarA.e(aVar.f1589d);
                }
            }
        }
        this.f1584g = true;
        androidx.fragment.app.h hVarA2 = a(currentTabTag, hVarA);
        if (hVarA2 != null) {
            hVarA2.d();
            this.f1580c.c();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1584g = false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        if (!(parcelable instanceof androidx.fragment.app.FragmentTabHost.SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        androidx.fragment.app.FragmentTabHost.SavedState savedState = (androidx.fragment.app.FragmentTabHost.SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f1585a);
    }

    @Override // android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        androidx.fragment.app.FragmentTabHost.SavedState savedState = new androidx.fragment.app.FragmentTabHost.SavedState(super.onSaveInstanceState());
        savedState.f1585a = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    public void onTabChanged(java.lang.String str) {
        androidx.fragment.app.h hVarA;
        if (this.f1584g && (hVarA = a(str, null)) != null) {
            hVarA.d();
        }
        android.widget.TabHost.OnTabChangeListener onTabChangeListener = this.f1582e;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    public void setOnTabChangedListener(android.widget.TabHost.OnTabChangeListener onTabChangeListener) {
        this.f1582e = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @java.lang.Deprecated
    public void setup() {
        throw new java.lang.IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }
}
