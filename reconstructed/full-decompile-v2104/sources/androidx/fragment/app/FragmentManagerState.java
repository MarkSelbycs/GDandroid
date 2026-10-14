package androidx.fragment.app;

/* JADX INFO: compiled from: FragmentManager.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
final class FragmentManagerState implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.fragment.app.FragmentManagerState> CREATOR = new androidx.fragment.app.FragmentManagerState.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.fragment.app.FragmentState[] f1561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f1562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.fragment.app.BackStackState[] f1563c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1564d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1565e;

    /* JADX INFO: compiled from: FragmentManager.java */
    public static class a implements android.os.Parcelable.Creator<androidx.fragment.app.FragmentManagerState> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.fragment.app.FragmentManagerState createFromParcel(android.os.Parcel parcel) {
            return new androidx.fragment.app.FragmentManagerState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.fragment.app.FragmentManagerState[] newArray(int i5) {
            return new androidx.fragment.app.FragmentManagerState[i5];
        }
    }

    public FragmentManagerState() {
        this.f1564d = -1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeTypedArray(this.f1561a, i5);
        parcel.writeIntArray(this.f1562b);
        parcel.writeTypedArray(this.f1563c, i5);
        parcel.writeInt(this.f1564d);
        parcel.writeInt(this.f1565e);
    }

    public FragmentManagerState(android.os.Parcel parcel) {
        this.f1564d = -1;
        this.f1561a = (androidx.fragment.app.FragmentState[]) parcel.createTypedArray(androidx.fragment.app.FragmentState.CREATOR);
        this.f1562b = parcel.createIntArray();
        this.f1563c = (androidx.fragment.app.BackStackState[]) parcel.createTypedArray(androidx.fragment.app.BackStackState.CREATOR);
        this.f1564d = parcel.readInt();
        this.f1565e = parcel.readInt();
    }
}
