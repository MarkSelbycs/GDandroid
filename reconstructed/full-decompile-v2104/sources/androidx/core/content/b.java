package androidx.core.content;

/* JADX INFO: compiled from: PermissionChecker.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b {
    public static int a(android.content.Context context, java.lang.String str, int i5, int i6, java.lang.String str2) {
        if (context.checkPermission(str, i5, i6) == -1) {
            return -1;
        }
        java.lang.String strC = androidx.core.app.b.c(str);
        if (strC == null) {
            return 0;
        }
        if (str2 == null) {
            java.lang.String[] packagesForUid = context.getPackageManager().getPackagesForUid(i6);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            str2 = packagesForUid[0];
        }
        return (android.os.Process.myUid() == i6 && v.d.a(context.getPackageName(), str2) ? androidx.core.app.b.a(context, i6, strC, str2) : androidx.core.app.b.b(context, strC, str2)) == 0 ? 0 : -2;
    }

    public static int b(android.content.Context context, java.lang.String str) {
        return a(context, str, android.os.Process.myPid(), android.os.Process.myUid(), context.getPackageName());
    }
}
