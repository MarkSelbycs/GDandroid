package androidx.fragment.app;

/* JADX INFO: compiled from: BackStackRecord.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
final class BackStackState implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.fragment.app.BackStackState> CREATOR = new androidx.fragment.app.BackStackState.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f1488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1490c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.String f1491d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1492e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1493f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.lang.CharSequence f1494g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f1495h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final java.lang.CharSequence f1496i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final java.util.ArrayList<java.lang.String> f1497o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final java.util.ArrayList<java.lang.String> f1498p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final boolean f1499q;

    /* JADX INFO: compiled from: BackStackRecord.java */
    public static class a implements android.os.Parcelable.Creator<androidx.fragment.app.BackStackState> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.fragment.app.BackStackState createFromParcel(android.os.Parcel parcel) {
            return new androidx.fragment.app.BackStackState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.fragment.app.BackStackState[] newArray(int i5) {
            return new androidx.fragment.app.BackStackState[i5];
        }
    }

    public BackStackState(androidx.fragment.app.a aVar) {
        int size = aVar.f1591b.size();
        this.f1488a = new int[size * 6];
        if (!aVar.f1598i) {
            throw new java.lang.IllegalStateException("Not on back stack");
        }
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            androidx.fragment.app.a.C0011a c0011a = aVar.f1591b.get(i6);
            int[] iArr = this.f1488a;
            int i7 = i5 + 1;
            iArr[i5] = c0011a.f1611a;
            int i8 = i7 + 1;
            androidx.fragment.app.Fragment fragment = c0011a.f1612b;
            iArr[i7] = fragment != null ? fragment.f1507e : -1;
            int i9 = i8 + 1;
            iArr[i8] = c0011a.f1613c;
            int i10 = i9 + 1;
            iArr[i9] = c0011a.f1614d;
            int i11 = i10 + 1;
            iArr[i10] = c0011a.f1615e;
            i5 = i11 + 1;
            iArr[i11] = c0011a.f1616f;
        }
        this.f1489b = aVar.f1596g;
        this.f1490c = aVar.f1597h;
        this.f1491d = aVar.f1600k;
        this.f1492e = aVar.f1602m;
        this.f1493f = aVar.f1603n;
        this.f1494g = aVar.f1604o;
        this.f1495h = aVar.f1605p;
        this.f1496i = aVar.f1606q;
        this.f1497o = aVar.f1607r;
        this.f1498p = aVar.f1608s;
        this.f1499q = aVar.f1609t;
    }

    public androidx.fragment.app.a a(androidx.fragment.app.f fVar) {
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(fVar);
        int i5 = 0;
        int i6 = 0;
        while (i5 < this.f1488a.length) {
            androidx.fragment.app.a.C0011a c0011a = new androidx.fragment.app.a.C0011a();
            int i7 = i5 + 1;
            c0011a.f1611a = this.f1488a[i5];
            if (androidx.fragment.app.f.J) {
                android.util.Log.v("FragmentManager", "Instantiate " + aVar + " op #" + i6 + " base fragment #" + this.f1488a[i7]);
            }
            int i8 = i7 + 1;
            int i9 = this.f1488a[i7];
            if (i9 >= 0) {
                c0011a.f1612b = fVar.f1627e.get(i9);
            } else {
                c0011a.f1612b = null;
            }
            int[] iArr = this.f1488a;
            int i10 = i8 + 1;
            int i11 = iArr[i8];
            c0011a.f1613c = i11;
            int i12 = i10 + 1;
            int i13 = iArr[i10];
            c0011a.f1614d = i13;
            int i14 = i12 + 1;
            int i15 = iArr[i12];
            c0011a.f1615e = i15;
            int i16 = iArr[i14];
            c0011a.f1616f = i16;
            aVar.f1592c = i11;
            aVar.f1593d = i13;
            aVar.f1594e = i15;
            aVar.f1595f = i16;
            aVar.f(c0011a);
            i6++;
            i5 = i14 + 1;
        }
        aVar.f1596g = this.f1489b;
        aVar.f1597h = this.f1490c;
        aVar.f1600k = this.f1491d;
        aVar.f1602m = this.f1492e;
        aVar.f1598i = true;
        aVar.f1603n = this.f1493f;
        aVar.f1604o = this.f1494g;
        aVar.f1605p = this.f1495h;
        aVar.f1606q = this.f1496i;
        aVar.f1607r = this.f1497o;
        aVar.f1608s = this.f1498p;
        aVar.f1609t = this.f1499q;
        aVar.g(1);
        return aVar;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeIntArray(this.f1488a);
        parcel.writeInt(this.f1489b);
        parcel.writeInt(this.f1490c);
        parcel.writeString(this.f1491d);
        parcel.writeInt(this.f1492e);
        parcel.writeInt(this.f1493f);
        android.text.TextUtils.writeToParcel(this.f1494g, parcel, 0);
        parcel.writeInt(this.f1495h);
        android.text.TextUtils.writeToParcel(this.f1496i, parcel, 0);
        parcel.writeStringList(this.f1497o);
        parcel.writeStringList(this.f1498p);
        parcel.writeInt(this.f1499q ? 1 : 0);
    }

    public BackStackState(android.os.Parcel parcel) {
        this.f1488a = parcel.createIntArray();
        this.f1489b = parcel.readInt();
        this.f1490c = parcel.readInt();
        this.f1491d = parcel.readString();
        this.f1492e = parcel.readInt();
        this.f1493f = parcel.readInt();
        this.f1494g = (java.lang.CharSequence) android.text.TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f1495h = parcel.readInt();
        this.f1496i = (java.lang.CharSequence) android.text.TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f1497o = parcel.createStringArrayList();
        this.f1498p = parcel.createStringArrayList();
        this.f1499q = parcel.readInt() != 0;
    }
}
