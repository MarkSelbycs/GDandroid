package a1;

/* JADX INFO: compiled from: NetworkApi24.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class k {
    public static final void a(android.net.ConnectivityManager connectivityManager, android.net.ConnectivityManager.NetworkCallback networkCallback) {
        m3.k.e(connectivityManager, "<this>");
        m3.k.e(networkCallback, "networkCallback");
        connectivityManager.registerDefaultNetworkCallback(networkCallback);
    }
}
