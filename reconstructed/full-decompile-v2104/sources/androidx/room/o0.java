package androidx.room;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:68)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:31)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:31)
    */
/* JADX INFO: compiled from: SharedSQLiteStatement.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public abstract class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.room.i0 f2401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.concurrent.atomic.AtomicBoolean f2402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a3.d f2403c;

    /* JADX INFO: compiled from: SharedSQLiteStatement.kt */
    @kotlin.Metadata
    public static final class a extends m3.l implements l3.a<f0.k> {
        public a() {
            super(0);
        }

        @Override // l3.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final f0.k c() {
            return androidx.room.o0.this.d();
        }
    }

    public o0(androidx.room.i0 i0Var) {
        m3.k.e(i0Var, "database");
        this.f2401a = i0Var;
        this.f2402b = new java.util.concurrent.atomic.AtomicBoolean(false);
        this.f2403c = a3.e.a(new androidx.room.o0.a());
    }

    public f0.k b() {
        c();
        return g(this.f2402b.compareAndSet(false, true));
    }

    public void c() {
        this.f2401a.c();
    }

    public final f0.k d() {
        return this.f2401a.f(e());
    }

    public abstract java.lang.String e();

    public final f0.k f() {
        return (f0.k) this.f2403c.getValue();
    }

    public final f0.k g(boolean z4) {
        return z4 ? f() : d();
    }

    public void h(f0.k kVar) {
        m3.k.e(kVar, "statement");
        if (kVar == f()) {
            this.f2402b.set(false);
        }
    }
}
