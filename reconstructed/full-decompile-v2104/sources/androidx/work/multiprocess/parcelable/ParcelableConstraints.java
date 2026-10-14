package androidx.work.multiprocess.parcelable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public class ParcelableConstraints implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableConstraints> CREATOR = new androidx.work.multiprocess.parcelable.ParcelableConstraints.a();
    private final q0.d mConstraints;

    public class a implements android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableConstraints> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableConstraints createFromParcel(android.os.Parcel parcel) {
            return new androidx.work.multiprocess.parcelable.ParcelableConstraints(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableConstraints[] newArray(int i5) {
            return new androidx.work.multiprocess.parcelable.ParcelableConstraints[i5];
        }
    }

    public ParcelableConstraints(q0.d dVar) {
        this.mConstraints = dVar;
    }

    public q0.d a() {
        return this.mConstraints;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeInt(z0.b0.g(this.mConstraints.d()));
        e1.b.b(parcel, this.mConstraints.f());
        e1.b.b(parcel, this.mConstraints.g());
        e1.b.b(parcel, this.mConstraints.i());
        e1.b.b(parcel, this.mConstraints.h());
        boolean zE = this.mConstraints.e();
        e1.b.b(parcel, zE);
        if (zE) {
            parcel.writeByteArray(z0.b0.i(this.mConstraints.c()));
        }
        parcel.writeLong(this.mConstraints.a());
        parcel.writeLong(this.mConstraints.b());
    }

    public ParcelableConstraints(android.os.Parcel parcel) {
        q0.d.a aVar = new q0.d.a();
        aVar.c(z0.b0.d(parcel.readInt()));
        aVar.d(e1.b.a(parcel));
        aVar.e(e1.b.a(parcel));
        aVar.g(e1.b.a(parcel));
        aVar.f(e1.b.a(parcel));
        if (e1.b.a(parcel)) {
            for (q0.d.c cVar : z0.b0.b(parcel.createByteArray())) {
                aVar.a(cVar.a(), cVar.b());
            }
        }
        long j5 = parcel.readLong();
        java.util.concurrent.TimeUnit timeUnit = java.util.concurrent.TimeUnit.MILLISECONDS;
        aVar.h(j5, timeUnit);
        aVar.i(parcel.readLong(), timeUnit);
        this.mConstraints = aVar.b();
    }
}
