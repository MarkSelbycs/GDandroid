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
/* JADX INFO: compiled from: InvalidationLiveDataContainer.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.room.i0 f2337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.Set<androidx.lifecycle.LiveData<?>> f2338b;

    public k(androidx.room.i0 i0Var) {
        m3.k.e(i0Var, "database");
        this.f2337a = i0Var;
        java.util.Set<androidx.lifecycle.LiveData<?>> setNewSetFromMap = java.util.Collections.newSetFromMap(new java.util.IdentityHashMap());
        m3.k.d(setNewSetFromMap, "newSetFromMap(IdentityHashMap())");
        this.f2338b = setNewSetFromMap;
    }
}
