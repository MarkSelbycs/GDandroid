package androidx.work.multiprocess.parcelable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public class ParcelableWorkInfo implements android.os.Parcelable {
    private final q0.y mWorkInfo;
    private static final java.lang.String[] sEMPTY = new java.lang.String[0];
    public static final android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableWorkInfo> CREATOR = new androidx.work.multiprocess.parcelable.ParcelableWorkInfo.a();

    public class a implements android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableWorkInfo> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableWorkInfo createFromParcel(android.os.Parcel parcel) {
            return new androidx.work.multiprocess.parcelable.ParcelableWorkInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableWorkInfo[] newArray(int i5) {
            return new androidx.work.multiprocess.parcelable.ParcelableWorkInfo[i5];
        }
    }

    public ParcelableWorkInfo(q0.y yVar) {
        this.mWorkInfo = yVar;
    }

    public q0.y a() {
        return this.mWorkInfo;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeString(this.mWorkInfo.b().toString());
        parcel.writeInt(z0.b0.j(this.mWorkInfo.f()));
        new androidx.work.multiprocess.parcelable.ParcelableData(this.mWorkInfo.c()).writeToParcel(parcel, i5);
        parcel.writeStringArray((java.lang.String[]) new java.util.ArrayList(this.mWorkInfo.g()).toArray(sEMPTY));
        new androidx.work.multiprocess.parcelable.ParcelableData(this.mWorkInfo.d()).writeToParcel(parcel, i5);
        parcel.writeInt(this.mWorkInfo.e());
        parcel.writeInt(this.mWorkInfo.a());
    }

    public ParcelableWorkInfo(android.os.Parcel parcel) {
        this.mWorkInfo = new q0.y(java.util.UUID.fromString(parcel.readString()), z0.b0.f(parcel.readInt()), new java.util.HashSet(java.util.Arrays.asList(parcel.createStringArray())), new androidx.work.multiprocess.parcelable.ParcelableData(parcel).b(), new androidx.work.multiprocess.parcelable.ParcelableData(parcel).b(), parcel.readInt(), parcel.readInt());
    }
}
