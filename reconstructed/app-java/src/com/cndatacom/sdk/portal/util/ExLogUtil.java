package com.cndatacom.sdk.portal.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ExLogUtil {
    private static int LOG_FILE_SAVE_DAYS = 3;
    private static int MOUDLE_LOG_FILE_SAVE_DAYS = 2;
    private static final java.lang.String NAME_EXT = ".log";
    private static final java.lang.String TYPE_DEBUG = "[DEBUG]\n";
    private static final java.lang.String TYPE_ERROR = "[ERROR]\n";
    private static final java.lang.String TYPE_INFO = "[INFO]\n";
    private static java.lang.String mLogFilePath;
    private static java.lang.String mLogTag;
    private static java.lang.String mModuleLogFilePath;
    private static final byte[] LOCK = new byte[1];
    private static java.text.SimpleDateFormat LOGFILEFORMAT = new java.text.SimpleDateFormat("yyyy-MM-dd");
    private static boolean isDebug = false;
    private static int FILE_MAX_SIZE = 5242880;

    private static void cleanOldLogFile(java.lang.String str, java.util.Date date) {
        java.io.File file = new java.io.File(str);
        if (file.exists()) {
            java.lang.String str2 = LOGFILEFORMAT.format(date);
            java.io.File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (int i5 = 0; i5 < fileArrListFiles.length; i5++) {
                    if (fileArrListFiles[i5].isFile()) {
                        java.lang.String name = fileArrListFiles[i5].getName();
                        if (str2.compareTo(name.substring(0, name.lastIndexOf("."))) >= 0) {
                            fileArrListFiles[i5].getAbsoluteFile().delete();
                        }
                    }
                }
            }
        }
    }

    public static void d(java.lang.String... strArr) {
        writeLog(TYPE_DEBUG, strArr);
    }

    public static void e(java.lang.String... strArr) {
        writeLog(TYPE_ERROR, strArr);
    }

    private static java.util.Date getCleanDate(int i5) {
        java.util.Date date = new java.util.Date();
        java.util.Calendar calendar = java.util.Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(5, calendar.get(5) - i5);
        return calendar.getTime();
    }

    private static java.lang.String getNowDateToString(java.util.Date date) {
        if (date == null) {
            date = new java.util.Date();
        }
        try {
            return new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return "";
        }
    }

    public static void i(java.lang.String... strArr) {
        writeLog(TYPE_INFO, strArr);
    }

    public static void init(android.content.Context context, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        mLogFilePath = str;
        mModuleLogFilePath = str2;
        mLogTag = str3;
        isDebug = false;
        cleanOldLogFile(str, getCleanDate(LOG_FILE_SAVE_DAYS));
        cleanOldLogFile(str2, getCleanDate(MOUDLE_LOG_FILE_SAVE_DAYS));
    }

    public static void logBuildInfo(android.content.Context context) {
        i("\n==========Build==========", "\r\nBuild.CPU_ABI:", android.os.Build.CPU_ABI, "\r\nBuild.CPU_ABI2:", android.os.Build.CPU_ABI2, "\r\nBuild.MODEL:", android.os.Build.MODEL, "\r\nBuild.SDK_INT:", android.os.Build.VERSION.SDK_INT + "", "\r\nBuild.RELEASE:", android.os.Build.VERSION.RELEASE, "\r\nAPP.VERSION:", com.cndatacom.sdk.portal.util.ApkUtil.getVersionName(context));
    }

    public static void m(java.lang.String str, java.lang.String... strArr) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("\n" + str);
        for (java.lang.String str2 : strArr) {
            sb.append(str2);
        }
        if (isDebug) {
            android.util.Log.i(mLogTag, sb.toString());
        }
        saveLogFile(sb.toString(), mModuleLogFilePath);
    }

    private static void saveLogFile(java.lang.String str, java.lang.String str2) {
        synchronized (LOCK) {
            java.io.FileWriter fileWriter = null;
            try {
                try {
                    java.io.File file = new java.io.File(str2 + java.io.File.separator + (LOGFILEFORMAT.format(new java.util.Date()) + NAME_EXT));
                    if (!file.getParentFile().exists()) {
                        file.getParentFile().mkdirs();
                    }
                    boolean z4 = true;
                    if (!file.exists()) {
                        z4 = false;
                    } else if (file.length() >= FILE_MAX_SIZE) {
                        file.getAbsoluteFile().delete();
                        z4 = false;
                    }
                    java.io.FileWriter fileWriter2 = new java.io.FileWriter(file, z4);
                    try {
                        fileWriter2.append((java.lang.CharSequence) (android.util.Base64.encodeToString(com.cndatacom.sdk.portal.util.CryptoUtil.encryptByPublicKey(str.getBytes()), 2) + "\r\n"));
                        fileWriter2.flush();
                        try {
                            fileWriter2.close();
                        } catch (java.io.IOException e5) {
                            e = e5;
                            e.printStackTrace();
                        }
                    } catch (java.lang.Exception e6) {
                        e = e6;
                        fileWriter = fileWriter2;
                        e.printStackTrace();
                        if (fileWriter != null) {
                            try {
                                fileWriter.close();
                            } catch (java.io.IOException e7) {
                                e = e7;
                                e.printStackTrace();
                            }
                        }
                    } catch (java.lang.Throwable th) {
                        th = th;
                        fileWriter = fileWriter2;
                        if (fileWriter != null) {
                            try {
                                fileWriter.close();
                            } catch (java.io.IOException e8) {
                                e8.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (java.lang.Exception e9) {
                    e = e9;
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
            }
        }
    }

    private static void writeLog(java.lang.String str, java.lang.String... strArr) {
        if (android.text.TextUtils.isEmpty(mLogFilePath) || android.text.TextUtils.isEmpty(mLogTag)) {
            return;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("\n[" + getNowDateToString(new java.util.Date()) + "]\n");
        sb.append(str);
        for (java.lang.String str2 : strArr) {
            sb.append(str2);
        }
        if (TYPE_INFO.equals(str)) {
            android.util.Log.i(mLogTag, sb.toString());
        } else if (TYPE_ERROR.equals(str)) {
            android.util.Log.e(mLogTag, sb.toString());
        } else if (!TYPE_DEBUG.equals(str)) {
            android.util.Log.v(mLogTag, sb.toString());
        } else if (!isDebug) {
            return;
        } else {
            android.util.Log.d(mLogTag, sb.toString());
        }
        saveLogFile(sb.toString(), mLogFilePath);
    }
}
