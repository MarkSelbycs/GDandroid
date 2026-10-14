package androidx.work.multiprocess.parcelable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public class ParcelableWorkerParameters implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableWorkerParameters> CREATOR = new androidx.work.multiprocess.parcelable.ParcelableWorkerParameters.a();
    private final androidx.work.b mData;
    private final int mGeneration;
    private final java.util.UUID mId;
    private final int mRunAttemptCount;
    private final androidx.work.WorkerParameters.a mRuntimeExtras;
    private final java.util.Set<java.lang.String> mTags;

    public class a implements android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableWorkerParameters> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableWorkerParameters createFromParcel(android.os.Parcel parcel) {
            return new androidx.work.multiprocess.parcelable.ParcelableWorkerParameters(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableWorkerParameters[] newArray(int i5) {
            return new androidx.work.multiprocess.parcelable.ParcelableWorkerParameters[i5];
        }
    }

    public ParcelableWorkerParameters(androidx.work.WorkerParameters workerParameters) {
        this.mId = workerParameters.d();
        this.mData = workerParameters.e();
        this.mTags = workerParameters.j();
        this.mRuntimeExtras = workerParameters.i();
        this.mRunAttemptCount = workerParameters.h();
        this.mGeneration = workerParameters.c();
    }

    public androidx.work.WorkerParameters a(androidx.work.a aVar, c1.b bVar, q0.u uVar, q0.i iVar) {
        return new androidx.work.WorkerParameters(this.mId, this.mData, this.mTags, this.mRuntimeExtras, this.mRunAttemptCount, this.mGeneration, aVar.d(), bVar, aVar.n(), uVar, iVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeString(this.mId.toString());
        new androidx.work.multiprocess.parcelable.ParcelableData(this.mData).writeToParcel(parcel, i5);
        parcel.writeStringList(new java.util.ArrayList(this.mTags));
        new androidx.work.multiprocess.parcelable.ParcelableRuntimeExtras(this.mRuntimeExtras).writeToParcel(parcel, i5);
        parcel.writeInt(this.mRunAttemptCount);
        parcel.writeInt(this.mGeneration);
    }

    public ParcelableWorkerParameters(android.os.Parcel parcel) {
        this.mId = java.util.UUID.fromString(parcel.readString());
        this.mData = new androidx.work.multiprocess.parcelable.ParcelableData(parcel).b();
        this.mTags = new java.util.HashSet(parcel.createStringArrayList());
        this.mRuntimeExtras = new androidx.work.multiprocess.parcelable.ParcelableRuntimeExtras(parcel).a();
        this.mRunAttemptCount = parcel.readInt();
        this.mGeneration = parcel.readInt();
    }
}
