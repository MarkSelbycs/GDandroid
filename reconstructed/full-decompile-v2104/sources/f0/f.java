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
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f0.f f4179a = new f0.f();

    public static final java.util.List<android.net.Uri> a(android.database.Cursor cursor) {
        m3.k.e(cursor, "cursor");
        java.util.List<android.net.Uri> notificationUris = cursor.getNotificationUris();
        m3.k.b(notificationUris);
        return notificationUris;
    }

    public static final void b(android.database.Cursor cursor, android.content.ContentResolver contentResolver, java.util.List<? extends android.net.Uri> list) {
        m3.k.e(cursor, "cursor");
        m3.k.e(contentResolver, "cr");
        m3.k.e(list, "uris");
        cursor.setNotificationUris(contentResolver, list);
    }
}
