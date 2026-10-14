package e1;

/* JADX INFO: compiled from: ParcelConverters.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a {
    public static byte[] a(android.os.Parcelable parcelable) {
        android.os.Parcel parcelObtain = android.os.Parcel.obtain();
        try {
            parcelable.writeToParcel(parcelObtain, 0);
            return parcelObtain.marshall();
        } finally {
            parcelObtain.recycle();
        }
    }

    public static <T> T b(byte[] bArr, android.os.Parcelable.Creator<T> creator) {
        android.os.Parcel parcelObtain = android.os.Parcel.obtain();
        try {
            parcelObtain.unmarshall(bArr, 0, bArr.length);
            parcelObtain.setDataPosition(0);
            return creator.createFromParcel(parcelObtain);
        } finally {
            parcelObtain.recycle();
        }
    }
}
