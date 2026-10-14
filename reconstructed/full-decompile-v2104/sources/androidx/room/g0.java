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
/* JADX INFO: compiled from: QueryInterceptorStatement.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class g0 implements f0.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f0.k f2281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f2282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.concurrent.Executor f2283c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.room.i0.g f2284d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.util.List<java.lang.Object> f2285e;

    public g0(f0.k kVar, java.lang.String str, java.util.concurrent.Executor executor, androidx.room.i0.g gVar) {
        m3.k.e(kVar, "delegate");
        m3.k.e(str, "sqlStatement");
        m3.k.e(executor, "queryCallbackExecutor");
        m3.k.e(gVar, "queryCallback");
        this.f2281a = kVar;
        this.f2282b = str;
        this.f2283c = executor;
        this.f2284d = gVar;
        this.f2285e = new java.util.ArrayList();
    }

    public static final void f(androidx.room.g0 g0Var) {
        m3.k.e(g0Var, "this$0");
        g0Var.f2284d.a(g0Var.f2282b, g0Var.f2285e);
    }

    public static final void h(androidx.room.g0 g0Var) {
        m3.k.e(g0Var, "this$0");
        g0Var.f2284d.a(g0Var.f2282b, g0Var.f2285e);
    }

    @Override // f0.i
    public void E(int i5, java.lang.String str) {
        m3.k.e(str, "value");
        i(i5, str);
        this.f2281a.E(i5, str);
    }

    @Override // f0.i
    public void G(int i5, long j5) {
        i(i5, java.lang.Long.valueOf(j5));
        this.f2281a.G(i5, j5);
    }

    @Override // f0.k
    public int Q() {
        this.f2283c.execute(new java.lang.Runnable() { // from class: androidx.room.e0
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.g0.h(this.f2260a);
            }
        });
        return this.f2281a.Q();
    }

    @Override // f0.i
    public void a0(int i5, byte[] bArr) {
        m3.k.e(bArr, "value");
        i(i5, bArr);
        this.f2281a.a0(i5, bArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        this.f2281a.close();
    }

    @Override // f0.i
    public void d0(int i5) {
        java.lang.Object[] array = this.f2285e.toArray(new java.lang.Object[0]);
        m3.k.c(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        i(i5, java.util.Arrays.copyOf(array, array.length));
        this.f2281a.d0(i5);
    }

    @Override // f0.i
    public void g0(int i5, double d5) {
        i(i5, java.lang.Double.valueOf(d5));
        this.f2281a.g0(i5, d5);
    }

    public final void i(int i5, java.lang.Object obj) {
        int i6 = i5 - 1;
        if (i6 >= this.f2285e.size()) {
            int size = (i6 - this.f2285e.size()) + 1;
            for (int i7 = 0; i7 < size; i7++) {
                this.f2285e.add(null);
            }
        }
        this.f2285e.set(i6, obj);
    }

    @Override // f0.k
    public long n0() {
        this.f2283c.execute(new java.lang.Runnable() { // from class: androidx.room.f0
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.g0.f(this.f2280a);
            }
        });
        return this.f2281a.n0();
    }
}
