package com.cndatacom.sdk.portal.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class BatteryUtil {
    @android.annotation.TargetApi(23)
    public static boolean isIgnoringBatteryOptimizations(android.content.Context context) {
        return ((android.os.PowerManager) context.getSystemService("power")).isIgnoringBatteryOptimizations(context.getPackageName());
    }
}
