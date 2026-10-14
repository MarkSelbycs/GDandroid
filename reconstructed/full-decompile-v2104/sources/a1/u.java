package a1;

/* JADX INFO: compiled from: WakeLocks.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f48a;

    static {
        java.lang.String strI = q0.n.i("WakeLocks");
        m3.k.d(strI, "tagWithPrefix(\"WakeLocks\")");
        f48a = strI;
    }

    public static final void a() {
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        a1.v vVar = a1.v.f49a;
        synchronized (vVar) {
            linkedHashMap.putAll(vVar.a());
            a3.o oVar = a3.o.f122a;
        }
        for (java.util.Map.Entry entry : linkedHashMap.entrySet()) {
            android.os.PowerManager.WakeLock wakeLock = (android.os.PowerManager.WakeLock) entry.getKey();
            java.lang.String str = (java.lang.String) entry.getValue();
            if (wakeLock != null && wakeLock.isHeld()) {
                q0.n.e().k(f48a, "WakeLock held for " + str);
            }
        }
    }

    public static final android.os.PowerManager.WakeLock b(android.content.Context context, java.lang.String str) {
        m3.k.e(context, "context");
        m3.k.e(str, "tag");
        java.lang.Object systemService = com.stub.StubApp.getOrigApplicationContext(context.getApplicationContext()).getSystemService("power");
        m3.k.c(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        java.lang.String str2 = "WorkManager: " + str;
        android.os.PowerManager.WakeLock wakeLockNewWakeLock = ((android.os.PowerManager) systemService).newWakeLock(1, str2);
        a1.v vVar = a1.v.f49a;
        synchronized (vVar) {
            vVar.a().put(wakeLockNewWakeLock, str2);
        }
        m3.k.d(wakeLockNewWakeLock, "wakeLock");
        return wakeLockNewWakeLock;
    }
}
