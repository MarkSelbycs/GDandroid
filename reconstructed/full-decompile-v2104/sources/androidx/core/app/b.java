package androidx.core.app;

/* JADX INFO: compiled from: AppOpsManagerCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b {

    /* JADX INFO: compiled from: AppOpsManagerCompat.java */
    public static class a {
        public static <T> T a(android.content.Context context, java.lang.Class<T> cls) {
            return (T) context.getSystemService(cls);
        }

        public static int b(android.app.AppOpsManager appOpsManager, java.lang.String str, java.lang.String str2) {
            return appOpsManager.noteProxyOp(str, str2);
        }

        public static int c(android.app.AppOpsManager appOpsManager, java.lang.String str, java.lang.String str2) {
            return appOpsManager.noteProxyOpNoThrow(str, str2);
        }

        public static java.lang.String d(java.lang.String str) {
            return android.app.AppOpsManager.permissionToOp(str);
        }
    }

    /* JADX INFO: renamed from: androidx.core.app.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AppOpsManagerCompat.java */
    public static class C0008b {
        public static int a(android.app.AppOpsManager appOpsManager, java.lang.String str, int i5, java.lang.String str2) {
            if (appOpsManager == null) {
                return 1;
            }
            return appOpsManager.checkOpNoThrow(str, i5, str2);
        }

        public static java.lang.String b(android.content.Context context) {
            return context.getOpPackageName();
        }

        public static android.app.AppOpsManager c(android.content.Context context) {
            return (android.app.AppOpsManager) context.getSystemService(android.app.AppOpsManager.class);
        }
    }

    public static int a(android.content.Context context, int i5, java.lang.String str, java.lang.String str2) {
        if (android.os.Build.VERSION.SDK_INT < 29) {
            return b(context, str, str2);
        }
        android.app.AppOpsManager appOpsManagerC = androidx.core.app.b.C0008b.c(context);
        int iA = androidx.core.app.b.C0008b.a(appOpsManagerC, str, android.os.Binder.getCallingUid(), str2);
        return iA != 0 ? iA : androidx.core.app.b.C0008b.a(appOpsManagerC, str, i5, androidx.core.app.b.C0008b.b(context));
    }

    public static int b(android.content.Context context, java.lang.String str, java.lang.String str2) {
        return androidx.core.app.b.a.c((android.app.AppOpsManager) androidx.core.app.b.a.a(context, android.app.AppOpsManager.class), str, str2);
    }

    public static java.lang.String c(java.lang.String str) {
        return androidx.core.app.b.a.d(str);
    }
}
