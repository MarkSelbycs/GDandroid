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
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f0.c f4176a = new f0.c();

    public static final android.net.Uri a(android.database.Cursor cursor) {
        m3.k.e(cursor, "cursor");
        android.net.Uri notificationUri = cursor.getNotificationUri();
        m3.k.d(notificationUri, "cursor.notificationUri");
        return notificationUri;
    }

    public static final boolean b(android.app.ActivityManager activityManager) {
        m3.k.e(activityManager, "activityManager");
        return activityManager.isLowRamDevice();
    }
}
