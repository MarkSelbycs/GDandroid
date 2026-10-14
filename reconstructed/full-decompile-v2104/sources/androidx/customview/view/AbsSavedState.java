package androidx.customview.view;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class AbsSavedState implements android.os.Parcelable {
    private final android.os.Parcelable mSuperState;
    public static final androidx.customview.view.AbsSavedState EMPTY_STATE = new androidx.customview.view.AbsSavedState() { // from class: androidx.customview.view.AbsSavedState.1
    };
    public static final android.os.Parcelable.Creator<androidx.customview.view.AbsSavedState> CREATOR = new androidx.customview.view.AbsSavedState.a();

    public static class a implements android.os.Parcelable.ClassLoaderCreator<androidx.customview.view.AbsSavedState> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.customview.view.AbsSavedState createFromParcel(android.os.Parcel parcel) {
            return createFromParcel(parcel, null);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.customview.view.AbsSavedState createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return androidx.customview.view.AbsSavedState.EMPTY_STATE;
            }
            throw new java.lang.IllegalStateException("superState must be null");
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public androidx.customview.view.AbsSavedState[] newArray(int i5) {
            return new androidx.customview.view.AbsSavedState[i5];
        }
    }

    public final android.os.Parcelable a() {
        return this.mSuperState;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeParcelable(this.mSuperState, i5);
    }

    public AbsSavedState() {
        this.mSuperState = null;
    }

    public AbsSavedState(android.os.Parcelable parcelable) {
        if (parcelable != null) {
            this.mSuperState = parcelable == EMPTY_STATE ? null : parcelable;
            return;
        }
        throw new java.lang.IllegalArgumentException("superState must not be null");
    }

    public AbsSavedState(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
        android.os.Parcelable parcelable = parcel.readParcelable(classLoader);
        this.mSuperState = parcelable == null ? EMPTY_STATE : parcelable;
    }
}
