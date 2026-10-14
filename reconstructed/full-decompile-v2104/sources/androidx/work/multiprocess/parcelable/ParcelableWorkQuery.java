package androidx.work.multiprocess.parcelable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public class ParcelableWorkQuery implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableWorkQuery> CREATOR = new androidx.work.multiprocess.parcelable.ParcelableWorkQuery.a();
    private final q0.a0 mWorkQuery;

    public class a implements android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableWorkQuery> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableWorkQuery createFromParcel(android.os.Parcel parcel) {
            return new androidx.work.multiprocess.parcelable.ParcelableWorkQuery(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableWorkQuery[] newArray(int i5) {
            return new androidx.work.multiprocess.parcelable.ParcelableWorkQuery[i5];
        }
    }

    public ParcelableWorkQuery(android.os.Parcel parcel) {
        java.util.List listEmptyList = java.util.Collections.emptyList();
        int i5 = parcel.readInt();
        if (i5 > 0) {
            listEmptyList = new java.util.ArrayList(i5);
            for (int i6 = 0; i6 < i5; i6++) {
                listEmptyList.add(java.util.UUID.fromString(parcel.readString()));
            }
        }
        java.util.ArrayList<java.lang.String> arrayListCreateStringArrayList = parcel.createStringArrayList();
        java.util.ArrayList<java.lang.String> arrayListCreateStringArrayList2 = parcel.createStringArrayList();
        java.util.List<q0.y.c> listEmptyList2 = java.util.Collections.emptyList();
        int i7 = parcel.readInt();
        if (i7 > 0) {
            listEmptyList2 = new java.util.ArrayList<>(i7);
            for (int i8 = 0; i8 < i7; i8++) {
                listEmptyList2.add(z0.b0.f(parcel.readInt()));
            }
        }
        this.mWorkQuery = q0.a0.a.f(listEmptyList).d(arrayListCreateStringArrayList).c(arrayListCreateStringArrayList2).b(listEmptyList2).e();
    }

    public q0.a0 a() {
        return this.mWorkQuery;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        java.util.List<java.util.UUID> listA = this.mWorkQuery.a();
        parcel.writeInt(listA.size());
        if (!listA.isEmpty()) {
            java.util.Iterator<java.util.UUID> it = listA.iterator();
            while (it.hasNext()) {
                parcel.writeString(it.next().toString());
            }
        }
        parcel.writeStringList(this.mWorkQuery.d());
        parcel.writeStringList(this.mWorkQuery.c());
        java.util.List<q0.y.c> listB = this.mWorkQuery.b();
        parcel.writeInt(listB.size());
        if (listB.isEmpty()) {
            return;
        }
        java.util.Iterator<q0.y.c> it2 = listB.iterator();
        while (it2.hasNext()) {
            parcel.writeInt(z0.b0.j(it2.next()));
        }
    }
}
