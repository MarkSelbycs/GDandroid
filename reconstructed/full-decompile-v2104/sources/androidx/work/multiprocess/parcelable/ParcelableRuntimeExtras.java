package androidx.work.multiprocess.parcelable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public class ParcelableRuntimeExtras implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableRuntimeExtras> CREATOR = new androidx.work.multiprocess.parcelable.ParcelableRuntimeExtras.a();
    private androidx.work.WorkerParameters.a mRuntimeExtras;

    public class a implements android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableRuntimeExtras> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableRuntimeExtras createFromParcel(android.os.Parcel parcel) {
            return new androidx.work.multiprocess.parcelable.ParcelableRuntimeExtras(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableRuntimeExtras[] newArray(int i5) {
            return new androidx.work.multiprocess.parcelable.ParcelableRuntimeExtras[i5];
        }
    }

    public static class b {
        public static android.os.Parcelable a(android.net.Network network) {
            return network;
        }
    }

    public ParcelableRuntimeExtras(androidx.work.WorkerParameters.a aVar) {
        this.mRuntimeExtras = aVar;
    }

    public androidx.work.WorkerParameters.a a() {
        return this.mRuntimeExtras;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    @android.annotation.SuppressLint({"NewApi"})
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        android.net.Network network = this.mRuntimeExtras.f2607c;
        boolean z4 = network != null;
        e1.b.b(parcel, z4);
        if (z4) {
            parcel.writeParcelable(androidx.work.multiprocess.parcelable.ParcelableRuntimeExtras.b.a(network), i5);
        }
        androidx.work.WorkerParameters.a aVar = this.mRuntimeExtras;
        java.util.List<android.net.Uri> list = aVar.f2606b;
        java.util.List<java.lang.String> list2 = aVar.f2605a;
        boolean z5 = (list == null || list.isEmpty()) ? false : true;
        e1.b.b(parcel, z5);
        if (z5) {
            int size = list.size();
            android.net.Uri[] uriArr = new android.net.Uri[size];
            for (int i6 = 0; i6 < size; i6++) {
                uriArr[i6] = list.get(i6);
            }
            parcel.writeParcelableArray(uriArr, i5);
        }
        boolean z6 = (list2 == null || list2.isEmpty()) ? false : true;
        e1.b.b(parcel, z6);
        if (z6) {
            parcel.writeStringList(list2);
        }
    }

    public ParcelableRuntimeExtras(android.os.Parcel parcel) {
        java.util.ArrayList arrayList;
        java.lang.ClassLoader classLoader = getClass().getClassLoader();
        android.net.Network network = e1.b.a(parcel) ? (android.net.Network) parcel.readParcelable(classLoader) : null;
        if (e1.b.a(parcel)) {
            android.os.Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
            arrayList = new java.util.ArrayList(parcelableArray.length);
            for (android.os.Parcelable parcelable : parcelableArray) {
                arrayList.add((android.net.Uri) parcelable);
            }
        } else {
            arrayList = null;
        }
        java.util.ArrayList<java.lang.String> arrayListCreateStringArrayList = e1.b.a(parcel) ? parcel.createStringArrayList() : null;
        androidx.work.WorkerParameters.a aVar = new androidx.work.WorkerParameters.a();
        this.mRuntimeExtras = aVar;
        aVar.f2607c = network;
        if (arrayList != null) {
            aVar.f2606b = arrayList;
        }
        if (arrayListCreateStringArrayList != null) {
            aVar.f2605a = arrayListCreateStringArrayList;
        }
    }
}
