package androidx.work.multiprocess.parcelable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public class ParcelableResult implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableResult> CREATOR = new androidx.work.multiprocess.parcelable.ParcelableResult.a();
    private final androidx.work.c.a mResult;

    public class a implements android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableResult> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableResult createFromParcel(android.os.Parcel parcel) {
            return new androidx.work.multiprocess.parcelable.ParcelableResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableResult[] newArray(int i5) {
            return new androidx.work.multiprocess.parcelable.ParcelableResult[i5];
        }
    }

    public ParcelableResult(androidx.work.c.a aVar) {
        this.mResult = aVar;
    }

    public static androidx.work.c.a b(int i5, androidx.work.b bVar) {
        if (i5 == 1) {
            return androidx.work.c.a.d();
        }
        if (i5 == 2) {
            return androidx.work.c.a.f(bVar);
        }
        if (i5 == 3) {
            return androidx.work.c.a.b(bVar);
        }
        throw new java.lang.IllegalStateException("Unknown result type " + i5);
    }

    public static int c(androidx.work.c.a aVar) {
        if (aVar instanceof androidx.work.c.a.b) {
            return 1;
        }
        if (aVar instanceof androidx.work.c.a.C0022c) {
            return 2;
        }
        if (aVar instanceof androidx.work.c.a.C0021a) {
            return 3;
        }
        throw new java.lang.IllegalStateException("Unknown Result " + aVar);
    }

    public androidx.work.c.a a() {
        return this.mResult;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeInt(c(this.mResult));
        new androidx.work.multiprocess.parcelable.ParcelableData(this.mResult.c()).writeToParcel(parcel, i5);
    }

    public ParcelableResult(android.os.Parcel parcel) {
        this.mResult = b(parcel.readInt(), new androidx.work.multiprocess.parcelable.ParcelableData(parcel).b());
    }
}
