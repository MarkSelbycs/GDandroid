package androidx.appcompat.app;

/* JADX INFO: compiled from: TwilightManager.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static androidx.appcompat.app.h f346d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f347a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.location.LocationManager f348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.appcompat.app.h.a f349c = new androidx.appcompat.app.h.a();

    /* JADX INFO: compiled from: TwilightManager.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f350a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f351b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f352c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f353d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f354e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f355f;
    }

    public h(android.content.Context context, android.location.LocationManager locationManager) {
        this.f347a = context;
        this.f348b = locationManager;
    }

    public static androidx.appcompat.app.h a(android.content.Context context) {
        if (f346d == null) {
            android.content.Context applicationContext = context.getApplicationContext();
            f346d = new androidx.appcompat.app.h(applicationContext, (android.location.LocationManager) applicationContext.getSystemService("location"));
        }
        return f346d;
    }

    @android.annotation.SuppressLint({"MissingPermission"})
    public final android.location.Location b() {
        android.location.Location locationC = androidx.core.content.b.b(this.f347a, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? c("network") : null;
        android.location.Location locationC2 = androidx.core.content.b.b(this.f347a, "android.permission.ACCESS_FINE_LOCATION") == 0 ? c("gps") : null;
        if (locationC2 == null || locationC == null) {
            return locationC2 != null ? locationC2 : locationC;
        }
        return locationC2.getTime() > locationC.getTime() ? locationC2 : locationC;
    }

    public final android.location.Location c(java.lang.String str) {
        try {
            if (this.f348b.isProviderEnabled(str)) {
                return this.f348b.getLastKnownLocation(str);
            }
            return null;
        } catch (java.lang.Exception e5) {
            android.util.Log.d("TwilightManager", "Failed to get last known location", e5);
            return null;
        }
    }

    public boolean d() {
        androidx.appcompat.app.h.a aVar = this.f349c;
        if (e()) {
            return aVar.f350a;
        }
        android.location.Location locationB = b();
        if (locationB != null) {
            f(locationB);
            return aVar.f350a;
        }
        android.util.Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i5 = java.util.Calendar.getInstance().get(11);
        return i5 < 6 || i5 >= 22;
    }

    public final boolean e() {
        return this.f349c.f355f > java.lang.System.currentTimeMillis();
    }

    public final void f(android.location.Location location) {
        long j5;
        long j6;
        androidx.appcompat.app.h.a aVar = this.f349c;
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        androidx.appcompat.app.g gVarB = androidx.appcompat.app.g.b();
        gVarB.a(jCurrentTimeMillis - 86400000, location.getLatitude(), location.getLongitude());
        long j7 = gVarB.f343a;
        gVarB.a(jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        boolean z4 = gVarB.f345c == 1;
        long j8 = gVarB.f344b;
        long j9 = gVarB.f343a;
        gVarB.a(86400000 + jCurrentTimeMillis, location.getLatitude(), location.getLongitude());
        long j10 = gVarB.f344b;
        if (j8 == -1 || j9 == -1) {
            j5 = 43200000 + jCurrentTimeMillis;
        } else {
            if (jCurrentTimeMillis > j9) {
                j6 = 0 + j10;
            } else {
                j6 = jCurrentTimeMillis > j8 ? 0 + j9 : 0 + j8;
            }
            j5 = j6 + 60000;
        }
        aVar.f350a = z4;
        aVar.f351b = j7;
        aVar.f352c = j8;
        aVar.f353d = j9;
        aVar.f354e = j10;
        aVar.f355f = j5;
    }
}
