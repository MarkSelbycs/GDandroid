package com.cndatacom.sdk.portal.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class IntentUtil {
    private static final java.lang.String MANUFACTURER_HUAWEI = "HUAWEI";
    private static final java.lang.String MANUFACTURER_LENOVO = "LENOVO";
    private static final java.lang.String MANUFACTURER_LG = "LG";
    private static final java.lang.String MANUFACTURER_MEIZU = "Meizu";
    private static final java.lang.String MANUFACTURER_OPPO = "OPPO";
    private static final java.lang.String MANUFACTURER_SAMSUNG = "samsung";
    private static final java.lang.String MANUFACTURER_SONY = "Sony";
    private static final java.lang.String MANUFACTURER_VIVO = "vivo";
    private static final java.lang.String MANUFACTURER_XIAOMI = "Xiaomi";
    private static final java.lang.String MANUFACTURER_YULONG = "YuLong";
    private static final java.lang.String MANUFACTURER_ZTE = "ZTE";

    private static void Huawei(android.app.Activity activity) {
        gotoAppDetailSetting(activity);
    }

    private static void LG(android.app.Activity activity) {
        try {
            android.content.Intent intent = new android.content.Intent("android.intent.action.MAIN");
            intent.setFlags(com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT);
            intent.putExtra("packageName", activity.getPackageName());
            intent.setComponent(new android.content.ComponentName("com.android.settings", "com.android.settings.Settings$AccessLockSummaryActivity"));
            activity.startActivity(intent);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            gotoAppDetailSetting(activity);
        }
    }

    private static void Meizu(android.app.Activity activity) {
        try {
            android.content.Intent intent = new android.content.Intent("com.meizu.safe.security.SHOW_APPSEC");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.putExtra("packageName", activity.getPackageName());
            activity.startActivity(intent);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            gotoAppDetailSetting(activity);
        }
    }

    private static void OPPO(android.app.Activity activity) {
        try {
            android.content.Intent intent = new android.content.Intent();
            intent.setFlags(com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT);
            intent.putExtra("packageName", activity.getPackageName());
            intent.setComponent(new android.content.ComponentName("com.coloros.securitypermission", "com.coloros.securitypermission.permission.PermissionAppAllPermissionActivity"));
            activity.startActivity(intent);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            gotoAppDetailSetting(activity);
        }
    }

    private static void Sony(android.app.Activity activity) {
        try {
            android.content.Intent intent = new android.content.Intent();
            intent.setFlags(com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT);
            intent.putExtra("packageName", activity.getPackageName());
            intent.setComponent(new android.content.ComponentName("com.sonymobile.cta", "com.sonymobile.cta.SomcCTAMainActivity"));
            activity.startActivity(intent);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            gotoAppDetailSetting(activity);
        }
    }

    private static void VIVO(android.app.Activity activity) {
        java.lang.String str = android.os.Build.MODEL;
        if ((!str.contains("Y85") || str.contains("Y85A")) && !str.contains("vivo Y53L")) {
            android.content.Intent intent = new android.content.Intent();
            intent.setClassName("com.vivo.permissionmanager", "com.vivo.permissionmanager.activity.SoftPermissionDetailActivity");
            intent.setAction("secure.intent.action.softPermissionDetail");
            intent.putExtra("packagename", activity.getPackageName());
            activity.startActivity(intent);
            return;
        }
        android.content.Intent intent2 = new android.content.Intent();
        intent2.setClassName("com.vivo.permissionmanager", "com.vivo.permissionmanager.activity.PurviewTabActivity");
        intent2.putExtra("packagename", activity.getPackageName());
        intent2.putExtra("tabId", "1");
        activity.startActivity(intent2);
    }

    private static void Xiaomi(android.app.Activity activity) {
        try {
            android.content.Intent intent = new android.content.Intent("miui.intent.action.APP_PERM_EDITOR");
            intent.putExtra("extra_pkgname", activity.getPackageName());
            intent.setComponent(new android.content.ComponentName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity"));
            activity.startActivity(intent);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            gotoAppDetailSetting(activity);
        }
    }

    private static void _360(android.app.Activity activity) {
        android.content.Intent intent = new android.content.Intent("android.intent.action.MAIN");
        intent.setFlags(com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT);
        intent.putExtra("packageName", activity.getPackageName());
        intent.setComponent(new android.content.ComponentName("com.qihoo360.mobilesafe", "com.qihoo360.mobilesafe.ui.index.AppEnterActivity"));
        activity.startActivity(intent);
    }

    public static void goToPermissionSetting(android.app.Activity activity) {
        java.lang.String str = android.os.Build.MANUFACTURER;
        str.hashCode();
        switch (str) {
            case "Xiaomi":
                Xiaomi(activity);
                break;
            case "LG":
                LG(activity);
                break;
            case "OPPO":
                OPPO(activity);
                break;
            case "Sony":
                Sony(activity);
                break;
            case "vivo":
                VIVO(activity);
                break;
            case "Meizu":
                Meizu(activity);
                break;
            case "HUAWEI":
                Huawei(activity);
                break;
            default:
                gotoAppDetailSetting(activity);
                break;
        }
    }

    public static void gotoAppDetailSetting(android.app.Activity activity) {
        android.content.Intent intent = new android.content.Intent("android.settings.APPLICATION_DETAILS_SETTINGS", android.net.Uri.parse("package:" + activity.getPackageName()));
        intent.addFlags(com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT);
        activity.startActivity(intent);
    }

    public static void inBrowserOpen(android.app.Activity activity, java.lang.String str) {
        android.content.Intent intent = new android.content.Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(android.net.Uri.parse(str));
        intent.addFlags(com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT);
        activity.startActivity(android.content.Intent.createChooser(intent, "请选择浏览器"));
    }
}
