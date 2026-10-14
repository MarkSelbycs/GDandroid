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
/* JADX INFO: compiled from: SQLiteCopyOpenHelper.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class m0 implements f0.h, androidx.room.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f2387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f2388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.io.File f2389c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.concurrent.Callable<java.io.InputStream> f2390d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2391e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final f0.h f2392f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public androidx.room.f f2393g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2394h;

    public m0(android.content.Context context, java.lang.String str, java.io.File file, java.util.concurrent.Callable<java.io.InputStream> callable, int i5, f0.h hVar) {
        m3.k.e(context, "context");
        m3.k.e(hVar, "delegate");
        this.f2387a = context;
        this.f2388b = str;
        this.f2389c = file;
        this.f2390d = callable;
        this.f2391e = i5;
        this.f2392f = hVar;
    }

    @Override // androidx.room.g
    public f0.h c() {
        return this.f2392f;
    }

    @Override // f0.h, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        c().close();
        this.f2394h = false;
    }

    public final void e(java.io.File file, boolean z4) throws java.io.IOException {
        java.nio.channels.ReadableByteChannel readableByteChannelNewChannel;
        if (this.f2388b != null) {
            readableByteChannelNewChannel = java.nio.channels.Channels.newChannel(this.f2387a.getAssets().open(this.f2388b));
            m3.k.d(readableByteChannelNewChannel, "newChannel(context.assets.open(copyFromAssetPath))");
        } else if (this.f2389c != null) {
            readableByteChannelNewChannel = new java.io.FileInputStream(this.f2389c).getChannel();
            m3.k.d(readableByteChannelNewChannel, "FileInputStream(copyFromFile).channel");
        } else {
            java.util.concurrent.Callable<java.io.InputStream> callable = this.f2390d;
            if (callable == null) {
                throw new java.lang.IllegalStateException("copyFromAssetPath, copyFromFile and copyFromInputStream are all null!");
            }
            try {
                readableByteChannelNewChannel = java.nio.channels.Channels.newChannel(callable.call());
                m3.k.d(readableByteChannelNewChannel, "newChannel(inputStream)");
            } catch (java.lang.Exception e5) {
                throw new java.io.IOException("inputStreamCallable exception on call", e5);
            }
        }
        java.io.File fileCreateTempFile = java.io.File.createTempFile("room-copy-helper", ".tmp", this.f2387a.getCacheDir());
        fileCreateTempFile.deleteOnExit();
        java.nio.channels.FileChannel channel = new java.io.FileOutputStream(fileCreateTempFile).getChannel();
        m3.k.d(channel, "output");
        e0.c.a(readableByteChannelNewChannel, channel);
        java.io.File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new java.io.IOException("Failed to create directories for " + file.getAbsolutePath());
        }
        m3.k.d(fileCreateTempFile, "intermediateFile");
        f(fileCreateTempFile, z4);
        if (fileCreateTempFile.renameTo(file)) {
            return;
        }
        throw new java.io.IOException("Failed to move intermediate file (" + fileCreateTempFile.getAbsolutePath() + ") to destination (" + file.getAbsolutePath() + ").");
    }

    public final void f(java.io.File file, boolean z4) {
        androidx.room.f fVar = this.f2393g;
        if (fVar == null) {
            m3.k.n("databaseConfiguration");
            fVar = null;
        }
        java.util.Objects.requireNonNull(fVar);
    }

    @Override // f0.h
    public java.lang.String getDatabaseName() {
        return c().getDatabaseName();
    }

    public final void h(androidx.room.f fVar) {
        m3.k.e(fVar, "databaseConfiguration");
        this.f2393g = fVar;
    }

    public final void i(boolean z4) {
        java.lang.String databaseName = getDatabaseName();
        if (databaseName == null) {
            throw new java.lang.IllegalStateException("Required value was null.".toString());
        }
        java.io.File databasePath = this.f2387a.getDatabasePath(databaseName);
        androidx.room.f fVar = this.f2393g;
        androidx.room.f fVar2 = null;
        if (fVar == null) {
            m3.k.n("databaseConfiguration");
            fVar = null;
        }
        boolean z5 = fVar.f2279s;
        java.io.File filesDir = this.f2387a.getFilesDir();
        m3.k.d(filesDir, "context.filesDir");
        h0.a aVar = new h0.a(databaseName, filesDir, z5);
        try {
            h0.a.c(aVar, false, 1, null);
            if (!databasePath.exists()) {
                try {
                    m3.k.d(databasePath, "databaseFile");
                    e(databasePath, z4);
                    aVar.d();
                    return;
                } catch (java.io.IOException e5) {
                    throw new java.lang.RuntimeException("Unable to copy database file.", e5);
                }
            }
            try {
                m3.k.d(databasePath, "databaseFile");
                int iC = e0.b.c(databasePath);
                if (iC == this.f2391e) {
                    aVar.d();
                    return;
                }
                androidx.room.f fVar3 = this.f2393g;
                if (fVar3 == null) {
                    m3.k.n("databaseConfiguration");
                } else {
                    fVar2 = fVar3;
                }
                if (fVar2.a(iC, this.f2391e)) {
                    aVar.d();
                    return;
                }
                if (this.f2387a.deleteDatabase(databaseName)) {
                    try {
                        e(databasePath, z4);
                    } catch (java.io.IOException e6) {
                        android.util.Log.w("ROOM", "Unable to copy database file.", e6);
                    }
                } else {
                    android.util.Log.w("ROOM", "Failed to delete database file (" + databaseName + ") for a copy destructive migration.");
                }
                aVar.d();
                return;
            } catch (java.io.IOException e7) {
                android.util.Log.w("ROOM", "Unable to read database version.", e7);
                aVar.d();
                return;
            }
        } catch (java.lang.Throwable th) {
            aVar.d();
            throw th;
        }
        aVar.d();
        throw th;
    }

    @Override // f0.h
    public f0.g l0() {
        if (!this.f2394h) {
            i(true);
            this.f2394h = true;
        }
        return c().l0();
    }

    @Override // f0.h
    public void setWriteAheadLoggingEnabled(boolean z4) {
        c().setWriteAheadLoggingEnabled(z4);
    }
}
