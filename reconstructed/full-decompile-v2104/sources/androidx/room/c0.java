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
/* JADX INFO: compiled from: QueryInterceptorOpenHelperFactory.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class c0 implements f0.h.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f0.h.c f2228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.concurrent.Executor f2229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.room.i0.g f2230c;

    public c0(f0.h.c cVar, java.util.concurrent.Executor executor, androidx.room.i0.g gVar) {
        m3.k.e(cVar, "delegate");
        m3.k.e(executor, "queryCallbackExecutor");
        m3.k.e(gVar, "queryCallback");
        this.f2228a = cVar;
        this.f2229b = executor;
        this.f2230c = gVar;
    }

    @Override // f0.h.c
    public f0.h a(f0.h.b bVar) {
        m3.k.e(bVar, "configuration");
        return new androidx.room.b0(this.f2228a.a(bVar), this.f2229b, this.f2230c);
    }
}
