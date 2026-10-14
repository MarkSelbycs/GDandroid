package androidx.work.multiprocess.parcelable;

/* JADX INFO: compiled from: ParcelableInterruptRequest.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public final class ParcelableInterruptRequest implements android.os.Parcelable {
    private final java.lang.String id;
    private final int stopReason;
    public static final androidx.work.multiprocess.parcelable.ParcelableInterruptRequest.b Companion = new androidx.work.multiprocess.parcelable.ParcelableInterruptRequest.b(null);
    public static final android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableInterruptRequest> CREATOR = new androidx.work.multiprocess.parcelable.ParcelableInterruptRequest.a();

    /* JADX INFO: compiled from: ParcelableInterruptRequest.kt */
    public static final class a implements android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableInterruptRequest> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableInterruptRequest createFromParcel(android.os.Parcel parcel) {
            m3.k.e(parcel, "parcel");
            return new androidx.work.multiprocess.parcelable.ParcelableInterruptRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableInterruptRequest[] newArray(int i5) {
            return new androidx.work.multiprocess.parcelable.ParcelableInterruptRequest[i5];
        }
    }

    /* JADX INFO: compiled from: ParcelableInterruptRequest.kt */
    public static final class b {
        public b() {
        }

        public /* synthetic */ b(m3.g gVar) {
            this();
        }
    }

    public ParcelableInterruptRequest(java.lang.String str, int i5) {
        m3.k.e(str, "id");
        this.id = str;
        this.stopReason = i5;
    }

    public final java.lang.String a() {
        return this.id;
    }

    public final int b() {
        return this.stopReason;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof androidx.work.multiprocess.parcelable.ParcelableInterruptRequest)) {
            return false;
        }
        androidx.work.multiprocess.parcelable.ParcelableInterruptRequest parcelableInterruptRequest = (androidx.work.multiprocess.parcelable.ParcelableInterruptRequest) obj;
        return m3.k.a(this.id, parcelableInterruptRequest.id) && this.stopReason == parcelableInterruptRequest.stopReason;
    }

    public int hashCode() {
        return (this.id.hashCode() * 31) + java.lang.Integer.hashCode(this.stopReason);
    }

    public java.lang.String toString() {
        return "ParcelableInterruptRequest(id=" + this.id + ", stopReason=" + this.stopReason + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        m3.k.e(parcel, "parcel");
        parcel.writeString(this.id);
        parcel.writeInt(this.stopReason);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ParcelableInterruptRequest(android.os.Parcel parcel) {
        m3.k.e(parcel, "parcel");
        java.lang.String string = parcel.readString();
        m3.k.b(string);
        this(string, parcel.readInt());
    }
}
