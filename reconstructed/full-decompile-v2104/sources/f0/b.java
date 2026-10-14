package f0;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:68)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:31)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: compiled from: SupportSQLiteCompat.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f0.b f4175a = new f0.b();

    public static final boolean a(java.io.File file) {
        m3.k.e(file, "file");
        return android.database.sqlite.SQLiteDatabase.deleteDatabase(file);
    }

    public static final boolean b(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
        m3.k.e(sQLiteDatabase, "sQLiteDatabase");
        return sQLiteDatabase.isWriteAheadLoggingEnabled();
    }

    public static final android.database.Cursor c(android.database.sqlite.SQLiteDatabase sQLiteDatabase, java.lang.String str, java.lang.String[] strArr, java.lang.String str2, android.os.CancellationSignal cancellationSignal, android.database.sqlite.SQLiteDatabase.CursorFactory cursorFactory) {
        m3.k.e(sQLiteDatabase, "sQLiteDatabase");
        m3.k.e(str, "sql");
        m3.k.e(strArr, "selectionArgs");
        m3.k.e(cancellationSignal, "cancellationSignal");
        m3.k.e(cursorFactory, "cursorFactory");
        android.database.Cursor cursorRawQueryWithFactory = sQLiteDatabase.rawQueryWithFactory(cursorFactory, str, strArr, str2, cancellationSignal);
        m3.k.d(cursorRawQueryWithFactory, "sQLiteDatabase.rawQueryW…ationSignal\n            )");
        return cursorRawQueryWithFactory;
    }

    public static final void d(android.database.sqlite.SQLiteOpenHelper sQLiteOpenHelper, boolean z4) {
        m3.k.e(sQLiteOpenHelper, "sQLiteOpenHelper");
        sQLiteOpenHelper.setWriteAheadLoggingEnabled(z4);
    }
}
