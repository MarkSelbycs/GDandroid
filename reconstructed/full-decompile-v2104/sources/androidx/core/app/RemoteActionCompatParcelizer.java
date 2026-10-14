package androidx.core.app;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class RemoteActionCompatParcelizer {
    public static androidx.core.app.RemoteActionCompat read(m0.a aVar) {
        androidx.core.app.RemoteActionCompat remoteActionCompat = new androidx.core.app.RemoteActionCompat();
        remoteActionCompat.f1295a = (androidx.core.graphics.drawable.IconCompat) aVar.v(remoteActionCompat.f1295a, 1);
        remoteActionCompat.f1296b = aVar.l(remoteActionCompat.f1296b, 2);
        remoteActionCompat.f1297c = aVar.l(remoteActionCompat.f1297c, 3);
        remoteActionCompat.f1298d = (android.app.PendingIntent) aVar.r(remoteActionCompat.f1298d, 4);
        remoteActionCompat.f1299e = aVar.h(remoteActionCompat.f1299e, 5);
        remoteActionCompat.f1300f = aVar.h(remoteActionCompat.f1300f, 6);
        return remoteActionCompat;
    }

    public static void write(androidx.core.app.RemoteActionCompat remoteActionCompat, m0.a aVar) {
        aVar.x(false, false);
        aVar.M(remoteActionCompat.f1295a, 1);
        aVar.D(remoteActionCompat.f1296b, 2);
        aVar.D(remoteActionCompat.f1297c, 3);
        aVar.H(remoteActionCompat.f1298d, 4);
        aVar.z(remoteActionCompat.f1299e, 5);
        aVar.z(remoteActionCompat.f1300f, 6);
    }
}
