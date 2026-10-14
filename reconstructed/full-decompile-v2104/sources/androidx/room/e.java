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
/* JADX INFO: compiled from: AutoClosingRoomOpenHelperFactory.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class e implements f0.h.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f0.h.c f2258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.room.c f2259b;

    public e(f0.h.c cVar, androidx.room.c cVar2) {
        m3.k.e(cVar, "delegate");
        m3.k.e(cVar2, "autoCloser");
        this.f2258a = cVar;
        this.f2259b = cVar2;
    }

    @Override // f0.h.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public androidx.room.d a(f0.h.b bVar) {
        m3.k.e(bVar, "configuration");
        return new androidx.room.d(this.f2258a.a(bVar), this.f2259b);
    }
}
