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
/* JADX INFO: compiled from: MultiInstanceInvalidationClient.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class MultiInstanceInvalidationClient$callback$1 extends androidx.room.IMultiInstanceInvalidationCallback.Stub {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ androidx.room.MultiInstanceInvalidationClient f2200d;

    public MultiInstanceInvalidationClient$callback$1(androidx.room.MultiInstanceInvalidationClient multiInstanceInvalidationClient) {
        this.f2200d = multiInstanceInvalidationClient;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onInvalidation$lambda$0(androidx.room.MultiInstanceInvalidationClient multiInstanceInvalidationClient, java.lang.String[] strArr) {
        m3.k.e(multiInstanceInvalidationClient, "this$0");
        m3.k.e(strArr, "$tables");
        multiInstanceInvalidationClient.e().j((java.lang.String[]) java.util.Arrays.copyOf(strArr, strArr.length));
    }

    @Override // androidx.room.IMultiInstanceInvalidationCallback
    public void onInvalidation(final java.lang.String[] strArr) {
        m3.k.e(strArr, "tables");
        java.util.concurrent.Executor executorD = this.f2200d.d();
        final androidx.room.MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.f2200d;
        executorD.execute(new java.lang.Runnable() { // from class: androidx.room.p
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.MultiInstanceInvalidationClient$callback$1.onInvalidation$lambda$0(multiInstanceInvalidationClient, strArr);
            }
        });
    }
}
