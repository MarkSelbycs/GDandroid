package androidx.core.content;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class FileProvider extends android.content.ContentProvider {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.lang.String[] f1366c = {"_display_name", "_size"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final java.io.File f1367d = new java.io.File("/");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.util.HashMap<java.lang.String, androidx.core.content.FileProvider.b> f1368e = new java.util.HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.core.content.FileProvider.b f1369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1370b = 0;

    public static class a {
        public static java.io.File[] a(android.content.Context context) {
            return context.getExternalMediaDirs();
        }
    }

    public interface b {
        java.io.File a(android.net.Uri uri);

        android.net.Uri b(java.io.File file);
    }

    public static class c implements androidx.core.content.FileProvider.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.String f1371a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.util.HashMap<java.lang.String, java.io.File> f1372b = new java.util.HashMap<>();

        public c(java.lang.String str) {
            this.f1371a = str;
        }

        @Override // androidx.core.content.FileProvider.b
        public java.io.File a(android.net.Uri uri) {
            java.lang.String encodedPath = uri.getEncodedPath();
            int iIndexOf = encodedPath.indexOf(47, 1);
            java.lang.String strDecode = android.net.Uri.decode(encodedPath.substring(1, iIndexOf));
            java.lang.String strDecode2 = android.net.Uri.decode(encodedPath.substring(iIndexOf + 1));
            java.io.File file = this.f1372b.get(strDecode);
            if (file == null) {
                throw new java.lang.IllegalArgumentException("Unable to find configured root for " + uri);
            }
            java.io.File file2 = new java.io.File(file, strDecode2);
            try {
                java.io.File canonicalFile = file2.getCanonicalFile();
                if (canonicalFile.getPath().startsWith(file.getPath())) {
                    return canonicalFile;
                }
                throw new java.lang.SecurityException("Resolved path jumped beyond configured root");
            } catch (java.io.IOException unused) {
                throw new java.lang.IllegalArgumentException("Failed to resolve canonical path for " + file2);
            }
        }

        @Override // androidx.core.content.FileProvider.b
        public android.net.Uri b(java.io.File file) {
            try {
                java.lang.String canonicalPath = file.getCanonicalPath();
                java.util.Map.Entry<java.lang.String, java.io.File> entry = null;
                for (java.util.Map.Entry<java.lang.String, java.io.File> entry2 : this.f1372b.entrySet()) {
                    java.lang.String path = entry2.getValue().getPath();
                    if (canonicalPath.startsWith(path) && (entry == null || path.length() > entry.getValue().getPath().length())) {
                        entry = entry2;
                    }
                }
                if (entry == null) {
                    throw new java.lang.IllegalArgumentException("Failed to find configured root that contains " + canonicalPath);
                }
                java.lang.String path2 = entry.getValue().getPath();
                return new android.net.Uri.Builder().scheme("content").authority(this.f1371a).encodedPath(android.net.Uri.encode(entry.getKey()) + '/' + android.net.Uri.encode(path2.endsWith("/") ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1), "/")).build();
            } catch (java.io.IOException unused) {
                throw new java.lang.IllegalArgumentException("Failed to resolve canonical path for " + file);
            }
        }

        public void c(java.lang.String str, java.io.File file) {
            if (android.text.TextUtils.isEmpty(str)) {
                throw new java.lang.IllegalArgumentException("Name must not be empty");
            }
            try {
                this.f1372b.put(str, file.getCanonicalFile());
            } catch (java.io.IOException e5) {
                throw new java.lang.IllegalArgumentException("Failed to resolve canonical path for " + file, e5);
            }
        }
    }

    public static java.io.File a(java.io.File file, java.lang.String... strArr) {
        for (java.lang.String str : strArr) {
            if (str != null) {
                file = new java.io.File(file, str);
            }
        }
        return file;
    }

    public static java.lang.Object[] b(java.lang.Object[] objArr, int i5) {
        java.lang.Object[] objArr2 = new java.lang.Object[i5];
        java.lang.System.arraycopy(objArr, 0, objArr2, 0, i5);
        return objArr2;
    }

    public static java.lang.String[] c(java.lang.String[] strArr, int i5) {
        java.lang.String[] strArr2 = new java.lang.String[i5];
        java.lang.System.arraycopy(strArr, 0, strArr2, 0, i5);
        return strArr2;
    }

    public static android.content.res.XmlResourceParser d(android.content.Context context, java.lang.String str, android.content.pm.ProviderInfo providerInfo, int i5) {
        if (providerInfo == null) {
            throw new java.lang.IllegalArgumentException("Couldn't find meta-data for provider with authority " + str);
        }
        if (providerInfo.metaData == null && i5 != 0) {
            android.os.Bundle bundle = new android.os.Bundle(1);
            providerInfo.metaData = bundle;
            bundle.putInt("android.support.FILE_PROVIDER_PATHS", i5);
        }
        android.content.res.XmlResourceParser xmlResourceParserLoadXmlMetaData = providerInfo.loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
        if (xmlResourceParserLoadXmlMetaData != null) {
            return xmlResourceParserLoadXmlMetaData;
        }
        throw new java.lang.IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
    }

    public static androidx.core.content.FileProvider.b e(android.content.Context context, java.lang.String str, int i5) {
        androidx.core.content.FileProvider.b bVarH;
        java.util.HashMap<java.lang.String, androidx.core.content.FileProvider.b> map = f1368e;
        synchronized (map) {
            bVarH = map.get(str);
            if (bVarH == null) {
                try {
                    try {
                        bVarH = h(context, str, i5);
                        map.put(str, bVarH);
                    } catch (org.xmlpull.v1.XmlPullParserException e5) {
                        throw new java.lang.IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e5);
                    }
                } catch (java.io.IOException e6) {
                    throw new java.lang.IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", e6);
                }
            }
        }
        return bVarH;
    }

    public static android.net.Uri f(android.content.Context context, java.lang.String str, java.io.File file) {
        return e(context, str, 0).b(file);
    }

    public static int g(java.lang.String str) {
        if ("r".equals(str)) {
            return com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT;
        }
        if ("w".equals(str) || "wt".equals(str)) {
            return 738197504;
        }
        if ("wa".equals(str)) {
            return 704643072;
        }
        if ("rw".equals(str)) {
            return 939524096;
        }
        if ("rwt".equals(str)) {
            return 1006632960;
        }
        throw new java.lang.IllegalArgumentException("Invalid mode: " + str);
    }

    public static androidx.core.content.FileProvider.b h(android.content.Context context, java.lang.String str, int i5) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        androidx.core.content.FileProvider.c cVar = new androidx.core.content.FileProvider.c(str);
        android.content.res.XmlResourceParser xmlResourceParserD = d(context, str, context.getPackageManager().resolveContentProvider(str, com.alibaba.fastjson.asm.Opcodes.IOR), i5);
        while (true) {
            int next = xmlResourceParserD.next();
            if (next == 1) {
                return cVar;
            }
            if (next == 2) {
                java.lang.String name = xmlResourceParserD.getName();
                java.io.File externalStorageDirectory = null;
                java.lang.String attributeValue = xmlResourceParserD.getAttributeValue(null, "name");
                java.lang.String attributeValue2 = xmlResourceParserD.getAttributeValue(null, "path");
                if ("root-path".equals(name)) {
                    externalStorageDirectory = f1367d;
                } else if ("files-path".equals(name)) {
                    externalStorageDirectory = context.getFilesDir();
                } else if ("cache-path".equals(name)) {
                    externalStorageDirectory = context.getCacheDir();
                } else if ("external-path".equals(name)) {
                    externalStorageDirectory = android.os.Environment.getExternalStorageDirectory();
                } else if ("external-files-path".equals(name)) {
                    java.io.File[] fileArrD = androidx.core.content.a.d(context, null);
                    if (fileArrD.length > 0) {
                        externalStorageDirectory = fileArrD[0];
                    }
                } else if ("external-cache-path".equals(name)) {
                    java.io.File[] fileArrC = androidx.core.content.a.c(context);
                    if (fileArrC.length > 0) {
                        externalStorageDirectory = fileArrC[0];
                    }
                } else if ("external-media-path".equals(name)) {
                    java.io.File[] fileArrA = androidx.core.content.FileProvider.a.a(context);
                    if (fileArrA.length > 0) {
                        externalStorageDirectory = fileArrA[0];
                    }
                }
                if (externalStorageDirectory != null) {
                    cVar.c(attributeValue, a(externalStorageDirectory, attributeValue2));
                }
            }
        }
    }

    @Override // android.content.ContentProvider
    public void attachInfo(android.content.Context context, android.content.pm.ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new java.lang.SecurityException("Provider must not be exported");
        }
        if (!providerInfo.grantUriPermissions) {
            throw new java.lang.SecurityException("Provider must grant uri permissions");
        }
        java.lang.String str = providerInfo.authority.split(";")[0];
        java.util.HashMap<java.lang.String, androidx.core.content.FileProvider.b> map = f1368e;
        synchronized (map) {
            map.remove(str);
        }
        this.f1369a = e(context, str, this.f1370b);
    }

    @Override // android.content.ContentProvider
    public int delete(android.net.Uri uri, java.lang.String str, java.lang.String[] strArr) {
        return this.f1369a.a(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public java.lang.String getType(android.net.Uri uri) {
        java.io.File fileA = this.f1369a.a(uri);
        int iLastIndexOf = fileA.getName().lastIndexOf(46);
        if (iLastIndexOf < 0) {
            return "application/octet-stream";
        }
        java.lang.String mimeTypeFromExtension = android.webkit.MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileA.getName().substring(iLastIndexOf + 1));
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
    }

    @Override // android.content.ContentProvider
    public android.net.Uri insert(android.net.Uri uri, android.content.ContentValues contentValues) {
        throw new java.lang.UnsupportedOperationException("No external inserts");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    @android.annotation.SuppressLint({"UnknownNullness"})
    public android.os.ParcelFileDescriptor openFile(android.net.Uri uri, java.lang.String str) throws java.io.FileNotFoundException {
        return android.os.ParcelFileDescriptor.open(this.f1369a.a(uri), g(str));
    }

    @Override // android.content.ContentProvider
    public android.database.Cursor query(android.net.Uri uri, java.lang.String[] strArr, java.lang.String str, java.lang.String[] strArr2, java.lang.String str2) {
        int i5;
        java.io.File fileA = this.f1369a.a(uri);
        java.lang.String queryParameter = uri.getQueryParameter("displayName");
        if (strArr == null) {
            strArr = f1366c;
        }
        java.lang.String[] strArr3 = new java.lang.String[strArr.length];
        java.lang.Object[] objArr = new java.lang.Object[strArr.length];
        int i6 = 0;
        for (java.lang.String str3 : strArr) {
            if ("_display_name".equals(str3)) {
                strArr3[i6] = "_display_name";
                i5 = i6 + 1;
                objArr[i6] = queryParameter == null ? fileA.getName() : queryParameter;
            } else {
                if ("_size".equals(str3)) {
                    strArr3[i6] = "_size";
                    i5 = i6 + 1;
                    objArr[i6] = java.lang.Long.valueOf(fileA.length());
                }
            }
            i6 = i5;
        }
        java.lang.String[] strArrC = c(strArr3, i6);
        java.lang.Object[] objArrB = b(objArr, i6);
        android.database.MatrixCursor matrixCursor = new android.database.MatrixCursor(strArrC, 1);
        matrixCursor.addRow(objArrB);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(android.net.Uri uri, android.content.ContentValues contentValues, java.lang.String str, java.lang.String[] strArr) {
        throw new java.lang.UnsupportedOperationException("No external updates");
    }
}
