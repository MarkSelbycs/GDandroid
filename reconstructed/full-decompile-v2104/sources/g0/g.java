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
/* JADX INFO: compiled from: FrameworkSQLiteProgram.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public class g implements f0.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.database.sqlite.SQLiteProgram f4327a;

    public g(android.database.sqlite.SQLiteProgram sQLiteProgram) {
        m3.k.e(sQLiteProgram, "delegate");
        this.f4327a = sQLiteProgram;
    }

    @Override // f0.i
    public void E(int i5, java.lang.String str) {
        m3.k.e(str, "value");
        this.f4327a.bindString(i5, str);
    }

    @Override // f0.i
    public void G(int i5, long j5) {
        this.f4327a.bindLong(i5, j5);
    }

    @Override // f0.i
    public void a0(int i5, byte[] bArr) {
        m3.k.e(bArr, "value");
        this.f4327a.bindBlob(i5, bArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f4327a.close();
    }

    @Override // f0.i
    public void d0(int i5) {
        this.f4327a.bindNull(i5);
    }

    @Override // f0.i
    public void g0(int i5, double d5) {
        this.f4327a.bindDouble(i5, d5);
    }
}
