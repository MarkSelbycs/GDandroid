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
/* JADX INFO: compiled from: SQLiteCopyOpenHelperFactory.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class n0 implements f0.h.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f2396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.io.File f2397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.concurrent.Callable<java.io.InputStream> f2398c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f0.h.c f2399d;

    public n0(java.lang.String str, java.io.File file, java.util.concurrent.Callable<java.io.InputStream> callable, f0.h.c cVar) {
        m3.k.e(cVar, "mDelegate");
        this.f2396a = str;
        this.f2397b = file;
        this.f2398c = callable;
        this.f2399d = cVar;
    }

    @Override // f0.h.c
    public f0.h a(f0.h.b bVar) {
        m3.k.e(bVar, "configuration");
        return new androidx.room.m0(bVar.f4183a, this.f2396a, this.f2397b, this.f2398c, bVar.f4185c.f4181a, this.f2399d.a(bVar));
    }
}
