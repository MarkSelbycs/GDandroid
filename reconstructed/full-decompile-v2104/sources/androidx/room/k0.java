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
/* JADX INFO: compiled from: RoomOpenHelper.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public class k0 extends f0.h.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final androidx.room.k0.a f2339g = new androidx.room.k0.a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.room.f f2340c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.room.k0.b f2341d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.lang.String f2342e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final java.lang.String f2343f;

    /* JADX INFO: compiled from: RoomOpenHelper.kt */
    @kotlin.Metadata
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }

        public final boolean a(f0.g gVar) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
            m3.k.e(gVar, "db");
            android.database.Cursor cursorO0 = gVar.o0("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
            try {
                boolean z4 = false;
                if (cursorO0.moveToFirst() && cursorO0.getInt(0) == 0) {
                    z4 = true;
                }
                j3.a.a(cursorO0, null);
                return z4;
            } catch (java.lang.Throwable th) {
                try {
                    throw th;
                } catch (java.lang.Throwable th2) {
                    j3.a.a(cursorO0, th);
                    throw th2;
                }
            }
        }

        public final boolean b(f0.g gVar) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
            m3.k.e(gVar, "db");
            android.database.Cursor cursorO0 = gVar.o0("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
            try {
                boolean z4 = false;
                if (cursorO0.moveToFirst() && cursorO0.getInt(0) != 0) {
                    z4 = true;
                }
                j3.a.a(cursorO0, null);
                return z4;
            } catch (java.lang.Throwable th) {
                try {
                    throw th;
                } catch (java.lang.Throwable th2) {
                    j3.a.a(cursorO0, th);
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: compiled from: RoomOpenHelper.kt */
    @kotlin.Metadata
    public static abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f2344a;

        public b(int i5) {
            this.f2344a = i5;
        }

        public abstract void a(f0.g gVar);

        public abstract void b(f0.g gVar);

        public abstract void c(f0.g gVar);

        public abstract void d(f0.g gVar);

        public abstract void e(f0.g gVar);

        public abstract void f(f0.g gVar);

        public abstract androidx.room.k0.c g(f0.g gVar);
    }

    /* JADX INFO: compiled from: RoomOpenHelper.kt */
    @kotlin.Metadata
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f2345a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.String f2346b;

        public c(boolean z4, java.lang.String str) {
            this.f2345a = z4;
            this.f2346b = str;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k0(androidx.room.f fVar, androidx.room.k0.b bVar, java.lang.String str, java.lang.String str2) {
        super(bVar.f2344a);
        m3.k.e(fVar, "configuration");
        m3.k.e(bVar, "delegate");
        m3.k.e(str, "identityHash");
        m3.k.e(str2, "legacyHash");
        this.f2340c = fVar;
        this.f2341d = bVar;
        this.f2342e = str;
        this.f2343f = str2;
    }

    @Override // f0.h.a
    public void b(f0.g gVar) {
        m3.k.e(gVar, "db");
        super.b(gVar);
    }

    @Override // f0.h.a
    public void d(f0.g gVar) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
        m3.k.e(gVar, "db");
        boolean zA = f2339g.a(gVar);
        this.f2341d.a(gVar);
        if (!zA) {
            androidx.room.k0.c cVarG = this.f2341d.g(gVar);
            if (!cVarG.f2345a) {
                throw new java.lang.IllegalStateException("Pre-packaged database has an invalid schema: " + cVarG.f2346b);
            }
        }
        j(gVar);
        this.f2341d.c(gVar);
    }

    @Override // f0.h.a
    public void e(f0.g gVar, int i5, int i6) {
        m3.k.e(gVar, "db");
        g(gVar, i5, i6);
    }

    @Override // f0.h.a
    public void f(f0.g gVar) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
        m3.k.e(gVar, "db");
        super.f(gVar);
        h(gVar);
        this.f2341d.d(gVar);
        this.f2340c = null;
    }

    @Override // f0.h.a
    public void g(f0.g gVar, int i5, int i6) {
        java.util.List<d0.b> listD;
        m3.k.e(gVar, "db");
        androidx.room.f fVar = this.f2340c;
        boolean z4 = false;
        if (fVar != null && (listD = fVar.f2264d.d(i5, i6)) != null) {
            this.f2341d.f(gVar);
            java.util.Iterator<T> it = listD.iterator();
            while (it.hasNext()) {
                ((d0.b) it.next()).a(gVar);
            }
            androidx.room.k0.c cVarG = this.f2341d.g(gVar);
            if (!cVarG.f2345a) {
                throw new java.lang.IllegalStateException("Migration didn't properly handle: " + cVarG.f2346b);
            }
            this.f2341d.e(gVar);
            j(gVar);
            z4 = true;
        }
        if (z4) {
            return;
        }
        androidx.room.f fVar2 = this.f2340c;
        if (fVar2 != null && !fVar2.a(i5, i6)) {
            this.f2341d.b(gVar);
            this.f2341d.a(gVar);
            return;
        }
        throw new java.lang.IllegalStateException("A migration from " + i5 + " to " + i6 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
    }

    public final void h(f0.g gVar) throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
        if (!f2339g.b(gVar)) {
            androidx.room.k0.c cVarG = this.f2341d.g(gVar);
            if (cVarG.f2345a) {
                this.f2341d.e(gVar);
                j(gVar);
                return;
            } else {
                throw new java.lang.IllegalStateException("Pre-packaged database has an invalid schema: " + cVarG.f2346b);
            }
        }
        android.database.Cursor cursorT = gVar.t(new f0.a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
        try {
            java.lang.String string = cursorT.moveToFirst() ? cursorT.getString(0) : null;
            j3.a.a(cursorT, null);
            if (m3.k.a(this.f2342e, string) || m3.k.a(this.f2343f, string)) {
                return;
            }
            throw new java.lang.IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: " + this.f2342e + ", found: " + string);
        } catch (java.lang.Throwable th) {
            try {
                throw th;
            } catch (java.lang.Throwable th2) {
                j3.a.a(cursorT, th);
                throw th2;
            }
        }
    }

    public final void i(f0.g gVar) {
        gVar.D("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    public final void j(f0.g gVar) {
        i(gVar);
        gVar.D(androidx.room.j0.a(this.f2342e));
    }
}
