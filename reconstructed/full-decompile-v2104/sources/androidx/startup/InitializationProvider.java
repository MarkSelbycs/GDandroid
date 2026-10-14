package androidx.startup;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class InitializationProvider extends android.content.ContentProvider {
    @Override // android.content.ContentProvider
    public final int delete(android.net.Uri uri, java.lang.String str, java.lang.String[] strArr) {
        throw new java.lang.IllegalStateException("Not allowed.");
    }

    @Override // android.content.ContentProvider
    public final java.lang.String getType(android.net.Uri uri) {
        throw new java.lang.IllegalStateException("Not allowed.");
    }

    @Override // android.content.ContentProvider
    public final android.net.Uri insert(android.net.Uri uri, android.content.ContentValues contentValues) {
        throw new java.lang.IllegalStateException("Not allowed.");
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        android.content.Context context = getContext();
        if (context == null) {
            throw new i0.b("Context cannot be null");
        }
        if (context.getApplicationContext() == null) {
            return true;
        }
        androidx.startup.a.d(context).a();
        return true;
    }

    @Override // android.content.ContentProvider
    public final android.database.Cursor query(android.net.Uri uri, java.lang.String[] strArr, java.lang.String str, java.lang.String[] strArr2, java.lang.String str2) {
        throw new java.lang.IllegalStateException("Not allowed.");
    }

    @Override // android.content.ContentProvider
    public final int update(android.net.Uri uri, android.content.ContentValues contentValues, java.lang.String str, java.lang.String[] strArr) {
        throw new java.lang.IllegalStateException("Not allowed.");
    }
}
