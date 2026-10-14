package androidx.work.multiprocess.parcelable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public class ParcelableWorkRequest implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableWorkRequest> CREATOR = new androidx.work.multiprocess.parcelable.ParcelableWorkRequest.a();
    private final q0.b0 mWorkRequest;

    public class a implements android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableWorkRequest> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableWorkRequest createFromParcel(android.os.Parcel parcel) {
            return new androidx.work.multiprocess.parcelable.ParcelableWorkRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableWorkRequest[] newArray(int i5) {
            return new androidx.work.multiprocess.parcelable.ParcelableWorkRequest[i5];
        }
    }

    public ParcelableWorkRequest(q0.b0 b0Var) {
        this.mWorkRequest = b0Var;
    }

    public q0.b0 a() {
        return this.mWorkRequest;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeString(this.mWorkRequest.b());
        parcel.writeStringList(new java.util.ArrayList(this.mWorkRequest.c()));
        z0.u uVarD = this.mWorkRequest.d();
        parcel.writeString(uVarD.f7034c);
        parcel.writeString(uVarD.f7035d);
        parcel.writeInt(z0.b0.j(uVarD.f7033b));
        new androidx.work.multiprocess.parcelable.ParcelableData(uVarD.f7036e).writeToParcel(parcel, i5);
        new androidx.work.multiprocess.parcelable.ParcelableData(uVarD.f7037f).writeToParcel(parcel, i5);
        parcel.writeLong(uVarD.f7038g);
        parcel.writeLong(uVarD.f7039h);
        parcel.writeLong(uVarD.f7040i);
        parcel.writeInt(uVarD.f7042k);
        parcel.writeParcelable(new androidx.work.multiprocess.parcelable.ParcelableConstraints(uVarD.f7041j), i5);
        parcel.writeInt(z0.b0.a(uVarD.f7043l));
        parcel.writeLong(uVarD.f7044m);
        parcel.writeLong(uVarD.f7046o);
        parcel.writeLong(uVarD.f7047p);
        e1.b.b(parcel, uVarD.f7048q);
        parcel.writeInt(z0.b0.h(uVarD.f7049r));
    }

    public ParcelableWorkRequest(android.os.Parcel parcel) {
        java.lang.String string = parcel.readString();
        java.util.HashSet hashSet = new java.util.HashSet(parcel.createStringArrayList());
        z0.u uVar = new z0.u(string, parcel.readString());
        uVar.f7035d = parcel.readString();
        uVar.f7033b = z0.b0.f(parcel.readInt());
        uVar.f7036e = new androidx.work.multiprocess.parcelable.ParcelableData(parcel).b();
        uVar.f7037f = new androidx.work.multiprocess.parcelable.ParcelableData(parcel).b();
        uVar.f7038g = parcel.readLong();
        uVar.f7039h = parcel.readLong();
        uVar.f7040i = parcel.readLong();
        uVar.f7042k = parcel.readInt();
        uVar.f7041j = ((androidx.work.multiprocess.parcelable.ParcelableConstraints) parcel.readParcelable(getClass().getClassLoader())).a();
        uVar.f7043l = z0.b0.c(parcel.readInt());
        uVar.f7044m = parcel.readLong();
        uVar.f7046o = parcel.readLong();
        uVar.f7047p = parcel.readLong();
        uVar.f7048q = e1.b.a(parcel);
        uVar.f7049r = z0.b0.e(parcel.readInt());
        this.mWorkRequest = new r0.r0(java.util.UUID.fromString(string), uVar, hashSet);
    }
}
