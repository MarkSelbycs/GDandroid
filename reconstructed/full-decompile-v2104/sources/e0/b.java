package e0;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:68)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:31)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: compiled from: DBUtil.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class b {
    public static final void a(f0.g gVar) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
        m3.k.e(gVar, "db");
        java.util.List listC = b3.n.c();
        android.database.Cursor cursorO0 = gVar.o0("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (cursorO0.moveToNext()) {
            try {
                listC.add(cursorO0.getString(0));
            } catch (java.lang.Throwable th) {
                try {
                    throw th;
                } catch (java.lang.Throwable th2) {
                    j3.a.a(cursorO0, th);
                    throw th2;
                }
            }
        }
        a3.o oVar = a3.o.f122a;
        j3.a.a(cursorO0, null);
        for (java.lang.String str : b3.n.a(listC)) {
            m3.k.d(str, "triggerName");
            if (s3.l.n(str, "room_fts_content_sync_", false, 2, null)) {
                gVar.D("DROP TRIGGER IF EXISTS " + str);
            }
        }
    }

    public static final android.database.Cursor b(androidx.room.i0 i0Var, f0.j jVar, boolean z4, android.os.CancellationSignal cancellationSignal) {
        m3.k.e(i0Var, "db");
        m3.k.e(jVar, "sqLiteQuery");
        android.database.Cursor cursorX = i0Var.x(jVar, cancellationSignal);
        if (!z4 || !(cursorX instanceof android.database.AbstractWindowedCursor)) {
            return cursorX;
        }
        android.database.AbstractWindowedCursor abstractWindowedCursor = (android.database.AbstractWindowedCursor) cursorX;
        int count = abstractWindowedCursor.getCount();
        return (abstractWindowedCursor.hasWindow() ? abstractWindowedCursor.getWindow().getNumRows() : count) < count ? e0.a.a(cursorX) : cursorX;
    }

    public static final int c(java.io.File file) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
        m3.k.e(file, "databaseFile");
        java.nio.channels.FileChannel channel = new java.io.FileInputStream(file).getChannel();
        try {
            java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(4);
            channel.tryLock(60L, 4L, true);
            channel.position(60L);
            if (channel.read(byteBufferAllocate) != 4) {
                throw new java.io.IOException("Bad database header, unable to read 4 bytes at offset 60");
            }
            byteBufferAllocate.rewind();
            int i5 = byteBufferAllocate.getInt();
            j3.a.a(channel, null);
            return i5;
        } catch (java.lang.Throwable th) {
            try {
                throw th;
            } catch (java.lang.Throwable th2) {
                j3.a.a(channel, th);
                throw th2;
            }
        }
    }
}
