package com.cndatacom.sdk.portal.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class DateUtil {
    public static java.util.Date parseDateString(java.lang.String str) {
        java.util.Date date;
        try {
            try {
                date = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(str);
                if (date == null) {
                    date = new java.util.Date();
                }
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
                date = new java.util.Date();
            }
            return date;
        } catch (java.lang.Throwable th) {
            new java.util.Date();
            throw th;
        }
    }

    public static java.lang.String parseDateToString(java.util.Date date) {
        if (date == null) {
            return "";
        }
        try {
            return new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return "";
        }
    }

    public static java.lang.String parseDateToYMDHMSString(java.util.Date date) {
        if (date == null) {
            return "";
        }
        try {
            return new java.text.SimpleDateFormat("yyyyMMddHHmmss").format(date);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return "";
        }
    }

    public static java.lang.String parseDateToYMDString(java.util.Date date) {
        if (date == null) {
            return "";
        }
        try {
            return new java.text.SimpleDateFormat("yyyyMMdd").format(date);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return "";
        }
    }

    public static java.lang.String parseDateToYYMMDDString(java.util.Date date) {
        if (date == null) {
            date = new java.util.Date();
        }
        return new java.text.SimpleDateFormat("yyyy-MM-dd").format(date);
    }

    public static java.lang.String parseTimeToYMDHMSString(long j5) {
        return parseDateToString(new java.util.Date(j5));
    }

    public static java.lang.String parseDateToYMDHMSString(long j5) {
        return parseDateToYMDHMSString(new java.util.Date(j5));
    }
}
