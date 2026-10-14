package a1;

/* JADX INFO: compiled from: NetworkApi21.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class i {
    public static final android.net.NetworkCapabilities a(android.net.ConnectivityManager connectivityManager, android.net.Network network) {
        m3.k.e(connectivityManager, "<this>");
        return connectivityManager.getNetworkCapabilities(network);
    }

    public static final boolean b(android.net.NetworkCapabilities networkCapabilities, int i5) {
        m3.k.e(networkCapabilities, "<this>");
        return networkCapabilities.hasCapability(i5);
    }

    public static final void c(android.net.ConnectivityManager connectivityManager, android.net.ConnectivityManager.NetworkCallback networkCallback) {
        m3.k.e(connectivityManager, "<this>");
        m3.k.e(networkCallback, "networkCallback");
        connectivityManager.unregisterNetworkCallback(networkCallback);
    }
}
