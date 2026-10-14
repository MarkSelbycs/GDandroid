package androidx.webkit;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class DropDataContentProvider extends android.content.ContentProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public org.chromium.support_lib_boundary.DropDataContentProviderBoundaryInterface f2579a;

    public final org.chromium.support_lib_boundary.DropDataContentProviderBoundaryInterface a() {
        if (this.f2579a == null) {
            org.chromium.support_lib_boundary.DropDataContentProviderBoundaryInterface dropDataProvider = p0.c.c().getDropDataProvider();
            this.f2579a = dropDataProvider;
            dropDataProvider.onCreate();
        }
        return this.f2579a;
    }

    @Override // android.content.ContentProvider
    public android.os.Bundle call(java.lang.String str, java.lang.String str2, android.os.Bundle bundle) {
        return a().call(str, str2, bundle);
    }

    @Override // android.content.ContentProvider
    public int delete(android.net.Uri uri, java.lang.String str, java.lang.String[] strArr) {
        throw new java.lang.UnsupportedOperationException("delete method is not supported.");
    }

    @Override // android.content.ContentProvider
    public java.lang.String getType(android.net.Uri uri) {
        return a().getType(uri);
    }

    @Override // android.content.ContentProvider
    public android.net.Uri insert(android.net.Uri uri, android.content.ContentValues contentValues) {
        throw new java.lang.UnsupportedOperationException("Insert method is not supported.");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public android.os.ParcelFileDescriptor openFile(android.net.Uri uri, java.lang.String str) throws java.io.FileNotFoundException {
        return a().openFile(this, uri);
    }

    @Override // android.content.ContentProvider
    public android.database.Cursor query(android.net.Uri uri, java.lang.String[] strArr, java.lang.String str, java.lang.String[] strArr2, java.lang.String str2) {
        return a().query(uri, strArr, str, strArr2, str2);
    }

    @Override // android.content.ContentProvider
    public int update(android.net.Uri uri, android.content.ContentValues contentValues, java.lang.String str, java.lang.String[] strArr) {
        throw new java.lang.UnsupportedOperationException("update method is not supported.");
    }
}
