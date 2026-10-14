package androidx.fragment.app;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
final class FragmentState implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<androidx.fragment.app.FragmentState> CREATOR = new androidx.fragment.app.FragmentState.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f1566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1568c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f1569d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1570e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final java.lang.String f1571f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f1572g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f1573h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final android.os.Bundle f1574i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f1575o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public android.os.Bundle f1576p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public androidx.fragment.app.Fragment f1577q;

    public static class a implements android.os.Parcelable.Creator<androidx.fragment.app.FragmentState> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.fragment.app.FragmentState createFromParcel(android.os.Parcel parcel) {
            return new androidx.fragment.app.FragmentState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public androidx.fragment.app.FragmentState[] newArray(int i5) {
            return new androidx.fragment.app.FragmentState[i5];
        }
    }

    public FragmentState(androidx.fragment.app.Fragment fragment) {
        this.f1566a = fragment.getClass().getName();
        this.f1567b = fragment.f1507e;
        this.f1568c = fragment.f1515r;
        this.f1569d = fragment.C;
        this.f1570e = fragment.D;
        this.f1571f = fragment.E;
        this.f1572g = fragment.H;
        this.f1573h = fragment.G;
        this.f1574i = fragment.f1509g;
        this.f1575o = fragment.F;
    }

    public androidx.fragment.app.Fragment a(androidx.fragment.app.d dVar, androidx.fragment.app.b bVar, androidx.fragment.app.Fragment fragment, androidx.fragment.app.g gVar, androidx.lifecycle.q qVar) {
        if (this.f1577q == null) {
            android.content.Context contextE = dVar.e();
            android.os.Bundle bundle = this.f1574i;
            if (bundle != null) {
                bundle.setClassLoader(contextE.getClassLoader());
            }
            if (bVar != null) {
                this.f1577q = bVar.a(contextE, this.f1566a, this.f1574i);
            } else {
                this.f1577q = androidx.fragment.app.Fragment.C(contextE, this.f1566a, this.f1574i);
            }
            android.os.Bundle bundle2 = this.f1576p;
            if (bundle2 != null) {
                bundle2.setClassLoader(contextE.getClassLoader());
                this.f1577q.f1504b = this.f1576p;
            }
            this.f1577q.U0(this.f1567b, fragment);
            androidx.fragment.app.Fragment fragment2 = this.f1577q;
            fragment2.f1515r = this.f1568c;
            fragment2.f1517t = true;
            fragment2.C = this.f1569d;
            fragment2.D = this.f1570e;
            fragment2.E = this.f1571f;
            fragment2.H = this.f1572g;
            fragment2.G = this.f1573h;
            fragment2.F = this.f1575o;
            fragment2.f1520w = dVar.f1622e;
            if (androidx.fragment.app.f.J) {
                android.util.Log.v("FragmentManager", "Instantiated fragment " + this.f1577q);
            }
        }
        androidx.fragment.app.Fragment fragment3 = this.f1577q;
        fragment3.f1523z = gVar;
        fragment3.A = qVar;
        return fragment3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeString(this.f1566a);
        parcel.writeInt(this.f1567b);
        parcel.writeInt(this.f1568c ? 1 : 0);
        parcel.writeInt(this.f1569d);
        parcel.writeInt(this.f1570e);
        parcel.writeString(this.f1571f);
        parcel.writeInt(this.f1572g ? 1 : 0);
        parcel.writeInt(this.f1573h ? 1 : 0);
        parcel.writeBundle(this.f1574i);
        parcel.writeInt(this.f1575o ? 1 : 0);
        parcel.writeBundle(this.f1576p);
    }

    public FragmentState(android.os.Parcel parcel) {
        this.f1566a = parcel.readString();
        this.f1567b = parcel.readInt();
        this.f1568c = parcel.readInt() != 0;
        this.f1569d = parcel.readInt();
        this.f1570e = parcel.readInt();
        this.f1571f = parcel.readString();
        this.f1572g = parcel.readInt() != 0;
        this.f1573h = parcel.readInt() != 0;
        this.f1574i = parcel.readBundle();
        this.f1575o = parcel.readInt() != 0;
        this.f1576p = parcel.readBundle();
    }
}
