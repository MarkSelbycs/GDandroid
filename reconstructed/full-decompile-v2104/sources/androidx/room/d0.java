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
/* JADX INFO: compiled from: QueryInterceptorProgram.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class d0 implements f0.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.List<java.lang.Object> f2257a = new java.util.ArrayList();

    @Override // f0.i
    public void E(int i5, java.lang.String str) {
        m3.k.e(str, "value");
        e(i5, str);
    }

    @Override // f0.i
    public void G(int i5, long j5) {
        e(i5, java.lang.Long.valueOf(j5));
    }

    @Override // f0.i
    public void a0(int i5, byte[] bArr) {
        m3.k.e(bArr, "value");
        e(i5, bArr);
    }

    public final java.util.List<java.lang.Object> c() {
        return this.f2257a;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // f0.i
    public void d0(int i5) {
        e(i5, null);
    }

    public final void e(int i5, java.lang.Object obj) {
        int size;
        int i6 = i5 - 1;
        if (i6 >= this.f2257a.size() && (size = this.f2257a.size()) <= i6) {
            while (true) {
                this.f2257a.add(null);
                if (size == i6) {
                    break;
                } else {
                    size++;
                }
            }
        }
        this.f2257a.set(i6, obj);
    }

    @Override // f0.i
    public void g0(int i5, double d5) {
        e(i5, java.lang.Double.valueOf(d5));
    }
}
