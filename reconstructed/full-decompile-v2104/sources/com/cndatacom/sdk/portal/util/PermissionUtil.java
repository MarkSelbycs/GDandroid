package com.cndatacom.sdk.portal.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class PermissionUtil {
    public static boolean checkPermission(android.content.Context context, java.lang.String[] strArr) {
        boolean z4 = false;
        for (java.lang.String str : strArr) {
            z4 = androidx.core.content.b.b(context, str) == 0;
        }
        return z4;
    }

    public static boolean hasCameraPermission(android.content.Context context) {
        return checkPermission(context, new java.lang.String[]{"android.permission.CAMERA"});
    }

    public static boolean hasLocationPermission(android.content.Context context) {
        return checkPermission(context, new java.lang.String[]{"android.permission.ACCESS_FINE_LOCATION"});
    }

    public static boolean hasLocationServicePermission(android.content.Context context) {
        android.location.LocationManager locationManager = (android.location.LocationManager) context.getSystemService("location");
        return locationManager.isProviderEnabled("gps") || locationManager.isProviderEnabled("network");
    }

    public static boolean hasReadPhoneState(android.content.Context context) {
        return checkPermission(context, new java.lang.String[]{"android.permission.READ_PHONE_STATE"});
    }
}
