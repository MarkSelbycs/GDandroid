package androidx.core.app;

/* JADX INFO: compiled from: ActivityCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a extends androidx.core.content.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static androidx.core.app.a.c f1301c;

    /* JADX INFO: renamed from: androidx.core.app.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActivityCompat.java */
    public static class C0007a {
        public static void a(android.app.Activity activity) {
            activity.finishAffinity();
        }

        public static void b(android.app.Activity activity, android.content.Intent intent, int i5, android.os.Bundle bundle) {
            activity.startActivityForResult(intent, i5, bundle);
        }

        public static void c(android.app.Activity activity, android.content.IntentSender intentSender, int i5, android.content.Intent intent, int i6, int i7, int i8, android.os.Bundle bundle) throws android.content.IntentSender.SendIntentException {
            activity.startIntentSenderForResult(intentSender, i5, intent, i6, i7, i8, bundle);
        }
    }

    /* JADX INFO: compiled from: ActivityCompat.java */
    public static class b {
        public static void a(android.app.Activity activity) {
            activity.finishAfterTransition();
        }

        public static void b(android.app.Activity activity) {
            activity.postponeEnterTransition();
        }

        public static void c(android.app.Activity activity, android.app.SharedElementCallback sharedElementCallback) {
            activity.setEnterSharedElementCallback(sharedElementCallback);
        }

        public static void d(android.app.Activity activity, android.app.SharedElementCallback sharedElementCallback) {
            activity.setExitSharedElementCallback(sharedElementCallback);
        }

        public static void e(android.app.Activity activity) {
            activity.startPostponedEnterTransition();
        }
    }

    /* JADX INFO: compiled from: ActivityCompat.java */
    public interface c {
        boolean a(android.app.Activity activity, int i5, int i6, android.content.Intent intent);
    }

    public static void h(android.app.Activity activity) {
        androidx.core.app.a.C0007a.a(activity);
    }

    public static void i(android.app.Activity activity) {
        androidx.core.app.a.b.a(activity);
    }

    public static androidx.core.app.a.c j() {
        return f1301c;
    }

    public static void k(android.app.Activity activity) {
        androidx.core.app.a.b.b(activity);
    }

    public static void l(android.app.Activity activity, androidx.core.app.k kVar) {
        androidx.core.app.a.b.c(activity, null);
    }

    public static void m(android.app.Activity activity, androidx.core.app.k kVar) {
        androidx.core.app.a.b.d(activity, null);
    }

    public static void n(android.app.Activity activity, android.content.Intent intent, int i5, android.os.Bundle bundle) {
        androidx.core.app.a.C0007a.b(activity, intent, i5, bundle);
    }

    public static void o(android.app.Activity activity, android.content.IntentSender intentSender, int i5, android.content.Intent intent, int i6, int i7, int i8, android.os.Bundle bundle) throws android.content.IntentSender.SendIntentException {
        androidx.core.app.a.C0007a.c(activity, intentSender, i5, intent, i6, i7, i8, bundle);
    }

    public static void p(android.app.Activity activity) {
        androidx.core.app.a.b.e(activity);
    }
}
