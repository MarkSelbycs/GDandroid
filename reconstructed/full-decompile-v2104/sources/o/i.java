package o;

/* JADX INFO: compiled from: TypefaceCompatUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i {

    /* JADX INFO: compiled from: TypefaceCompatUtil.java */
    public static class a {
        public static android.os.ParcelFileDescriptor a(android.content.ContentResolver contentResolver, android.net.Uri uri, java.lang.String str, android.os.CancellationSignal cancellationSignal) throws java.io.FileNotFoundException {
            return contentResolver.openFileDescriptor(uri, str, cancellationSignal);
        }
    }

    public static void a(java.io.Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (java.io.IOException unused) {
            }
        }
    }

    public static boolean b(java.io.File file, android.content.res.Resources resources, int i5) throws java.lang.Throwable {
        java.io.InputStream inputStreamOpenRawResource;
        try {
            inputStreamOpenRawResource = resources.openRawResource(i5);
            try {
                boolean zC = c(file, inputStreamOpenRawResource);
                a(inputStreamOpenRawResource);
                return zC;
            } catch (java.lang.Throwable th) {
                th = th;
                a(inputStreamOpenRawResource);
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            inputStreamOpenRawResource = null;
        }
    }

    public static boolean c(java.io.File file, java.io.InputStream inputStream) throws java.lang.Throwable {
        android.os.StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = android.os.StrictMode.allowThreadDiskWrites();
        java.io.FileOutputStream fileOutputStream = null;
        try {
            try {
                java.io.FileOutputStream fileOutputStream2 = new java.io.FileOutputStream(file, false);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i5 = inputStream.read(bArr);
                        if (i5 == -1) {
                            a(fileOutputStream2);
                            android.os.StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                            return true;
                        }
                        fileOutputStream2.write(bArr, 0, i5);
                    }
                } catch (java.io.IOException e5) {
                    e = e5;
                    fileOutputStream = fileOutputStream2;
                    android.util.Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
                    a(fileOutputStream);
                    android.os.StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    return false;
                } catch (java.lang.Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    a(fileOutputStream);
                    android.os.StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    throw th;
                }
            } catch (java.io.IOException e6) {
                e = e6;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
        }
    }

    public static java.io.File d(android.content.Context context) {
        java.io.File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        java.lang.String str = ".font" + android.os.Process.myPid() + "-" + android.os.Process.myTid() + "-";
        for (int i5 = 0; i5 < 100; i5++) {
            java.io.File file = new java.io.File(cacheDir, str + i5);
            try {
                if (file.createNewFile()) {
                    return file;
                }
            } catch (java.io.IOException unused) {
            }
        }
        return null;
    }

    public static java.nio.ByteBuffer e(android.content.Context context, android.os.CancellationSignal cancellationSignal, android.net.Uri uri) {
        try {
            android.os.ParcelFileDescriptor parcelFileDescriptorA = o.i.a.a(context.getContentResolver(), uri, "r", cancellationSignal);
            if (parcelFileDescriptorA == null) {
                if (parcelFileDescriptorA != null) {
                    parcelFileDescriptorA.close();
                }
                return null;
            }
            try {
                java.io.FileInputStream fileInputStream = new java.io.FileInputStream(parcelFileDescriptorA.getFileDescriptor());
                try {
                    java.nio.channels.FileChannel channel = fileInputStream.getChannel();
                    java.nio.MappedByteBuffer map = channel.map(java.nio.channels.FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                    fileInputStream.close();
                    parcelFileDescriptorA.close();
                    return map;
                } catch (java.lang.Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (java.lang.Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (java.lang.Throwable th3) {
                try {
                    parcelFileDescriptorA.close();
                } catch (java.lang.Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        } catch (java.io.IOException unused) {
            return null;
        }
    }

    public static java.util.Map<android.net.Uri, java.nio.ByteBuffer> f(android.content.Context context, t.g.b[] bVarArr, android.os.CancellationSignal cancellationSignal) {
        java.util.HashMap map = new java.util.HashMap();
        for (t.g.b bVar : bVarArr) {
            if (bVar.b() == 0) {
                android.net.Uri uriD = bVar.d();
                if (!map.containsKey(uriD)) {
                    map.put(uriD, e(context, cancellationSignal, uriD));
                }
            }
        }
        return java.util.Collections.unmodifiableMap(map);
    }
}
