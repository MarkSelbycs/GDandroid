package m0;

/* JADX INFO: compiled from: VersionedParcelParcel.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends m0.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final android.util.SparseIntArray f5161d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final android.os.Parcel f5162e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f5163f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f5164g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final java.lang.String f5165h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5166i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5167j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5168k;

    public b(android.os.Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new j.a(), new j.a(), new j.a());
    }

    @Override // m0.a
    public void A(byte[] bArr) {
        if (bArr == null) {
            this.f5162e.writeInt(-1);
        } else {
            this.f5162e.writeInt(bArr.length);
            this.f5162e.writeByteArray(bArr);
        }
    }

    @Override // m0.a
    public void C(java.lang.CharSequence charSequence) {
        android.text.TextUtils.writeToParcel(charSequence, this.f5162e, 0);
    }

    @Override // m0.a
    public void E(int i5) {
        this.f5162e.writeInt(i5);
    }

    @Override // m0.a
    public void G(android.os.Parcelable parcelable) {
        this.f5162e.writeParcelable(parcelable, 0);
    }

    @Override // m0.a
    public void I(java.lang.String str) {
        this.f5162e.writeString(str);
    }

    @Override // m0.a
    public void a() {
        int i5 = this.f5166i;
        if (i5 >= 0) {
            int i6 = this.f5161d.get(i5);
            int iDataPosition = this.f5162e.dataPosition();
            this.f5162e.setDataPosition(i6);
            this.f5162e.writeInt(iDataPosition - i6);
            this.f5162e.setDataPosition(iDataPosition);
        }
    }

    @Override // m0.a
    public m0.a b() {
        android.os.Parcel parcel = this.f5162e;
        int iDataPosition = parcel.dataPosition();
        int i5 = this.f5167j;
        if (i5 == this.f5163f) {
            i5 = this.f5164g;
        }
        return new m0.b(parcel, iDataPosition, i5, this.f5165h + "  ", this.f5158a, this.f5159b, this.f5160c);
    }

    @Override // m0.a
    public boolean g() {
        return this.f5162e.readInt() != 0;
    }

    @Override // m0.a
    public byte[] i() {
        int i5 = this.f5162e.readInt();
        if (i5 < 0) {
            return null;
        }
        byte[] bArr = new byte[i5];
        this.f5162e.readByteArray(bArr);
        return bArr;
    }

    @Override // m0.a
    public java.lang.CharSequence k() {
        return (java.lang.CharSequence) android.text.TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f5162e);
    }

    @Override // m0.a
    public boolean m(int i5) {
        while (this.f5167j < this.f5164g) {
            int i6 = this.f5168k;
            if (i6 == i5) {
                return true;
            }
            if (java.lang.String.valueOf(i6).compareTo(java.lang.String.valueOf(i5)) > 0) {
                return false;
            }
            this.f5162e.setDataPosition(this.f5167j);
            int i7 = this.f5162e.readInt();
            this.f5168k = this.f5162e.readInt();
            this.f5167j += i7;
        }
        return this.f5168k == i5;
    }

    @Override // m0.a
    public int o() {
        return this.f5162e.readInt();
    }

    @Override // m0.a
    public <T extends android.os.Parcelable> T q() {
        return (T) this.f5162e.readParcelable(getClass().getClassLoader());
    }

    @Override // m0.a
    public java.lang.String s() {
        return this.f5162e.readString();
    }

    @Override // m0.a
    public void w(int i5) {
        a();
        this.f5166i = i5;
        this.f5161d.put(i5, this.f5162e.dataPosition());
        E(0);
        E(i5);
    }

    @Override // m0.a
    public void y(boolean z4) {
        this.f5162e.writeInt(z4 ? 1 : 0);
    }

    public b(android.os.Parcel parcel, int i5, int i6, java.lang.String str, j.a<java.lang.String, java.lang.reflect.Method> aVar, j.a<java.lang.String, java.lang.reflect.Method> aVar2, j.a<java.lang.String, java.lang.Class> aVar3) {
        super(aVar, aVar2, aVar3);
        this.f5161d = new android.util.SparseIntArray();
        this.f5166i = -1;
        this.f5168k = -1;
        this.f5162e = parcel;
        this.f5163f = i5;
        this.f5164g = i6;
        this.f5167j = i5;
        this.f5165h = str;
    }
}
