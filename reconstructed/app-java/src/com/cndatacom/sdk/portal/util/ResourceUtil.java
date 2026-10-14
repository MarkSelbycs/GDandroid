package com.cndatacom.sdk.portal.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ResourceUtil {
    public static java.lang.String getContextFilePath(android.content.Context context, java.lang.String str) {
        return getContextFilePath(context, str, null);
    }

    public static java.lang.String getFilePath(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(str);
        java.lang.String str4 = java.io.File.separator;
        sb.append(str4);
        sb.append(str2);
        java.lang.String string = sb.toString();
        java.io.File file = new java.io.File(string);
        if (!file.exists()) {
            file.mkdirs();
        }
        if (!android.text.TextUtils.isEmpty(str3)) {
            string = str + str4 + str2 + str4 + str3;
            java.io.File file2 = new java.io.File(string);
            if (!file2.getParentFile().exists()) {
                file2.getParentFile().mkdirs();
            }
        }
        return string;
    }

    public static java.lang.String getContextFilePath(android.content.Context context, java.lang.String str, java.lang.String str2) {
        return getFilePath(context.getFilesDir().getAbsolutePath(), str, str2);
    }
}
