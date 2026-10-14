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
/* JADX INFO: compiled from: TransactionExecutor.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class q0 implements java.util.concurrent.Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.concurrent.Executor f2410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.ArrayDeque<java.lang.Runnable> f2411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.lang.Runnable f2412c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.Object f2413d;

    public q0(java.util.concurrent.Executor executor) {
        m3.k.e(executor, "executor");
        this.f2410a = executor;
        this.f2411b = new java.util.ArrayDeque<>();
        this.f2413d = new java.lang.Object();
    }

    public static final void b(java.lang.Runnable runnable, androidx.room.q0 q0Var) {
        m3.k.e(runnable, "$command");
        m3.k.e(q0Var, "this$0");
        try {
            runnable.run();
        } finally {
            q0Var.c();
        }
    }

    public final void c() {
        synchronized (this.f2413d) {
            java.lang.Runnable runnablePoll = this.f2411b.poll();
            java.lang.Runnable runnable = runnablePoll;
            this.f2412c = runnable;
            if (runnablePoll != null) {
                this.f2410a.execute(runnable);
            }
            a3.o oVar = a3.o.f122a;
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(final java.lang.Runnable runnable) {
        m3.k.e(runnable, "command");
        synchronized (this.f2413d) {
            this.f2411b.offer(new java.lang.Runnable() { // from class: androidx.room.p0
                @Override // java.lang.Runnable
                public final void run() {
                    androidx.room.q0.b(runnable, this);
                }
            });
            if (this.f2412c == null) {
                c();
            }
            a3.o oVar = a3.o.f122a;
        }
    }
}
