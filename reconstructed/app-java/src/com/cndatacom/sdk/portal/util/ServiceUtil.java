package com.cndatacom.sdk.portal.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ServiceUtil {
    public static boolean isServiceRunning(android.content.Context context, java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return false;
        }
        java.util.ArrayList arrayList = (java.util.ArrayList) ((android.app.ActivityManager) context.getSystemService("activity")).getRunningServices(Integer.MAX_VALUE);
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            if (((android.app.ActivityManager.RunningServiceInfo) arrayList.get(i5)).service.getClassName().toString().equals(str)) {
                return true;
            }
        }
        return false;
    }
}
