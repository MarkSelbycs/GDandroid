package com.cndatacom.sdk.portal.constant;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ResourceConstants {
    public static final java.lang.String APP_NAME = "CDCLogs";
    public static final java.lang.String MODULE_TRAFFIC = "[MODULE_TRAFFIC] ";
    public static final java.lang.String PATH_AD;
    public static final java.lang.String PATH_APK;
    public static final java.lang.String PATH_CACHE;
    public static final java.lang.String PATH_CONFIG;
    public static final java.lang.String PATH_IMAGE;
    public static final java.lang.String PATH_LOGCAT;
    public static final java.lang.String PATH_MODULE;
    public static final java.lang.String PATH_MODULE_LOGCAT;

    static {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(APP_NAME);
        java.lang.String str = java.io.File.separator;
        sb.append(str);
        sb.append("logcat");
        PATH_LOGCAT = sb.toString();
        PATH_MODULE_LOGCAT = APP_NAME + str + "module_log";
        PATH_IMAGE = APP_NAME + str + "image";
        PATH_AD = APP_NAME + str + "ad";
        PATH_APK = APP_NAME + str + "apk";
        PATH_CACHE = APP_NAME + str + "cache";
        java.lang.String str2 = APP_NAME + str + "config";
        PATH_CONFIG = str2;
        PATH_MODULE = str2 + str + "module";
    }
}
