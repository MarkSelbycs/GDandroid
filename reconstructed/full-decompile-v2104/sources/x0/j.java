package x0;

/* JADX INFO: compiled from: NetworkStateTracker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f6788a;

    static {
        java.lang.String strI = q0.n.i("NetworkStateTracker");
        m3.k.d(strI, "tagWithPrefix(\"NetworkStateTracker\")");
        f6788a = strI;
    }

    public static final x0.g<v0.c> a(android.content.Context context, c1.b bVar) {
        m3.k.e(context, "context");
        m3.k.e(bVar, "taskExecutor");
        return new x0.i(context, bVar);
    }

    public static final v0.c c(android.net.ConnectivityManager connectivityManager) {
        m3.k.e(connectivityManager, "<this>");
        android.net.NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return new v0.c(activeNetworkInfo != null && activeNetworkInfo.isConnected(), d(connectivityManager), r.a.a(connectivityManager), (activeNetworkInfo == null || activeNetworkInfo.isRoaming()) ? false : true);
    }

    public static final boolean d(android.net.ConnectivityManager connectivityManager) {
        m3.k.e(connectivityManager, "<this>");
        try {
            android.net.NetworkCapabilities networkCapabilitiesA = a1.i.a(connectivityManager, a1.j.a(connectivityManager));
            if (networkCapabilitiesA != null) {
                return a1.i.b(networkCapabilitiesA, 16);
            }
            return false;
        } catch (java.lang.SecurityException e5) {
            q0.n.e().d(f6788a, "Unable to validate active network", e5);
            return false;
        }
    }
}
