package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ar implements android.location.LocationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private android.location.LocationListener f3665a;

    public ar(android.location.LocationListener locationListener) {
        this.f3665a = locationListener;
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(android.location.Location location) {
        com.msec.X3.Z(location, false, false);
        android.location.LocationListener locationListener = this.f3665a;
        if (locationListener != null) {
            locationListener.onLocationChanged(location);
        }
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(java.lang.String str) {
        android.location.LocationListener locationListener = this.f3665a;
        if (locationListener != null) {
            locationListener.onProviderDisabled(str);
        }
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(java.lang.String str) {
        android.location.LocationListener locationListener = this.f3665a;
        if (locationListener != null) {
            locationListener.onProviderEnabled(str);
        }
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(java.lang.String str, int i5, android.os.Bundle bundle) {
        android.location.LocationListener locationListener = this.f3665a;
        if (locationListener != null) {
            locationListener.onStatusChanged(str, i5, bundle);
        }
    }
}
