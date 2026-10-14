package g0;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:68)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:31)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: compiled from: FrameworkSQLiteStatement.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class h extends g0.g implements f0.k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.database.sqlite.SQLiteStatement f4328b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(android.database.sqlite.SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        m3.k.e(sQLiteStatement, "delegate");
        this.f4328b = sQLiteStatement;
    }

    @Override // f0.k
    public int Q() {
        return this.f4328b.executeUpdateDelete();
    }

    @Override // f0.k
    public long n0() {
        return this.f4328b.executeInsert();
    }
}
