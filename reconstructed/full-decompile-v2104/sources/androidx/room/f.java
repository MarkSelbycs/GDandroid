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
/* JADX INFO: compiled from: DatabaseConfiguration.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f2261a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f2262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f0.h.c f2263c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.room.i0.e f2264d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.util.List<androidx.room.i0.b> f2265e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f2266f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final androidx.room.i0.d f2267g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final java.util.concurrent.Executor f2268h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final java.util.concurrent.Executor f2269i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final android.content.Intent f2270j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f2271k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f2272l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final java.util.Set<java.lang.Integer> f2273m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final java.lang.String f2274n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final java.io.File f2275o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final java.util.concurrent.Callable<java.io.InputStream> f2276p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final java.util.List<java.lang.Object> f2277q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final java.util.List<d0.a> f2278r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final boolean f2279s;

    /* JADX WARN: Multi-variable type inference failed */
    @android.annotation.SuppressLint({"LambdaLast"})
    public f(android.content.Context context, java.lang.String str, f0.h.c cVar, androidx.room.i0.e eVar, java.util.List<? extends androidx.room.i0.b> list, boolean z4, androidx.room.i0.d dVar, java.util.concurrent.Executor executor, java.util.concurrent.Executor executor2, android.content.Intent intent, boolean z5, boolean z6, java.util.Set<java.lang.Integer> set, java.lang.String str2, java.io.File file, java.util.concurrent.Callable<java.io.InputStream> callable, androidx.room.i0.f fVar, java.util.List<? extends java.lang.Object> list2, java.util.List<? extends d0.a> list3) {
        m3.k.e(context, "context");
        m3.k.e(cVar, "sqliteOpenHelperFactory");
        m3.k.e(eVar, "migrationContainer");
        m3.k.e(dVar, "journalMode");
        m3.k.e(executor, "queryExecutor");
        m3.k.e(executor2, "transactionExecutor");
        m3.k.e(list2, "typeConverters");
        m3.k.e(list3, "autoMigrationSpecs");
        this.f2261a = context;
        this.f2262b = str;
        this.f2263c = cVar;
        this.f2264d = eVar;
        this.f2265e = list;
        this.f2266f = z4;
        this.f2267g = dVar;
        this.f2268h = executor;
        this.f2269i = executor2;
        this.f2270j = intent;
        this.f2271k = z5;
        this.f2272l = z6;
        this.f2273m = set;
        this.f2274n = str2;
        this.f2275o = file;
        this.f2276p = callable;
        this.f2277q = list2;
        this.f2278r = list3;
        this.f2279s = intent != null;
    }

    public boolean a(int i5, int i6) {
        java.util.Set<java.lang.Integer> set;
        if ((i5 > i6) && this.f2272l) {
            return false;
        }
        return this.f2271k && ((set = this.f2273m) == null || !set.contains(java.lang.Integer.valueOf(i5)));
    }
}
