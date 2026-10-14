package com.cndatacom.sdk.portal.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CommandUtil {
    /* JADX WARN: Code duplicated, block: B:44:0x0079  */
    /* JADX WARN: Code duplicated, block: B:59:0x0095  */
    /* JADX WARN: Code duplicated, block: B:63:0x006f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x008b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    public static java.lang.String exec(java.lang.String str) throws java.lang.Throwable {
        java.lang.Process processExec;
        ?? r5;
        java.io.BufferedOutputStream bufferedOutputStream;
        ?? bufferedInputStream;
        java.io.BufferedOutputStream bufferedOutputStream2 = null;
        try {
            processExec = java.lang.Runtime.getRuntime().exec("sh");
            try {
                bufferedOutputStream = new java.io.BufferedOutputStream(processExec.getOutputStream());
                try {
                    bufferedInputStream = new java.io.BufferedInputStream(processExec.getInputStream());
                    try {
                        try {
                            bufferedOutputStream.write(str.getBytes());
                            bufferedOutputStream.write(10);
                            bufferedOutputStream.flush();
                            bufferedOutputStream.close();
                            processExec.waitFor();
                            java.lang.String strFromBufferInputSteam = getStrFromBufferInputSteam(bufferedInputStream);
                            try {
                                bufferedOutputStream.close();
                            } catch (java.io.IOException e5) {
                                e5.printStackTrace();
                            }
                            try {
                                bufferedInputStream.close();
                            } catch (java.io.IOException e6) {
                                e6.printStackTrace();
                            }
                            processExec.destroy();
                            return strFromBufferInputSteam;
                        } catch (java.lang.Exception e7) {
                            e = e7;
                            e.printStackTrace();
                            if (bufferedOutputStream != null) {
                                try {
                                    bufferedOutputStream.close();
                                } catch (java.io.IOException e8) {
                                    e8.printStackTrace();
                                }
                            }
                            if (bufferedInputStream != 0) {
                                try {
                                    bufferedInputStream.close();
                                } catch (java.io.IOException e9) {
                                    e9.printStackTrace();
                                }
                            }
                            if (processExec != null) {
                                processExec.destroy();
                            }
                            return null;
                        }
                    } catch (java.lang.Throwable th) {
                        th = th;
                        bufferedOutputStream2 = bufferedOutputStream;
                        r5 = bufferedInputStream;
                        if (bufferedOutputStream2 != null) {
                            try {
                                bufferedOutputStream2.close();
                            } catch (java.io.IOException e10) {
                                e10.printStackTrace();
                            }
                        }
                        if (r5 != 0) {
                            try {
                                r5.close();
                            } catch (java.io.IOException e11) {
                                e11.printStackTrace();
                            }
                        }
                        if (processExec == null) {
                            throw th;
                        }
                        processExec.destroy();
                        throw th;
                    }
                } catch (java.lang.Exception e12) {
                    e = e12;
                    bufferedInputStream = 0;
                } catch (java.lang.Throwable th2) {
                    th = th2;
                    bufferedInputStream = 0;
                    bufferedOutputStream2 = bufferedOutputStream;
                    r5 = bufferedInputStream;
                    if (bufferedOutputStream2 != null) {
                        bufferedOutputStream2.close();
                    }
                    if (r5 != 0) {
                        r5.close();
                    }
                    if (processExec == null) {
                        throw th;
                    }
                    processExec.destroy();
                    throw th;
                }
            } catch (java.lang.Exception e13) {
                e = e13;
                bufferedOutputStream = null;
                bufferedInputStream = bufferedOutputStream;
                e.printStackTrace();
                if (bufferedOutputStream != null) {
                    bufferedOutputStream.close();
                }
                if (bufferedInputStream != 0) {
                    bufferedInputStream.close();
                }
                if (processExec != null) {
                    processExec.destroy();
                }
                return null;
            } catch (java.lang.Throwable th3) {
                th = th3;
                r5 = 0;
                if (bufferedOutputStream2 != null) {
                    bufferedOutputStream2.close();
                }
                if (r5 != 0) {
                    r5.close();
                }
                if (processExec == null) {
                    throw th;
                }
                processExec.destroy();
                throw th;
            }
        } catch (java.lang.Exception e14) {
            e = e14;
            processExec = null;
            bufferedOutputStream = null;
        } catch (java.lang.Throwable th4) {
            th = th4;
            processExec = null;
            r5 = 0;
        }
    }

    private static java.lang.String getStrFromBufferInputSteam(java.io.BufferedInputStream bufferedInputStream) {
        int i5;
        if (bufferedInputStream == null) {
            return "";
        }
        byte[] bArr = new byte[512];
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        do {
            try {
                i5 = bufferedInputStream.read(bArr);
                if (i5 > 0) {
                    sb.append(new java.lang.String(bArr, 0, i5));
                }
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        } while (i5 >= 512);
        return sb.toString();
    }
}
