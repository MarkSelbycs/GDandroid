package androidx.room;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:68)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:31)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: compiled from: QueryInterceptorOpenHelper.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class b0 implements f0.h, androidx.room.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f0.h f2212a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.concurrent.Executor f2213b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.room.i0.g f2214c;

    public b0(f0.h hVar, java.util.concurrent.Executor executor, androidx.room.i0.g gVar) {
        m3.k.e(hVar, "delegate");
        m3.k.e(executor, "queryCallbackExecutor");
        m3.k.e(gVar, "queryCallback");
        this.f2212a = hVar;
        this.f2213b = executor;
        this.f2214c = gVar;
    }

    @Override // androidx.room.g
    public f0.h c() {
        return this.f2212a;
    }

    @Override // f0.h, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f2212a.close();
    }

    @Override // f0.h
    public java.lang.String getDatabaseName() {
        return this.f2212a.getDatabaseName();
    }

    @Override // f0.h
    public f0.g l0() {
        return new androidx.room.a0(c().l0(), this.f2213b, this.f2214c);
    }

    @Override // f0.h
    public void setWriteAheadLoggingEnabled(boolean z4) {
        this.f2212a.setWriteAheadLoggingEnabled(z4);
    }
}
