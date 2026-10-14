package g0;

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
/* JADX INFO: compiled from: FrameworkSQLiteOpenHelper.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class d implements f0.h {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final g0.d.a f4298h = new g0.d.a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f4299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f4300b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f0.h.a f4301c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f4302d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f4303e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a3.d<g0.d.c> f4304f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4305g;

    /* JADX INFO: compiled from: FrameworkSQLiteOpenHelper.kt */
    @kotlin.Metadata
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: FrameworkSQLiteOpenHelper.kt */
    @kotlin.Metadata
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public g0.c f4306a;

        public b(g0.c cVar) {
            this.f4306a = cVar;
        }

        public final g0.c a() {
            return this.f4306a;
        }

        public final void b(g0.c cVar) {
            this.f4306a = cVar;
        }
    }

    /* JADX INFO: compiled from: FrameworkSQLiteOpenHelper.kt */
    @kotlin.Metadata
    public static final class c extends android.database.sqlite.SQLiteOpenHelper {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final g0.d.c.C0052c f4307h = new g0.d.c.C0052c(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.content.Context f4308a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final g0.d.b f4309b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final f0.h.a f4310c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f4311d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f4312e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final h0.a f4313f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f4314g;

        /* JADX INFO: compiled from: FrameworkSQLiteOpenHelper.kt */
        @kotlin.Metadata
        public static final class a extends java.lang.RuntimeException {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final g0.d.c.b f4315a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final java.lang.Throwable f4316b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(g0.d.c.b bVar, java.lang.Throwable th) {
                super(th);
                m3.k.e(bVar, "callbackName");
                m3.k.e(th, "cause");
                this.f4315a = bVar;
                this.f4316b = th;
            }

            public final g0.d.c.b b() {
                return this.f4315a;
            }

            @Override // java.lang.Throwable
            public java.lang.Throwable getCause() {
                return this.f4316b;
            }
        }

        /* JADX INFO: compiled from: FrameworkSQLiteOpenHelper.kt */
        @kotlin.Metadata
        public enum b {
            ON_CONFIGURE,
            ON_CREATE,
            ON_UPGRADE,
            ON_DOWNGRADE,
            ON_OPEN
        }

        /* JADX INFO: renamed from: g0.d$c$c, reason: collision with other inner class name */
        /* JADX INFO: compiled from: FrameworkSQLiteOpenHelper.kt */
        @kotlin.Metadata
        public static final class C0052c {
            public C0052c() {
            }

            public /* synthetic */ C0052c(m3.g gVar) {
                this();
            }

            public final g0.c a(g0.d.b bVar, android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
                m3.k.e(bVar, "refHolder");
                m3.k.e(sQLiteDatabase, "sqLiteDatabase");
                g0.c cVarA = bVar.a();
                if (cVarA != null && cVarA.f(sQLiteDatabase)) {
                    return cVarA;
                }
                g0.c cVar = new g0.c(sQLiteDatabase);
                bVar.b(cVar);
                return cVar;
            }
        }

        /* JADX INFO: renamed from: g0.d$c$d, reason: collision with other inner class name */
        /* JADX INFO: compiled from: FrameworkSQLiteOpenHelper.kt */
        @a3.f
        public /* synthetic */ class C0053d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f4323a;

            static {
                int[] iArr = new int[g0.d.c.b.values().length];
                try {
                    iArr[g0.d.c.b.ON_CONFIGURE.ordinal()] = 1;
                } catch (java.lang.NoSuchFieldError unused) {
                }
                try {
                    iArr[g0.d.c.b.ON_CREATE.ordinal()] = 2;
                } catch (java.lang.NoSuchFieldError unused2) {
                }
                try {
                    iArr[g0.d.c.b.ON_UPGRADE.ordinal()] = 3;
                } catch (java.lang.NoSuchFieldError unused3) {
                }
                try {
                    iArr[g0.d.c.b.ON_DOWNGRADE.ordinal()] = 4;
                } catch (java.lang.NoSuchFieldError unused4) {
                }
                try {
                    iArr[g0.d.c.b.ON_OPEN.ordinal()] = 5;
                } catch (java.lang.NoSuchFieldError unused5) {
                }
                f4323a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(android.content.Context context, java.lang.String str, final g0.d.b bVar, final f0.h.a aVar, boolean z4) {
            super(context, str, null, aVar.f4181a, new android.database.DatabaseErrorHandler() { // from class: g0.e
                @Override // android.database.DatabaseErrorHandler
                public final void onCorruption(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
                    g0.d.c.e(aVar, bVar, sQLiteDatabase);
                }
            });
            m3.k.e(context, "context");
            m3.k.e(bVar, "dbRef");
            m3.k.e(aVar, "callback");
            this.f4308a = context;
            this.f4309b = bVar;
            this.f4310c = aVar;
            this.f4311d = z4;
            if (str == null) {
                str = java.util.UUID.randomUUID().toString();
                m3.k.d(str, "randomUUID().toString()");
            }
            java.io.File cacheDir = context.getCacheDir();
            m3.k.d(cacheDir, "context.cacheDir");
            this.f4313f = new h0.a(str, cacheDir, false);
        }

        public static final void e(f0.h.a aVar, g0.d.b bVar, android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
            m3.k.e(aVar, "$callback");
            m3.k.e(bVar, "$dbRef");
            g0.d.c.C0052c c0052c = f4307h;
            m3.k.d(sQLiteDatabase, "dbObj");
            aVar.c(c0052c.a(bVar, sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public void close() {
            try {
                h0.a.c(this.f4313f, false, 1, null);
                super.close();
                this.f4309b.b(null);
                this.f4314g = false;
            } finally {
                this.f4313f.d();
            }
        }

        public final f0.g f(boolean z4) {
            try {
                this.f4313f.b((this.f4314g || getDatabaseName() == null) ? false : true);
                this.f4312e = false;
                android.database.sqlite.SQLiteDatabase sQLiteDatabaseJ = j(z4);
                if (!this.f4312e) {
                    return h(sQLiteDatabaseJ);
                }
                close();
                return f(z4);
            } finally {
                this.f4313f.d();
            }
        }

        public final g0.c h(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
            m3.k.e(sQLiteDatabase, "sqLiteDatabase");
            return f4307h.a(this.f4309b, sQLiteDatabase);
        }

        public final android.database.sqlite.SQLiteDatabase i(boolean z4) {
            if (z4) {
                android.database.sqlite.SQLiteDatabase writableDatabase = super.getWritableDatabase();
                m3.k.d(writableDatabase, "{\n                super.…eDatabase()\n            }");
                return writableDatabase;
            }
            android.database.sqlite.SQLiteDatabase readableDatabase = super.getReadableDatabase();
            m3.k.d(readableDatabase, "{\n                super.…eDatabase()\n            }");
            return readableDatabase;
        }

        public final android.database.sqlite.SQLiteDatabase j(boolean z4) throws java.lang.Throwable {
            java.io.File parentFile;
            java.lang.String databaseName = getDatabaseName();
            if (databaseName != null && (parentFile = this.f4308a.getDatabasePath(databaseName).getParentFile()) != null) {
                parentFile.mkdirs();
                if (!parentFile.isDirectory()) {
                    android.util.Log.w("SupportSQLite", "Invalid database parent file, not a directory: " + parentFile);
                }
            }
            try {
                return i(z4);
            } catch (java.lang.Throwable unused) {
                super.close();
                try {
                    java.lang.Thread.sleep(500L);
                } catch (java.lang.InterruptedException unused2) {
                }
                try {
                    return i(z4);
                } catch (java.lang.Throwable th) {
                    super.close();
                    if (th instanceof g0.d.c.a) {
                        g0.d.c.a aVar = th;
                        java.lang.Throwable cause = aVar.getCause();
                        int i5 = g0.d.c.C0053d.f4323a[aVar.b().ordinal()];
                        if (i5 == 1 || i5 == 2 || i5 == 3 || i5 == 4 || !(cause instanceof android.database.sqlite.SQLiteException)) {
                            throw cause;
                        }
                    } else if (!(th instanceof android.database.sqlite.SQLiteException) || databaseName == null || !this.f4311d) {
                        throw th;
                    }
                    this.f4308a.deleteDatabase(databaseName);
                    try {
                        return i(z4);
                    } catch (g0.d.c.a e5) {
                        throw e5.getCause();
                    }
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
            m3.k.e(sQLiteDatabase, "db");
            try {
                this.f4310c.b(h(sQLiteDatabase));
            } catch (java.lang.Throwable th) {
                throw new g0.d.c.a(g0.d.c.b.ON_CONFIGURE, th);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
            m3.k.e(sQLiteDatabase, "sqLiteDatabase");
            try {
                this.f4310c.d(h(sQLiteDatabase));
            } catch (java.lang.Throwable th) {
                throw new g0.d.c.a(g0.d.c.b.ON_CREATE, th);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(android.database.sqlite.SQLiteDatabase sQLiteDatabase, int i5, int i6) {
            m3.k.e(sQLiteDatabase, "db");
            this.f4312e = true;
            try {
                this.f4310c.e(h(sQLiteDatabase), i5, i6);
            } catch (java.lang.Throwable th) {
                throw new g0.d.c.a(g0.d.c.b.ON_DOWNGRADE, th);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(android.database.sqlite.SQLiteDatabase sQLiteDatabase) {
            m3.k.e(sQLiteDatabase, "db");
            if (!this.f4312e) {
                try {
                    this.f4310c.f(h(sQLiteDatabase));
                } catch (java.lang.Throwable th) {
                    throw new g0.d.c.a(g0.d.c.b.ON_OPEN, th);
                }
            }
            this.f4314g = true;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(android.database.sqlite.SQLiteDatabase sQLiteDatabase, int i5, int i6) {
            m3.k.e(sQLiteDatabase, "sqLiteDatabase");
            this.f4312e = true;
            try {
                this.f4310c.g(h(sQLiteDatabase), i5, i6);
            } catch (java.lang.Throwable th) {
                throw new g0.d.c.a(g0.d.c.b.ON_UPGRADE, th);
            }
        }
    }

    /* JADX INFO: renamed from: g0.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FrameworkSQLiteOpenHelper.kt */
    @kotlin.Metadata
    public static final class C0054d extends m3.l implements l3.a<g0.d.c> {
        public C0054d() {
            super(0);
        }

        @Override // l3.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final g0.d.c c() {
            g0.d.c cVar;
            if (g0.d.this.f4300b == null || !g0.d.this.f4302d) {
                cVar = new g0.d.c(g0.d.this.f4299a, g0.d.this.f4300b, new g0.d.b(null), g0.d.this.f4301c, g0.d.this.f4303e);
            } else {
                cVar = new g0.d.c(g0.d.this.f4299a, new java.io.File(f0.d.a(g0.d.this.f4299a), g0.d.this.f4300b).getAbsolutePath(), new g0.d.b(null), g0.d.this.f4301c, g0.d.this.f4303e);
            }
            f0.b.d(cVar, g0.d.this.f4305g);
            return cVar;
        }
    }

    public d(android.content.Context context, java.lang.String str, f0.h.a aVar, boolean z4, boolean z5) {
        m3.k.e(context, "context");
        m3.k.e(aVar, "callback");
        this.f4299a = context;
        this.f4300b = str;
        this.f4301c = aVar;
        this.f4302d = z4;
        this.f4303e = z5;
        this.f4304f = a3.e.a(new g0.d.C0054d());
    }

    @Override // f0.h, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f4304f.b()) {
            l().close();
        }
    }

    @Override // f0.h
    public java.lang.String getDatabaseName() {
        return this.f4300b;
    }

    public final g0.d.c l() {
        return this.f4304f.getValue();
    }

    @Override // f0.h
    public f0.g l0() {
        return l().f(true);
    }

    @Override // f0.h
    public void setWriteAheadLoggingEnabled(boolean z4) {
        if (this.f4304f.b()) {
            f0.b.d(l(), z4);
        }
        this.f4305g = z4;
    }
}
