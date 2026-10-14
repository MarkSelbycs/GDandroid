package androidx.core.content;

/* JADX INFO: compiled from: ContextCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"PrivateConstructorForUtilityClass"})
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.Object f1375a = new java.lang.Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.lang.Object f1376b = new java.lang.Object();

    /* JADX INFO: renamed from: androidx.core.content.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ContextCompat.java */
    public static class C0009a {
        public static void a(android.content.Context context, android.content.Intent[] intentArr, android.os.Bundle bundle) {
            context.startActivities(intentArr, bundle);
        }

        public static void b(android.content.Context context, android.content.Intent intent, android.os.Bundle bundle) {
            context.startActivity(intent, bundle);
        }
    }

    /* JADX INFO: compiled from: ContextCompat.java */
    public static class b {
        public static java.io.File[] a(android.content.Context context) {
            return context.getExternalCacheDirs();
        }

        public static java.io.File[] b(android.content.Context context, java.lang.String str) {
            return context.getExternalFilesDirs(str);
        }

        public static java.io.File[] c(android.content.Context context) {
            return context.getObbDirs();
        }
    }

    /* JADX INFO: compiled from: ContextCompat.java */
    public static class c {
        public static java.io.File a(android.content.Context context) {
            return context.getCodeCacheDir();
        }

        public static android.graphics.drawable.Drawable b(android.content.Context context, int i5) {
            return context.getDrawable(i5);
        }

        public static java.io.File c(android.content.Context context) {
            return context.getNoBackupFilesDir();
        }
    }

    /* JADX INFO: compiled from: ContextCompat.java */
    public static class d {
        public static int a(android.content.Context context, int i5) {
            return context.getColor(i5);
        }

        public static <T> T b(android.content.Context context, java.lang.Class<T> cls) {
            return (T) context.getSystemService(cls);
        }

        public static java.lang.String c(android.content.Context context, java.lang.Class<?> cls) {
            return context.getSystemServiceName(cls);
        }
    }

    /* JADX INFO: compiled from: ContextCompat.java */
    public static class e {
        public static android.content.Intent a(android.content.Context context, android.content.BroadcastReceiver broadcastReceiver, android.content.IntentFilter intentFilter, java.lang.String str, android.os.Handler handler, int i5) {
            return ((i5 & 4) == 0 || str != null) ? context.registerReceiver(broadcastReceiver, intentFilter, str, handler, i5 & 1) : context.registerReceiver(broadcastReceiver, intentFilter, androidx.core.content.a.e(context), handler);
        }

        public static android.content.ComponentName b(android.content.Context context, android.content.Intent intent) {
            return context.startForegroundService(intent);
        }
    }

    public static int a(android.content.Context context, int i5) {
        return androidx.core.content.a.d.a(context, i5);
    }

    public static android.graphics.drawable.Drawable b(android.content.Context context, int i5) {
        return androidx.core.content.a.c.b(context, i5);
    }

    public static java.io.File[] c(android.content.Context context) {
        return androidx.core.content.a.b.a(context);
    }

    public static java.io.File[] d(android.content.Context context, java.lang.String str) {
        return androidx.core.content.a.b.b(context, str);
    }

    public static java.lang.String e(android.content.Context context) {
        java.lang.String str = context.getPackageName() + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";
        if (androidx.core.content.b.b(context, str) == 0) {
            return str;
        }
        throw new java.lang.RuntimeException("Permission " + str + " is required by your application to receive broadcasts, please add it to your manifest");
    }

    public static boolean f(android.content.Context context, android.content.Intent[] intentArr, android.os.Bundle bundle) {
        androidx.core.content.a.C0009a.a(context, intentArr, bundle);
        return true;
    }

    public static void g(android.content.Context context, android.content.Intent intent) {
        androidx.core.content.a.e.b(context, intent);
    }
}
