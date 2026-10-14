package com.cndatacom.sdk.portal.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ApkUtil {
    /* JADX WARN: Code duplicated, block: B:36:0x0054 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0051: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:26:0x0051 */
    public static java.lang.String getCurrentProcessName() throws java.lang.Throwable {
        java.io.BufferedReader bufferedReader;
        java.io.BufferedReader bufferedReader2;
        java.io.BufferedReader bufferedReader3 = null;
        try {
            try {
                bufferedReader = new java.io.BufferedReader(new java.io.FileReader("/proc/" + android.os.Process.myPid() + "/cmdline"));
                try {
                    java.lang.String line = bufferedReader.readLine();
                    if (!android.text.TextUtils.isEmpty(line)) {
                        line = line.trim();
                    }
                    try {
                        bufferedReader.close();
                    } catch (java.io.IOException e5) {
                        e5.printStackTrace();
                    }
                    return line;
                } catch (java.lang.Exception e6) {
                    e = e6;
                    e.printStackTrace();
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (java.io.IOException e7) {
                            e7.printStackTrace();
                        }
                    }
                    return null;
                }
            } catch (java.lang.Throwable th) {
                th = th;
                bufferedReader3 = bufferedReader2;
                if (bufferedReader3 != null) {
                    try {
                        bufferedReader3.close();
                    } catch (java.io.IOException e8) {
                        e8.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (java.lang.Exception e9) {
            e = e9;
            bufferedReader = null;
        } catch (java.lang.Throwable th2) {
            th = th2;
            if (bufferedReader3 != null) {
                bufferedReader3.close();
            }
            throw th;
        }
    }

    public static int getVersionCode(android.content.Context context) {
        return java.lang.Integer.parseInt(context.getString(com.cndatacom.sdk.portal.R.string.versionCode));
    }

    public static java.lang.String getVersionName(android.content.Context context) {
        return context.getString(com.cndatacom.sdk.portal.R.string.versionName);
    }

    public static boolean runInstalledApp(android.content.Context context, java.lang.String str) {
        return false;
    }
}
