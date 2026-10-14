package androidx.core.app;

/* JADX INFO: compiled from: NavUtils.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c {

    /* JADX INFO: compiled from: NavUtils.java */
    public static class a {
        public static android.content.Intent a(android.app.Activity activity) {
            return activity.getParentActivityIntent();
        }

        public static boolean b(android.app.Activity activity, android.content.Intent intent) {
            return activity.navigateUpTo(intent);
        }

        public static boolean c(android.app.Activity activity, android.content.Intent intent) {
            return activity.shouldUpRecreateTask(intent);
        }
    }

    public static android.content.Intent a(android.app.Activity activity) {
        android.content.Intent intentA = androidx.core.app.c.a.a(activity);
        if (intentA != null) {
            return intentA;
        }
        java.lang.String strC = c(activity);
        if (strC == null) {
            return null;
        }
        android.content.ComponentName componentName = new android.content.ComponentName(activity, strC);
        try {
            return d(activity, componentName) == null ? android.content.Intent.makeMainActivity(componentName) : new android.content.Intent().setComponent(componentName);
        } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
            android.util.Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + strC + "' in manifest");
            return null;
        }
    }

    public static android.content.Intent b(android.content.Context context, android.content.ComponentName componentName) throws android.content.pm.PackageManager.NameNotFoundException {
        java.lang.String strD = d(context, componentName);
        if (strD == null) {
            return null;
        }
        android.content.ComponentName componentName2 = new android.content.ComponentName(componentName.getPackageName(), strD);
        return d(context, componentName2) == null ? android.content.Intent.makeMainActivity(componentName2) : new android.content.Intent().setComponent(componentName2);
    }

    public static java.lang.String c(android.app.Activity activity) {
        try {
            return d(activity, activity.getComponentName());
        } catch (android.content.pm.PackageManager.NameNotFoundException e5) {
            throw new java.lang.IllegalArgumentException(e5);
        }
    }

    public static java.lang.String d(android.content.Context context, android.content.ComponentName componentName) throws android.content.pm.PackageManager.NameNotFoundException {
        java.lang.String string;
        android.content.pm.ActivityInfo activityInfo = context.getPackageManager().getActivityInfo(componentName, android.os.Build.VERSION.SDK_INT >= 29 ? 269222528 : 787072);
        java.lang.String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        android.os.Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) != '.') {
            return string;
        }
        return context.getPackageName() + string;
    }

    public static void e(android.app.Activity activity, android.content.Intent intent) {
        androidx.core.app.c.a.b(activity, intent);
    }

    public static boolean f(android.app.Activity activity, android.content.Intent intent) {
        return androidx.core.app.c.a.c(activity, intent);
    }
}
