package androidx.work.multiprocess.parcelable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public class ParcelableWorkRequests implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableWorkRequests> CREATOR = new androidx.work.multiprocess.parcelable.ParcelableWorkRequests.a();
    private final java.util.List<q0.b0> mRequests;

    public class a implements android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableWorkRequests> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableWorkRequests createFromParcel(android.os.Parcel parcel) {
            return new androidx.work.multiprocess.parcelable.ParcelableWorkRequests(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableWorkRequests[] newArray(int i5) {
            return new androidx.work.multiprocess.parcelable.ParcelableWorkRequests[i5];
        }
    }

    public ParcelableWorkRequests(android.os.Parcel parcel) {
        android.os.Parcelable[] parcelableArray = parcel.readParcelableArray(getClass().getClassLoader());
        this.mRequests = new java.util.ArrayList(parcelableArray.length);
        for (android.os.Parcelable parcelable : parcelableArray) {
            this.mRequests.add(((androidx.work.multiprocess.parcelable.ParcelableWorkRequest) parcelable).a());
        }
    }

    public java.util.List<q0.b0> a() {
        return this.mRequests;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        androidx.work.multiprocess.parcelable.ParcelableWorkRequest[] parcelableWorkRequestArr = new androidx.work.multiprocess.parcelable.ParcelableWorkRequest[this.mRequests.size()];
        for (int i6 = 0; i6 < this.mRequests.size(); i6++) {
            parcelableWorkRequestArr[i6] = new androidx.work.multiprocess.parcelable.ParcelableWorkRequest(this.mRequests.get(i6));
        }
        parcel.writeParcelableArray(parcelableWorkRequestArr, i5);
    }
}
