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
/* JADX INFO: compiled from: QueryInterceptorDatabase.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class a0 implements f0.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f0.g f2208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.concurrent.Executor f2209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.room.i0.g f2210c;

    public a0(f0.g gVar, java.util.concurrent.Executor executor, androidx.room.i0.g gVar2) {
        m3.k.e(gVar, "delegate");
        m3.k.e(executor, "queryCallbackExecutor");
        m3.k.e(gVar2, "queryCallback");
        this.f2208a = gVar;
        this.f2209b = executor;
        this.f2210c = gVar2;
    }

    public static final void C(androidx.room.a0 a0Var, f0.j jVar, androidx.room.d0 d0Var) {
        m3.k.e(a0Var, "this$0");
        m3.k.e(jVar, "$query");
        m3.k.e(d0Var, "$queryInterceptorProgram");
        a0Var.f2210c.a(jVar.e(), d0Var.c());
    }

    public static final void H(androidx.room.a0 a0Var) {
        m3.k.e(a0Var, "this$0");
        a0Var.f2210c.a("TRANSACTION SUCCESSFUL", b3.o.e());
    }

    public static final void q(androidx.room.a0 a0Var) {
        m3.k.e(a0Var, "this$0");
        a0Var.f2210c.a("BEGIN EXCLUSIVE TRANSACTION", b3.o.e());
    }

    public static final void r(androidx.room.a0 a0Var) {
        m3.k.e(a0Var, "this$0");
        a0Var.f2210c.a("BEGIN DEFERRED TRANSACTION", b3.o.e());
    }

    public static final void s(androidx.room.a0 a0Var) {
        m3.k.e(a0Var, "this$0");
        a0Var.f2210c.a("END TRANSACTION", b3.o.e());
    }

    public static final void u(androidx.room.a0 a0Var, java.lang.String str) {
        m3.k.e(a0Var, "this$0");
        m3.k.e(str, "$sql");
        a0Var.f2210c.a(str, b3.o.e());
    }

    public static final void x(androidx.room.a0 a0Var, java.lang.String str, java.util.List list) {
        m3.k.e(a0Var, "this$0");
        m3.k.e(str, "$sql");
        m3.k.e(list, "$inputArguments");
        a0Var.f2210c.a(str, list);
    }

    public static final void y(androidx.room.a0 a0Var, java.lang.String str) {
        m3.k.e(a0Var, "this$0");
        m3.k.e(str, "$query");
        a0Var.f2210c.a(str, b3.o.e());
    }

    public static final void z(androidx.room.a0 a0Var, f0.j jVar, androidx.room.d0 d0Var) {
        m3.k.e(a0Var, "this$0");
        m3.k.e(jVar, "$query");
        m3.k.e(d0Var, "$queryInterceptorProgram");
        a0Var.f2210c.a(jVar.e(), d0Var.c());
    }

    @Override // f0.g
    public boolean B() {
        return this.f2208a.B();
    }

    @Override // f0.g
    public void D(final java.lang.String str) {
        m3.k.e(str, "sql");
        this.f2209b.execute(new java.lang.Runnable() { // from class: androidx.room.x
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.a0.u(this.f2423a, str);
            }
        });
        this.f2208a.D(str);
    }

    @Override // f0.g
    public android.database.Cursor F(final f0.j jVar, android.os.CancellationSignal cancellationSignal) {
        m3.k.e(jVar, "query");
        final androidx.room.d0 d0Var = new androidx.room.d0();
        jVar.c(d0Var);
        this.f2209b.execute(new java.lang.Runnable() { // from class: androidx.room.w
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.a0.C(this.f2420a, jVar, d0Var);
            }
        });
        return this.f2208a.t(jVar);
    }

    @Override // f0.g
    public void J() {
        this.f2209b.execute(new java.lang.Runnable() { // from class: androidx.room.t
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.a0.H(this.f2415a);
            }
        });
        this.f2208a.J();
    }

    @Override // f0.g
    public void O(final java.lang.String str, java.lang.Object[] objArr) {
        m3.k.e(str, "sql");
        m3.k.e(objArr, "bindArgs");
        final java.util.ArrayList arrayList = new java.util.ArrayList();
        arrayList.addAll(b3.n.d(objArr));
        this.f2209b.execute(new java.lang.Runnable() { // from class: androidx.room.z
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.a0.x(this.f2427a, str, arrayList);
            }
        });
        this.f2208a.O(str, new java.util.List[]{arrayList});
    }

    @Override // f0.g
    public f0.k S(java.lang.String str) {
        m3.k.e(str, "sql");
        return new androidx.room.g0(this.f2208a.S(str), str, this.f2209b, this.f2210c);
    }

    @Override // f0.g
    public void T() {
        this.f2209b.execute(new java.lang.Runnable() { // from class: androidx.room.u
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.a0.r(this.f2416a);
            }
        });
        this.f2208a.T();
    }

    @Override // f0.g
    public int U(java.lang.String str, int i5, android.content.ContentValues contentValues, java.lang.String str2, java.lang.Object[] objArr) {
        m3.k.e(str, "table");
        m3.k.e(contentValues, "values");
        return this.f2208a.U(str, i5, contentValues, str2, objArr);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        this.f2208a.close();
    }

    @Override // f0.g
    public void k() {
        this.f2209b.execute(new java.lang.Runnable() { // from class: androidx.room.s
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.a0.s(this.f2414a);
            }
        });
        this.f2208a.k();
    }

    @Override // f0.g
    public void m() {
        this.f2209b.execute(new java.lang.Runnable() { // from class: androidx.room.q
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.a0.q(this.f2409a);
            }
        });
        this.f2208a.m();
    }

    @Override // f0.g
    public android.database.Cursor o0(final java.lang.String str) {
        m3.k.e(str, "query");
        this.f2209b.execute(new java.lang.Runnable() { // from class: androidx.room.y
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.a0.y(this.f2425a, str);
            }
        });
        return this.f2208a.o0(str);
    }

    @Override // f0.g
    public java.lang.String q0() {
        return this.f2208a.q0();
    }

    @Override // f0.g
    public boolean s0() {
        return this.f2208a.s0();
    }

    @Override // f0.g
    public android.database.Cursor t(final f0.j jVar) {
        m3.k.e(jVar, "query");
        final androidx.room.d0 d0Var = new androidx.room.d0();
        jVar.c(d0Var);
        this.f2209b.execute(new java.lang.Runnable() { // from class: androidx.room.v
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.a0.z(this.f2417a, jVar, d0Var);
            }
        });
        return this.f2208a.t(jVar);
    }

    @Override // f0.g
    public boolean v() {
        return this.f2208a.v();
    }

    @Override // f0.g
    public java.util.List<android.util.Pair<java.lang.String, java.lang.String>> w() {
        return this.f2208a.w();
    }
}
