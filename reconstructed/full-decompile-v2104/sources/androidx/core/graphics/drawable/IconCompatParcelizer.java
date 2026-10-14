package androidx.core.graphics.drawable;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class IconCompatParcelizer {
    public static androidx.core.graphics.drawable.IconCompat read(m0.a aVar) {
        androidx.core.graphics.drawable.IconCompat iconCompat = new androidx.core.graphics.drawable.IconCompat();
        iconCompat.f1379a = aVar.p(iconCompat.f1379a, 1);
        iconCompat.f1381c = aVar.j(iconCompat.f1381c, 2);
        iconCompat.f1382d = aVar.r(iconCompat.f1382d, 3);
        iconCompat.f1383e = aVar.p(iconCompat.f1383e, 4);
        iconCompat.f1384f = aVar.p(iconCompat.f1384f, 5);
        iconCompat.f1385g = (android.content.res.ColorStateList) aVar.r(iconCompat.f1385g, 6);
        iconCompat.f1387i = aVar.t(iconCompat.f1387i, 7);
        iconCompat.f1388j = aVar.t(iconCompat.f1388j, 8);
        iconCompat.k();
        return iconCompat;
    }

    public static void write(androidx.core.graphics.drawable.IconCompat iconCompat, m0.a aVar) {
        aVar.x(true, true);
        iconCompat.l(aVar.f());
        int i5 = iconCompat.f1379a;
        if (-1 != i5) {
            aVar.F(i5, 1);
        }
        byte[] bArr = iconCompat.f1381c;
        if (bArr != null) {
            aVar.B(bArr, 2);
        }
        android.os.Parcelable parcelable = iconCompat.f1382d;
        if (parcelable != null) {
            aVar.H(parcelable, 3);
        }
        int i6 = iconCompat.f1383e;
        if (i6 != 0) {
            aVar.F(i6, 4);
        }
        int i7 = iconCompat.f1384f;
        if (i7 != 0) {
            aVar.F(i7, 5);
        }
        android.content.res.ColorStateList colorStateList = iconCompat.f1385g;
        if (colorStateList != null) {
            aVar.H(colorStateList, 6);
        }
        java.lang.String str = iconCompat.f1387i;
        if (str != null) {
            aVar.J(str, 7);
        }
        java.lang.String str2 = iconCompat.f1388j;
        if (str2 != null) {
            aVar.J(str2, 8);
        }
    }
}
