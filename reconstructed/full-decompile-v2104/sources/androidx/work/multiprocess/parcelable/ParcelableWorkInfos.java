package androidx.work.multiprocess.parcelable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public class ParcelableWorkInfos implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableWorkInfos> CREATOR = new androidx.work.multiprocess.parcelable.ParcelableWorkInfos.a();
    private final java.util.List<q0.y> mInfos;

    public class a implements android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableWorkInfos> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableWorkInfos createFromParcel(android.os.Parcel parcel) {
            return new androidx.work.multiprocess.parcelable.ParcelableWorkInfos(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableWorkInfos[] newArray(int i5) {
            return new androidx.work.multiprocess.parcelable.ParcelableWorkInfos[i5];
        }
    }

    public ParcelableWorkInfos(java.util.List<q0.y> list) {
        this.mInfos = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        androidx.work.multiprocess.parcelable.ParcelableWorkInfo[] parcelableWorkInfoArr = new androidx.work.multiprocess.parcelable.ParcelableWorkInfo[this.mInfos.size()];
        for (int i6 = 0; i6 < this.mInfos.size(); i6++) {
            parcelableWorkInfoArr[i6] = new androidx.work.multiprocess.parcelable.ParcelableWorkInfo(this.mInfos.get(i6));
        }
        parcel.writeParcelableArray(parcelableWorkInfoArr, i5);
    }

    public ParcelableWorkInfos(android.os.Parcel parcel) {
        android.os.Parcelable[] parcelableArray = parcel.readParcelableArray(getClass().getClassLoader());
        this.mInfos = new java.util.ArrayList(parcelableArray.length);
        for (android.os.Parcelable parcelable : parcelableArray) {
            this.mInfos.add(((androidx.work.multiprocess.parcelable.ParcelableWorkInfo) parcelable).a());
        }
    }
}
