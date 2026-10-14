package androidx.work.multiprocess.parcelable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public class ParcelableUpdateRequest implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableUpdateRequest> CREATOR = new androidx.work.multiprocess.parcelable.ParcelableUpdateRequest.a();
    private final java.lang.String mId;
    private final androidx.work.multiprocess.parcelable.ParcelableData mParcelableData;

    public class a implements android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableUpdateRequest> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableUpdateRequest createFromParcel(android.os.Parcel parcel) {
            return new androidx.work.multiprocess.parcelable.ParcelableUpdateRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableUpdateRequest[] newArray(int i5) {
            return new androidx.work.multiprocess.parcelable.ParcelableUpdateRequest[i5];
        }
    }

    public ParcelableUpdateRequest(java.util.UUID uuid, androidx.work.b bVar) {
        this.mId = uuid.toString();
        this.mParcelableData = new androidx.work.multiprocess.parcelable.ParcelableData(bVar);
    }

    public androidx.work.b a() {
        return this.mParcelableData.b();
    }

    public java.lang.String b() {
        return this.mId;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeString(this.mId);
        this.mParcelableData.writeToParcel(parcel, i5);
    }

    public ParcelableUpdateRequest(android.os.Parcel parcel) {
        this.mId = parcel.readString();
        this.mParcelableData = new androidx.work.multiprocess.parcelable.ParcelableData(parcel);
    }
}
