package com.cndatacom.sdk.portal.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class FileUtil {
    public static java.lang.String byteArrayToHex(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        java.lang.StringBuilder sb = new java.lang.StringBuilder((bArr.length * 2) + 1);
        for (byte b5 : bArr) {
            sb.append(cArr[(b5 >>> 4) & 15]);
            sb.append(cArr[b5 & 15]);
        }
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:66:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x0077 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:? A[SYNTHETIC] */
    public static void copyFilesFromAssets(android.content.Context context, java.lang.String str, java.lang.String str2) throws java.lang.Throwable {
        java.io.FileOutputStream fileOutputStream;
        java.io.InputStream inputStream = null;
        java.io.FileOutputStream fileOutputStream2 = null;
        inputStream = null;
        try {
            try {
                java.io.InputStream inputStreamOpen = context.getAssets().open(str);
                if (inputStreamOpen != null) {
                    try {
                        java.io.File file = new java.io.File(str2);
                        if (!file.getParentFile().exists()) {
                            file.getParentFile().mkdirs();
                        }
                        fileOutputStream = new java.io.FileOutputStream(file);
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int i5 = inputStreamOpen.read(bArr);
                                if (i5 == -1) {
                                    break;
                                } else {
                                    fileOutputStream.write(bArr, 0, i5);
                                }
                            }
                            fileOutputStream.flush();
                            fileOutputStream2 = fileOutputStream;
                        } catch (java.lang.Exception e5) {
                            e = e5;
                            inputStream = inputStreamOpen;
                            try {
                                e.printStackTrace();
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (java.io.IOException e6) {
                                        e6.printStackTrace();
                                    }
                                }
                                if (fileOutputStream == null) {
                                    return;
                                } else {
                                    fileOutputStream.close();
                                }
                            } catch (java.lang.Throwable th) {
                                th = th;
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (java.io.IOException e7) {
                                        e7.printStackTrace();
                                    }
                                }
                                if (fileOutputStream != null) {
                                    throw th;
                                }
                                try {
                                    fileOutputStream.close();
                                    throw th;
                                } catch (java.io.IOException e8) {
                                    e8.printStackTrace();
                                    throw th;
                                }
                            }
                        } catch (java.lang.Throwable th2) {
                            th = th2;
                            inputStream = inputStreamOpen;
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (fileOutputStream != null) {
                                throw th;
                            }
                            fileOutputStream.close();
                            throw th;
                        }
                    } catch (java.lang.Exception e9) {
                        e = e9;
                        fileOutputStream = null;
                    } catch (java.lang.Throwable th3) {
                        th = th3;
                        fileOutputStream = null;
                    }
                }
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (java.io.IOException e10) {
                        e10.printStackTrace();
                    }
                }
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
            } catch (java.io.IOException e11) {
                e11.printStackTrace();
            }
        } catch (java.lang.Exception e12) {
            e = e12;
            fileOutputStream = null;
        } catch (java.lang.Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    public static boolean delFile(java.io.File file, int i5) {
        if (!file.exists()) {
            return false;
        }
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis() - ((long) ((((i5 * 24) * 60) * 60) * com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO));
        long jLastModified = file.lastModified();
        if (!file.isFile()) {
            java.io.File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                for (java.io.File file2 : fileArrListFiles) {
                    delFile(file2, i5);
                }
            }
            if (jLastModified <= jCurrentTimeMillis) {
                return file.getAbsoluteFile().delete();
            }
        } else if (jLastModified <= jCurrentTimeMillis) {
            return file.getAbsoluteFile().delete();
        }
        return false;
    }

    public static void deleteFile(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return;
        }
        try {
            java.io.File[] fileArrListFiles = new java.io.File(str).listFiles();
            if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
                return;
            }
            for (int i5 = 0; i5 < fileArrListFiles.length; i5++) {
                if (!fileArrListFiles[i5].isDirectory()) {
                    fileArrListFiles[i5].getAbsoluteFile().delete();
                }
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public static boolean deleteFolderFile(java.lang.String str, boolean z4) {
        java.io.File[] fileArrListFiles;
        if (!android.text.TextUtils.isEmpty(str)) {
            try {
                java.io.File file = new java.io.File(str);
                if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length > 0) {
                    for (java.io.File file2 : fileArrListFiles) {
                        deleteFolderFile(file2.getAbsolutePath(), true);
                    }
                }
                if (z4) {
                    if (!file.isDirectory()) {
                        file.getAbsoluteFile().delete();
                    } else if (file.listFiles() != null && file.listFiles().length == 0) {
                        file.getAbsoluteFile().delete();
                    }
                }
                return true;
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        }
        return false;
    }

    public static long getCurrentFolderSize(java.io.File file) {
        long length = 0;
        try {
            java.io.File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                for (int i5 = 0; i5 < fileArrListFiles.length; i5++) {
                    if (!fileArrListFiles[i5].isDirectory()) {
                        length += fileArrListFiles[i5].length();
                    }
                }
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return length;
    }

    public static java.lang.String getFileExt(java.io.File file) {
        return getFileExt(file.getName());
    }

    public static java.lang.String getFileMD5(java.lang.String str) {
        int i5;
        try {
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("MD5");
            byte[] bArr = new byte[1024];
            java.io.FileInputStream fileInputStream = new java.io.FileInputStream(new java.io.File(str));
            while (true) {
                int i6 = fileInputStream.read(bArr);
                if (i6 == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, i6);
            }
            fileInputStream.close();
            java.lang.String string = new java.math.BigInteger(1, messageDigest.digest()).toString(16);
            for (i5 = 0; i5 < 32 - string.length(); i5++) {
                string = com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS + string;
            }
            return string.toLowerCase();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return "";
        }
    }

    public static java.lang.String getFileNameWithoutExt(java.lang.String str) {
        return removeExt(str.substring(str.lastIndexOf(java.io.File.separator) + 1));
    }

    public static java.lang.String getFileSize(long j5) {
        java.text.DecimalFormat decimalFormat = new java.text.DecimalFormat("#.00");
        if (j5 < 1024) {
            return decimalFormat.format(j5) + "B";
        }
        if (j5 < 1048576) {
            return decimalFormat.format(j5 / 1024.0d) + "K";
        }
        if (j5 < 1073741824) {
            return decimalFormat.format(j5 / 1048576.0d) + "M";
        }
        return decimalFormat.format(j5 / 1.073741824E9d) + "G";
    }

    public static long getFolderSize(java.io.File file) {
        long folderSize = 0;
        try {
            java.io.File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                for (int i5 = 0; i5 < fileArrListFiles.length; i5++) {
                    folderSize += fileArrListFiles[i5].isDirectory() ? getFolderSize(fileArrListFiles[i5]) : fileArrListFiles[i5].length();
                }
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return folderSize;
    }

    public static long getMemorySize(java.lang.String str) {
        android.os.StatFs statFs = new android.os.StatFs(str);
        return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
    }

    public static java.lang.String getMimeType(java.lang.String str) throws java.lang.Exception {
        return java.net.URLConnection.getFileNameMap().getContentTypeFor(str);
    }

    public static byte[] md5(byte[] bArr) {
        try {
            return java.security.MessageDigest.getInstance("MD5").digest(bArr);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            return null;
        }
    }

    public static byte[] readFile(java.lang.String str) throws java.lang.Throwable {
        java.io.FileInputStream fileInputStream = null;
        try {
            try {
                java.io.FileInputStream fileInputStream2 = new java.io.FileInputStream(new java.io.File(str));
                try {
                    byte[] bArr = new byte[fileInputStream2.available()];
                    fileInputStream2.read(bArr);
                    try {
                        fileInputStream2.close();
                    } catch (java.io.IOException e5) {
                        e5.printStackTrace();
                    }
                    return bArr;
                } catch (java.lang.Exception e6) {
                    e = e6;
                    fileInputStream = fileInputStream2;
                    e.printStackTrace();
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (java.io.IOException e7) {
                            e7.printStackTrace();
                        }
                    }
                    return new byte[0];
                } catch (java.lang.Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (java.io.IOException e8) {
                            e8.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
            }
        } catch (java.lang.Exception e9) {
            e = e9;
        }
    }

    public static java.lang.String removeExt(java.lang.String str) {
        int iLastIndexOf = str.lastIndexOf(".");
        if (iLastIndexOf == -1) {
            iLastIndexOf = str.length();
        }
        return str.substring(0, iLastIndexOf);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x00cf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x00ba A[Catch: Exception -> 0x00b6, TryCatch #4 {Exception -> 0x00b6, blocks: (B:70:0x00b2, B:74:0x00ba, B:76:0x00bf, B:78:0x00c4), top: B:97:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x00bf A[Catch: Exception -> 0x00b6, TryCatch #4 {Exception -> 0x00b6, blocks: (B:70:0x00b2, B:74:0x00ba, B:76:0x00bf, B:78:0x00c4), top: B:97:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:78:0x00c4 A[Catch: Exception -> 0x00b6, TRY_LEAVE, TryCatch #4 {Exception -> 0x00b6, blocks: (B:70:0x00b2, B:74:0x00ba, B:76:0x00bf, B:78:0x00c4), top: B:97:0x00b2 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x00d5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:88:0x00d7 A[Catch: Exception -> 0x00d3, TryCatch #7 {Exception -> 0x00d3, blocks: (B:84:0x00cf, B:88:0x00d7, B:90:0x00dc, B:92:0x00e1), top: B:101:0x00cf }] */
    /* JADX WARN: Code duplicated, block: B:90:0x00dc A[Catch: Exception -> 0x00d3, TryCatch #7 {Exception -> 0x00d3, blocks: (B:84:0x00cf, B:88:0x00d7, B:90:0x00dc, B:92:0x00e1), top: B:101:0x00cf }] */
    /* JADX WARN: Code duplicated, block: B:92:0x00e1 A[Catch: Exception -> 0x00d3, TRY_LEAVE, TryCatch #7 {Exception -> 0x00d3, blocks: (B:84:0x00cf, B:88:0x00d7, B:90:0x00dc, B:92:0x00e1), top: B:101:0x00cf }] */
    /* JADX WARN: Code duplicated, block: B:97:0x00b2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v14, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    public static boolean toZip(java.lang.String str, java.lang.String str2) throws java.lang.Throwable {
        java.io.File[] fileArrListFiles;
        java.io.FileOutputStream fileOutputStream;
        java.io.BufferedInputStream bufferedInputStream;
        ?? fileInputStream;
        java.io.File file = new java.io.File(str);
        if (!file.exists() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length == 0) {
            return false;
        }
        java.util.zip.ZipOutputStream zipOutputStream = null;
        java.io.BufferedInputStream bufferedInputStream2 = null;
        zipOutputStream = null;
        try {
            java.io.File file2 = new java.io.File(str2);
            if (file2.exists()) {
                file2.getAbsoluteFile().delete();
            }
            fileOutputStream = new java.io.FileOutputStream(file2);
            try {
                java.util.zip.ZipOutputStream zipOutputStream2 = new java.util.zip.ZipOutputStream(new java.io.BufferedOutputStream(fileOutputStream));
                try {
                    byte[] bArr = new byte[10240];
                    ?? r5 = 0;
                    int i5 = 0;
                    while (i5 < fileArrListFiles.length) {
                        try {
                            zipOutputStream2.putNextEntry(new java.util.zip.ZipEntry(fileArrListFiles[i5].getName()));
                            fileInputStream = new java.io.FileInputStream(fileArrListFiles[i5]);
                            try {
                                bufferedInputStream = new java.io.BufferedInputStream(fileInputStream, 10240);
                                while (true) {
                                    try {
                                        int i6 = bufferedInputStream.read(bArr, 0, 10240);
                                        if (i6 != -1) {
                                            zipOutputStream2.write(bArr, 0, i6);
                                        }
                                    } catch (java.lang.Exception e5) {
                                        e = e5;
                                        zipOutputStream = zipOutputStream2;
                                        fileInputStream = fileInputStream;
                                        try {
                                            e.printStackTrace();
                                            if (zipOutputStream != null) {
                                                try {
                                                    zipOutputStream.close();
                                                } catch (java.lang.Exception e6) {
                                                    e6.printStackTrace();
                                                    return false;
                                                }
                                            }
                                            if (bufferedInputStream != null) {
                                                bufferedInputStream.close();
                                            }
                                            if (fileOutputStream != null) {
                                                fileOutputStream.close();
                                            }
                                            if (fileInputStream == 0) {
                                                return false;
                                            }
                                            fileInputStream.close();
                                            return false;
                                        } catch (java.lang.Throwable th) {
                                            th = th;
                                            if (zipOutputStream != null) {
                                                try {
                                                    zipOutputStream.close();
                                                    if (bufferedInputStream != null) {
                                                        bufferedInputStream.close();
                                                    }
                                                    if (fileOutputStream != null) {
                                                        fileOutputStream.close();
                                                    }
                                                    if (fileInputStream != 0) {
                                                        fileInputStream.close();
                                                    }
                                                } catch (java.lang.Exception e7) {
                                                    e7.printStackTrace();
                                                    throw th;
                                                }
                                            } else {
                                                if (bufferedInputStream != null) {
                                                    bufferedInputStream.close();
                                                }
                                                if (fileOutputStream != null) {
                                                    fileOutputStream.close();
                                                }
                                                if (fileInputStream != 0) {
                                                    fileInputStream.close();
                                                }
                                            }
                                            throw th;
                                        }
                                    } catch (java.lang.Throwable th2) {
                                        th = th2;
                                        zipOutputStream = zipOutputStream2;
                                        if (zipOutputStream != null) {
                                            zipOutputStream.close();
                                            if (bufferedInputStream != null) {
                                                bufferedInputStream.close();
                                            }
                                            if (fileOutputStream != null) {
                                                fileOutputStream.close();
                                            }
                                            if (fileInputStream != 0) {
                                                fileInputStream.close();
                                            }
                                        } else {
                                            if (bufferedInputStream != null) {
                                                bufferedInputStream.close();
                                            }
                                            if (fileOutputStream != null) {
                                                fileOutputStream.close();
                                            }
                                            if (fileInputStream != 0) {
                                                fileInputStream.close();
                                            }
                                        }
                                        throw th;
                                    }
                                }
                                i5++;
                                bufferedInputStream2 = bufferedInputStream;
                                r5 = fileInputStream;
                            } catch (java.lang.Exception e8) {
                                e = e8;
                                bufferedInputStream = bufferedInputStream2;
                                zipOutputStream = zipOutputStream2;
                                fileInputStream = fileInputStream;
                                e.printStackTrace();
                                if (zipOutputStream != null) {
                                    zipOutputStream.close();
                                }
                                if (bufferedInputStream != null) {
                                    bufferedInputStream.close();
                                }
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                if (fileInputStream == 0) {
                                    return false;
                                }
                                fileInputStream.close();
                                return false;
                            } catch (java.lang.Throwable th3) {
                                th = th3;
                                bufferedInputStream = bufferedInputStream2;
                                zipOutputStream = zipOutputStream2;
                                if (zipOutputStream != null) {
                                    zipOutputStream.close();
                                    if (bufferedInputStream != null) {
                                        bufferedInputStream.close();
                                    }
                                    if (fileOutputStream != null) {
                                        fileOutputStream.close();
                                    }
                                    if (fileInputStream != 0) {
                                        fileInputStream.close();
                                    }
                                } else {
                                    if (bufferedInputStream != null) {
                                        bufferedInputStream.close();
                                    }
                                    if (fileOutputStream != null) {
                                        fileOutputStream.close();
                                    }
                                    if (fileInputStream != 0) {
                                        fileInputStream.close();
                                    }
                                }
                                throw th;
                            }
                        } catch (java.lang.Exception e9) {
                            e = e9;
                            fileInputStream = r5;
                        } catch (java.lang.Throwable th4) {
                            th = th4;
                            fileInputStream = r5;
                        }
                    }
                    try {
                        zipOutputStream2.close();
                        if (bufferedInputStream2 != null) {
                            bufferedInputStream2.close();
                        }
                        fileOutputStream.close();
                        if (r5 != 0) {
                            r5.close();
                        }
                    } catch (java.lang.Exception e10) {
                        e10.printStackTrace();
                    }
                    return true;
                } catch (java.lang.Exception e11) {
                    e = e11;
                    bufferedInputStream = null;
                    fileInputStream = 0;
                } catch (java.lang.Throwable th5) {
                    th = th5;
                    bufferedInputStream = null;
                    fileInputStream = 0;
                }
            } catch (java.lang.Exception e12) {
                e = e12;
                bufferedInputStream = null;
                fileInputStream = bufferedInputStream;
                e.printStackTrace();
                if (zipOutputStream != null) {
                    zipOutputStream.close();
                }
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                if (fileInputStream == 0) {
                    return false;
                }
                fileInputStream.close();
                return false;
            } catch (java.lang.Throwable th6) {
                th = th6;
                bufferedInputStream = null;
                fileInputStream = bufferedInputStream;
                if (zipOutputStream != null) {
                    zipOutputStream.close();
                    if (bufferedInputStream != null) {
                        bufferedInputStream.close();
                    }
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    if (fileInputStream != 0) {
                        fileInputStream.close();
                    }
                } else {
                    if (bufferedInputStream != null) {
                        bufferedInputStream.close();
                    }
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    if (fileInputStream != 0) {
                        fileInputStream.close();
                    }
                }
                throw th;
            }
        } catch (java.lang.Exception e13) {
            e = e13;
            fileOutputStream = null;
            bufferedInputStream = null;
        } catch (java.lang.Throwable th7) {
            th = th7;
            fileOutputStream = null;
            bufferedInputStream = null;
        }
    }

    public static void writeFile(byte[] bArr, java.lang.String str) throws java.lang.Throwable {
        java.io.FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    java.io.FileOutputStream fileOutputStream2 = new java.io.FileOutputStream(new java.io.File(str));
                    try {
                        fileOutputStream2.write(bArr);
                        fileOutputStream2.flush();
                        fileOutputStream2.close();
                    } catch (java.lang.Exception e5) {
                        e = e5;
                        fileOutputStream = fileOutputStream2;
                        e.printStackTrace();
                        if (fileOutputStream == null) {
                        } else {
                            fileOutputStream.close();
                        }
                    } catch (java.lang.Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (java.io.IOException e6) {
                                e6.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (java.io.IOException e7) {
                    e7.printStackTrace();
                }
            } catch (java.lang.Exception e8) {
                e = e8;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    public static java.lang.String getFileExt(java.lang.String str) {
        int iLastIndexOf = str.lastIndexOf(".");
        return iLastIndexOf == -1 ? "" : str.substring(iLastIndexOf + 1).toLowerCase();
    }

    public static java.lang.String getFileNameWithoutExt(java.io.File file) {
        int iLastIndexOf;
        java.lang.String name = file.getName();
        return (name == null || name.length() <= 0 || (iLastIndexOf = name.lastIndexOf(46)) <= -1 || iLastIndexOf >= name.length()) ? name : name.substring(0, iLastIndexOf);
    }

    public static boolean delFile(java.io.File file) {
        if (!file.exists()) {
            return false;
        }
        if (file.isFile()) {
            return file.getAbsoluteFile().delete();
        }
        java.io.File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
            for (java.io.File file2 : fileArrListFiles) {
                delFile(file2);
            }
        }
        return file.getAbsoluteFile().delete();
    }
}
