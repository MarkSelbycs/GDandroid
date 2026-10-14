package e1;

/* JADX INFO: compiled from: ParcelUtils.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b {
    public static boolean a(android.os.Parcel parcel) {
        return parcel.readInt() == 1;
    }

    public static void b(android.os.Parcel parcel, boolean z4) {
        parcel.writeInt(z4 ? 1 : 0);
    }
}
