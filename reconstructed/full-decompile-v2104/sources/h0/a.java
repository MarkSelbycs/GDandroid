package h0;

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
/* JADX INFO: compiled from: ProcessLock.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final h0.a.C0058a f4551e = new h0.a.C0058a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.util.Map<java.lang.String, java.util.concurrent.locks.Lock> f4552f = new java.util.HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f4553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.io.File f4554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @android.annotation.SuppressLint({"SyntheticAccessor"})
    public final java.util.concurrent.locks.Lock f4555c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.nio.channels.FileChannel f4556d;

    /* JADX INFO: renamed from: h0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ProcessLock.kt */
    @kotlin.Metadata
    public static final class C0058a {
        public C0058a() {
        }

        public /* synthetic */ C0058a(m3.g gVar) {
            this();
        }

        public final java.util.concurrent.locks.Lock b(java.lang.String str) {
            java.util.concurrent.locks.Lock lock;
            synchronized (h0.a.f4552f) {
                java.util.Map map = h0.a.f4552f;
                java.lang.Object reentrantLock = map.get(str);
                if (reentrantLock == null) {
                    reentrantLock = new java.util.concurrent.locks.ReentrantLock();
                    map.put(str, reentrantLock);
                }
                lock = (java.util.concurrent.locks.Lock) reentrantLock;
            }
            return lock;
        }
    }

    public a(java.lang.String str, java.io.File file, boolean z4) {
        m3.k.e(str, "name");
        m3.k.e(file, "lockDir");
        this.f4553a = z4;
        java.io.File file2 = new java.io.File(file, str + ".lck");
        this.f4554b = file2;
        h0.a.C0058a c0058a = f4551e;
        java.lang.String absolutePath = file2.getAbsolutePath();
        m3.k.d(absolutePath, "lockFile.absolutePath");
        this.f4555c = c0058a.b(absolutePath);
    }

    public static /* synthetic */ void c(h0.a aVar, boolean z4, int i5, java.lang.Object obj) {
        if ((i5 & 1) != 0) {
            z4 = aVar.f4553a;
        }
        aVar.b(z4);
    }

    public final void b(boolean z4) {
        this.f4555c.lock();
        if (z4) {
            try {
                java.io.File parentFile = this.f4554b.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                java.nio.channels.FileChannel channel = new java.io.FileOutputStream(this.f4554b).getChannel();
                channel.lock();
                this.f4556d = channel;
            } catch (java.io.IOException e5) {
                this.f4556d = null;
                android.util.Log.w("SupportSQLiteLock", "Unable to grab file lock.", e5);
            }
        }
    }

    public final void d() {
        try {
            java.nio.channels.FileChannel fileChannel = this.f4556d;
            if (fileChannel != null) {
                fileChannel.close();
            }
        } catch (java.io.IOException unused) {
        }
        this.f4555c.unlock();
    }
}
