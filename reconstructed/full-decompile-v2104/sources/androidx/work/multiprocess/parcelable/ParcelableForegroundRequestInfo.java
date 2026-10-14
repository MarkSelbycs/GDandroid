package androidx.work.multiprocess.parcelable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public class ParcelableForegroundRequestInfo implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableForegroundRequestInfo> CREATOR = new androidx.work.multiprocess.parcelable.ParcelableForegroundRequestInfo.a();
    private final q0.h mForegroundInfo;
    private final java.lang.String mId;

    public class a implements android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableForegroundRequestInfo> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableForegroundRequestInfo createFromParcel(android.os.Parcel parcel) {
            return new androidx.work.multiprocess.parcelable.ParcelableForegroundRequestInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableForegroundRequestInfo[] newArray(int i5) {
            return new androidx.work.multiprocess.parcelable.ParcelableForegroundRequestInfo[i5];
        }
    }

    public ParcelableForegroundRequestInfo(java.lang.String str, q0.h hVar) {
        this.mId = str;
        this.mForegroundInfo = hVar;
    }

    public q0.h a() {
        return this.mForegroundInfo;
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
        parcel.writeInt(this.mForegroundInfo.c());
        parcel.writeInt(this.mForegroundInfo.a());
        parcel.writeParcelable(this.mForegroundInfo.b(), i5);
    }

    public ParcelableForegroundRequestInfo(android.os.Parcel parcel) {
        this.mId = parcel.readString();
        this.mForegroundInfo = new q0.h(parcel.readInt(), (android.app.Notification) parcel.readParcelable(getClass().getClassLoader()), parcel.readInt());
    }
}
