package androidx.work.multiprocess.parcelable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public class ParcelableRemoteWorkRequest implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableRemoteWorkRequest> CREATOR = new androidx.work.multiprocess.parcelable.ParcelableRemoteWorkRequest.a();
    private final androidx.work.multiprocess.parcelable.ParcelableWorkerParameters mParcelableWorkerParameters;
    private final java.lang.String mWorkerClassName;

    public class a implements android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableRemoteWorkRequest> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableRemoteWorkRequest createFromParcel(android.os.Parcel parcel) {
            return new androidx.work.multiprocess.parcelable.ParcelableRemoteWorkRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableRemoteWorkRequest[] newArray(int i5) {
            return new androidx.work.multiprocess.parcelable.ParcelableRemoteWorkRequest[i5];
        }
    }

    public ParcelableRemoteWorkRequest(java.lang.String str, androidx.work.WorkerParameters workerParameters) {
        this.mWorkerClassName = str;
        this.mParcelableWorkerParameters = new androidx.work.multiprocess.parcelable.ParcelableWorkerParameters(workerParameters);
    }

    public androidx.work.multiprocess.parcelable.ParcelableWorkerParameters a() {
        return this.mParcelableWorkerParameters;
    }

    public java.lang.String b() {
        return this.mWorkerClassName;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeString(this.mWorkerClassName);
        this.mParcelableWorkerParameters.writeToParcel(parcel, i5);
    }

    public ParcelableRemoteWorkRequest(android.os.Parcel parcel) {
        this.mWorkerClassName = parcel.readString();
        this.mParcelableWorkerParameters = new androidx.work.multiprocess.parcelable.ParcelableWorkerParameters(parcel);
    }
}
