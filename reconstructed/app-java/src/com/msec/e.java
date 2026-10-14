package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e implements com.msec.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private android.content.Context f3840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f3841b = 0.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f3842c = 0.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f3843d = 0.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private java.lang.String f3844e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private java.lang.String f3845f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3846g = 6;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f3847h = false;

    @Override // com.msec.n
    public java.lang.String a() {
        return (java.lang.String) com.msec.vvv.a(1540, new java.lang.Object[]{this});
    }

    @Override // com.msec.n
    @android.annotation.TargetApi(23)
    public void a(android.content.Context context) {
        android.location.Address address;
        this.f3840a = context;
        try {
            if (com.msec.u.b(16384)) {
                android.content.pm.PackageManager packageManager = this.f3840a.getPackageManager();
                java.lang.String packageName = this.f3840a.getPackageName();
                if (packageManager.checkPermission(com.msec.vvv.a(1419), packageName) == 0 && packageManager.checkPermission(com.msec.vvv.a(1420), packageName) == 0) {
                    android.location.LocationManager locationManager = (android.location.LocationManager) this.f3840a.getSystemService(com.msec.vvv.a(1351));
                    android.location.Location lastKnownLocation = locationManager.getLastKnownLocation(com.msec.vvv.a(646));
                    if (lastKnownLocation == null) {
                        lastKnownLocation = locationManager.getLastKnownLocation(com.msec.vvv.a(748));
                    }
                    if (lastKnownLocation == null) {
                        lastKnownLocation = locationManager.getLastKnownLocation(com.msec.vvv.a(747));
                    }
                    if (lastKnownLocation != null) {
                        this.f3841b = com.msec.g.a((float) lastKnownLocation.getLatitude(), this.f3846g);
                        this.f3842c = com.msec.g.a((float) lastKnownLocation.getLongitude(), this.f3846g);
                        this.f3843d = com.msec.g.a((float) lastKnownLocation.getAltitude(), this.f3846g);
                        this.f3847h = true;
                        com.msec.X3.A1(com.msec.vvv.a(1349), "" + this.f3841b);
                        com.msec.X3.A1(com.msec.vvv.a(746), "" + this.f3842c);
                        com.msec.X3.A1(com.msec.vvv.a(745), "" + this.f3843d);
                    }
                    try {
                        address = new android.location.Geocoder(context, java.util.Locale.CHINA).getFromLocation(lastKnownLocation.getLatitude(), lastKnownLocation.getLongitude(), 1).get(0);
                    } catch (java.io.IOException unused) {
                        address = null;
                    }
                    if (address != null) {
                        this.f3844e = com.msec.m.a(address.getAdminArea());
                        this.f3845f = com.msec.m.a(address.getLocality());
                        com.msec.X3.A1(com.msec.vvv.a(744), "" + this.f3844e);
                        com.msec.X3.A1(com.msec.vvv.a(743), "" + this.f3845f);
                    }
                }
            }
        } catch (java.lang.Exception unused2) {
        }
    }
}
