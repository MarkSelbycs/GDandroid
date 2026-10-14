package androidx.core.app;

/* JADX INFO: compiled from: NotificationCompatJellybean.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.Object f1348a = new java.lang.Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.lang.Object f1349b = new java.lang.Object();

    public static android.os.Bundle a(androidx.core.app.d dVar) {
        android.os.Bundle bundle = new android.os.Bundle();
        androidx.core.graphics.drawable.IconCompat iconCompatD = dVar.d();
        bundle.putInt("icon", iconCompatD != null ? iconCompatD.g() : 0);
        bundle.putCharSequence("title", dVar.h());
        bundle.putParcelable("actionIntent", dVar.a());
        android.os.Bundle bundle2 = dVar.c() != null ? new android.os.Bundle(dVar.c()) : new android.os.Bundle();
        bundle2.putBoolean("android.support.allowGeneratedReplies", dVar.b());
        bundle.putBundle("extras", bundle2);
        bundle.putParcelableArray("remoteInputs", c(dVar.e()));
        bundle.putBoolean("showsUserInterface", dVar.g());
        bundle.putInt("semanticAction", dVar.f());
        return bundle;
    }

    public static android.os.Bundle b(androidx.core.app.j jVar) {
        new android.os.Bundle();
        throw null;
    }

    public static android.os.Bundle[] c(androidx.core.app.j[] jVarArr) {
        if (jVarArr == null) {
            return null;
        }
        android.os.Bundle[] bundleArr = new android.os.Bundle[jVarArr.length];
        for (int i5 = 0; i5 < jVarArr.length; i5++) {
            androidx.core.app.j jVar = jVarArr[i5];
            bundleArr[i5] = b(null);
        }
        return bundleArr;
    }
}
