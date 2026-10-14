package androidx.versionedparcelable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public class ParcelImpl implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.versionedparcelable.ParcelImpl> CREATOR = new androidx.versionedparcelable.ParcelImpl.a();
    private final m0.c mParcel;

    public static class a implements android.os.Parcelable.Creator<androidx.versionedparcelable.ParcelImpl> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.versionedparcelable.ParcelImpl createFromParcel(android.os.Parcel parcel) {
            return new androidx.versionedparcelable.ParcelImpl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.versionedparcelable.ParcelImpl[] newArray(int i5) {
            return new androidx.versionedparcelable.ParcelImpl[i5];
        }
    }

    public ParcelImpl(android.os.Parcel parcel) {
        this.mParcel = new m0.b(parcel).u();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        new m0.b(parcel).L(this.mParcel);
    }
}
