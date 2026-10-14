package androidx.work.multiprocess.parcelable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public class ParcelableWorkContinuationImpl implements android.os.Parcelable {
    private androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl.b mInfo;
    private static final q0.g[] sValues = q0.g.values();
    public static final android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl> CREATOR = new androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl.a();

    public class a implements android.os.Parcelable.Creator<androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl createFromParcel(android.os.Parcel parcel) {
            return new androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl[] newArray(int i5) {
            return new androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl[i5];
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.String f2887a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final q0.g f2888b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.util.List<? extends q0.b0> f2889c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public java.util.List<androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl.b> f2890d;

        public b(java.lang.String str, q0.g gVar, java.util.List<? extends q0.b0> list, java.util.List<androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl.b> list2) {
            this.f2887a = str;
            this.f2888b = gVar;
            this.f2889c = list;
            this.f2890d = list2;
        }

        public static java.util.List<r0.c0> e(r0.p0 p0Var, java.util.List<androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl.b> list) {
            if (list == null) {
                return null;
            }
            java.util.ArrayList arrayList = new java.util.ArrayList(list.size());
            for (androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl.b bVar : list) {
                arrayList.add(new r0.c0(p0Var, bVar.b(), bVar.a(), bVar.d(), e(p0Var, bVar.c())));
            }
            return arrayList;
        }

        public q0.g a() {
            return this.f2888b;
        }

        public java.lang.String b() {
            return this.f2887a;
        }

        public java.util.List<androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl.b> c() {
            return this.f2890d;
        }

        public java.util.List<? extends q0.b0> d() {
            return this.f2889c;
        }

        public r0.c0 f(r0.p0 p0Var) {
            return new r0.c0(p0Var, b(), a(), d(), e(p0Var, c()));
        }
    }

    public ParcelableWorkContinuationImpl(androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl.b bVar) {
        this.mInfo = bVar;
    }

    public androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl.b a() {
        return this.mInfo;
    }

    public r0.c0 b(r0.p0 p0Var) {
        return this.mInfo.f(p0Var);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        java.lang.String strB = this.mInfo.b();
        boolean z4 = !android.text.TextUtils.isEmpty(strB);
        e1.b.b(parcel, z4);
        if (z4) {
            parcel.writeString(strB);
        }
        parcel.writeInt(this.mInfo.a().ordinal());
        java.util.List<? extends q0.b0> listD = this.mInfo.d();
        parcel.writeInt(listD.size());
        if (!listD.isEmpty()) {
            for (int i6 = 0; i6 < listD.size(); i6++) {
                parcel.writeParcelable(new androidx.work.multiprocess.parcelable.ParcelableWorkRequest(listD.get(i6)), i5);
            }
        }
        java.util.List<androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl.b> listC = this.mInfo.c();
        boolean z5 = (listC == null || listC.isEmpty()) ? false : true;
        e1.b.b(parcel, z5);
        if (z5) {
            parcel.writeInt(listC.size());
            for (int i7 = 0; i7 < listC.size(); i7++) {
                parcel.writeParcelable(new androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl(listC.get(i7)), i5);
            }
        }
    }

    public ParcelableWorkContinuationImpl(android.os.Parcel parcel) {
        java.util.ArrayList arrayList = null;
        java.lang.String string = e1.b.a(parcel) ? parcel.readString() : null;
        q0.g gVar = sValues[parcel.readInt()];
        int i5 = parcel.readInt();
        java.util.ArrayList arrayList2 = new java.util.ArrayList(i5);
        java.lang.ClassLoader classLoader = getClass().getClassLoader();
        for (int i6 = 0; i6 < i5; i6++) {
            arrayList2.add((r0.r0) ((androidx.work.multiprocess.parcelable.ParcelableWorkRequest) parcel.readParcelable(classLoader)).a());
        }
        if (e1.b.a(parcel)) {
            int i7 = parcel.readInt();
            java.util.ArrayList arrayList3 = new java.util.ArrayList(i7);
            for (int i8 = 0; i8 < i7; i8++) {
                arrayList3.add(((androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl) parcel.readParcelable(classLoader)).a());
            }
            arrayList = arrayList3;
        }
        this.mInfo = new androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl.b(string, gVar, arrayList2, arrayList);
    }
}
