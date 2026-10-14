package t;

/* JADX INFO: compiled from: FontProvider.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.Comparator<byte[]> f6113a = new java.util.Comparator() { // from class: t.c
        @Override // java.util.Comparator
        public final int compare(java.lang.Object obj, java.lang.Object obj2) {
            return t.d.g((byte[]) obj, (byte[]) obj2);
        }
    };

    /* JADX INFO: compiled from: FontProvider.java */
    public static class a {
        public static android.database.Cursor a(android.content.ContentResolver contentResolver, android.net.Uri uri, java.lang.String[] strArr, java.lang.String str, java.lang.String[] strArr2, java.lang.String str2, java.lang.Object obj) {
            return contentResolver.query(uri, strArr, str, strArr2, str2, (android.os.CancellationSignal) obj);
        }
    }

    public static java.util.List<byte[]> b(android.content.pm.Signature[] signatureArr) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (android.content.pm.Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    public static boolean c(java.util.List<byte[]> list, java.util.List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            if (!java.util.Arrays.equals(list.get(i5), list2.get(i5))) {
                return false;
            }
        }
        return true;
    }

    public static java.util.List<java.util.List<byte[]>> d(t.e eVar, android.content.res.Resources resources) {
        return eVar.b() != null ? eVar.b() : n.a.c(resources, eVar.c());
    }

    public static t.g.a e(android.content.Context context, t.e eVar, android.os.CancellationSignal cancellationSignal) throws android.content.pm.PackageManager.NameNotFoundException {
        android.content.pm.ProviderInfo providerInfoF = f(context.getPackageManager(), eVar, context.getResources());
        return providerInfoF == null ? t.g.a.a(1, null) : t.g.a.a(0, h(context, eVar, providerInfoF.authority, cancellationSignal));
    }

    public static android.content.pm.ProviderInfo f(android.content.pm.PackageManager packageManager, t.e eVar, android.content.res.Resources resources) throws android.content.pm.PackageManager.NameNotFoundException {
        java.lang.String strE = eVar.e();
        android.content.pm.ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(strE, 0);
        if (providerInfoResolveContentProvider == null) {
            throw new android.content.pm.PackageManager.NameNotFoundException("No package found for authority: " + strE);
        }
        if (!providerInfoResolveContentProvider.packageName.equals(eVar.f())) {
            throw new android.content.pm.PackageManager.NameNotFoundException("Found content provider " + strE + ", but package was not " + eVar.f());
        }
        java.util.List<byte[]> listB = b(packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures);
        java.util.Collections.sort(listB, f6113a);
        java.util.List<java.util.List<byte[]>> listD = d(eVar, resources);
        for (int i5 = 0; i5 < listD.size(); i5++) {
            java.util.ArrayList arrayList = new java.util.ArrayList(listD.get(i5));
            java.util.Collections.sort(arrayList, f6113a);
            if (c(listB, arrayList)) {
                return providerInfoResolveContentProvider;
            }
        }
        return null;
    }

    public static /* synthetic */ int g(byte[] bArr, byte[] bArr2) {
        int length;
        int length2;
        if (bArr.length == bArr2.length) {
            for (int i5 = 0; i5 < bArr.length; i5++) {
                if (bArr[i5] != bArr2[i5]) {
                    length = bArr[i5];
                    length2 = bArr2[i5];
                }
            }
            return 0;
        }
        length = bArr.length;
        length2 = bArr2.length;
        return length - length2;
    }

    public static t.g.b[] h(android.content.Context context, t.e eVar, java.lang.String str, android.os.CancellationSignal cancellationSignal) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        android.net.Uri uriBuild = new android.net.Uri.Builder().scheme("content").authority(str).build();
        android.net.Uri uriBuild2 = new android.net.Uri.Builder().scheme("content").authority(str).appendPath("file").build();
        android.database.Cursor cursorA = null;
        try {
            int i5 = 0;
            cursorA = t.d.a.a(context.getContentResolver(), uriBuild, new java.lang.String[]{"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"}, "query = ?", new java.lang.String[]{eVar.g()}, null, cancellationSignal);
            if (cursorA != null && cursorA.getCount() > 0) {
                int columnIndex = cursorA.getColumnIndex("result_code");
                java.util.ArrayList arrayList2 = new java.util.ArrayList();
                int columnIndex2 = cursorA.getColumnIndex("_id");
                int columnIndex3 = cursorA.getColumnIndex("file_id");
                int columnIndex4 = cursorA.getColumnIndex("font_ttc_index");
                int columnIndex5 = cursorA.getColumnIndex("font_weight");
                int columnIndex6 = cursorA.getColumnIndex("font_italic");
                while (cursorA.moveToNext()) {
                    int i6 = columnIndex != -1 ? cursorA.getInt(columnIndex) : i5;
                    arrayList2.add(t.g.b.a(columnIndex3 == -1 ? android.content.ContentUris.withAppendedId(uriBuild, cursorA.getLong(columnIndex2)) : android.content.ContentUris.withAppendedId(uriBuild2, cursorA.getLong(columnIndex3)), columnIndex4 != -1 ? cursorA.getInt(columnIndex4) : i5, columnIndex5 != -1 ? cursorA.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursorA.getInt(columnIndex6) == 1, i6));
                    i5 = 0;
                }
                arrayList = arrayList2;
            }
            return (t.g.b[]) arrayList.toArray(new t.g.b[0]);
        } finally {
            if (cursorA != null) {
                cursorA.close();
            }
        }
    }
}
